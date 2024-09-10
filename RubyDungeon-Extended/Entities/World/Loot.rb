class Loot
    def initialize(messages, drop_chance, item, item_parameters = [], amount_min = 1, amount_max = amount_min)
        @messages = messages
        @drop_chance = drop_chance
        @item = item.new(*item_parameters)
        @amount_min = amount_min
        @amount_max = amount_max
    end

    def dropped?
        return rand(1..100) <= @drop_chance
    end

    def get_item
        puts @messages.sample
        return Bundle.new(@item, rand(@amount_min..@amount_max))
    end

    def self.to_string(object)
        if object == Narrator::RETURN_BUTTON
            return "retour..."
        else
            return object.get_name
        end
    end
end
