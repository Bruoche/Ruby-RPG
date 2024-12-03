class PlayerController
    def initialize(player)
        @player = player
        @exited = false
        @fighting = false
        @just_entered_room = true
    end

    def exited?
        return @exited
    end

    def fighting?
        return @fighting
    end

    def just_entered_room?
        return @just_entered_room
    end

    def stop_fighting
        @fighting = false
    end

    def exit
        @exited = true
    end

    def act
        begin
            if !(@player.died? || @player.exited?)
                if @fighting
                    MusicManager.get_instance.set_state(MusicManager::FIGHTING)
                    return fight_action
                else
                    MusicManager.get_instance.set_state(!MusicManager::FIGHTING)
                    if @player.get_room.got_monsters?
                        return propose_combat
                    else
                        return ask_action
                    end
                end
            end
        rescue => unexpected_exception
            Narrator.unexpected_error
            SaveManager.log(unexpected_exception)
        end
    end

    def ask_action
        @player.get_room.describe(@player)
        @just_entered_room = false
        Narrator.player_options(@player.get_room.get_the_denomination)
        if @player.get_room.got_monsters?
            Narrator.player_option_fight(@player.get_room.get_monsters_plural_the)
        end
        case Narrator.user_input(@player.get_name)
        when '0'
            SettingsMenu.options_menu
            return !Player::ACTED
        when '1'
            return propose_exploration
        when '2'
            if search
                return Player::ACTED
            else
                return ask_action
            end
        when '3'
            return status
        when '4'
            return Player::ACTED
        when '5'
            if (not @player.get_room.got_monsters?)
                Narrator.unsupported_choice_error
                return ask_action
            else
                Narrator.start_fight(@player.get_room.get_monsters.plural?)
                @fighting = true
                return fight_action
            end
        else
            Narrator.unsupported_choice_error
            return ask_action
        end
    end

    def status
        Narrator.add_space_of(1)
        @player.print_inventory
        Narrator.inventory_options
        case Narrator.user_input
        when '0'
            return ask_action
        when '1'
            item_response = @player.use_item
            if [true, false].include? item_response
                player_acted = item_response
                close_inventory = item_response
            else
                player_acted = item_response[Item::RESPONSE_PLAYER_ACTED]
                close_inventory = item_response[Item::RESPONSE_CLOSE_INVENTORY]
            end
            if player_acted
                return Player::ACTED
            else
                if close_inventory
                    return !Player::ACTED
                else
                    return status
                end
            end
        when '2'
            if @player.manage_equipment
                return Player::ACTED
            else
                return status
            end
        else
            Narrator.unsupported_choice_error
            return status
        end
    end

    def propose_combat
        @player.get_room.describe(@player)
        case Narrator.ask_if_fight(@player.get_escape_chances(@player.get_room.get_monsters.get_current_power), @player.get_name)
        when '0'
            SettingsMenu.options_menu
            return propose_combat
        when '1'
            Narrator.start_fight(@player.get_room.get_monsters.plural?)
            @fighting = true
            return !Player::ACTED
        when '2'
            if @player.can_escape?(@player.get_room.get_monsters.get_current_power)
                Narrator.avoid_fight(@player.get_room.get_monsters.get_plural_the)
                return ask_action
            else
                Narrator.fail_sneak(@player.get_room.get_monsters.plural?)
                @fighting = true
                return Player::ACTED
            end
        else
            Narrator.unsupported_choice_error
            return propose_combat
        end
    end

    def fight_action
        return Narrator.ask_fight_action(@player, @player.get_room.get_monsters.enumerate, @player.get_escape_chances(@player.get_room.get_monsters.get_current_power))
    end

    def propose_exploration
        next_room = Narrator.ask(Locale::KEY_ASK_DESTINATION, @player.get_room.get_adjacent_rooms, -> (room){@player.get_room.to_string(room)}, @player.get_name)
        if next_room != Narrator::RETURN_BUTTON
            next_room_instance = @player.get_room.exit_to(next_room)
            if next_room_instance.allow_entry_for(@player)
                @player.set_room(next_room_instance)
                @just_entered_room = true
                SoundManager.play('footsteps')
            end
            if next_room_instance.get_biome::SPECIAL
                return Player::ACTED
            else
                return !Player::ACTED
            end
        else
            ask_action
        end
    end

    def search
        searched_before = @player.get_room.searched_before?
        available_items = @player.get_room.search
        if available_items.length == 0
            SoundManager.play('spell_fart')
            if searched_before
                Narrator.everything_taken_already(@player.get_room.get_this_denomination)
            else
                Narrator.nothing_found
                sleep Settings::BATTLE_ACTION_PAUSE
            end
            return false
        else
            acted = false
            loop do
                choosen_object = Narrator.ask(Locale::KEY_ASK_ITEM_TAKEN, @player.get_room.get_loot, ->(object){Loot.to_string(object)}, @player.get_name)
                if choosen_object == Narrator::RETURN_BUTTON
                    return acted
                end
                acted = true
                @player.give_item(@player.get_room.take(choosen_object))
                SoundManager.play('taking_object')
                if @player.get_room.get_loot.length == 0
                    return acted
                end
            end
        end
    end
end
