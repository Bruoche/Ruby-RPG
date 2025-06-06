class Weakpoint
    def initialize(bossWeakpoint, power_bonus)
        @id = bossWeakpoint::ID
        health = (BaseStats::BASE_HEALTH + power_bonus) * bossWeakpoint::HEALTH_MULTIPLIER
        @lifebar = Lifebar.new(Integer(health))
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
        return format(Locale.get_localized(LocaleKey::WEAKPOINT_DESCRIPTION), {
            LocaleKey::F_SUBJECT => @name.get_gendered_the,
            LocaleKey::F_LIFE => @lifebar.life_to_string
        })
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
        SoundManager.play('ennemy_hurt')
        Narrator.hurt(@name.get_gendered_the, damage)
        sleep Settings.get_pause_duration
        @lifebar.damage(damage)
    end

    def death_event(parent)
        @death_event.call(@name, parent)
    end
end
