class Player
    ACTED = true
    HEAL_SELF = nil

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

    def get_full_status
        return "Vous êtes un.e aventurier.e de niveau #{@stats.level} (#{@stats.current_xp}/#{@stats.required_xp}).\n" + get_status
    end

    def get_status
        return "Vous avez #{@lifebar.life_to_string} points de vies, faites #{@stats.strength} dégats et avez #{@stats.intelligence} points de puissance magique."
    end

    def get_level
        return @stats.level
    end

    def get_remaining_life
        return @lifebar.get_life
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
        puts("Vous prenez #{damage} dégats.")
        @lifebar.damage(damage)
    end

    def strength_attack
        return Attack.new(@stats.strength, Attack::PHYSIC_TYPE)
    end

    def magic_attack
        return Attack.new(@stats.intelligence, Attack::MAGIC_TYPE)
    end

    def heal(amount = HEAL_SELF)
        if amount != HEAL_SELF
            puts "Vous obtenez #{amount} points de vie."
            @lifebar.heal(amount)
        else
            if (@stats.intelligence > 0)
                amount = rand(1..@stats.intelligence)
                puts "Vous vous soignez #{amount} points de vie."
                @lifebar.heal(amount)
            else
                puts "Vous ne savez pas comment vous soigner. Aucun point de vie n'est régénéré."
            end
        end
    end

    def patch_up
        if (@lifebar.get_missing_life > 0)
            amount = rand(1..(@lifebar.get_missing_life + 1)) - 1
            puts "Vous vous soignez #{amount} points de vie."
            @lifebar.heal(amount)
            return true
        else
            puts "Vous n'êtes pas blessé et n'avez donc pas besoin de vous soigner."
            return false
        end
    end

    def give_xp(amount)
        @stats.add_xp(amount, @lifebar)
    end

    def give_item(item)
        @inventory.add(item)
    end

    def use_item
        @inventory.ask_use(self)
    end

    private

    def stealth_score
        return (@stats.agility**2).div(2)
    end
end
