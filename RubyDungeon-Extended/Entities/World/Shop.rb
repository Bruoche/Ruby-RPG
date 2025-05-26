class Shop
    TRANSACTION_DONE = true
    DEFAULT_CURRENCY = Coins.new
    NO_SIGN = nil

    def self.inherited(child)
        TracePoint.trace(:end) do |t|
            if child == t.self
                unless child.const_defined?(:RETAIL_PERCENT)
                    child.const_set(:RETAIL_PERCENT, 90)
                end
                unless child.const_defined?(:UPGRADE_TAX)
                    child.const_set(:UPGRADE_TAX, 10)
                end
                unless child.const_defined?(:CURRENCY)
                    child.const_set(:CURRENCY, DEFAULT_CURRENCY)
                end
                unless child.const_defined?(:MUSIC)
                    child.const_set(:MUSIC, MusicManager::NO_MUSIC)
                end
                unless child.const_defined?(:SIGN)
                    child.const_set(:SIGN, NO_SIGN)
                end
                unless child.const_defined?(:SECOND_OPTION_LABEL)
                    child.const_set(:SECOND_OPTION_LABEL, LocaleKey::SELL_OPTION)
                end
                unless child.const_defined?(:SECOND_OPTION_ACTION)
                    child.const_set(:SECOND_OPTION_ACTION, -> (player, shopkeeper, shop) {
                        shop.ask_sell(player)
                    })
                end
            end
        end
    end

    def initialize
        @shopkeeper = Character.new(self.class::SHOPKEEPER)
        @inventory = self.class::INVENTORY
        @sign = self.class::SIGN
    end

    def get_music
        return self.class::MUSIC
    end

    def enter(player)
        propose_purchases_to(player)
    end

    def propose_purchases_to(player, special_dialog = Character::DEFAULT_DIALOG)
        show_sign
        question_box = ASCIIPicture.new(
            [format(Locale.get_localized(LocaleKey::ASK_SHOP_ACTION), player.get_quantity_of(self.class::CURRENCY))] +
            Locale.get_localized(LocaleKey::SHOP_OPTIONS_FIRST) +
            ['2) ' + Locale.get_localized(self.class::SECOND_OPTION_LABEL) + '...'] +
            Locale.get_localized(LocaleKey::SHOP_OPTIONS_LAST)
        )
        question_box.frame(' ', ' ')
        @shopkeeper.show
        @shopkeeper.put_intro_with_action(question_box, player, special_dialog)
        case Narrator.user_input(player.get_name)
        when '0'
            return TRANSACTION_DONE
        when '1'
            done = ask_bought_item(player)
            if done
                return TRANSACTION_DONE
            end
        when '2'
            self.class::SECOND_OPTION_ACTION.call(player, @shopkeeper, self)
        when '3'
            player.see_items
        when '4'
            @shopkeeper.talk(player)
        else
            Narrator.unsupported_choice_error
        end
        return propose_purchases_to(player)
    end

    def show_sign
        if @sign != NO_SIGN
            for line in ASCIIPicture.new(ASCIIPrinter::PREFIX + ASCIIPrinter::UNSCALABLE_PREFIX + @sign).get_ascii
                Narrator.write(Utils.center(line, TTY::Screen.width))
            end
        end
    end

    def show_sold_items
        sold_items = ASCIIPaginator.new
        for item in @inventory
            item_display = ASCIIPicture.new(ASCIIPicture.get_selling_card(item))
            item_display.frame
            sold_items.append(item_display)
        end
        loop do
            sold_items.show
            case Narrator.user_input.capitalize
            when '0'
                break
            when 'A'
                sold_items.page_down
            when 'Z'
                sold_items.page_up
            else
                Narrator.unsupported_choice_error
            end
        end
    end

    def ask_bought_item(player)
        item_index = Narrator.ask_paginated(
            format(Locale.get_localized(LocaleKey::ASK_ITEM_BOUGHT), player.get_quantity_of(self.class::CURRENCY)),
            @inventory,
            -> (item, index) {
                item_card = ASCIIPicture.new(ASCIIPicture.get_selling_card(item, index))
                item_card.frame
                return item_card
            },
            player.get_name
        )
        if item_index != Narrator::RETURN_BUTTON
            item_bundle = @inventory[item_index]
            price = item_bundle.get_value
            if player.have?(self.class::CURRENCY, price)
                if confirm(item_bundle, LocaleKey::ASK_CONFIRM_PURCHASE, price)
                    player.remove_item(self.class::CURRENCY, price)
                    player.give_item(Bundle.new(item_bundle.get_item, item_bundle.get_quantity))
                    SoundManager.play('shop_bell_buy')
                    return propose_purchases_to(player, self.class::BUY_DIALOG)
                end
            else
                if player.have?(self.class::CURRENCY)
                    money = player.get_quantity_of(self.class::CURRENCY)
                    if money > 1
                        return propose_purchases_to(player, Locale.get_localized(self.class::NOT_ENOUGH_FUNDS_DIALOG) % [money])
                    else
                        return propose_purchases_to(player, self.class::ONE_NOT_ENOUGH_DIALOG)
                    end
                else
                    return propose_purchases_to(player, self.class::NO_MONEY_DIALOG)
                end
            end
        end
    end

    def ask_sell(player)
        sold_bundle = player.choose_item_to_sell(self.class::RETAIL_PERCENT)
        if (sold_bundle != nil) && (confirm(sold_bundle, LocaleKey::ASK_CONFIRMATION_SELLING))
            player.remove_item(sold_bundle.get_item, sold_bundle.get_quantity)
            player.give_item(Bundle.new(self.class::CURRENCY, sold_bundle.get_value(self.class::RETAIL_PERCENT)))
            SoundManager.play('shop_bell_sell')
            return propose_purchases_to(player, self.class::SOLD_DIALOG)
        end
    end

    def confirm(bundle, question, value = bundle.get_value(self.class::RETAIL_PERCENT))
        Narrator.ask_confirmation(format(Locale.get_localized(question), {
            LocaleKey::F_ITEM => bundle.get_name,
            LocaleKey::F_VALUE => value
        }))
    end

    def ask_upgrade(player)
        choosen_armor = player.choose_armor_to_upgrade(self.class::UPGRADE_TAX)
        if choosen_armor != nil
            upgrade_cost = choosen_armor.upgrade_cost(self.class::UPGRADE_TAX)
            if player.have?(self.class::CURRENCY, upgrade_cost) && confirm(choosen_armor, LocaleKey::ASK_CONFIRMATION_UPGRADING, upgrade_cost)
                upgraded_armor = Armor.load(choosen_armor.get_save_data)
                upgraded_armor.upgrade
                player.give_item(Bundle.new(upgraded_armor, 1))
                player.remove_item(choosen_armor, 1)
                player.remove_item(self.class::CURRENCY, upgrade_cost)
            else
                return propose_purchases_to(player, self.class::NO_MONEY_DIALOG)
            end
        end
    end
end
