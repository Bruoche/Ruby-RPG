class Bodypart
    def initialize(data, power_bonus, room)
        @id = data::ID
        strength_proportion = 100 - data::MAGIC_PROPORTION
        health = (BaseStats::BASE_HEALTH + power_bonus) * data::HEALTH_MULTIPLIER
        strength = ((BaseStats::BASE_STRENGTH + power_bonus) * data::DAMAGE_MULTIPLIER * strength_proportion).div(100)
        intelligence = ((BaseStats::BASE_INTELLIGENCE + power_bonus) * data::DAMAGE_MULTIPLIER * BaseStats::INTELLIGENCE_COEFF * data::MAGIC_PROPORTION).round.div(100)
        @actor = Monster.new(
            room,
            Integer(health),
            Integer(strength),
            Integer(intelligence),
            data::HEALING_PROPORTION,
            Name.new(data),
            data::BASE_MOVES,
            data::SPELL_MOVES,
            data::HEAL_MOVES,
            data::ESCAPE_MOVE,
            data::UNPREDICTABILITY,
            0, #limbs don't escape
            ASCIIPicture.new([]),
            data.to_s,
            data::LOOTS,
            data::ATTACK_EFFECTS,
            data::DEATH_EVENT,
            data::SPECIAL_MOVES
        )
        @is_weakpoint = data::IS_WEAKPOINT
    end

    def is?(id)
        return id == @id
    end

    def get_name
        return @actor.get_name
    end

    def get_description
        return @actor.get_description_the(LocaleKey::BODYPART_DESCRIPTION)
    end

    def get_life
        return @actor.get_current_life
    end

    def get_max_life
        return @actor.get_max_life
    end

    def get_missing_life
        return @actor.get_missing_life
    end

    def get_power
        return @actor.get_power
    end

    def get_strength
        return @actor.get_strength
    end

    def get_intelligence
        return @actor.get_intelligence
    end

    def get_status_icons
        return @actor.status_handler.get_icons.strip
    end

    def died?
        return @actor.died?
    end

    def is_weakpoint?
        return @is_weakpoint
    end

    def add_special_move(special_move)
        @actor.add_special_move(special_move)
    end

    def set_strength(damage)
        @actor.set_strength(damage)
    end

    def set_intelligence(amount)
        @actor.set_intelligence(amount)
    end

    def status_handler
        return @actor.status_handler
    end

    def set_death_event(death_event)
        @actor.set_death_event(death_event)
    end

    def act(targets, pack, parent)
        @actor.act(targets, pack, parent)
    end

    def hurt(attack)
        @actor.hurt(attack)
    end

    def heal(amount)
        @actor.heal(amount)
    end

    def death_event(parent)
        @actor.death_event(parent)
    end
end
