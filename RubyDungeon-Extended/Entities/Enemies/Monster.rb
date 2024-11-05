class Monster
    def initialize(life, strength, intelligence, name, basic_attack_messages, magic_attack_messages, heal_messages, unpredictability, picture)
        @lifebar = Lifebar.new(life)
        @name = name
        @strength = strength
        @intelligence = intelligence
        @AI = EnnemyAI.new(basic_attack_messages, magic_attack_messages, heal_messages, name.get_gendered_the, unpredictability)
        @picture = picture
    end

    def get_description
        return "#{@name.get_gendered_a} avec #{get_current_life} points de vies et #{get_strength} dégats"
    end

    def get_description_the
        return "#{@name.get_gendered_the} avec #{get_current_life} points de vies et #{get_strength} dégats"
    end

    def get_name
        return @name
    end

    def get_picture
        return @picture
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
        SoundManager.play("ennemy_hurt")
        puts("#{@name.get_gendered_the.capitalize} prend #{damage} dégats.")
        sleep Settings::BATTLE_ACTION_PAUSE
        @lifebar.damage(damage)
        return Player::ACTED
    end

    def heal(amount)
        puts("#{@name.get_gendered_the.capitalize} récupère #{amount} points de vie.")
        @lifebar.heal(amount)
    end

    def act(players, pack)
        @AI.act(players, pack, @strength, @intelligence)
    end
end
