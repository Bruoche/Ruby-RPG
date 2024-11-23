class Player
    ACTED = true
    WANNA_MANAGE_EQUIPMENT = true

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
            'name': @name,
            'health': @lifebar.get_max_life,
            'strength': @stats.raw_strength,
            'intelligence': @stats.intelligence,
            'agility': @stats.raw_agility,
            'level': @stats.level,
            'current_xp': @stats.current_xp,
            'time_played': @time_played.current_value,
            'inventory': @inventory.get_save_data,
            'picture': @picture.get_save_data
        }.merge(@stats.get_equipment.get_save_data)
    end

    def get_icon
        returned_picture = @picture.get_picture
        for armor_picture in @stats.get_equipment.get_pictures
            returned_picture.superpose(armor_picture)
        end
        return returned_picture
    end

    def get_name
        return Utils.truncate(@name, TTY::Screen.width.div(2))
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

    def get_strength_to_string
        return @stats.strength_to_string
    end

    def get_intelligence
        return @stats.intelligence
    end

    def get_agility
        return @stats.agility
    end

    def get_agility_to_string
        return @stats.agility_to_string
    end

    def get_defense_to_string
        return @stats.defense_to_string
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

    def have?(item, quantity = 1)
        return @inventory.have?(item, quantity)
    end

    def get_quantity_of(item)
        return @inventory.count(item)
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
        acted = false
        while !acted
            MusicManager.get_instance.set_ambiance(@room.get_biome::EXPLORATION_TRACK, @room.get_biome::COMBAT_TRACK)
            acted = @controller.act
        end
    end

    def stop_fighting
        @controller.stop_fighting
    end

    def escape
        @controller.stop_fighting
        @controller.ask_action
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
        dodge_score = rand(0..@stats.agility.div(2))
        damage = attack.damage_dealt
        if dodge_score > damage
            dodge_score = damage
        end
        damage_recieved = damage - dodge_score
        defense_score = @stats.defense
        if defense_score > damage_recieved
            defense_score = damage_recieved
        end
        damage_taken = damage_recieved - defense_score
        if defense_score > 0
            defense_text = ', ' + defense_score.to_s + Locale::get_localized(Locale::KEY_PARRIED)
        else
            defense_text = ''
        end
        if damage_taken > 0
            SoundManager.play('player_hurt')
        elsif defense_score > 0
            SoundManager.play('parry')
        else
            SoundManager.play('dodge')
        end
        Narrator.detailed_hurt(get_name, damage_taken, damage, dodge_score, defense_text)
        sleep Settings::BATTLE_ACTION_PAUSE
        @lifebar.damage(damage_taken)
        if died?
            SoundManager.play('player_death')
            Narrator.player_death(get_name)
            sleep Settings::BATTLE_ACTION_PAUSE
        end
    end

    def strength_attack
        return Attack.new(@stats.strength, Attack::PHYSIC_TYPE, self)
    end

    def magic_attack
        if @stats.intelligence > 0
            SoundManager.play('magic_charge')
            Narrator.player_spell_cast(get_name)
        else
            SoundManager.play('spell_fart')
            Narrator.player_spell_fail
        end
        sleep Settings::BATTLE_ACTION_PAUSE
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
                target_index = Narrator.ask(Locale::KEY_ASK_HEAL_TARGET, allies, -> (player){to_string(player)}, get_name)
                if target_index != Narrator::RETURN_BUTTON
                    return cast_heal_on(allies[target_index])
                else
                    return !ACTED
                end
            end
        else
            Narrator.heal_spell_fail
            return !ACTED
        end
    end

    def cast_heal_on(target)
        if (@stats.intelligence > 0)
            amount = rand(1..@stats.intelligence)
            SoundManager.play('heal_spell')
            if target == self
                Narrator.self_heal(get_name, get_name)
                sleep Settings::BATTLE_ACTION_PAUSE
                @lifebar.heal(amount)
            else
                Narrator.heal_spell_cast(get_name, target.get_name)
                sleep Settings::BATTLE_ACTION_PAUSE
                target.heal(amount)
            end
            return ACTED
        end
    end

    def heal(amount = HEAL_SELF)
        SoundManager.play('player_heal')
        Narrator.heal(get_name, amount)
        sleep Settings::BATTLE_ACTION_PAUSE
        @lifebar.heal(amount)
    end

    def patch_up
        if (@lifebar.get_missing_life > 0)
            amount = rand(1..(@lifebar.get_missing_life + 1)) - 1
            SoundManager.play('player_heal')
            Narrator.heal(get_name, amount)
            sleep Settings::BATTLE_ACTION_PAUSE
            @lifebar.heal(amount)
            return ACTED
        else
            SoundManager.play('spell_fart')
            Narrator.dont_need_heal(get_name)
            sleep Settings::BATTLE_ACTION_PAUSE
            return !ACTED
        end
    end

    def give_xp(amount)
        @stats.add_xp(amount, @lifebar, get_name)
    end

    def see_items
        loop do
            print_inventory
            Narrator.shop_inventory_options
            case Narrator.user_input
            when '0'
                return
            when '1'
                manage_equipment
            else
                Narrator.unsupported_choice_error
            end
        end
    end

    def print_inventory
        @stats.get_equipment.see_equipment
        @inventory.see_inventory
    end

    def give_item(bundle)
        Narrator.obtain_item(get_name, bundle.get_name)
        @inventory.add(bundle)
    end

    def use_item
        return @inventory.inventory(self)
    end

    def remove_item(item, quantity = 1)
        @inventory.remove(item, quantity)
    end

    def equip(item)
        return @stats.get_equipment.equip(item, @name)
    end

    def manage_equipment
        return @stats.get_equipment.manage(@inventory, @name)
    end

    def choose_item_to_sell
        @inventory.choose_bundle_to_sell(self)
    end

    def to_string(player)
        if player == Narrator::RETURN_BUTTON
            return Locale.get_localized(Locale::KEY_ABORT)
        else
            if player == self
                return Locale.get_localized(Locale::KEY_YOURSELF)
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
