class BiomeTransition
    NO_MESSAGE = nil
    NO_MAX_LEVEL_REQUIREMENTS = nil

    def initialize(message, chances, biome, level_requirement_min = 0, level_requirement_max = NO_MAX_LEVEL_REQUIREMENTS)
        @message = message
        @chances = chances
        @biome = biome
        @level_requirement_min = level_requirement_min
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
        puts
        if @message != NO_MESSAGE
            for line in @message
                puts line
            end
            puts
            Narrator.pause_text
        end
        return Object.const_get(@biome)
    end
end
