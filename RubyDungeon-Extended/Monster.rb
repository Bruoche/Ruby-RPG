class Monster
    def initialize(life, damage, name)
        @lifebar = Lifebar.new(life)
        @damage = damage
        @name = name
    end

    def get_description()
        return "#{@name.get_gendered_a} avec #{@lifebar.life_to_string} points de vies et #{@damage} dégats"
    end

    def get_name()
        return @name
    end

    def get_power()
        return @lifebar.get_max_life * @damage
    end

    def is_dead()
        return @lifebar.is_empty
    end

    def hurt(damage)
        puts("#{@name.get_gendered_the.capitalize} prend #{damage} dégats.")
        @lifebar.damage(damage)
    end

    def attack()
        return rand(@damage)
    end
end
