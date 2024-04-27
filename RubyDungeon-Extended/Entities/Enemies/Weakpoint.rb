class Weakpoint
    def initialize(life, name, death_event)
        @lifebar = Lifebar.new(life)
        @name = name
        @death_event = death_event
    end

    def get_name()
        return @name
    end

    def get_description()
        return "#{@name.get_gendered_the} avec #{@lifebar.life_to_string} points de vies"
    end

    def get_life()
        return @lifebar.get_life
    end

    def get_max_life()
        return @lifebar.get_max_life
    end

    def is_dead()
        return @lifebar.is_empty
    end

    def hurt(attack)
        damage = attack.damage
        puts("#{@name.get_gendered_the.capitalize} prend #{damage} dégats.")
        @lifebar.damage(damage)
    end

    def death_event(parent)
        @death_event.call(@name, parent)
    end
end
