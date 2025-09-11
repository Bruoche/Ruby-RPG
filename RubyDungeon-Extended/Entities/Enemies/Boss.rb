class Boss < Monster
    PART_KILLED = true
    PICTURE_PREFIX = 'Boss/'

    def initialize(room, boss)
        @room = room
        multiplayer_scaling = Math.sqrt(World.get_instance.nb_players)
        power_bonus = (boss::POWER_BONUS * multiplayer_scaling).truncate
        @bodyparts = Array.new
        for bodypart in boss::BODYPARTS
            @bodyparts.append(Bodypart.new(bodypart, power_bonus.div(boss::BODYPARTS.length), room))
        end
        @name = Name.new(boss)
        @initial_power = get_power
        @picture = ASCIIPicture.new(ASCIIPrinter::PREFIX + PICTURE_PREFIX + boss::PICTURE)
        @loots = boss::LOOTS
        @death_event = boss::DEATH_EVENT
    end

    def get_power
        power = 0
        nb_bodyparts = 0
        for bodypart in @bodyparts
            power += bodypart.get_power
            nb_bodyparts += 1
        end
        health = 0
        for bodypart in @bodyparts
            if bodypart.is_weakpoint?
                health += bodypart.get_max_life
            end
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

    def get_intelligence
        intelligence = 0
        for bodypart in @bodyparts
            intelligence += bodypart.get_intelligence
        end
        return intelligence
    end

    def get_life_to_string
        life = 0
        max_life = 0
        for bodypart in @bodyparts
            if bodypart.is_weakpoint?
                life += bodypart.get_life
                max_life += bodypart.get_max_life
            end
        end
        return "#{life}/#{max_life}"
    end

    def get_current_life
        life = 0
        for bodypart in @bodyparts
            if bodypart.is_weakpoint?
                life += bodypart.get_life
            end
        end
        return life
    end

    def get_max_life
        max_life = 0
        for bodypart in @bodyparts
            if bodypart.is_weakpoint?
                max_life += bodypart.get_max_life
            end
        end
        return max_life
    end

    def get_status_icons
        statuses = ''
        first = true
        for bodypart in @bodyparts
            status_icons = bodypart.get_status_icons
            if status_icons != ''
                if first
                    first = false
                else
                    statuses += ' '
                end
                statuses += status_icons
            end
        end
        return statuses
    end

    def get_room
        return @room
    end

    def healthbar(size)
        return Lifebar.healthbar_for(get_current_life, get_max_life, size)
    end

    def get_part_by(part_id)
        for current_bodypart in @bodyparts
            if current_bodypart.is?(part_id)
                return current_bodypart
            end
        end
        return nil
    end

    def get_parts
        return @bodyparts
    end

    def died?
        for bodypart in @bodyparts
            if (!bodypart.died? && bodypart.is_weakpoint?)
                return false
            end
        end
        return true
    end

    def escaped?
        return false # for now no boss escape
    end

    def hurt(attack)
        case attack.type
        when Attack::PHYSIC_TYPE
            if (@bodyparts.length > 1)
                choosen_target = Narrator.ask(Locale.get_localized(LocaleKey::ASK_MEMBER_AIMED_AT), @bodyparts, -> (bodypart){to_string(bodypart)}, attack.source.get_name)
                if choosen_target != Narrator::RETURN_BUTTON
                    target = @bodyparts[choosen_target]
                    hurt_part(target, attack)
                    return Player::ACTED
                else
                    return !Player::ACTED
                end
            else
                hurt_part(@bodyparts[0], attack)
                return Player::ACTED
            end
        when Attack::MAGIC_TYPE
            shared_attack = Attack.new(
                (attack.damage / (1 + (BaseStats::SPELL_DAMAGE_BODYPARTS_DIVISOR_COEFF * (@bodyparts.length - 1)))).truncate,
                attack.type,
                attack.source
            )

            i = 0
            while i < @bodyparts.length
                hurt_result = hurt_part(@bodyparts[i], shared_attack)
                if hurt_result != PART_KILLED
                    i += 1
                end
            end
        end
    end

    def hurt_part(target, attack)
        target.hurt(attack)
        if target.died?
            target.death_event(self)
            @bodyparts.delete_at(@bodyparts.index(target))
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
            return Locale.get_localized(LocaleKey::GO_BACK)
        end
    end
end
