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
            if number_of_chances <= 0
                number_of_chances = 1
            end
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
        Narrator.write(Locale.get_localized(@messages).sample)
        if @amount_min == @amount_max
            amount = max_amount
        else
            amount = rand(@amount_min..max_amount)
        end
        return Bundle.new(@item_class.new(*@parameters), amount)
    end

    def self.to_string(object)
        if object == Narrator::RETURN_BUTTON
            return Locale.get_localized(LocaleKey::GO_BACK)
        else
            return object.get_name
        end
    end

    private

    def max_amount
        if @item_class::DROP_QUANTITY_SCALABLE
            if @drop_chance < 100
                return (@amount_max * Math.sqrt(World.get_instance.nb_players)).truncate
            else
                return @amount_max * World.get_instance.nb_players
            end
        else
            return @amount_max
        end
    end
end
