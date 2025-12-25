class PreloadedMusic
    @instance = new

    def self.get_instance
        return @instance
    end

    def boot
        @preloaded_songs = {}
        @songs_preloaded = []
    end

    def get(song_name)
        if @preloaded_songs.has_key?(song_name)
            bump(song_name)
            return @preloaded_songs[song_name]
        end
        song = Music.new(song_name)
        @songs_preloaded.unshift song_name
        @preloaded_songs[song_name] = song
        check_overflow
        return song
    end

    def check_overflow
        while @songs_preloaded.length > Settings.max_preloaded_songs
            unloaded_song = @songs_preloaded.pop
            @preloaded_songs.delete(unloaded_song)
        end
    end

    def bump(key)
        if @songs_preloaded.include? key
            @songs_preloaded.delete key
            @songs_preloaded.unshift key
        end
    end
end
