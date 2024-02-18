require "Narrator"
require "Enums/GameStates"
require "Enums/BaseStats"
require "Player"
require "Pack"

class Room
    def initialize(player)
        @player = player
        @monsters = Pack.new(player.get_level)
    end

    def describe()
        spot_risk = (get_room_power - @player.get_discretion) + 1
        spot_risk = (spot_risk*100)/(get_room_power + 1)
        if spot_risk < 0
            spot_risk = 0
        end
        Narrator.describe_room(@player.get_full_status, @monsters.get_description, spot_risk)
    end

    def get_monsters()
        return @monsters
    end

    def propose_combat()
        case Narrator.ask_if_fight
        when "1"
            Narrator.start_fight(@monsters.is_plural)
            return GameStates::FIGHTING
        when "2"
            sneak
        else
            Narrator.unsupported_choice_error
            propose_combat
        end
    end

    private

    def get_room_power()
        return @monsters.get_power.div(10)
    end

    def sneak()
        perception_score = rand(get_room_power + 1)
        if (perception_score < @player.get_discretion)
            Narrator.avoid_fight(@monsters.get_gendered_the)
            return GameStates::SNEAKING
        else
            Narrator.fail_sneak(@monsters.is_plural)
            return GameStates::FIGHTING
        end
    end
end
