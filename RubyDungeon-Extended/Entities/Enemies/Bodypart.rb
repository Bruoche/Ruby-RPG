class Bodypart
    def initialize(data, power_bonus)
        @id = data::ID
        strength_proportion = 100 - data::MAGIC_PROPORTION
        health = (BaseStats::BASE_HEALTH + power_bonus) * data::HEALTH_MULTIPLIER
        strength = ((BaseStats::BASE_STRENGTH + power_bonus) * data::DAMAGE_MULTIPLIER * strength_proportion).div(100)
        intelligence = ((BaseStats::BASE_INTELLIGENCE + power_bonus) * data::DAMAGE_MULTIPLIER * BaseStats::INTELLIGENCE_COEFF * data::MAGIC_PROPORTION).round.div(100)
        @actor = Monster.new(
            # todo add room here
            Integer(health),
            Integer(strength),
            Integer(intelligence),
            data::HEALING_PROPORTION,
            Name.new(data),
            data::BASE_MOVES.map(&:clone),
            [''],
            [''],
            [''],
            0,
            0,
            ASCIIPicture.new([]),
            [],
            [],
            data::DEATH_EVENT
        )
        @special_moves = data::SPECIAL_MOVES.map(&:clone)
    end

    def is?(id)
        return id == @id
    end

    def get_description
        return @actor.get_description_the
    end

    def get_power
        return @actor.get_power
    end

    def get_strength
        return @actor.get_strength
    end

    def died?
        return @actor.died?
    end

    def add_special_move(special_move)
        @special_moves.append(special_move)
    end

    def set_strength(damage)
        @actor.set_strength(damage)
    end

    def set_death_event(death_event)
        @actor.set_death_event(death_event)
    end

    def act(targets, pack, parent)
        for special_move in @special_moves
            special_move.attempt(targets, pack, @actor, parent)
        end
        @actor.act(targets, pack)
    end

    def hurt(attack)
        @actor.hurt(attack)
    end

    def death_event(parent)
        @actor.death_event(@actor.get_name, parent) # TODO fix here (used to give bodypart name + parent, now should be giving players monster)
    end
end
