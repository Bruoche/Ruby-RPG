class Attack
    PHYSIC_TYPE = 0
    MAGIC_TYPE = 1
    def initialize(damage, type)
        @damage = damage
        @type = type
    end

    def damage
        return @damage
    end

    def type
        return @type
    end
end
