class SpecialMove
    END_TURN = true

    def initialize(probability, action)
        @probability = probability
        @action = action
    end

    def attempt(targets, allies, damage, boss)
        if (rand(100) < @probability)
            return @action.call(targets, allies, damage, boss)
        else
            return !END_TURN
        end
    end
end
