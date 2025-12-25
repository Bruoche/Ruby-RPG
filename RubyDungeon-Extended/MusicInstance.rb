class MusicInstance
    OFF = nil

    def initialize
        @currently_played = MusicManager::NO_MUSIC
        @queued = MusicManager::NO_MUSIC
        @player = OFF
    end

    def switch_if_changed
        if @queued != @currently_played
            @currently_played = @queued
            stop
            initialize_player
            return true
        end
        return false
    end

    def stop
        if @player != OFF
            @player.fadeout(MusicManager::FADEOUT_TIME)
            sleep (MusicManager::FADEOUT_TIME*1.01)/1000
        end
    end

    def play
        if @currently_played != MusicManager::NO_MUSIC
            @player.play
        else
            stop
        end
    end

    def set(new_track)
        @queued = new_track
    end

    private

    def initialize_player
        if @currently_played != MusicManager::NO_MUSIC
            @player = PreloadedMusic.get_instance.get(SoundManager::SOUND_FOLDER + MusicManager::MUSIC_FOLDER + @currently_played + SoundManager::EXTENSION)
            @player.loop = true
        end
    end
end
