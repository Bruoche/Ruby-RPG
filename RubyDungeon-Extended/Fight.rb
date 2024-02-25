class Fight
    def initialize(player, monsters)
        @player = player
        @monsters = monsters
    end

    def fight(can_play)
        @escape = false
        if can_play
            player_turn
            if @escape
                return escape
            end
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
        case Narrator.ask_fight_action(@player.get_status, @monsters.get_description, @player.get_escape_chances(@monsters.get_current_power))
        when "1"
            acted = @monsters.hurt_single(@player.strength_attack)
            if not acted
                player_turn
            end
        when "2"
            @monsters.hurt_magic(@player.magic_attack)
        when "3"
            @player.heal
        when "4"
            used = @player.use_item
            if not used
                player_turn
            end
        when "5"
            if @player.can_escape(@monsters.get_current_power)
                @escape = true
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
        xp_gained = @monsters.get_power
        Narrator.victory_scene(@monsters.was_plural, xp_gained)
        @player.get_xp(xp_gained)
        return true
    end

	def escape()
		Narrator.escape_scene()
		return true
	end

    def defeat()
        Narrator.death_scene(@monsters.is_plural)
        return false
    end

end
