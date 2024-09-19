class Inventory
    def initialize
        @bundles = Array.new
    end

    def have?(item, quantity = 1)
        for bundle in @bundles
            if bundle.contain?(item);
                if bundle.get_quantity >= quantity
                    return true
                end
            end
        end
        return false
    end

    def count(item)
        for bundle in @bundles
            if bundle.contain?(item)
                return bundle.get_quantity
            end
        end
        return 0
    end

    def get_save_data
        items = ""
        for bundle in @bundles
            items += bundle.get_save_data
        end
        return items
    end

    def load(items)
        if items != nil
            items.split("; ").tally.each do |item_data, amount|
                item = Item.load(item_data)
                @bundles.push(Bundle.new(item, amount))
            end
        end
    end

    def add(item_bundle)
        for bundle in @bundles
            if bundle.contain?(item_bundle.get_item)
                bundle.add(item_bundle.get_quantity)
                return
            end
        end
        @bundles.append(item_bundle)
    end

    def remove(item, quantity = 1)
        for bundle in @bundles
            if bundle.contain?(item)
                bundle.remove(quantity)
                if bundle.depleted?
                    @bundles.delete_at(@bundles.index(bundle))
                end
            end
        end
    end

    def inventory(player)
        if @bundles.length > 0
            bundle_index = Narrator.ask("Quel objet souhaitez-vous utiliser ?", @bundles, -> (bundle){to_string(bundle)}, player.get_name)
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
            puts "Vous n'avez pas d'objets à utiliser."
            return !Player::ACTED
        end
    end

    def see_inventory
        if @bundles.length > 0
            puts "Vous possédez : "
            for bundle in @bundles
                puts "    - " + to_string(bundle).capitalize
            end
        else
            puts "Vous n'avez pas d'objets à utiliser."
        end
        puts
        Narrator.pause_text
    end

    def get_all(item_type)
        well_typed_items = []
        for bundle in @bundles
            if bundle.get_item.is_a? item_type
                well_typed_items.append(bundle)
            end
        end
        return well_typed_items
    end

    def ask_usage(player, bundle, allies)
        if bundle.get_item.is_a? Armor
            usage_text = "Equiper"
        else
            usage_text = "Utiliser"
        end
        puts "Que souhaitez faire avec #{bundle.get_name} ?"
        puts "0) Annuler..."
        puts "1) #{usage_text}"
        puts "2) Donner"
        case Narrator.user_input(player.get_name)
        when "0"
            return !Player::ACTED
        when "1"
            return ask_use(player, bundle, allies)
        when "2"
            return give_item(bundle, allies, player)
        else
            Narrator.unsupported_choice_error
            return ask_usage(player, bundle, allies)
        end
    end

    def ask_use(player, bundle, allies)
        if bundle.get_item.is_a? Armor
            equipment = bundle.get_item
            precedent_equipment = player.equip(equipment)
            remove(equipment)
            if precedent_equipment != EquipmentSlot::NO_ARMOR_EQUIPPED
                add(Bundle.new(precedent_equipment, 1))
            end
            return !Player::ACTED
        else
            allies.unshift(player)
            if bundle.usable_on_others?
                if allies.length > 1
                    ally_index = Narrator.ask("Sur qui utiliser #{bundle.get_name} ?", allies, ->(ally){player.to_string(ally)})
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
    end

    def give_item(bundle, allies, giver)
        ally_index = Narrator.ask("A qui donner #{bundle.get_name} ?", allies, ->(ally){giver.to_string(ally)})
        if ally_index == Narrator::RETURN_BUTTON
            return ask_usage(giver, bundle, allies)
        else
            ally = allies[ally_index]
            return give(bundle, ally, giver)
        end
    end

    def give(bundle, reciever, giver)
        if bundle.get_quantity > 1
            puts "Combien de #{bundle.get_name} souhaitez-vous donner ?"
            amount = Narrator::user_input(giver.get_name)
            if amount != amount.to_i.to_s
                Narrator.unsupported_choice_error
                return give(bundle, reciever, giver)
            end
            amount = amount.to_i
            if amount < 0
                puts "Vous ne pouvez pas donner un nombre négatif d'objet, veuillez inscrire un nombre positif."
                return give(bundle, reciever, giver)
            end
        else
            amount = 1
        end
        reciever.give_item(bundle.remove(amount))
        if bundle.depleted?
            @bundles.delete_at(@bundles.index(bundle))
        end
        return !Player::ACTED
    end

    def choose_bundle_to_sell(player)
        sellable_bundles = get_sellable_items
        if sellable_bundles.length > 0
            bundle_index = Narrator.ask_complex_element(
                "Quel objet souhaitez-vous vendre ?",
                sellable_bundles, -> (bundle, index){
                    item_frame = ASCIIPicture.new(ASCIIPicture.get_selling_card(bundle, index, Shop::RETAIL_PERCENT))
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
            puts "Aucun objet à vendre"
            Narrator.pause_text
        end
        return nil
    end

    def choose_amount_to_sell(bundle, player)
        puts "Combien de #{bundle.get_name} souhaitez-vous vendre ?"
        amount = Narrator::user_input(player.get_name)
        if amount != amount.to_i.to_s
            Narrator.unsupported_choice_error
            return choose_amount_to_sell(bundle, player)
        end
        amount = amount.to_i
        if amount < 0
            puts "Vous ne pouvez pas donner un nombre négatif d'objet, veuillez inscrire un nombre positif."
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
            if bundle.get_value > 0
                sellable_bundles.append(bundle)
            end
        end
        return sellable_bundles
    end

    private

    def to_string(item)
        if item == Narrator::RETURN_BUTTON
            return "retour..."
        else
            return item.get_description
        end
    end
end
