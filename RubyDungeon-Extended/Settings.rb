class Settings
    POP_UP_ON_START_SYM = :pop_up_on_start
    PRINT_SMALL_SYM = :print_small
    MUSIC_VOLUME_SYM = :music_volume
    SOUND_EFFECTS_SYM = :sound_effects
    LOCALE_SYM = :locale
    NB_PRELOADED_SONGS_SYM = :nb_preloaded_songs
    PICTURE_ALIGNMENT = :picture_alignment
    DEFAULT_SETTINGS = {
        Settings::POP_UP_ON_START_SYM => 'true',
        Settings::PRINT_SMALL_SYM => 'false',
        Settings::MUSIC_VOLUME_SYM => 80,
        Settings::SOUND_EFFECTS_SYM => 80,
        Settings::LOCALE_SYM => Locale::ID_EN,
        Settings::NB_PRELOADED_SONGS_SYM => 20,
        Settings::PICTURE_ALIGNMENT => Alignments::CENTER
    }
    BATTLE_ACTION_PAUSE = 0.3
    BATTLE_ACTION_SPEED_RATIO = 10

    def self.initialized?
        return SaveManager.settings_directory_made?
    end

    def self.warning_pop_up_enabled
        return get_setting(POP_UP_ON_START_SYM) == 'true'
    end

    def self.print_small
        return get_setting(PRINT_SMALL_SYM) == 'true'
    end

    def self.music_volume
        return get_setting(MUSIC_VOLUME_SYM).to_i
    end

    def self.sound_effects_volume
        return get_setting(SOUND_EFFECTS_SYM).to_i
    end

    def self.locale
        return get_setting(LOCALE_SYM)
    end

    def self.max_preloaded_songs
        return get_setting(NB_PRELOADED_SONGS_SYM).to_i
    end

    def self.picture_alignment
        return get_setting(PICTURE_ALIGNMENT)
    end

    def self.set_max_preloaded_songs(nb_preloaded_songs)
        set_setting(NB_PRELOADED_SONGS_SYM, nb_preloaded_songs)
        PreloadedMusic.get_instance.check_overflow
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

    def self.set_sound_effects_volume(volume)
        set_setting(SOUND_EFFECTS_SYM, volume)
        SoundManager.set_volume
    end

    def self.set_locale(locale)
        set_setting(LOCALE_SYM, locale)
    end

    def self.set_picture_alignment(alignment)
        set_setting(PICTURE_ALIGNMENT, alignment)
    end

    def self.get_pause_duration
        current_player = World.get_instance.get_current_player
        if currently_fighting(current_player)
            room = World.get_instance.get_current_room
            if (room != nil) && (room.get_monsters != nil)
                nb_monsters = room.get_monsters.length
            else
                nb_monsters = 0
            end
        else
            nb_monsters = 0
        end
        if nb_monsters > BATTLE_ACTION_SPEED_RATIO
            battle_pause = (BATTLE_ACTION_PAUSE * BATTLE_ACTION_SPEED_RATIO) / nb_monsters
            return battle_pause
        else
            return BATTLE_ACTION_PAUSE
        end
    end

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

    def self.currently_fighting(current_turn)
        if current_turn == World::ENNEMYS_TURN
            return true
        else
            return current_turn.fighting?
        end
    end
end
