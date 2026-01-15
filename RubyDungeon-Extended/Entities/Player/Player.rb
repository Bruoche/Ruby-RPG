class Player
    ACTED = true
    WANNA_MANAGE_EQUIPMENT = true

    def initialize(player_data, savefile = SaveManager::NO_EXISTING_SAVEFILE)
        @inventory = Inventory.new
        @status_handler = StatusHandler.new
        @picture = PlayerIcon.new
        @stats = StatManager.new
        @time_played = TimeManager.new
        @inventory.load(            player_data[:inventory])
        @status_handler.load(       player_data[:statuses])
        @picture.load(              player_data[:picture])
        @stats.load(                player_data)
        @name =                     player_data[:name]
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
            'health': @stats.lifebar.get_max_life,
            'strength': @stats.raw_strength,
            'intelligence': @stats.intelligence,
            'agility': @stats.raw_agility,
            'level': @stats.level,
            'current_xp': @stats.current_xp,
            'time_played': @time_played.current_value,
            'inventory': @inventory.get_save_data,
            'picture': @picture.get_save_data,
            'statuses': @status_handler.get_save_data
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
        return TextFormatter.truncate(@name, TTY::Screen.width.div(2))
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

    def get_raw_strength
        return @stats.raw_strength
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

    def get_raw_agility
        return @stats.raw_agility
    end

    def get_agility_to_string
        return @stats.agility_to_string
    end

    def get_defense
        return @stats.defense
    end

    def get_defense_to_string
        return @stats.defense_to_string
    end

    def get_remaining_life
        return @stats.lifebar.get_life
    end

    def healthbar(size)
        return @stats.lifebar.healthbar(size)
    end

    def health_to_string
        return @stats.lifebar.life_to_string
    end

    def get_max_life
        return @stats.lifebar.get_max_life
    end

    def get_status_icons
        return @status_handler.get_icons
    end

    def status_handler
        return @status_handler
    end

    def get_escape_chances(monsters_power)
        if (monsters_power == 0)
            return MathUtils::HUNDRED_PERCENT
        end
        spot_risk = (monsters_power - stealth_score)
        spot_risk = (spot_risk*MathUtils::HUNDRED_PERCENT)/(monsters_power)
        if spot_risk <= 0
            return MathUtils::HUNDRED_PERCENT
        end
        return MathUtils::HUNDRED_PERCENT - spot_risk
    end

    def can_escape?(monsters_power)
        perception_score = rand(monsters_power + 1)
        return perception_score < stealth_score
    end

    def have?(item, quantity_min = 1)
        return @inventory.have?(item, quantity_min)
    end

    def get_quantity_of(item)
        return @inventory.count(item)
    end

    def have_status?(status)
        return @status_handler.have?(status)
    end

    def died?
        return @stats.lifebar.is_empty
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

    def set_entered_room(entered_room)
        @controller.set_entered_room(entered_room)
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
            MusicManager.get_instance.set_ambiance(@room.get_exploration_track, @room.get_combat_track)
            acted = @controller.act
        end
        @status_handler.end_of_turn_actions(self)
    end

    def stop_fighting
        @controller.stop_fighting
    end

    def start_fighting
        @controller.start_fighting
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
        @room.execute_entry_event(self)
    end

    def set_save(savefile)
        @savefile = savefile
    end

    def hurt(attack)
        damage = attack.damage_dealt
        if defense_ignored(attack.type)
            damage_taken = damage
            dodge_score = 0
            defense_score = 0
            defense_text = ''
        else
            dodge_score = rand(0..@stats.agility.div(2))
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
                defense_text = ', ' + defense_score.to_s + Locale::get_localized(LocaleKey::PARRIED)
            else
                defense_text = ''
            end
        end
        if damage_taken > 0
            SoundManager.play('player_hurt')
        elsif defense_score > 0
            SoundManager.play(['parry', 'parry1', 'parry2', 'parry3'].sample)
        else
            SoundManager.play('dodge')
        end
        if defense_ignored(attack.type)
            Narrator.hurt(get_name, damage_taken)
        else
            Narrator.detailed_hurt(get_name, damage_taken, damage, dodge_score, defense_text)
        end
        Game.wait
        @stats.lifebar.damage(damage_taken)
        attack.try_effects(self, damage_taken)
        if died?
            SoundManager.play('player_death')
            Narrator.player_death(get_name)
            Game.wait
        end
    end

    def strength_attack
        return make_attack(@stats.strength, Attack::PHYSIC_TYPE)
    end

    def magic_attack
        if @stats.intelligence > 0
            SoundManager.play('magic_charge')
            Narrator.player_spell_cast(get_name)
        else
            SoundManager.play('spell_fart')
            Narrator.player_spell_fail
        end
        Game.wait
        return make_attack(@stats.intelligence, Attack::MAGIC_TYPE)
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
                target_index = Narrator.ask(LocaleKey::ASK_HEAL_TARGET, allies, -> (player){to_string(player)}, get_name)
                if target_index != Narrator::RETURN_BUTTON
                    return cast_heal_on(allies[target_index])
                else
                    return !ACTED
                end
            end
        else
            SoundManager.play('spell_fart')
            Narrator.heal_spell_fail
            Game.wait
            return !ACTED
        end
    end

    def cast_heal_on(target)
        if (@stats.intelligence > 0)
            amount = rand(1..@stats.intelligence)
            SoundManager.play('heal_spell')
            if target == self
                Narrator.self_heal(get_name, amount)
                Game.wait
                @stats.lifebar.heal(amount)
            else
                Narrator.heal_spell_cast(get_name, target.get_name)
                Game.wait
                target.heal(amount)
            end
            return ACTED
        end
    end

    def heal(amount)
        SoundManager.play('player_heal')
        Narrator.heal(get_name, amount)
        Game.wait
        @stats.lifebar.heal(amount)
    end

    def patch_up
        if (@stats.lifebar.get_missing_life > 0)
            amount = rand(1..(@stats.lifebar.get_missing_life))
            SoundManager.play('player_heal')
            Narrator.heal(get_name, amount)
            @stats.lifebar.heal(amount)
            Game.wait
            return ACTED
        else
            SoundManager.play('spell_fart')
            Narrator.dont_need_heal(get_name)
            Game.wait
            return !ACTED
        end
    end

    def give_xp(amount)
        @stats.add_xp(amount, get_name)
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
        return @inventory.remove(item, quantity)
    end

    def equip(item)
        return @stats.get_equipment.equip(item, @name)
    end

    def manage_equipment
        return @stats.get_equipment.manage(@inventory, @name)
    end

    def choose_item(question)
        return @inventory.choose_item(@name, question)
    end

    def choose_item_to_sell(retail_coeff, specific_question = LocaleKey::ASK_ITEM_TO_SELL)
        return @inventory.choose_bundle_to_sell(self, retail_coeff, specific_question)
    end

    def choose_armor_to_upgrade(upgrade_tax)
        return @inventory.choose_armor_to_upgrade(self, upgrade_tax)
    end

    def print_status
        Narrator.print_status(self)
    end

    def get_statuses_descriptions
        return @status_handler.get_descriptions
    end

    def add_status(status)
        @status_handler.add(status)
    end

    def set_status(status)
        @status_handler.set(status)
    end

    def remove_status(status_class)
        @status_handler.remove(status_class)
    end

    def reduce_duration_of(status_class, amount = 1)
        @status_handler.reduce_of(status_class, amount)
    end

    def to_string(player)
        if player == Narrator::RETURN_BUTTON
            return Locale.get_localized(LocaleKey::ABORT)
        else
            if player == self
                return Locale.get_localized(LocaleKey::YOURSELF)
            else
                return player.get_name
            end
        end
    end

    private

    def stealth_score
        return (@stats.agility**2).div(2)
    end

    def defense_ignored(attack_type)
        return (attack_type == Attack::POISON_TYPE) || (attack_type == Attack::FALL_TYPE)
    end

    def make_attack(damage, type)
        attack = Attack.new(damage, type, self)
        for effect in @status_handler.get_attack_effects
            attack.add_effect(effect)
        end
        return attack
    end
end
