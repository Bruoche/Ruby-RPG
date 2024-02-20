require "Narrator"
require "Enums/BaseStats"
require "Player"
require "Pack"
require "Name"

class Room
    def initialize(player, biome, precedent_room = nil)
        @name = Name.new(biome)
        @player = player
        if biome.get_safe_room
            @monsters = nil
        else
            @monsters = Pack.new(player.get_level, biome)
        end
        @biome = biome
        @adjacent_rooms = Array.new(rand((1+biome::MIN_EXITS)..(1 + biome::MAX_EXITS)))
        puts @adjacent_rooms
        @adjacent_rooms[0] = precedent_room
        @precedent_room = 0
    end

    def describe()
        if (@monsters != nil)
            Narrator.describe_monsters_room(
                @player.get_full_status,
                -> (){@biome.describe},
                @name.get_gendered_the,
                @monsters.get_description,
                @player.get_spot_risk(@monsters.get_current_power)
            )
        else
            Narrator.describe_empty_room(
                @player.get_full_status,
                -> (){@biome.describe},
                @name.get_gendered_the,
                @name.is_female
            )
        end
    end

    def get_monsters()
        return @monsters
    end

    def get_denomination()
        return @name.get_gendered_a
    end

    def enter()
        describe()
        if ((@monsters == nil) || (@monsters.are_dead))
            return propose_exploration()
        else
            return propose_combat()
        end
    end

    def propose_exploration()
        next_room = Narrator.ask("Où souhaitez-vous aller?", @adjacent_rooms, -> (room){to_string(room)})
        @precedent_room = next_room # Si nous revenons ça sera par là
        if @adjacent_rooms[next_room] == nil
            current_room = self
            @adjacent_rooms[next_room] = Room.new(@player, @biome.get_next, current_room)
        end
        return @adjacent_rooms[next_room]
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

    private

    def fight_with_adventage(player_first)
        survived = Fight.new(@player, @monsters).fight(player_first)
        if survived
            return propose_exploration
        else
            return nil
        end
    end

    def to_string(room)
        if (room == nil)
            return "???"
        else
            return room.get_denomination
        end
    end
end
