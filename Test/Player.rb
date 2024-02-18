require "Lifebar"
class Player
    def initialize(life, damage, heal, discretion)
        @lifebar = Lifebar.new(life)
        @damage = damage
        @heal = heal
        @discretion = discretion
        @level = 0
        @current_xp = 0
        @next_level = (life + heal) * damage
    end

    def get_full_status()
        return "Vous êtes un.e aventurier.e de niveau #{@level} (#{@current_xp}/#{@next_level}).\n" + get_status
    end

    def get_status()
        return "Vous avez #{@lifebar.life_to_string} points de vies, faites #{@damage} dégats et pouvez soigner #{@heal} points de vie."
    end

    def is_dead()
        return @lifebar.is_empty
    end

    def get_level()
        return @level
    end

    def get_discretion()
        return @discretion
    end

    def hurt(damage)
        puts("Vous prenez #{damage} dégats.")
        @lifebar.damage(damage)
    end

    def attack()
        return @damage
    end

    def heal()
        if (@heal > 0)
            amount = rand(1..@heal)
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
                puts "2) Dégats"
                puts "3) Soins"
                puts "4) Discretion"
                print "     >> "
                case gets.chomp
                when "1"
                    @lifebar.increment
                    break
                when "2"
                    @damage += 1
                    break
                when "3"
                    @heal += 2
                    break
                when "4"
                    @discretion += 1
                    break
                else
                    puts "Choix invalide. Veuillez simplement renseigner le chiffre correspondant à votre choix"
                end
            end
        end
    end
end
