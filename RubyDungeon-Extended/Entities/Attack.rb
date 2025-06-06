class Attack
    PHYSIC_TYPE = 0
    MAGIC_TYPE = 1
    FALL_TYPE = 2
    POISON_TYPE = 3

    def initialize(damage, type, source, effects = [])
        @damage = damage
        @type = type
        @source = source
        @effects = effects
    end

    def damage
        return @damage
    end

    def type
        return @type
    end

    def source
        return @source
    end

    def effects
        return @effects
    end

    def damage_dealt
        case @type
        when Attack::PHYSIC_TYPE
            return @damage
        when Attack::MAGIC_TYPE
            if @damage < 1
                return 0
            end
            if @damage == 1
                if [true, false].sample
                    return 1
                else
                    return 0
                end
            end
            first_roll = rand(@damage)
            second_roll = rand(@damage)
            best_roll = first_roll > second_roll ? first_roll : second_roll
            return best_roll
        when Attack::FALL_TYPE
            return @damage
        when Attack::POISON_TYPE
            return @damage
        else
            Narrator.unexpected_damage_type_error
            return 0
        end
    end
end
