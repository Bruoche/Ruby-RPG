class Loot
    def initialize(messages, drop_chance, item, item_parameters = [], amount_min = 1, amount_max = amount_min)
        @messages = messages
        @drop_chance = drop_chance
        @item_class = item
        @parameters = item_parameters
        @amount_min = amount_min
        @amount_max = amount_max
    end

    def dropped?
        if @item_class::DROP_CHANCE_SCALABLE
            number_of_chances = World.get_instance.nb_players - Math.sqrt(World.get_instance.nb_players).truncate
        else
            number_of_chances = 1
        end
        number_of_chances.times do
            if rand(1..100) <= @drop_chance
                return true
            end
        end
        return false
    end

    def get_item
        puts @messages.sample
        return Bundle.new(@item_class.new(*@parameters), rand(@amount_min..max_amount))
    end

    def self.to_string(object)
        if object == Narrator::RETURN_BUTTON
            return "retour..."
        else
            return object.get_name
        end
    end

    private

    def max_amount
        if @item_class::DROP_CHANCE_SCALABLE
            return (@amount_max * Math.sqrt(World.get_instance.nb_players)).truncate
        else
            return @amount_max
        end
    end
end
