class MusicManager
    MUSIC_FOLDER = 'Osts/'
    FIGHTING = true
    FADEOUT_TIME = 500
    NO_MUSIC = nil
    @instance = new

    def self.get_instance
        return @instance
    end

    def start
        if !@running
            current_volume = Settings.music_volume
            Music.volume = current_volume
            current_exploration_track = NO_MUSIC
            current_fight_track = NO_MUSIC
            exploration_music = NO_MUSIC
            fighting_music = NO_MUSIC
            @running = true
            music_manager = Thread.new do
                was_fighting = nil
                while @running
                    volume = Settings.music_volume
                    if volume != current_volume
                        current_volume = volume
                        Music.volume = current_volume
                    end
                    if current_volume > 0
                        if @exploration_track != current_exploration_track
                            if exploration_music != NO_MUSIC
                                exploration_music.fadeout(FADEOUT_TIME)
                                exploration_music = NO_MUSIC
                                sleep (FADEOUT_TIME*1.01)/1000
                            end
                            if @exploration_track != NO_MUSIC
                                exploration_music = Music.new(SoundManager::SOUND_FOLDER + MUSIC_FOLDER + @exploration_track + SoundManager::EXTENSION)
                                exploration_music.loop = true
                                Music.volume = current_volume
                            end
                            current_exploration_track = @exploration_track
                            exploration_track_switched = true
                        end
                        if @fight_track != current_fight_track
                            if fighting_music != NO_MUSIC
                                fighting_music.fadeout(FADEOUT_TIME)
                            end
                            if @fight_track != NO_MUSIC
                                fighting_music = Music.new(SoundManager::SOUND_FOLDER + MUSIC_FOLDER + @fight_track + SoundManager::EXTENSION)
                                fighting_music.loop = true
                                Music.volume = current_volume
                            else
                                fighting_music = NO_MUSIC
                            end
                            current_fight_track = @fight_track
                            fighting_track_switched = true
                        end
                        if @state == FIGHTING
                            if (was_fighting != true) || fighting_track_switched
                                if current_exploration_track != NO_MUSIC
                                    exploration_music.fadeout(FADEOUT_TIME)
                                end
                                if current_fight_track != NO_MUSIC
                                    fighting_music.play
                                end
                                was_fighting = true
                                fighting_track_switched = false
                            end
                        else
                            if (was_fighting != false) || exploration_track_switched
                                if current_fight_track != NO_MUSIC
                                    fighting_music.fadeout(FADEOUT_TIME)
                                end
                                if current_exploration_track != NO_MUSIC
                                    exploration_music.play
                                end
                                was_fighting = false
                                exploration_track_switched = false
                            end
                        end
                    end
                    sleep 0.2
                end
                exploration_music.fadeout(500)
                fighting_music.fadeout(500)
            end
        end
    end

    def stop
        @running = false
    end

    def set_state(state)
        @state = state
    end

    def set_ambiance(exploration_track, fight_track = exploration_track)
        @exploration_track = exploration_track
        @fight_track = fight_track
    end

    private

    def initialize
        @state = !FIGHTING
        @running = false
        @exploration_track = NO_MUSIC
        @fight_track = NO_MUSIC
    end
end
