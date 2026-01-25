class Bodypart < Monster
    def initialize(data, power_bonus, room)
        @id = data::ID
        strength_proportion = 100 - data::MAGIC_PROPORTION
        health = (BaseStats::BASE_HEALTH + power_bonus) * data::HEALTH_MULTIPLIER
        strength = ((BaseStats::BASE_STRENGTH + power_bonus) * data::DAMAGE_MULTIPLIER * strength_proportion).div(100)
        intelligence = ((BaseStats::BASE_INTELLIGENCE + power_bonus) * data::DAMAGE_MULTIPLIER * BaseStats::INTELLIGENCE_COEFF * data::MAGIC_PROPORTION).round.div(100)
        super(
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
            MonsterFactory.make_picture_for(data, Boss::PICTURE_PREFIX),
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

    def get_description
        return get_description_the(LocaleKey::BODYPART_DESCRIPTION)
    end

    def get_life
        return get_current_life
    end

    def get_status_icons
        return status_handler.get_icons.strip
    end

    def is_weakpoint?
        return @is_weakpoint
    end
end
