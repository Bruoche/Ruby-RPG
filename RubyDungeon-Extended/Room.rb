require "Narrator"
require "Enums/GameStates"
require "Enums/BaseStats"
require "Player"
require "Pack"
require "Name"

class Room
    def initialize(player, biome)
        @name = Name.new(biome)
        @player = player
        @monsters = Pack.new(player.get_level, biome::BESTIARY)
    end

    def describe()
        Narrator.describe_room(@player.get_full_status, @name.get_gendered_the, @monsters.get_description, @player.get_spot_risk(@monsters.get_power))
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
        if (@player.can_escape(@monsters.get_power))
            Narrator.avoid_fight(@monsters.get_plural_the)
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
