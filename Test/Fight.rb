require "Narrator"
require "Enums/GameStates"

class Fight
    def initialize(player, monsters)
        @player = player
        @monsters = monsters
    end

    def fight(can_play)
        if can_play
            player_turn
        end
        if (@monsters.are_dead)
            return victory
        end
        @monsters.attack(@player)
        if (@player.is_dead)
            return defeat
        end
        fight(true)
    end

    def player_turn()
        case Narrator.ask_fight_action(@player.get_status, @monsters.get_description, @monsters.get_spot_risk)
        when "1"
            @monsters.hurt_single(@player.strength_attack)
        when "2"
            @monsters.hurt_magic(@player.magic_attack)
        when "3"
            @player.heal
        when "4"
            if @monsters.can_escape(@monsters.is_plural)
                escape
            else
                Narrator.fail_escape(@monsters.is_plural)
            end
        else
            Narrator.unsupported_choice_error
            player_turn
        end
    end

    def monster_turn()
        @monsters.attack(@player)
    end

    def victory()
        Narrator.victory_scene(@monsters.was_plural, @monsters.get_power)
        @player.get_xp(@monsters.get_power)
        @player.patch_up
        Narrator.sneaking_transition()
        return GameStates::SNEAKING
    end

	def escape()
		Narrator.escape_scene()
		return GameStates::SNEAKING
	end

    def defeat()
        Narrator.death_scene(@monsters.is_plural)
        return GameStates::DEAD
    end

end
