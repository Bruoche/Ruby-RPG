class MusicManager
    MUSIC_FOLDER = 'Osts/'
    FIGHTING = true
    FADEOUT_TIME = 500
    FIGHTING_TRACK = :fighting_track
    EXPLORATION_TRACK = :exploration_track
    NO_MUSIC = nil
    @instance = new

    def self.get_instance
        return @instance
    end

    def start
        if !@running
            @current_volume = Settings.music_volume
            Music.volume = @current_volume
            @tracks = {
                EXPLORATION_TRACK => MusicInstance.new,
                FIGHTING_TRACK => MusicInstance.new
            }
            @running = true
            Thread.new do
                while @running
                    volume = Settings.music_volume
                    if volume != @current_volume
                        @current_volume = volume
                        Music.volume = @current_volume
                    end
                    if @current_volume > 0
                        if @state == FIGHTING
                            switch_and_play_tracks_for(FIGHTING_TRACK, EXPLORATION_TRACK)
                        else
                            switch_and_play_tracks_for(EXPLORATION_TRACK, FIGHTING_TRACK)
                        end
                    end
                    Game.wait 0.2
                end
                for track in @tracks
                    track.stop
                end
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
        @tracks[EXPLORATION_TRACK].set(exploration_track)
        @tracks[FIGHTING_TRACK].set(fight_track)
    end

    private

    def initialize
        @state = !FIGHTING
        @precedent_state = @state
        @running = false
    end

    def switch_and_play_tracks_for(current_state_tracks, other_state_tracks)
        if @state != @precedent_state
            @precedent_state = @state
            @tracks[other_state_tracks].stop
            state_changed = true
        end
        song_switched = @tracks[current_state_tracks].switch_if_changed
        if state_changed || song_switched
            @tracks[current_state_tracks].play
        end
    end
end
