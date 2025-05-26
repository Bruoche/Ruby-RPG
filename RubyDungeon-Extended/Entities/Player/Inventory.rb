class Inventory
    def initialize
        @bundles = Array.new
    end

    def have?(item, quantity_required = 1)
        for bundle in @bundles
            quantity = bundle.get_quantity(item)
            if quantity >= quantity_required
                return true
            end
        end
        return false
    end

    def count(item)
        for bundle in @bundles
            if bundle.contains?(item)
                return bundle.get_quantity(item)
            end
        end
        return 0
    end

    def get_save_data
        items = ''
        for bundle in @bundles
            items += bundle.get_save_data
        end
        return items
    end

    def load(items)
        if items != nil
            bundles_by_class = {}
            items.split('; ').tally.each do |item_data, amount|
                item = Item.load(item_data)
                item_class = item.class.name
                if (bundles_by_class[item_class] == nil)
                    bundles_by_class[item_class] = []
                end
                bundles_by_class[item_class].append(Bundle.new(item, amount))
            end
            bundles_by_class.each do |bundle_class, bundles|
                loaded_bundle = BundleStack.new(bundle_class)
                loaded_bundle.set(bundles)
                @bundles.append(loaded_bundle)
            end
        end
    end

    def add(item_bundle)
        for bundle in @bundles
            if bundle.contains_class?(item_bundle.get_item.class)
                bundle.append(item_bundle)
                return
            end
        end
        new_bundle = BundleStack.new(item_bundle.get_item.class)
        new_bundle.append(item_bundle)
        @bundles.append(new_bundle)
    end

    def remove(item, quantity = 1)
        for bundle in @bundles
            if bundle.contains?(item)
                bundle.remove(item, quantity)
                if bundle.depleted?
                    @bundles.delete_at(@bundles.index(bundle))
                end
                return
            end
        end
    end

    def inventory(player)
        if @bundles.length > 0
            bundle_index = Narrator.ask(LocaleKey::ASK_ITEM_TO_USE, @bundles, -> (bundle){to_string(bundle)}, player.get_name)
            if bundle_index != Narrator::RETURN_BUTTON
                bundle = @bundles[bundle_index]
                potential_allies = World.get_instance.get_players_in(player.get_room)
                allies = []
                for ally in potential_allies
                    if (ally != player) && (ally.fighting? || !player.fighting?)
                        allies.append(ally)
                    end
                end
                if allies.empty?
                    return ask_use(player, bundle, allies)
                else
                    return ask_usage(player, bundle, allies)
                end
            else
                return !Player::ACTED
            end
        else
            Narrator.no_items_to_use
            return !Player::ACTED
        end
    end

    def see_inventory
        if @bundles.length > 0
            Narrator.item_possessed_title
            for bundle in @bundles
                Narrator.list(bundle.get_name)
            end
        else
            Narrator.no_items_to_use
        end
    end

    def get_all(item_type)
        for bundle in @bundles
            if bundle.contains_class? item_type
                return bundle.get_all
            end
        end
        return []
    end

    def ask_usage(player, bundle, allies)
        if bundle.item_class == Armor
            usage_text = Locale.get_localized(LocaleKey::USAGE_EQUIP)
        else
            usage_text = Locale.get_localized(LocaleKey::USAGE_USE)
        end
        Narrator.usage_options(bundle.get_name, usage_text)
        case Narrator.user_input(player.get_name)
        when '0'
            return !Player::ACTED
        when '1'
            return ask_use(player, bundle, allies)
        when '2'
            return give_item(bundle, allies, player)
        else
            Narrator.unsupported_choice_error
            return ask_usage(player, bundle, allies)
        end
    end

    def ask_use(player, bundle, allies)
        if bundle.item_class == Armor
            equipment = bundle.get_item(player)
            if equipment != BundleStack::NO_ITEM_CHOSEN
                precedent_equipment = player.equip(equipment)
                remove(equipment)
                if precedent_equipment != EquipmentSlot::NO_ARMOR_EQUIPPED
                    add(Bundle.new(precedent_equipment, 1))
                end
            end
            return !Player::ACTED
        else
            allies.unshift(player)
            if bundle.usable_on_others?
                if allies.length > 1
                    ally_index = Narrator.ask(format(Locale.get_localized(LocaleKey::ASK_ITEM_TARGET), bundle.get_name), allies, ->(ally){player.to_string(ally)})
                    if ally_index == Narrator::RETURN_BUTTON
                        return !Player::ACTED
                    else
                        target = allies[ally_index]
                    end
                else
                    target = player
                end
            else
                target = player
            end
            return use(bundle, target, player)
        end
    end

    def use(bundle, target, user)
        used = bundle.use(target, user)
        if bundle.depleted?
            @bundles.delete_at(@bundles.index(bundle))
        end
        return used
    end

    def give_item(bundle, allies, giver)
        ally_index = Narrator.ask(format(Locale.get_localized(LocaleKey::ASK_GIFT_TARGET), bundle.get_name), allies, ->(ally){giver.to_string(ally)})
        if ally_index == Narrator::RETURN_BUTTON
            return ask_usage(giver, bundle, allies)
        else
            ally = allies[ally_index]
            return give(bundle, ally, giver)
        end
    end

    def give(bundle_stack, reciever, giver)
        bundle = bundle_stack.choose_bundle(giver.get_name)
        if bundle == BundleStack::NO_ITEM_CHOSEN
            return !Player::ACTED
        end
        if bundle.get_quantity > 1
            amount_choosen = false
            while !amount_choosen
                Narrator.ask_quantity_given(bundle.get_name)
                amount = Narrator::user_input(giver.get_name)
                if amount != amount.to_i.to_s
                    Narrator.unsupported_choice_error
                else
                    amount = amount.to_i
                    if amount < 0
                        Narrator.negative_quantity_error
                    else
                        amount_choosen = true
                    end
                end
            end
        else
            amount = 1
        end
        reciever.give_item(bundle_stack.remove(bundle.get_item, amount))
        if bundle_stack.depleted?
            @bundles.delete_at(@bundles.index(bundle_stack))
        end
        return !Player::ACTED
    end

    def choose_bundle_to_sell(player, retail_coeff)
        sellable_bundles = get_sellable_items
        if sellable_bundles.length > 0
            bundle_index = Narrator.ask_paginated(
                LocaleKey::ASK_ITEM_TO_SELL,
                sellable_bundles, -> (bundle, index){
                    item_frame = ASCIIPicture.new(ASCIIPicture.get_selling_card(bundle, index, retail_coeff))
                    item_frame.frame
                    return item_frame
                },
                player.get_name
            )
            if bundle_index != Narrator::RETURN_BUTTON
                bundle = sellable_bundles[bundle_index]
                if bundle.get_quantity > 1
                    amount = choose_amount_to_sell(bundle, player)
                else
                    amount = 1
                end
                if amount > 0
                    return Bundle.new(bundle.get_item, amount)
                end
            end
        else
            Narrator.no_items_to_sell
            Narrator.pause_text
        end
        return nil
    end

    def choose_amount_to_sell(bundle, player)
        Narrator.ask_quantity_sold(bundle.get_name)
        amount = Narrator::user_input(player.get_name)
        if amount != amount.to_i.to_s
            Narrator.unsupported_choice_error
            return choose_amount_to_sell(bundle, player)
        end
        amount = amount.to_i
        if amount < 0
            Narrator.negative_quantity_error
            return give(bundle, reciever, player)
        end
        if amount > bundle.get_quantity
            amount = bundle.get_quantity
        end
        return amount
    end

    def get_sellable_items
        sellable_bundles = []
        for bundle in @bundles
            for sellable_bundle in bundle.get_sellables
                sellable_bundles.append(sellable_bundle)
            end
        end
        return sellable_bundles
    end

    def choose_armor_to_upgrade(player, upgrade_tax)
        upgradable_bundles = get_upgradable_items
        if upgradable_bundles.length > 0
            bundle_index = Narrator.ask_paginated(
                LocaleKey::ASK_ITEM_TO_UPGRADE,
                upgradable_bundles, -> (bundle, index){
                    item_frame = ASCIIPicture.new(ASCIIPicture.get_upgrading_card(bundle.get_item, index, upgrade_tax))
                    item_frame.frame
                    return item_frame
                },
                player.get_name
            )
            if bundle_index != Narrator::RETURN_BUTTON
                bundle = upgradable_bundles[bundle_index]
                return bundle.get_item
            end
        else
            Narrator.no_items_to_upgrade
            Narrator.pause_text
        end
        return nil
    end

    def get_upgradable_items
        upgradables = []
        for bundle in @bundles
            for upgradable_bundle in bundle.get_upgradable
                upgradables.append(upgradable_bundle)
            end
        end
        return upgradables
    end

    private

    def to_string(bundle)
        if bundle == Narrator::RETURN_BUTTON
            return Locale.get_localized(LocaleKey::GO_BACK)
        else
            return bundle.get_description
        end
    end
end
