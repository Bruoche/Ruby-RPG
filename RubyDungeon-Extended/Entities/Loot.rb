class Loot
    def initialize(messages, drop_chance, item, item_parameters = [])
        @messages = messages
        @drop_chance = drop_chance
        @item = item.new(*item_parameters)
    end

    def dropped?
        return rand(1..100) <= @drop_chance
    end

    def get_item
        puts @messages.sample
        return @item
    end
end
