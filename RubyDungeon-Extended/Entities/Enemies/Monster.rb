class Monster
    NO_DEATH_EVENT = -> (players, monster, pack) {}

    def initialize(room, life, strength, intelligence, healing_coeff, name, basic_attack_messages, magic_attack_messages, heal_messages, escape_message, unpredictability, cowardice, picture, loots = [], attack_effects = [], death_event = NO_DEATH_EVENT)
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

    def get_room
        return @room
    end

    def set_strength(amount)
        @strength = amount
    end

    def status_handler
        return @status_handler
    end

    def died?
        return @lifebar.is_empty
    end

    def escaped?
        return @AI.escaped?
    end

    def choose_target(players)
        return @AI.choose_target(players, @strength)
    end

    def hurt(attack)
        damage = attack.damage_dealt
        SoundManager.play('ennemy_hurt')
        Narrator.hurt(@name.get_gendered_the, damage)
        sleep Settings.get_pause_duration
        @lifebar.damage(damage)
        attack.try_effects(self, damage)
        return Player::ACTED
    end

    def heal(amount)
        SoundManager.play('monster_heal')
        Narrator.heal(@name.get_gendered_the, amount)
        sleep Settings.get_pause_duration
        @lifebar.heal(amount)
    end

    def act(players, pack)
        @AI.act(players, pack, @strength, @intelligence)
        @status_handler.end_of_turn_actions(self)
    end

    def death_event(players, pack)
        @death_event.call(players, self, pack)
    end

    def set_death_event(death_event)
        @death_event = death_event
    end

    private

    def description(name)
        stat_strings = [
            format(Locale.get_localized(LocaleKey::HEALTH_DESCRIPTOR), get_current_life.to_s),
            format(Locale.get_localized(LocaleKey::DAMAGE_DESCRIPTOR), get_strength.to_s)
        ]
        if @intelligence > 0
            stat_strings.append(format(Locale.get_localized(LocaleKey::INTELLIGENCE_DESCRIPTOR), get_intelligence.to_s))
        end
        return format(Locale.get_localized(LocaleKey::MONSTER_DESCRIPTION), name) + Utils.enumerate(stat_strings)
    end
end
