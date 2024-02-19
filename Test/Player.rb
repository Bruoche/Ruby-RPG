require "Lifebar"
class Player
    def initialize(life, strength, intelligence, agility)
        @lifebar = Lifebar.new(life)
        @strength = strength
        @intelligence = intelligence
        @agility = agility
        @level = 0
        @current_xp = 0
        @next_level = (life + intelligence) * strength
    end

    def get_full_status()
        return "Vous êtes un.e aventurier.e de niveau #{@level} (#{@current_xp}/#{@next_level}).\n" + get_status
    end

    def get_status()
        return "Vous avez #{@lifebar.life_to_string} points de vies, faites #{@strength} dégats et avez #{@intelligence} points de puissance magique."
    end

    def get_level()
        return @level
    end

    def get_spot_risk(monsters_power)
		spot_risk = (monsters_power.div(10) - @agility) + 1
        spot_risk = (spot_risk*100)/(monsters_power.div(10) + 1)
        if spot_risk < 0
            return 0
        end
		return spot_risk
	end

    def can_escape(monsters_power)
        perception_score = rand(monsters_power.div(10) + 1)
        return perception_score < @agility
    end

    def is_dead()
        return @lifebar.is_empty
    end

    def hurt(damage)
        puts("Vous prenez #{damage} dégats.")
        @lifebar.damage(damage)
    end

    def strength_attack()
        return @strength
    end

    def magic_attack()
        return @intelligence
    end

    def heal()
        if (@intelligence > 0)
            amount = rand(1..@intelligence)
            puts "Vous vous soignez #{amount} points de vie."
            @lifebar.heal(amount)
        else
            puts "Vous ne savez pas comment vous soigner. Aucun point de vie n'est régénéré."
        end
    end

    def patch_up()
        if (@lifebar.get_missing_life > 0)
            puts "Une fois le combat terminé, Vous recherchez de quoi vous soigner dans la salle..."
            amount = rand(@lifebar.get_missing_life)
            puts "Vous vous soignez #{amount} points de vie."
            @lifebar.heal(amount)
        end
    end

    def get_xp(amount)
        @current_xp += amount
        while (@current_xp >= @next_level)
            puts "Niveau supérieur !"
            @level += 1
            @current_xp -= @next_level
            @next_level *= 2
            stat_up(BaseStats::NB_STATS_PER_LEVEL)
            @lifebar.heal(@lifebar.get_missing_life)
        end
    end

    def stat_up(nb_stats)
        for i in 1..nb_stats do
            loop do
                puts "Quelle statistique souhaitez-vous augmenter ? (#{i}/#{nb_stats})"
                puts "1) Vie"
                puts "2) Force"
                puts "3) Intelligence"
                puts "4) Agilitée"
                print "     >> "
                case gets.chomp
                when "1"
                    @lifebar.increment
                    break
                when "2"
                    @strength += 1
                    break
                when "3"
                    @intelligence += 2
                    break
                when "4"
                    @agility += 1
                    break
                else
                    puts "Choix invalide. Veuillez simplement renseigner le chiffre correspondant à votre choix"
                end
            end
        end
    end
end
