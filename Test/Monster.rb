require "Lifebar"
require "Enums/MonsterNames"
require "NameGenerator"

class Monster
    def initialize(life, damage)
        @lifebar = Lifebar.new(life)
        @damage = damage
        @female = [true, false].sample
        if (@female)
            @name = NameGenerator.generate(MonsterNames::NAMES_F, MonsterNames::PRE_ADJECTIVES_F, MonsterNames::POST_ADJECTIVES_F)
        else
            @name = NameGenerator.generate(MonsterNames::NAMES_M, MonsterNames::PRE_ADJECTIVES_M, MonsterNames::POST_ADJECTIVES_M)
        end
    end

    def get_description()
        return "#{get_gendered_a} avec #{@lifebar.life_to_string} points de vies et #{@damage} dégats"
    end

    def get_gendered_a()
        if @female
            return "une #{@name}"
        else
            return "un #{@name}"
        end
    end

    def get_gendered_the()
        if @female
            return "la #{@name}"
        else
            return "le #{@name}"
        end
    end

    def get_power()
        return @lifebar.get_max_life * @damage
    end

    def is_dead()
        return @lifebar.is_empty
    end

    def hurt(damage)
        puts("#{get_gendered_the.capitalize} prend #{damage} dégats.")
        @lifebar.damage(damage)
    end

    def attack()
        return rand(@damage)
    end
end