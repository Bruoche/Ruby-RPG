class StatManager
    def load(player_data)
        @strength =                 player_data[:strength].to_i
        @intelligence =             player_data[:intelligence].to_i
        @agility =                  player_data[:agility].to_i
        @level =                    player_data[:level].to_i
        @current_xp =               player_data[:current_xp].to_i
    end

    def level
        return @level
    end

    def current_xp
        return @current_xp
    end

    def strength
        return @strength
    end

    def intelligence
        return @intelligence
    end

    def agility
        return @agility
    end

    def required_xp
        desired_level = @level + 1
        nb_monsters_max = 1 + @level.div(BaseStats::LEVELS_PER_EXTRA_MONSTER)
        potential_health = get_potential_stat(BaseStats::BASE_HEALTH, BaseStats::HEALTH_UPGRADE_PER_LEVEL)
        potential_strength = get_potential_stat(BaseStats::BASE_STRENGTH, BaseStats::STRENGTH_UPGRADE_PER_LEVEL)
        potential_power = potential_health * potential_strength * nb_monsters_max
        monster_pack_bonus = potential_power.div(10) * (nb_monsters_max-1)
        first_levels_increase = ((100*desired_level).round - 100)
        return potential_power + monster_pack_bonus + first_levels_increase
    end

    def add_xp(amount, lifebar)
        @current_xp += amount
        while (@current_xp >= required_xp)
            puts "Niveau supérieur !"
            @current_xp -= required_xp
            @level += 1
            stat_up(lifebar)
            lifebar.heal(lifebar.get_missing_life)
        end
    end

    private

    def stat_up(lifebar)
        for i in 1..nb_stats_up do
            loop do
                puts "Quelle statistique souhaitez-vous augmenter ? (#{i}/#{nb_stats_up})"
                puts "1) ♥ Vie            (#{lifebar.get_max_life} -> #{lifebar.get_max_life + BaseStats::HEALTH_UPGRADE_PER_LEVEL})"
                puts "2) ♣ Force          (#{@strength} -> #{@strength + BaseStats::STRENGTH_UPGRADE_PER_LEVEL})"
                puts "3) ♠ Intelligence   (#{@intelligence} -> #{@intelligence + BaseStats::INTELLIGENCE_UPGRADE_PER_LEVEL})"
                puts "4) ♦ Agilité        (#{@agility} -> #{@agility + BaseStats::AGILITY_UPGRADE_PER_LEVEL})"
                case Narrator.user_input
                when "1"
                    lifebar.increment(BaseStats::HEALTH_UPGRADE_PER_LEVEL)
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

    def nb_stats_up(level = @level)
        return BaseStats::NB_STATS_PER_LEVEL + (level.div(BaseStats::LEVELS_PER_EXTRA_MONSTER))
    end

    def get_potential_stat(base_stat, increase_rate)
        return base_stat + (@level * increase_rate.div(2) * nb_stats_up.div(2) + 1).div(2)
    end
end
