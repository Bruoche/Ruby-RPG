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
        Narrator.describe_room(@player.get_full_status, @monsters.get_description, @monsters.get_spot_risk(@player.get_discretion))
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
        if (@monsters.can_escape(@player))
            Narrator.avoid_fight(@monsters.get_gendered_the)
            return GameStates::SNEAKING
        else
            Narrator.fail_sneak(@monsters.is_plural)
            return GameStates::FIGHTING
        end
        else
            Narrator.unsupported_choice_error
            propose_combat
        end
    end
end
