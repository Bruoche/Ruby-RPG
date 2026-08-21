class StatManager
    def load(player_data)
        @equipment = Equipment.new
        @lifebar = Lifebar.new(     player_data[:health].to_i)
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

    def lifebar
        return @lifebar
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
        potential_xp_gains = potential_health * potential_strength * nb_monsters_max
        monster_pack_bonus = potential_xp_gains.div(10) * (nb_monsters_max-1)
        linear_increase = (BaseStats::LINEAR_XP_REQUIREMENT_COEFF * desired_level) - BaseStats::LINEAR_XP_REQUIREMENT_COEFF
        return potential_xp_gains + monster_pack_bonus + linear_increase
    end

    def get_equipment
        return @equipment
    end

    def add_xp(amount, character_name)
        @current_xp += amount
        while (@current_xp >= required_xp)
            MusicManager.get_instance.set_ambiance(MusicManager::NO_MUSIC)
            SoundManager.play('level_up')
            Narrator.level_up(character_name.capitalize)
            @current_xp -= required_xp
            @level += 1
            stat_up(character_name)
            @lifebar.heal(@lifebar.get_missing_life)
        end
    end

    def prep_respec
        @selected_health = 0
        @selected_strength = 0
        @selected_intelligence = 0
        @selected_agility = 0
    end

    def ask_respec(character_name)
        total_stats = total_stat
        loop do
            selected_stats = @selected_health + @selected_strength + @selected_intelligence + @selected_agility
            available_stats = total_stats - selected_stats
            Narrator.write_formatted(LocaleKey::ASK_RESPEC, {
                LocaleKey::F_CURRENT => available_stats,
                LocaleKey::F_TOTAL => total_stats
            })
            if available_stats <= 0
                return_option = LocaleKey::CONFIRM
            else
                return_option = LocaleKey::GO_BACK
            end
            Narrator.write("    0) " + Locale.get_localized(return_option).capitalize())
            print_stat_cards_for
            case Narrator.user_input(character_name)
            when '0'
                if selected_stats <= 0 || available_stats <= 0
                    return
                elsif Narrator.ask_confirmation(LocaleKey::ASK_QUIT_RESPEC, character_name)
                    prep_respec
                    return
                end
            when '1'
                @selected_health = ask_points_attributed_for(LocaleKey::HEALTH, available_stats, @selected_health, character_name)
            when '2'
                @selected_strength = ask_points_attributed_for(LocaleKey::STRENGTH, available_stats, @selected_strength, character_name)
            when '3'
                @selected_intelligence = ask_points_attributed_for(LocaleKey::INTELLIGENCE, available_stats, @selected_intelligence, character_name)
            when '4'
                @selected_agility = ask_points_attributed_for(LocaleKey::AGILITY, available_stats, @selected_agility, character_name)
            end
        end
    end

    def confirm_respec
        if !respec_valid?
            return false
        end
        @lifebar.set_max_health(calculate_stat_from(@selected_health,        BaseStats::BASE_HEALTH,         BaseStats::HEALTH_UPGRADE_PER_LEVEL))
        @strength = calculate_stat_from(            @selected_strength,      BaseStats::BASE_STRENGTH,       BaseStats::STRENGTH_UPGRADE_PER_LEVEL)
        @intelligence = calculate_stat_from(        @selected_intelligence,  BaseStats::BASE_INTELLIGENCE,   BaseStats::INTELLIGENCE_UPGRADE_PER_LEVEL)
        @agility = calculate_stat_from(             @selected_agility,       BaseStats::BASE_AGILITY,        BaseStats::AGILITY_UPGRADE_PER_LEVEL)
    end

    def respec_valid?
        return ((@selected_health + @selected_strength + @selected_intelligence + @selected_agility) == total_stat)
    end

    def respec_different?
        return (calculate_stat_from(@selected_health, BaseStats::BASE_HEALTH, BaseStats::HEALTH_UPGRADE_PER_LEVEL) != @lifebar.get_max_life) &&
            (calculate_stat_from(@selected_strength, BaseStats::BASE_STRENGTH, BaseStats::STRENGTH_UPGRADE_PER_LEVEL) != @strength) &&
            (calculate_stat_from(@selected_intelligence, BaseStats::BASE_INTELLIGENCE, BaseStats::INTELLIGENCE_UPGRADE_PER_LEVEL) != @intelligence) &&
            (calculate_stat_from(@selected_agility, BaseStats::BASE_AGILITY, BaseStats::AGILITY_UPGRADE_PER_LEVEL) != @agility)
    end

    def respec_summary_card
        summary = ASCIIPicture.new([
            '♥ ' + Locale.get_localized(LocaleKey::HEALTH).capitalize + ': ',
            '♣ ' + Locale.get_localized(LocaleKey::STRENGTH).capitalize + ': ',
            '♠ ' + Locale.get_localized(LocaleKey::INTELLIGENCE).capitalize + ': ',
            '♦ ' + Locale.get_localized(LocaleKey::AGILITY).capitalize + ': '
        ])
        summary.juxtapose(ASCIIPicture.new([
            @lifebar.get_max_life.to_s,
            @strength.to_s,
            @intelligence.to_s,
            @agility.to_s
        ]))
        if !respec_valid?
            return summary.get_ascii
        end
        summary.juxtapose(ASCIIPicture.new([
            ' -> ' + calculate_stat_from(@selected_health, BaseStats::BASE_HEALTH, BaseStats::HEALTH_UPGRADE_PER_LEVEL).to_s,
            ' -> ' + calculate_stat_from(@selected_strength, BaseStats::BASE_STRENGTH, BaseStats::STRENGTH_UPGRADE_PER_LEVEL).to_s,
            ' -> ' + calculate_stat_from(@selected_intelligence, BaseStats::BASE_INTELLIGENCE, BaseStats::INTELLIGENCE_UPGRADE_PER_LEVEL).to_s,
            ' -> ' + calculate_stat_from(@selected_agility, BaseStats::BASE_AGILITY, BaseStats::AGILITY_UPGRADE_PER_LEVEL).to_s
        ]))
        return summary.get_ascii
    end

    private

    def stat_up(character_name)
        for i in 1..nb_stats_up do
            loop do
                Narrator.stat_options(
                    i,
                    nb_stats_up,
                    @lifebar.get_max_life,
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
                    @lifebar.increment(BaseStats::HEALTH_UPGRADE_PER_LEVEL)
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

    def total_stat
        result = 0
        for level in 0..@level do
            result += nb_stats_up(level)
        end
        return result
    end

    def get_potential_stat(base_stat, increase_rate)
        return base_stat + (@level * increase_rate.div(2) * nb_stats_up.div(2) + 1).div(2)
    end

    def ask_points_attributed_for(category, available_stats, current_stat, character_name)
        if available_stats <= 0 && current_stat <= 0
            SoundManager.play('spell_fart')
            Narrator.write(LocaleKey::NO_STAT_TO_ATTRIBUTE)
            return 0
        end
        currently_available = available_stats + current_stat
        loop do
            Narrator.write_formatted(LocaleKey::ASK_STAT_ATTRIBUTION, {
                LocaleKey::F_NAME => category,
                LocaleKey::F_TOTAL => currently_available,
                LocaleKey::F_CURRENT => current_stat
            })
            points_choosen = Narrator.user_input_int(character_name)
            if points_choosen < 0
                Narrator.unsupported_choice_error
            else
                if points_choosen > currently_available
                    points_choosen = currently_available
                end
                return points_choosen
            end
        end
    end

    def print_stat_cards_for
        stats_label = ASCIIPicture.new([
            "    1) " + Locale.get_localized(LocaleKey::CARD_HEALTH),
            "    2) " + Locale.get_localized(LocaleKey::CARD_STRENGTH),
            "    3) " + Locale.get_localized(LocaleKey::CARD_INTELLIGENCE),
            "    4) " + Locale.get_localized(LocaleKey::CARD_AGILITY)
        ])
        stat_presentation = ASCIIPicture.new([
            @selected_health.to_s,
            @selected_strength.to_s,
            @selected_intelligence.to_s,
            @selected_agility.to_s
        ])
        stat_presentation.juxtapose(ASCIIPicture.new([
            stat_respec_presentation_center(BaseStats::HEALTH_UPGRADE_PER_LEVEL),
            stat_respec_presentation_center(BaseStats::STRENGTH_UPGRADE_PER_LEVEL),
            stat_respec_presentation_center(BaseStats::INTELLIGENCE_UPGRADE_PER_LEVEL),
            stat_respec_presentation_center(BaseStats::AGILITY_UPGRADE_PER_LEVEL)
        ]))
        stat_presentation.juxtapose(ASCIIPicture.new([
            calculate_stat_from(@selected_health,       BaseStats::BASE_HEALTH, BaseStats::HEALTH_UPGRADE_PER_LEVEL).to_s,
            calculate_stat_from(@selected_strength,     BaseStats::BASE_STRENGTH, BaseStats::STRENGTH_UPGRADE_PER_LEVEL).to_s,
            calculate_stat_from(@selected_intelligence, BaseStats::BASE_INTELLIGENCE, BaseStats::INTELLIGENCE_UPGRADE_PER_LEVEL).to_s,
            calculate_stat_from(@selected_agility,      BaseStats::BASE_AGILITY, BaseStats::AGILITY_UPGRADE_PER_LEVEL).to_s
        ]))
        stat_presentation.juxtapose(ASCIIPicture.new([
            Locale.get_localized(LocaleKey::RESPEC_DEFAULT_LABEL) + @lifebar.get_max_life.to_s,
            Locale.get_localized(LocaleKey::RESPEC_DEFAULT_LABEL) + @strength.to_s,
            Locale.get_localized(LocaleKey::RESPEC_DEFAULT_LABEL) + @intelligence.to_s,
            Locale.get_localized(LocaleKey::RESPEC_DEFAULT_LABEL) + @agility.to_s,
        ]))
        respec_card = ASCIIPicture.new(stats_label.get_ascii)
        respec_card.juxtapose(stat_presentation)
        ASCIIPrinter.print([respec_card.get_ascii], Alignments::LEFT)
    end

    def stat_respec_presentation_center(stat_increase_per_points)
        return format(" (x%d) -> ", stat_increase_per_points)
    end

    def calculate_stat_from(number_of_points, base_stat, stat_increase_per_points)
        return base_stat + (number_of_points * stat_increase_per_points)
    end
end
