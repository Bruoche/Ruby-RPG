class Settings
    POP_UP_ON_START_SYM = :pop_up_on_start
    PRINT_SMALL_SYM = :print_small
    MUSIC_VOLUME_SYM = :music_volume
    SOUND_EFFECTS_SYM = :sound_effects
    LOCALE_SYM = :locale
    DEFAULT_SETTINGS = {
        Settings::POP_UP_ON_START_SYM => 'true',
        Settings::PRINT_SMALL_SYM => 'false',
        Settings::MUSIC_VOLUME_SYM => 80,
        Settings::SOUND_EFFECTS_SYM => 'true',
        Settings::LOCALE_SYM => Locale::ID_EN
    }
    BATTLE_ACTION_PAUSE = 0.3

    def self.warning_pop_up_enabled
        return get_setting(POP_UP_ON_START_SYM) == 'true'
    end

    def self.print_small
        return get_setting(PRINT_SMALL_SYM) == 'true'
    end

    def self.music_volume
        return get_setting(MUSIC_VOLUME_SYM).to_i
    end

    def self.sound_effects
        return get_setting(SOUND_EFFECTS_SYM) == 'true'
    end

    def self.locale
        return get_setting(LOCALE_SYM)
    end

    def self.set_warning_pop_up_enabled(pop_up_enabled)
        set_setting(POP_UP_ON_START_SYM, pop_up_enabled)
    end

    def self.set_print_small(print_small)
        set_setting(PRINT_SMALL_SYM, print_small)
    end

    def self.set_music_volume(volume)
        set_setting(MUSIC_VOLUME_SYM, volume)
    end

    def self.set_sound_effects(sound_effects)
        set_setting(SOUND_EFFECTS_SYM, sound_effects)
    end

    def self.set_locale(locale)
        set_setting(LOCALE_SYM, locale)
    end

    private

    def self.get_setting(key)
        update_settings
        if @@settings.key?(key)
            return @@settings[key]
        else
            return DEFAULT_SETTINGS[key]
        end
    end

    def self.set_setting(key, value)
        @@settings[key] = value
        save_settings
    end

    def self.update_settings
        @@settings = SaveManager.get_settings
        if @@settings == nil
            @@settings = DEFAULT_SETTINGS
        end
    end

    def self.save_settings
        SaveManager.save_settings(@@settings)
    end
end
