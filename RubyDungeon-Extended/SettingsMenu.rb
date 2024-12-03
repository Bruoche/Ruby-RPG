class SettingsMenu
    def self.warning_pop_up(automatic = true)
        loop do
            Narrator.warning_pop_up(automatic)
            case Narrator.user_input
            when '1'
                Settings.set_warning_pop_up_enabled(true)
                return
            when '2'
                Settings.set_warning_pop_up_enabled(false)
                return
            else
                Narrator.unsupported_choice_error
            end
        end
    end

    def self.options_menu
        loop do
            Narrator.options_selection
            case Narrator.user_input
            when '0'
                return
            when '1'
                asset_size_menu
            when '2'
                sound_menu
            when '3'
                language_menu
            when '4'
                warning_pop_up(false)
            else
                Narrator.unsupported_choice_error
            end
        end
    end

    def self.asset_size_menu
        Narrator.asset_size_verification_line
        Narrator.add_space_of(3)
        ASCIIPrinter.print('example')
        Narrator.asset_size_options
        case Narrator.user_input
        when '0'
        when '1'
            Settings.set_print_small(false)
            asset_size_menu
        when '2'
            Settings.set_print_small(true)
            asset_size_menu
        else
            Narrator.unsupported_choice_error
            asset_size_menu
        end
    end

    def self.sound_menu
        loop do
            Narrator.sound_options
            case Narrator.user_input
            when '0'
                return
            when '1'
                music_volume_menu
            when '2'
                sound_effects_menu
            else
                Narrator.unsupported_choice_error
            end
        end
    end

    def self.language_menu
        loop do
            Narrator.language_options
            index = 1
            for available_locale in Locale::AVAILABLE_LOCALES
                Narrator.enumerate(Locale.get_localized(available_locale), index)
                index += 1
            end
            choosen_locale = Narrator.user_input.to_i
            if (choosen_locale > 0) && (choosen_locale <= Locale::AVAILABLE_LOCALES.length)
                Settings.set_locale(Locale::AVAILABLE_LOCALES[choosen_locale - 1])
                return
            else
                if choosen_locale == 0
                    return
                else
                    Narrator.unsupported_choice_error
                end
            end
        end
    end

    def self.music_volume_menu
        Narrator.ask_desired_volume
        new_volume = Narrator.user_input
        if new_volume.to_i.to_s != new_volume
            Narrator.unsupported_choice_error
            return music_volume_menu
        else
            new_volume = new_volume.to_i
        end
        if new_volume < 0
            new_volume = 0
        end
        if new_volume > 100
            new_volume = 100
        end
        Settings.set_music_volume(new_volume)
    end

    def self.sound_effects_menu
        Narrator.ask_if_sound_effects
        case Narrator.user_input
        when '0'
        when '1'
            Settings.set_sound_effects(true)
            SoundManager.play('stat_up')
        when '2'
            Settings.set_sound_effects(false)
        else
            Narrator.unsupported_choice_error
            sound_effects_menu
        end
    end
end
