require 'Narrator'
require 'Enums/GameStates'
require 'Enums/BaseStats'
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
        @state = GameStates::SNEAKING
        while (@state != GameStates::DEAD)
            case @state
            when GameStates::SNEAKING
                @current_room = Room.new(@player)
                @current_room.describe()
                @state = @current_room.propose_combat()
            when GameStates::FIGHTING
                @state = Fight.new(@player, @current_room.get_monsters).fight(true)
            else
                puts "StateError. State #{@state} is not recognised."
                @state = GameStates::SNEAKING
            end
        end
    end
end
