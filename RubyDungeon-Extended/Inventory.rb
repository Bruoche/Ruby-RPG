class Inventory
    def initialize()
        @content = Array.new()
    end

    def add(item)
        puts "Vous obtenez #{item.get_name}."
        @content.push(item)
    end

    def ask_use(target)
        if (@content.length > 0)
            item_index = Narrator.ask("Quel objet souhaitez-vous utiliser?", @content, -> (item){to_string(item)})
            if item_index != nil
                return use(@content[item_index], target)
            else
                return false
            end
        else
            puts "Vous n'avez pas d'objets à utiliser."
        end
    end

    def use(item, target)
        used = item.use(target)
        if item.is_destroyed()
            @content.delete(item)
        end
        return used
    end

    private

    def to_string(item)
        if item == nil
            return "retour..."
        else
            return item.get_description
        end
    end
end
