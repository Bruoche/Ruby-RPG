require "./Lifebar"
class Monster
    def initialize(life, damage)
        @lifebar = Lifebar.new(life)
        @damage = damage
    end
    
    def get_description()
        return "monstre avec #{@lifebar.life_to_string} points de vie et #{@damage} d'attaque"
    end
    
    def get_score()
        return @lifebar.get_max_life * @damage
    end
    
    def is_dead()
        return @lifebar.is_empty()
    end
    
    # Actions
    
    def hurt(damage)
        puts "Vous attaquez le monstre, et il subit #{damage} dégats."
        @lifebar.damage(damage)
    end
    
    def attack()
        return rand(@damage)
    end
end