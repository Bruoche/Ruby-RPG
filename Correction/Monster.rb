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

	def get_escape_chances(player_discretion)
		spot_risk = (get_room_power - @player_discretion) + 1
        spot_risk = (spot_risk*100)/(get_room_power + 1)
        if spot_risk < 0
            return 0
        end
		return spot_risk
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
