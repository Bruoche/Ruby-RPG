class Monster
    def initialize(life, strength, intelligence, name, basic_attack_messages, magic_attack_messages, heal_messages, unpredictability, picture, loots = [])
        @lifebar = Lifebar.new(life)
        @name = name
        @strength = strength
        @intelligence = intelligence
        @AI = EnnemyAI.new(basic_attack_messages, magic_attack_messages, heal_messages, name.get_gendered_the, unpredictability)
        @picture = picture
        @loots = loots
    end

    def get_description
        return format(Locale.get_localized(Locale::KEY_MONSTER_DESCRIPTION), {
            Locale::F_KEY_SUBJECT => @name.get_gendered_a,
            Locale::F_KEY_LIFE => get_current_life,
            Locale::F_KEY_STRENGTH => get_strength
        })
    end

    def get_description_the
        return format(Locale.get_localized(Locale::KEY_MONSTER_DESCRIPTION), {
            Locale::F_KEY_SUBJECT => @name.get_gendered_the,
            Locale::F_KEY_LIFE => get_current_life,
            Locale::F_KEY_STRENGTH => get_strength
        })
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
        return @lifebar.get_max_life * @strength
    end

    def get_xp
        return get_power
    end

    def get_strength
        return @strength
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

    def set_strength(amount)
        @strength = amount
    end

    def died?
        return @lifebar.is_empty
    end

    def choose_target(players)
        return @AI.choose_target(players, @strength)
    end

    def hurt(attack)
        damage = attack.damage_dealt
        SoundManager.play('ennemy_hurt')
        Narrator.hurt(@name.get_gendered_the, damage)
        sleep Settings::BATTLE_ACTION_PAUSE
        @lifebar.damage(damage)
        return Player::ACTED
    end

    def heal(amount)
        Narrator.heal(@name.get_gendered_the, amount)
        @lifebar.heal(amount)
    end

    def act(players, pack)
        @AI.act(players, pack, @strength, @intelligence)
    end
end
