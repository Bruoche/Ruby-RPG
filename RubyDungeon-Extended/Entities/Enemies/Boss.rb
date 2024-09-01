class Boss < Monster
    PART_KILLED = true

    def initialize(boss)
        @weakpoints = Array.new
        for weakpoint in boss::WEAKPOINTS
            @weakpoints.push(Weakpoint.new(weakpoint, boss::POWER_BONUS.div(boss::WEAKPOINTS.length)))
        end
        @bodyparts = Array.new
        for bodypart in boss::BODYPARTS
            @bodyparts.push(Bodypart.new(bodypart, boss::POWER_BONUS.div(boss::BODYPARTS.length)))
        end
        @name = Name.new(boss)
        @initial_power = get_power
    end

    def get_power
        power = 0
        nb_bodyparts = 0
        for bodypart in @bodyparts
            power += bodypart.get_power
            nb_bodyparts += 1
        end
        health = 0
        for weakpoint in @weakpoints
            health += weakpoint.get_max_life
        end
        return power + (health * nb_bodyparts)
    end

    def get_xp
        return @initial_power * 2
    end

    def get_strength
        damage = 0
        for bodypart in @bodyparts
            damage += bodypart.get_strength
        end
        return damage
    end

    def get_life_to_string
        life = 0
        max_life = 0
        for weakpoint in @weakpoints
            life += weakpoint.get_life
            max_life += weakpoint.get_max_life
        end
        return "#{life}/#{max_life}"
    end

    def get_part_by(part_id)
        for currentBodypart in @bodyparts
            if currentBodypart.is?(part_id)
                return currentBodypart
            end
        end
        for currentWeakpoint in @weakpoints
            if currentWeakpoint.is?(part_id)
                return currentWeakpoint
            end
        end
        return nil
    end

    def get_parts
        return @bodyparts + @weakpoints
    end

    def died?
        for weakpoint in @weakpoints
            if not weakpoint.died?
                return false
            end
        end
        return true
    end

    def hurt(attack)
        all_targets = [@weakpoints, @bodyparts]
        case attack.type
        when Attack::PHYSIC_TYPE
            flattened_targets = all_targets.flatten
            if (flattened_targets.length > 1)
                choosen_target = Narrator.ask("Quel membre souhaitez-vous viser?", flattened_targets, -> (bodypart){to_string(bodypart)}, attack.source.get_name)
                if choosen_target != Narrator::RETURN_BUTTON
                    array_index = 0
                    while (choosen_target >= all_targets[array_index].length)
                        choosen_target -= all_targets[array_index].length
                        array_index += 1
                    end
                    targets = all_targets[array_index]
                    target = targets[choosen_target]
                    hurt_part(targets, target, attack)
                    return Player::ACTED
                else
                    return !Player::ACTED
                end
            else
                for targets in all_targets
                    for target in targets
                        hurt_part(targets, target, attack)
                    end
                end
                return Player::ACTED
            end
        when Attack::MAGIC_TYPE
            for targets in all_targets
                i = 0
                while i < targets.length
                    hurt_part_result = hurt_part(targets, targets[i], attack)
                    if hurt_part_result != PART_KILLED
                        i += 1
                    end
                end
            end
        end
    end

    def hurt_part(targets, target, attack)
        target.hurt(attack)
        if target.died?
            target.death_event(self)
            targets.delete_at(targets.index(target))
            return PART_KILLED
        end
        return !PART_KILLED
    end

    def act(players, pack)
        for bodypart in @bodyparts
            bodypart.act(players, pack, self)
        end
    end

    private

    def to_string(bodypart)
        if bodypart != Narrator::RETURN_BUTTON
            return bodypart.get_description
        else
            return "retour..."
        end
    end
end
