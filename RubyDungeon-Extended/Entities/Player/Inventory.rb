class Inventory
    def initialize
        @content = Array.new
    end

    def add(item)
        @content.push(item)
    end

    def have?(item_class)
        return @content.any?(item_class);
    end

    def get_save_data
        items = ""
        for item in @content
            items += "#{item.get_save_data}; "
        end
        return items
    end

    def load(items)
        if items != nil
            for item_with_paramters in items.split("; ")
                object = item_with_paramters.split("|")[0]
                parameters = item_with_paramters.split("|")[1]
                if parameters != nil
                    item = Object.const_get(object).new(*parameters.split(", ").map(&:to_i))
                else
                    item = Object.const_get(object).new
                end
                @content.push(item)
            end
        end
    end

    def inventory(player)
        if (@content.length > 0)
            item_index = Narrator.ask("Quel objet souhaitez-vous utiliser ?", @content, -> (item){to_string(item)}, player.get_name)
            if item_index != Narrator::RETURN_BUTTON
                item = @content[item_index]
                potential_allies = World.get_instance.get_players_in(player.get_room)
                allies = []
                for ally in potential_allies do
                    if (ally != player) && (ally.fighting? || !player.fighting?)
                        allies.append(ally)
                    end
                end
                if allies.empty?
                    return ask_use(player, item, allies)
                else
                    return ask_usage(player, item, allies)
                end
            else
                return !Player::ACTED
            end
        else
            puts "Vous n'avez pas d'objets à utiliser."
            return !Player::ACTED
        end
    end

    def ask_usage(player, item, allies)
        puts "Que souhaitez faire avec #{item.get_name} ?"
        puts "0) Annuler..."
        puts "1) Utiliser"
        puts "2) Donner"
        case Narrator.user_input(player.get_name)
        when "0"
            return !Player::ACTED
        when "1"
            return ask_use(player, item, allies)
        when "2"
            ally_index = Narrator.ask("A qui donner #{item.get_name} ?", allies, ->(ally){player.to_string(ally)})
            if ally_index == Narrator::RETURN_BUTTON
                return ask_usage(player, item, allies)
            else
                ally = allies[ally_index]
                ally.give_item(item)
                @content.delete_at(@content.index(item))
            end
        else
            Narrator.unsupported_choice_error
            return ask_usage(player, item, allies)
        end
    end

    def ask_use(player, item, allies)
        allies.unshift(player)
        if item.usable_on_others?
            if allies.length > 1
                ally_index = Narrator.ask("Sur qui utiliser #{item.get_name} ?", allies, ->(ally){player.to_string(ally)})
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
        return use(item, target, player)
    end

    def use(item, target, user)
        used = item.use(target, user)
        if item.is_destroyed
            @content.delete_at(@content.index(item))
        end
        return used
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
