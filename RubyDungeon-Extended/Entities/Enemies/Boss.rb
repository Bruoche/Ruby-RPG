class Boss
    def initialize(weakpoints, bodyparts, name)
        @weakpoints = weakpoints
        @bodyparts = bodyparts
        @name = name
        @initial_power = get_power
    end

    def get_description()
        return "#{@name.get_gendered_a} avec #{get_life} points de vies et #{get_damage} dégats."
    end

    def get_life()
        life = 0
        max_life = 0
        for weakpoint in @weakpoints do
            life += weakpoint.get_life
            max_life += weakpoint.get_max_life
        end
        return "#{life}/#{max_life}"
    end

    def get_damage()
        damage = 0
        for bodypart in @bodyparts do
            damage += bodypart.get_damage
        end
        return damage
    end

    def get_name()
        return @name
    end

    def get_power()
        power = 0
        nb_bodyparts = 0
        for bodypart in @bodyparts do
            power += bodypart.get_power
            nb_bodyparts += 1
        end
        health = 0
        for weakpoint in @weakpoints do
            health += 1
        end
        return power + health
    end

    def get_xp()
        return @initial_power
    end

    def get(bodypart)
        for currentBodypart in @bodyparts do
            if currentBodypart == bodypart
                return bodypart
            end
        end
        return nil
    end

    def is_dead()
        for weakpoint in @weakpoints do
            if not weakpoint.is_dead
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
                choosen_target = Narrator.ask("Quel membre souhaitez-vous viser?", flattened_targets, -> (bodypart){to_string(bodypart)})
                if choosen_target != nil
                    array_index = 0
                    while (choosen_target >= all_targets[array_index].length) do
                        choosen_target -= all_targets[array_index].length
                        array_index += 1
                    end
                    targets = all_targets[array_index]
                    target = targets[choosen_target]
                    hurt_part(targets, target, attack)
                    return true
                else
                    return false
                end
            else
                for targets in all_targets
                    for target in targets
                        hurt_part(targets, target, attack)
                    end
                end
                return true
            end
        when Attack::MAGIC_TYPE
            for targets in all_targets
                i = 0
                while i < targets.length
                    $killed = hurt_part(targets, targets[i], attack)
                    if not $killed
                        i += 1
                    end
                end
            end
        end
    end

    def hurt_part(targets, target, attack)
        target.hurt(attack)
        if target.is_dead
            target.death_event(self)
            targets.delete(target)
            return true
        end
        return false
    end

    def attack(player)
        attacks = []
        for bodypart in @bodyparts
            attacks = bodypart.attack(player, self)
            attacks.push(attacks)
        end
        return attacks
    end

    private

    def to_string(bodypart)
        if bodypart != nil
            return bodypart.get_description
        else
            return "retour..."
        end
    end
end