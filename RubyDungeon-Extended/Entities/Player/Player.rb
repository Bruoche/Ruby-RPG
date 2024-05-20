class Player
    def initialize(player_data)
        @inventory = Inventory.new()
        @inventory.load(            player_data[:inventory])
        @name =                     player_data[:name]
        @lifebar = Lifebar.new(     player_data[:health].to_i)
        @strength =                 player_data[:strength].to_i
        @intelligence =             player_data[:intelligence].to_i
        @agility =                  player_data[:agility].to_i
        @level =                    player_data[:level].to_i
        @current_xp =               player_data[:current_xp].to_i
        time_passed_saved =         player_data[:time_played]
        if time_passed_saved == nil
            @time_played = Time.new(0)
        else
            @time_played = Time.parse(time_passed_saved)
        end
        @creation_timestamp = Time.now
        puts "loading playtime as #{@time_played}"
    end

    def get_save_data()
        puts "saving playtime as #{@time_played + time_passed}"
        return {
            "name": @name,
            "health": @lifebar.get_max_life,
            "strength": @strength,
            "intelligence": @intelligence,
            "agility": @agility,
            "inventory": @inventory.get_save_data,
            "level": @level,
            "current_xp": @current_xp,
            "time_played": @time_played + time_passed
        }
    end

    def time_passed
        return Time.now - @creation_timestamp
    end

    def get_full_status()
        return "Vous êtes un.e aventurier.e de niveau #{@level} (#{@current_xp}/#{required_xp}).\n" + get_status
    end

    def get_status()
        return "Vous avez #{@lifebar.life_to_string} points de vies, faites #{@strength} dégats et avez #{@intelligence} points de puissance magique."
    end

    def get_level()
        return @level
    end

    def required_xp()
        desired_level = @level + 1
        nb_monsters_max = 1 + @level.div(BaseStats::LEVELS_PER_EXTRA_MONSTER)
        potential_health = get_potential_stat(BaseStats::BASE_HEALTH, BaseStats::HEALTH_UPGRADE_PER_LEVEL)
        potential_strength = get_potential_stat(BaseStats::BASE_STRENGTH, BaseStats::STRENGTH_UPGRADE_PER_LEVEL)
        potential_power = potential_health * potential_strength * nb_monsters_max
        monster_pack_bonus = potential_power.div(10) * (nb_monsters_max-1)
        first_levels_increase = ((100*desired_level).round - 100)
        return potential_power + monster_pack_bonus + first_levels_increase
    end

    def get_escape_chances(monsters_power)
        if (monsters_power == 0)
            return 100
        end
		spot_risk = (monsters_power - stealth_score)
        spot_risk = (spot_risk*100)/(monsters_power)
        if spot_risk <= 0
            return 100
        end
		return 100 - spot_risk
	  end

    def can_escape(monsters_power)
        perception_score = rand(monsters_power + 1)
        return perception_score < stealth_score
    end

    def have(item)
        return @inventory.have(item)
    end

    def is_dead()
        return @lifebar.is_empty
    end

    def hurt(attack)
        damage = attack.damage
        puts("Vous prenez #{damage} dégats.")
        @lifebar.damage(damage)
    end

    def strength_attack()
        return Attack.new(@strength, Attack::PHYSIC_TYPE)
    end

    def magic_attack()
        return Attack.new(@intelligence, Attack::MAGIC_TYPE)
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
        while (@current_xp >= required_xp)
            puts "Niveau supérieur !"
            @current_xp -= required_xp
            @level += 1
            stat_up()
            @lifebar.heal(@lifebar.get_missing_life)
        end
    end

    def get_new_item(item)
        @inventory.add(item)
    end

    def use_item()
        @inventory.ask_use(self)
    end

    def stat_up()
        for i in 1..nb_stats_up do
            loop do
                puts "Quelle statistique souhaitez-vous augmenter ? (#{i}/#{nb_stats_up})"
                puts "1) Vie            (#{@lifebar.get_max_life} -> #{@lifebar.get_max_life + BaseStats::HEALTH_UPGRADE_PER_LEVEL})"
                puts "2) Force          (#{@strength} -> #{@strength + BaseStats::STRENGTH_UPGRADE_PER_LEVEL})"
                puts "3) Intelligence   (#{@intelligence} -> #{@intelligence + BaseStats::INTELLIGENCE_UPGRADE_PER_LEVEL})"
                puts "4) Agilité       (#{@agility} -> #{@agility + BaseStats::AGILITY_UPGRADE_PER_LEVEL})"
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

    private

    def stealth_score
        return (@agility**2).div(2)
    end

    def nb_stats_up(level = @level)
        return BaseStats::NB_STATS_PER_LEVEL + (level.div(BaseStats::LEVELS_PER_EXTRA_MONSTER))
    end

    def get_potential_stat(base_stat, increase_rate)
        return base_stat + (@level * increase_rate.div(2) * nb_stats_up.div(2) + 1).div(2)
    end
end
