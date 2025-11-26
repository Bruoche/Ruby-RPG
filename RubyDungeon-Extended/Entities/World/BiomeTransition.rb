class BiomeTransition
    NO_MESSAGE = nil
    NO_MAX_LEVEL_REQUIREMENTS = nil

    def initialize(message, chances, biome, level_requirement_min = 0, level_requirement_max = NO_MAX_LEVEL_REQUIREMENTS, cut_music = true)
        @message = message
        @chances = chances
        @biome = biome
        @level_requirement_min = level_requirement_min
        @cut_music = cut_music
    end

    def happened?(player_level)
        if player_level >= @level_requirement_min
            if (@level_requirement_max == NO_MAX_LEVEL_REQUIREMENTS) || (player_level <= @level_requirement_max)
                return rand(1..100) <= @chances
            else
                return false
            end
        else
            return false
        end
    end

    def get_next_biome
        Narrator.add_space_of(1)
        if @message != NO_MESSAGE
            if @cut_music
                MusicManager.get_instance.set_ambiance(MusicManager::NO_MUSIC)
            end
            Narrator.write(@message)
            Narrator.add_space_of(1)
            Narrator.pause_text
        end
        return Object.const_get(@biome)
    end
end
