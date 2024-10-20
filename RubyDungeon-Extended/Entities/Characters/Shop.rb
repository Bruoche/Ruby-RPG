class Shop
    BUY_DIALOG = "Merci grandement pour votre achat."
    NOT_ENOUGH_FUNDS_DIALOG = "Navrès, mais %s pièces d'or ne seront pas suffisantes..."
    ONE_NOT_ENOUGH_DIALOG = "Navrès, mais une pièce d'or ne sera pas suffisante..."
    NO_MONEY_DIALOG = "Mes excuses, mais sans argent vous ne pourrez pas acheter quoi que ce soit dans ce magasin."
    SOLD_DIALOG = "Un plaisir de faire avec vous."
    TRANSACTION_DONE = true
    RETAIL_PERCENT = 90
    CURRENCY = Coins.new

    def initialize()
        @shopkeeper = Character.new(ShopKeeper)
        @inventory = ShopInventory::ITEM_LIST
    end

    def propose_purchases_to(player, special_dialog = Character::DEFAULT_DIALOG)
        show_sign
        question_box = ASCIIPicture.new([
            "Que souhaitez-vous faire ? (#{player.get_quantity_of(CURRENCY)} ¤)",
            "",
            "0) Sortir du magasin",
            "1) Acheter...",
            "2) Vendre...",
            "3) Consulter l'inventaire"
        ])
        question_box.frame(" ", " ")
        @shopkeeper.show
        @shopkeeper.put_intro_with_action(question_box, player, special_dialog)
        case Narrator.user_input(player.get_name)
        when "0"
            return TRANSACTION_DONE
        when "1"
            done = ask_bought_item(player)
            if done
                return TRANSACTION_DONE
            end
        when "2"
            sold_bundle = player.choose_item_to_sell
            if sold_bundle != nil && Narrator.ask_confirmation("Êtes-vous sûr de vouloir vendre #{sold_bundle.get_name} pour #{sold_bundle.get_value(RETAIL_PERCENT)} pièces ? (y/n)")
                player.remove_item(sold_bundle.get_item, sold_bundle.get_quantity)
                player.give_item(Bundle.new(CURRENCY, sold_bundle.get_value(RETAIL_PERCENT)))
                SoundManager.play("shop_bell_sell")
                return propose_purchases_to(player, SOLD_DIALOG)
            end
        when "3"
            player.see_items
        else
            Narrator.unsupported_choice_error
        end
        return propose_purchases_to(player)
    end

    def show_sign
        for line in ASCIIPicture.new(ASCIIPrinter::PREFIX + ASCIIPrinter::UNSCALABLE_PREFIX + "shop_sign").get_ascii
            puts Utils.center(line, TTY::Screen.width)
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
            when "0"
                break
            when "A"
                sold_items.page_down
            when "Z"
                sold_items.page_up
            else
                Narrator.unsupported_choice_error
            end
        end
    end

    def ask_bought_item(player)
        item_index = Narrator.ask_paginated(
            "Quel objet souhaitez-vous acheter ?",
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
            if player.have?(CURRENCY, price)
                if Narrator::ask_confirmation("Êtes-vous sûr de vouloîr acheter #{item_bundle.get_name} pour #{price} pièces ? (y/n)")
                    player.remove_item(CURRENCY, price)
                    player.give_item(Bundle.new(item_bundle.get_item, item_bundle.get_quantity))
                    SoundManager.play("shop_bell_buy")
                    return propose_purchases_to(player, BUY_DIALOG)
                end
            else
                if player.have?(CURRENCY)
                    money = player.get_quantity_of(CURRENCY)
                    if money > 1
                        return propose_purchases_to(player, NOT_ENOUGH_FUNDS_DIALOG % [money])
                    else
                        return propose_purchases_to(player, ONE_NOT_ENOUGH_DIALOG)
                    end
                else
                    return propose_purchases_to(player, NO_MONEY_DIALOG)
                end
            end
        end
    end
end
