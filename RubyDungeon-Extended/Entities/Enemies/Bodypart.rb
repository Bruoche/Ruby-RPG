class Bodypart
    def initialize(life, damage, name, basic_attack, special_moves, death_event)
        @actor = Monster.new(life, damage, name, basic_attack)
        @special_moves = special_moves
        @death_event = death_event
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

    def is_dead
        return @actor.is_dead
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
