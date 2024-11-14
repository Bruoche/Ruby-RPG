class Weakpoint
    def initialize(bossWeakpoint, power_bonus)
        @id = bossWeakpoint::ID
        @lifebar = Lifebar.new(bossWeakpoint::HEALTH + power_bonus)
        @name = Name.new(bossWeakpoint)
        @death_event = bossWeakpoint::DEATH_EVENT
    end

    def is?(id)
        return id == @id
    end

    def get_name
        return @name
    end

    def get_description
        return "#{@name.get_gendered_the} avec #{@lifebar.life_to_string} points de vies"
    end

    def get_life
        return @lifebar.get_life
    end

    def get_max_life
        return @lifebar.get_max_life
    end

    def died?
        return @lifebar.is_empty
    end

    def hurt(attack)
        case attack.type
        when Attack::PHYSIC_TYPE
            damage = attack.damage
        when Attack::MAGIC_TYPE
            damage = rand(attack.damage)
        else
            Narrator.unexpected_damage_type_error
            damage = 0
        end
        SoundManager.play("ennemy_hurt")
        Narrator.hurt(@name.get_gendered_the, damage)
        sleep Settings::BATTLE_ACTION_PAUSE
        @lifebar.damage(damage)
    end

    def death_event(parent)
        @death_event.call(@name, parent)
    end
end
