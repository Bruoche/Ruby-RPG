require 'Narrator'
require 'Enums/BaseStats'
require 'Enums/Biomes/Entrance'
require 'Player'
require 'Fight'
require 'Room'

class Game
    def initialize()
        @player = Player.new(
            BaseStats::BASE_HEALTH,
            BaseStats::BASE_STRENGTH,
            BaseStats::BASE_INTELLIGENCE,
            BaseStats::BASE_AGILITY
        )
        play
    end

    def play()
        Narrator.introduction
        @current_room = Room.new(@player, Entrance)
        while (@current_room != nil)
            @current_room = @current_room.enter()
        end
    end
end
