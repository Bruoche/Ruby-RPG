class Loot
    def initialize(messages, drop_chance, item, item_parameters = [], amount = 1)
        @messages = messages
        @drop_chance = drop_chance
        @items = Bundle.new(item.new(*item_parameters), amount)
    end

    def dropped?
        return rand(1..100) <= @drop_chance
    end

    def get_item
        puts @messages.sample
        return @items
    end

    def self.to_string(object)
        if object == Narrator::RETURN_BUTTON
            return "retour..."
        else
            return object.get_name
        end
    end
end
