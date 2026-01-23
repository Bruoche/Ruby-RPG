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

    def self.language_pop_up
        loop do
            Narrator.language_pop_up_options
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

    def self.options_menu
        loop do
            Narrator.options_selection
            case Narrator.user_input
            when '0'
                return
            when '1'
                asset_menu
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

    def self.asset_menu
        loop do
            Narrator.write(LocaleKey::ASSET_OPTIONS)
            case Narrator.user_input
            when '0'
                return
            when '1'
                asset_size_menu
            when '2'
                asset_alignment_menu
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

    def self.asset_alignment_menu
        loop do
            Narrator.add_space_of 1
            ASCIIPrinter.print('example', Settings.picture_alignment)
            Narrator.add_space_of 1
            for line in Locale.get_localized(LocaleKey::EXAMPLE_DESCRIPTION)
                Narrator.write(TextFormatter.align(line, Settings.picture_alignment))
            end
            Narrator.add_space_of 1
            Narrator.write(LocaleKey::ASK_IMAGE_ALIGNMENT)
            case Narrator.user_input
            when '0'
                return
            when '1'
                Settings.set_picture_alignment(Alignments::LEFT)
            when '2'
                Settings.set_picture_alignment(Alignments::CENTER)
            when '3'
                Settings.set_picture_alignment(Alignments::RIGHT)
            else
                Narrator.unsupported_choice_error
            end
        end
    end

    def self.sound_menu
        loop do
            Narrator.sound_options
            case Narrator.user_input
            when '0'
                return
            when '1'
                Settings.set_music_volume(music_volume_menu(Settings::music_volume))
            when '2'
                Settings.set_sound_effects_volume(music_volume_menu(Settings::sound_effects_volume))
                SoundManager.play("stat_up")
            when '3'
                Settings.set_max_preloaded_songs(preloaded_songs_menu(Settings::max_preloaded_songs))
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

    def self.music_volume_menu(current_volume)
        return Narrator.ask_desired_volume(current_volume)
    end

    def self.preloaded_songs_menu(current_preloaded_songs_amount)
        Narrator.write(LocaleKey::ASK_MAX_SONG_PRELOADED_INTRO)
        return Narrator.ask_range(format(Locale.get_localized(LocaleKey::ASK_MAX_SONG_PRELOADED), current_preloaded_songs_amount))
    end
end
