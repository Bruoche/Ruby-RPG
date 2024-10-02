class Settings
    PRINT_SMALL_SYM = :print_small
    MUSIC_VOLUME_SYM = :music_volume
    SOUND_EFFECTS_SYM = :sound_effects
    DEFAULT_SETTINGS = {
        Settings::PRINT_SMALL_SYM => false,
        Settings::MUSIC_VOLUME_SYM => 80,
        Settings::SOUND_EFFECTS_SYM => true
    }
    BATTLE_ACTION_PAUSE = 0.3

    def self.print_small
        update_settings
        return @@settings[PRINT_SMALL_SYM] == "true"
    end

    def self.music_volume
        update_settings
        return @@settings[MUSIC_VOLUME_SYM].to_i
    end

    def self.sound_effects
        update_settings
        return @@settings[SOUND_EFFECTS_SYM] == "true"
    end

    def self.set_print_small(print_small)
        @@settings[PRINT_SMALL_SYM] = print_small
        save_settings
    end

    def self.set_music_volume(volume)
        @@settings[MUSIC_VOLUME_SYM] = volume
        save_settings
    end

    def self.set_sound_effects(sound_effects)
        @@settings[SOUND_EFFECTS_SYM] = sound_effects
        save_settings
    end

    private

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
