require "Narrator"
require "Enums/BaseStats"
require "Player"
require "Pack"
require "Name"

class Room
    def initialize(player, biome)
        @name = Name.new(biome)
        @player = player
        @monsters = Pack.new(player.get_level, biome::BESTIARY)
        @biome = biome
    end

    def describe()
        Narrator.describe_room(
            @player.get_full_status,
            @name.get_gendered_a,
            @monsters.get_description,
            @player.get_spot_risk(@monsters.get_current_power),
            -> (){@biome.describe}
        )
    end

    def get_monsters()
        return @monsters
    end

    def enter()
        describe()
        if @monsters.are_dead
            return propose_exploration()
        else
            return propose_combat()
        end
    end

    def propose_exploration()
        return Room.new(@player, @biome.get_next)
    end

    def propose_combat()
        case Narrator.ask_if_fight
        when "1"
            Narrator.start_fight(@monsters.is_plural)
            return fight_with_adventage(true)
        when "2"
        if (@player.can_escape(@monsters.get_current_power))
            Narrator.avoid_fight(@monsters.get_plural_the)
            return propose_exploration
        else
            Narrator.fail_sneak(@monsters.is_plural)
            return fight_with_adventage(false)
        end
        else
            Narrator.unsupported_choice_error
            propose_combat
        end
    end

    def fight_with_adventage(player_first)
        survived = Fight.new(@player, @monsters).fight(player_first)
        if survived
            return propose_exploration
        else
            return nil
        end
    end
end
