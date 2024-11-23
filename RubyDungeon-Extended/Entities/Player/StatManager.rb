class StatManager
    def load(player_data)
        @equipment = Equipment.new
        @strength =                 player_data[:strength].to_i
        @intelligence =             player_data[:intelligence].to_i
        @agility =                  player_data[:agility].to_i
        @level =                    player_data[:level].to_i
        @current_xp =               player_data[:current_xp].to_i
        @equipment.load(            player_data)
    end

    def level
        return @level
    end

    def level_to_string
        return "#{@level} (#{@current_xp}/#{required_xp})"
    end

    def current_xp
        return @current_xp
    end

    def strength
        return @strength - strength_penality
    end

    def strength_penality
        total_penality = @equipment.get_penality
        if total_penality > @agility
            strength_penality = ((total_penality - @agility) * BaseStats::STRENGTH_PENALITY_PERCENTAGE).div(100)
            if strength_penality > @strength
                strength_penality = @strength
            end
            return strength_penality
        else
            return 0
        end
    end

    def strength_to_string
        return "#{@strength}#{penality_text(strength_penality)}"
    end

    def raw_strength
        return @strength
    end

    def intelligence
        return @intelligence
    end

    def agility
        return @agility - agility_penality
    end

    def agility_penality
        penality = @equipment.get_penality
        if penality > @agility
            penality = @agility
        end
        return penality
    end

    def raw_agility
        return @agility
    end

    def agility_to_string
        return "#{@agility}#{penality_text(agility_penality)}"
    end

    def penality_text(penality_score)
        if penality_score > 0
            return " (-#{penality_score})"
        else
            return ''
        end
    end

    def defense
        return @equipment.get_defense
    end

    def defense_to_string
        physical_defense = @equipment.get_defense
        if physical_defense > 0
            return ' ⛊  ' + physical_defense.to_s
        else
            return ''
        end
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

    def get_equipment
        return @equipment
    end

    def add_xp(amount, lifebar, character_name)
        @current_xp += amount
        while (@current_xp >= required_xp)
            MusicManager.get_instance.set_ambiance(MusicManager::NO_MUSIC)
            SoundManager.play('level_up')
            Narrator.level_up
            @current_xp -= required_xp
            @level += 1
            stat_up(lifebar, character_name)
            lifebar.heal(lifebar.get_missing_life)
        end
    end

    private

    def stat_up(lifebar, character_name)
        for i in 1..nb_stats_up do
            loop do
                Narrator.stat_options(
                    i,
                    nb_stats_up,
                    lifebar.get_max_life,
                    BaseStats::HEALTH_UPGRADE_PER_LEVEL,
                    @strength,
                    BaseStats::STRENGTH_UPGRADE_PER_LEVEL,
                    @intelligence,
                    BaseStats::INTELLIGENCE_UPGRADE_PER_LEVEL,
                    @agility,
                    BaseStats::AGILITY_UPGRADE_PER_LEVEL
                )
                case Narrator.user_input(character_name)
                when '1'
                    lifebar.increment(BaseStats::HEALTH_UPGRADE_PER_LEVEL)
                    break
                when '2'
                    @strength += BaseStats::STRENGTH_UPGRADE_PER_LEVEL
                    break
                when '3'
                    @intelligence += BaseStats::INTELLIGENCE_UPGRADE_PER_LEVEL
                    break
                when '4'
                    @agility += BaseStats::AGILITY_UPGRADE_PER_LEVEL
                    break
                else
                    Narrator.unsupported_choice_error
                end
            end
            SoundManager.play('stat_up')
        end
    end

    def nb_stats_up(level = @level)
        return BaseStats::NB_STATS_PER_LEVEL + (level.div(BaseStats::LEVELS_PER_EXTRA_MONSTER))
    end

    def get_potential_stat(base_stat, increase_rate)
        return base_stat + (@level * increase_rate.div(2) * nb_stats_up.div(2) + 1).div(2)
    end
end
