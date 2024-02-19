require "./Lifebar"
class Player
    def initialize(health, damage, heal)
        @lifebar = Lifebar.new(health)
        @damage = damage
        @heal = heal
        @level = 0
        @current_xp = 0
        @next_level = (health + heal) * damage
    end
    
    def get_full_status()
        return "Vous êtes un.e jeune aventurier.e de niveau #{@level} (#{@current_xp}/#{@next_level} xp)\n" + get_status
    end
    
    def get_status()
        return "Vous avez #{@lifebar.life_to_string()} points de vie, faites #{@damage} dégats et pouvez soigner #{@heal} points de vies."
    end
    
    def get_level()
        return @level
    end
    
    def is_dead()
        return @lifebar.is_empty
    end
    
    # Actions
    
    def hurt(damage)
        puts "Le monstre vous attaque, vous subissez #{damage} dégats."
        @lifebar.damage(damage)
    end
    
    def attack()
        return @damage
    end
    
    def heal()
        if (@heal > 1)
            amount = rand(1..@heal)
        else
            amount = @heal
        end
        puts "Vous vous soignez de #{amount} points de vies."
        @lifebar.heal(amount)
    end
    
    def patch_up()
        if (@lifebar.get_missing_life > 0)
            amount = rand(@lifebar.get_missing_life)
            puts "Suite à votre combat, vous tentez de soigner vos blessures avec ce que vous trouvez dans la pièce..."
            puts "Vous regagnez #{amount} points de vie."
            @lifebar.heal(amount)
        end
    end
    
    # Level management
    
    def get_xp(xp)
        @current_xp += xp
        level_up
    end
    
    def level_up()
        if (@current_xp >= @next_level)
            puts "Niveau gagné!"
            @level += 1
            stat_up
            @current_xp -= @next_level
            @next_level = @next_level*2
            @lifebar.heal(@lifebar.get_max_life)
            level_up
        end
    end
    
    def stat_up
        puts "Que voulez-vous augmenter?"
        puts "      1) Vie"
        puts "      2) Attaque"
        puts "      3) Soin"
        puts
        print "  >> "
        case gets.chomp
        when "1"
            puts
            @lifebar.increment()
        when "2"
            puts
            @damage += 1
        when "3"
            puts
            @heal += 1
        else
            puts
            puts "Choix invalide, Veuillez simplement écrire le chiffre correspondant à une des options proposée."
            stat_up
        end
    end
end

joueur = Player.new(10, 5, 0)
puts joueur.get_full_status
puts joueur.new