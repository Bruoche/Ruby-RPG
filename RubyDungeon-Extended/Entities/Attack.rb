class Attack
    PHYSIC_TYPE = 0
    MAGIC_TYPE = 1
    def initialize(damage, type, source)
        @damage = damage
        @type = type
        @source = source
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

    def damage_dealt
        case @type
        when Attack::PHYSIC_TYPE
            return @damage
        when Attack::MAGIC_TYPE
            return rand(@damage)
        else
            puts("<< unexpected damage type encountered >>")
            return 0
        end
    end
end
