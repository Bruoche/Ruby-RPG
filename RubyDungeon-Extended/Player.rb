class Player
    def initialize(player_data)
        @inventory = Inventory.new()
        @inventory.load(        player_data[:inventory])
        @name =                 player_data[:name]
        @lifebar = Lifebar.new( player_data[:health].to_i)
        @strength =             player_data[:strength].to_i
        @intelligence =         player_data[:intelligence].to_i
        @agility =              player_data[:agility].to_i
        @level =                player_data[:level].to_i
        @current_xp =           player_data[:current_xp].to_i
        @next_level =           player_data[:next_level].to_i
    end

    def get_save_data()
        return {
            "name": @name,
            "health": @lifebar.get_max_life,
            "strength": @strength,
            "intelligence": @intelligence,
            "agility": @agility,
            "inventory": @inventory.get_save_data,
            "level": @level,
            "current_xp": @current_xp,
            "next_level": @next_level
        }
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

    def get_escape_chances(monsters_power)
		spot_risk = (monsters_power.div(10) - @agility) + 1
        spot_risk = (spot_risk*100)/(monsters_power.div(10) + 1)
        if spot_risk <= 0
            return 100
        end
		return 100 - spot_risk
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

    def heal(amount = nil)
        if amount != nil
            puts "Vous obtenez #{amount} points de vie."
            @lifebar.heal(amount)
        else
            if (@intelligence > 0)
                amount = rand(1..@intelligence)
                puts "Vous vous soignez #{amount} points de vie."
                @lifebar.heal(amount)
            else
                puts "Vous ne savez pas comment vous soigner. Aucun point de vie n'est régénéré."
            end
        end
    end

    def patch_up()
        if (@lifebar.get_missing_life > 0)
            amount = rand(1..(@lifebar.get_missing_life + 1)) - 1
            puts "Vous vous soignez #{amount} points de vie."
            @lifebar.heal(amount)
            return true
        else
            puts "Vous n'êtes pas blessé et n'avez donc pas besoin de vous soigner."
            return false
        end
    end

    def get_xp(amount)
        @current_xp += amount
        while (@current_xp >= @next_level)
            puts "Niveau supérieur !"
            @level += 1
            @current_xp -= @next_level
            @next_level *= 2
            stat_up(BaseStats::NB_STATS_PER_LEVEL + (@level.div(BaseStats::LEVELS_PER_EXTRA_MONSTER + 1)))
            @lifebar.heal(@lifebar.get_missing_life)
        end
    end

    def get_new_item(item)
        @inventory.add(item)
    end

    def use_item()
        @inventory.ask_use(self)
    end

    def stat_up(nb_stats)
        for i in 1..nb_stats do
            loop do
                puts "Quelle statistique souhaitez-vous augmenter ? (#{i}/#{nb_stats})"
                puts "1) Vie            (#{@lifebar.get_max_life} -> #{@lifebar.get_max_life + BaseStats::HEALTH_UPGRADE_PER_LEVEL})"
                puts "2) Force          (#{@strength} -> #{@strength + BaseStats::STRENGTH_UPGRADE_PER_LEVEL})"
                puts "3) Intelligence   (#{@intelligence} -> #{@intelligence + BaseStats::INTELLIGENCE_UPGRADE_PER_LEVEL})"
                puts "4) Agilitée       (#{@agility} -> #{@agility + BaseStats::AGILITY_UPGRADE_PER_LEVEL})"
                case Narrator.user_input
                when "1"
                    @lifebar.increment(BaseStats::HEALTH_UPGRADE_PER_LEVEL)
                    break
                when "2"
                    @strength += BaseStats::STRENGTH_UPGRADE_PER_LEVEL
                    break
                when "3"
                    @intelligence += BaseStats::INTELLIGENCE_UPGRADE_PER_LEVEL
                    break
                when "4"
                    @agility += BaseStats::AGILITY_UPGRADE_PER_LEVEL
                    break
                else
                    puts "Choix invalide. Veuillez simplement renseigner le chiffre correspondant à votre choix"
                end
            end
        end
    end
end
