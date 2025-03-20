class PreloadedSFX
    @instance = new
    SFX_DIRECTORY = 'RubyDungeon-Extended/Sounds/Sfx'

    def self.get_instance
        return @instance
    end

    def get_sfx(sound_name)
        return @preloaded_sfx[sound_name]
    end

    def load_sfxs
        @preloaded_sfx = {}
        for file_path in Dir["./#{SFX_DIRECTORY}/*"] do
            if file_path.end_with?(SoundManager::EXTENSION)
                sfx = Sound.new(file_path)
                sound_name = file_path.delete_prefix("./#{SFX_DIRECTORY}/").delete_suffix(SoundManager::EXTENSION)
                @preloaded_sfx[sound_name] = sfx
            end
        end
    end
end
