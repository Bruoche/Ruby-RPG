class Monster
    def initialize(life, damage, name, basic_attack_message)
        @lifebar = Lifebar.new(life)
        @damage = damage
        @name = name
        @basic_attack_message = basic_attack_message
    end

    def get_description()
        return "#{@name.get_gendered_a} avec #{@lifebar.life_to_string} points de vies et #{@damage} dégats"
    end

    def get_description_the()
        return "#{@name.get_gendered_the} avec #{@lifebar.life_to_string} points de vies et #{@damage} dégats"
    end

    def get_name()
        return @name
    end

    def get_power()
        return @lifebar.get_max_life * @damage
    end

    def get_xp
        return get_power
    end

    def get_damage()
        return @damage
    end

    def set_damage(damage)
        @damage = damage
    end

    def is_dead()
        return @lifebar.is_empty
    end

    def hurt(attack)
        case attack.type
        when Attack::PHYSIC_TYPE
            damage = attack.damage
        when Attack::MAGIC_TYPE
            damage = rand(attack.damage)
        else
            puts("<< unexpected damage type encountered >>")
            damage = 0
        end
        puts("#{@name.get_gendered_the.capitalize} prend #{damage} dégats.")
        @lifebar.damage(damage)
    end

    def attack(player)
        puts "#{@name.get_gendered_the.capitalize} #{@basic_attack_message}"
        return player.hurt(Attack.new(rand(@damage), Attack::PHYSIC_TYPE))
    end
end
