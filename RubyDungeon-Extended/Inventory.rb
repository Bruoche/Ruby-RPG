class Inventory
    def initialize()
        @content = Array.new()
    end

    def add(item)
        puts "Vous obtenez #{item.get_name}."
        @content.push(item)
    end

    def get_save_data()
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
                    item = Object.const_get(object).new()
                end
                @content.push(item)
            end
        end
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
