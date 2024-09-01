class Inventory
    def initialize
        @bundles = Array.new
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

    def have?(item)
        for bundle in @bundles
            if bundle.contain?(item);
                return true
            end
        end
        return false
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
            items.split("; ").tally.each do |item_with_paramters, amount|
                object = item_with_paramters.split("|")[0]
                parameters = item_with_paramters.split("|")[1]
                if parameters != nil
                    item = Object.const_get(object).new(*parameters.split(", ").map(&:to_i))
                else
                    item = Object.const_get(object).new
                end
                @bundles.push(Bundle.new(item, amount))
            end
        end
    end

    def inventory(player)
        if (@bundles.length > 0)
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

    def ask_usage(player, bundle, allies)
        puts "Que souhaitez faire avec #{bundle.get_name} ?"
        puts "0) Annuler..."
        puts "1) Utiliser"
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


    private

    def to_string(item)
        if item == Narrator::RETURN_BUTTON
            return "retour..."
        else
            return item.get_description
        end
    end
end
