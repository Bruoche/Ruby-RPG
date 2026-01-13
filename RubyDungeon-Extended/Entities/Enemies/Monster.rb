class Monster
    NO_DEATH_EVENT = -> (players, monster, pack) {}
    NO_PARENT = nil

    def initialize(room, life, strength, intelligence, healing_coeff, name, basic_attack_messages, magic_attack_messages, heal_messages, escape_message, unpredictability, cowardice, picture, type, loots = [], attack_effects = [], death_event = NO_DEATH_EVENT, special_moves = [])
        @lifebar = Lifebar.new(life)
        @name = name
        @strength = strength
        @intelligence = intelligence
        @AI = EnnemyAI.new(basic_attack_messages, magic_attack_messages, heal_messages, escape_message, unpredictability, cowardice, healing_coeff, self, attack_effects)
        @picture = picture
        @loots = loots
        @status_handler = StatusHandler.new
        @room = room
        @death_event = death_event
        @special_moves = special_moves.map(&:clone)
        @type = type
    end

    def get_description
        return description(@name.get_gendered_a)
    end

    def get_description_the
        return description(@name.get_gendered_the)
    end

    def get_name
        return @name
    end

    def get_picture
        return @picture
    end

    def get_loots
        return @loots
    end

    def get_power
        return @lifebar.get_max_life * (@strength + @intelligence)
    end

    def get_xp
        return get_power
    end

    def get_strength
        return @strength
    end

    def get_intelligence
        return @intelligence
    end

    def get_life_to_string
        return @lifebar.life_to_string
    end

    def get_strength_string
        return get_strength.to_s + rage_suffix
    end

    def get_intelligence_string
        return get_intelligence.to_s + rage_suffix
    end

    def healthbar(size)
        return @lifebar.healthbar(size)
    end

    def get_current_life
        return @lifebar.get_life
    end

    def get_missing_life
        return @lifebar.get_missing_life
    end

    def get_max_life
        return @lifebar.get_max_life
    end

    def get_status_icons
        return @status_handler.get_icons.strip
    end

    def get_room
        return @room
    end

    def get_type
        return @type
    end

    def add_special_move(special_move)
        @special_moves.append(special_move)
    end

    def set_strength(amount)
        @strength = amount
    end

    def set_intelligence(amount)
        @intelligence = amount
    end

    def status_handler
        return @status_handler
    end

    def died?
        return @lifebar.is_empty
    end

    def add_loot(loot)
        @loots.append(loot)
    end

    def choose_target(players)
        return @AI.choose_target(players, @strength)
    end

    def leave
        @room.make_monster_leave(self)
    end

    def pacify
        @room.pacify(self)
    end

    def hurt(attack)
        damage = attack.damage_dealt
        SoundManager.play('ennemy_hurt')
        Narrator.hurt(@name.get_gendered_the, damage)
        Game.wait
        @lifebar.damage(damage)
        attack.try_effects(self, damage)
        return Player::ACTED
    end

    def heal(amount)
        SoundManager.play('monster_heal')
        Narrator.heal(@name.get_gendered_the, amount)
        Game.wait
        @lifebar.heal(amount)
    end

    def act(players, pack, parent = NO_PARENT)
        end_turn = false
        ArrayUtils.for_potential(@special_moves) do |special_move|
            if !end_turn
                end_turn = special_move.attempt(players, pack, self, parent)
            end
        end
        if !end_turn
            @AI.act(players, pack, @strength, @intelligence, @status_handler)
        end
        @status_handler.end_of_turn_actions(self)
    end

    def death_event(pack)
        players = World.get_instance.get_players_in(get_room)
        players.delete_if do |player|
            !player.fighting?
        end
        @death_event.call(players, self, pack)
    end

    def set_death_event(death_event)
        @death_event = death_event
    end

    private

    def description(name)
        stat_strings = [format(Locale.get_localized(LocaleKey::HEALTH_DESCRIPTOR), get_current_life.to_s)]
        if get_strength > 0
            stat_strings.append(format(Locale.get_localized(LocaleKey::DAMAGE_DESCRIPTOR), get_strength.to_s))
        end
        if get_intelligence > 0
            stat_strings.append(format(Locale.get_localized(LocaleKey::INTELLIGENCE_DESCRIPTOR), get_intelligence.to_s))
        end
        return format(Locale.get_localized(LocaleKey::MONSTER_DESCRIPTION), name) + TextFormatter.enumerate(stat_strings)
    end

    def rage_suffix
        if @status_handler.have? Rage
            return " (x2)"
        else
            return ""
        end
    end
end
