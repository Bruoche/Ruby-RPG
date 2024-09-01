class Player
    ACTED = true

    def initialize(player_data, savefile = SaveManager::NO_EXISTING_SAVEFILE)
        @inventory = Inventory.new
        @picture = PlayerIcon.new
        @stats = StatManager.new
        @time_played = TimeManager.new
        @inventory.load(            player_data[:inventory])
        @picture.load(              player_data[:picture])
        @stats.load(                player_data)
        @name =                     player_data[:name]
        @lifebar = Lifebar.new(     player_data[:health].to_i)
        @time_played.parse(         player_data[:time_played])
        @savefile = savefile
        @controller = PlayerController.new(self)
    end

    def get_save
        return @savefile
    end

    def set_save(savefile)
        @savefile = savefile
    end

    def get_save_data
        return {
            "name": @name,
            "health": @lifebar.get_max_life,
            "strength": @stats.strength,
            "intelligence": @stats.intelligence,
            "agility": @stats.agility,
            "level": @stats.level,
            "current_xp": @stats.current_xp,
            "time_played": @time_played.current_value,
            "inventory": @inventory.get_save_data,
            "picture": @picture.get_save_data
        }
    end

    def get_icon
        return @picture
    end

    def get_name
        return @name
    end

    def get_level
        return @stats.level
    end

    def get_level_to_string
        return @stats.level_to_string
    end

    def get_strength
        return @stats.strength
    end

    def get_intelligence
        return @stats.intelligence
    end

    def get_agility
        return @stats.agility
    end

    def get_full_status
        return "Vous êtes un.e aventurier.e de niveau #{@stats.level_to_string}.\n" + get_status
    end

    def get_status
        return "Vous avez #{@lifebar.life_to_string} points de vies, faites #{@stats.strength} dégats et avez #{@stats.intelligence} points de puissance magique."
    end

    def get_remaining_life
        return @lifebar.get_life
    end

    def healthbar(size)
        return @lifebar.healthbar(size)
    end

    def health_to_string
        return @lifebar.life_to_string
    end

    def get_max_life
        return @lifebar.get_max_life
    end

    def get_escape_chances(monsters_power)
        if (monsters_power == 0)
            return Utils::HUNDRED_PERCENT
        end
		spot_risk = (monsters_power - stealth_score)
        spot_risk = (spot_risk*Utils::HUNDRED_PERCENT)/(monsters_power)
        if spot_risk <= 0
            return Utils::HUNDRED_PERCENT
        end
		return Utils::HUNDRED_PERCENT - spot_risk
	end

    def can_escape?(monsters_power)
        perception_score = rand(monsters_power + 1)
        return perception_score < stealth_score
    end

    def have?(item)
        return @inventory.have?(item)
    end

    def died?
        return @lifebar.is_empty
    end

    def exited?
        return @controller.exited?
    end

    def fighting?
        return @controller.fighting?
    end

    def just_entered_room?
        return @controller.just_entered_room?
    end

    def just_won_fight?
        if @controller.fighting?
            return !@room.got_monsters?
        else
            return false
        end
    end

    def get_room
        return @room
    end

    def act
        @controller.act
    end

    def stop_fighting
        @controller.stop_fighting
    end

    def exit
        @controller.exit
    end

    def set_room(room)
        @room = room
    end

    def set_save(savefile)
        @savefile = savefile
    end

    def hurt(attack)
        damage = rand(attack.damage_dealt)
        puts("#{@name.capitalize} prend #{damage} dégats.")
        @lifebar.damage(damage)
        if died?
            puts "#{@name.capitalize} s'éffondre au sol."
        end
    end

    def strength_attack
        return Attack.new(@stats.strength, Attack::PHYSIC_TYPE, self)
    end

    def magic_attack
        return Attack.new(@stats.intelligence, Attack::MAGIC_TYPE, self)
    end

    def heal_spell
        if (@stats.intelligence > 0)
            potential_allies = World.get_instance.get_players_in(@room)
            allies = []
            for ally in potential_allies
                if (ally != self) && (ally.fighting?)
                    allies.append(ally)
                end
            end
            if allies.empty?
                return cast_heal_on(self)
            else
                allies.unshift(self)
                target_index = Narrator.ask("Qui souhaitez-vous soigner ?", allies, -> (player){to_string(player)}, @name)
                if target_index != Narrator::RETURN_BUTTON
                    return cast_heal_on(allies[target_index])
                else
                    return !ACTED
                end
            end
        else
            puts "Vous ne savez pas comment vous soigner."
            return !ACTED
        end
    end

    def cast_heal_on(target)
        if (@stats.intelligence > 0)
            amount = rand(1..@stats.intelligence)
            if target == self
                puts "#{@name.capitalize} se soigne #{amount} points de vie."
                @lifebar.heal(amount)
            else
                puts "#{@name.capitalize} soigne #{target.get_name}."
                target.heal(amount)
            end
            return ACTED
        end
    end

    def heal(amount = HEAL_SELF)
        puts "#{@name.capitalize} obtient #{amount} points de vie."
        @lifebar.heal(amount)
    end

    def patch_up
        if (@lifebar.get_missing_life > 0)
            amount = rand(1..(@lifebar.get_missing_life + 1)) - 1
            puts "#{@name.capitalize} récupère #{amount} points de vie."
            @lifebar.heal(amount)
            return ACTED
        else
            puts "#{@name.capitalize} n'est pas blessé.e et n'a donc pas besoin d'être soigné.e."
            return !ACTED
        end
    end

    def give_xp(amount)
        @stats.add_xp(amount, @lifebar, @name)
    end

    def give_item(bundle)
        puts "#{@name} obtiens #{bundle.get_name}."
        @inventory.add(bundle)
    end

    def use_item
        return @inventory.inventory(self)
    end

    def to_string(player)
        if player == Narrator::RETURN_BUTTON
            return "annuler..."
        else
            if player == self
                return "vous-même"
            else
                return player.get_name
            end
        end
    end

    private

    def stealth_score
        return (@stats.agility**2).div(2)
    end
end
