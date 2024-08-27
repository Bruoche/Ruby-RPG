class BiomeTransition
    def initialize(message, chances, biome, level_requirement = 0)
        @message = message
        @chances = chances
        @biome = biome
        @level_requirement = level_requirement
    end

    def happened?(player_level)
        if player_level >= @level_requirement
            return rand(1..100) <= @chances
        else
            return false
        end
    end

    def get_next_biome
        puts
        if @message != nil
            for line in @message
                puts line
            end
            puts
            Narrator.pause_text
        end
        return @biome
    end
end
