class SpecialMove
    def initialize(probability, action)
        @probability = probability
        @action = action
    end

    def attempt(target, damage, boss)
        if (rand(100) < @probability)
            return @action.call(target, damage, boss)
        else
            return nil
        end
    end
end
