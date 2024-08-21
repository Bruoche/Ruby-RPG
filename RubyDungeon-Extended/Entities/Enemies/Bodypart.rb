class Bodypart
    def initialize(bossBodypart, power_bonus)
        @id = bossBodypart::ID
        @actor = Monster.new(
            bossBodypart::HEALTH + power_bonus,
            bossBodypart::DAMAGE + power_bonus,
            Name.new(bossBodypart),
            bossBodypart::BASE_MOVE
        )
        @special_moves = bossBodypart::SPECIAL_MOVES
        @death_event = bossBodypart::DEATH_EVENT
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

    def get_damage
        return @actor.get_damage
    end

    def died?
        return @actor.died?
    end

    def add_special_move(special_move)
        @special_moves.push(special_move)
    end

    def set_damage(damage)
        @actor.set_damage(damage)
    end

    def set_death_event(death_event)
        @death_event = death_event
    end

    def attack(target, parent)
        attacks = []
        for special_move in @special_moves
            special_move.attempt(target, @actor.get_damage, parent)
        end
        attacks.push(@actor.attack(target))
    end

    def hurt(attack)
        @actor.hurt(attack)
    end

    def death_event(parent)
        @death_event.call(@actor.get_name, parent)
    end
end
