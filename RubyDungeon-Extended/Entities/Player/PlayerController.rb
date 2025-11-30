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

    def set_entered_room(entered_room)
        @just_entered_room = entered_room
    end

    def start_fighting
        @fighting = true
    end

    def stop_fighting
        MusicManager.get_instance.set_state(!MusicManager::FIGHTING)
        @fighting = false
    end

    def exit
        @exited = true
    end

    def act
        begin
            if !(@player.died? || @player.exited?)
                if @fighting
                    if @player.get_room.got_monsters?
                        MusicManager.get_instance.set_state(MusicManager::FIGHTING)
                        return fight_action
                    else
                        stop_fighting
                        return ask_action
                    end
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
            Game.catch_and_log(unexpected_exception)
        end
    end

    def ask_action
        @player.get_room.describe(@player)
        @just_entered_room = false
        monsters_present = @player.get_room.got_monsters?
        npcs_present = @player.get_room.got_npcs?
        interactables = @player.get_room.get_interactables
        Narrator.player_options(@player.get_room.get_the_denomination, npcs_present, monsters_present, interactables)
        case Narrator.user_input(@player.get_name)
        when '0'
            SettingsMenu.options_menu
            return ask_action
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
            if (interactables.length > 1)
                choosen_index = Narrator.ask(
                    LocaleKey::ASK_INTERACTION,
                    interactables,
                    -> (element) {
                        if element == Narrator::RETURN_BUTTON
                            return Locale.get_localized(LocaleKey::GO_BACK).capitalize
                        elsif element.kind_of? Pack
                            return Locale.get_localized(LocaleKey::PLAYER_FIGHT_OPTION) + element.get_plural_the
                        else
                            return format(Locale.get_localized(LocaleKey::NPC_INTERACT_OPTION), element.get_name)
                        end
                    },
                    @player.get_name
                )
                if choosen_index == Narrator::RETURN_BUTTON
                    return ask_action
                else
                    interactable = interactables[choosen_index]
                end
            elsif interactables.length == 1
                interactable = interactables[0]
            else
                Narrator.unsupported_choice_error
                return ask_action
            end
            if interactable.kind_of? Pack
                return attack_monsters
            else
                acted = interactable.interact(@player)
                if !acted
                    if fighting?
                        return act
                    else
                        return ask_action
                    end
                else
                    return Player::ACTED
                end
            end
        when '6'
            @player.print_status
            return ask_action
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

    def attack_monsters
        Narrator.start_fight(@player.get_room.get_monsters.plural?)
        MusicManager.get_instance.set_state(MusicManager::FIGHTING)
        @fighting = true
        return fight_action
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
        when '6'
            @player.print_status
            return propose_combat
        else
            Narrator.unsupported_choice_error
            return propose_combat
        end
    end

    def fight_action
        monster_cards_pages = @player.get_room.get_monster_cards
        loop do
            input = Narrator.ask_fight_action(
                @player,
                @player.get_room.get_monsters.enumerate,
                @player.get_escape_chances(@player.get_room.get_monsters.get_current_power),
                monster_cards_pages
            )
            case input
            when '1'
                return @player.get_room.get_monsters.hurt_single(@player.strength_attack)
            when '2'
                @player.get_room.get_monsters.hurt_magic(@player.magic_attack)
                return Player::ACTED
            when '3'
                return @player.heal_spell
            when '4'
                return @player.use_item
            when '5'
                if @player.can_escape?(@player.get_room.get_monsters.get_current_power)
                    Narrator.escape_scene
                    return @player.escape
                else
                    Narrator.fail_escape(@player.get_room.get_monsters.plural?)
                    return Player::ACTED
                end
            else
                if input.capitalize == 'A'
                    monster_cards_pages.page_down
                elsif input.capitalize == 'Z'
                    monster_cards_pages.page_up
                else
                    Narrator.unsupported_choice_error
                end
            end
        end
    end

    def propose_exploration
        next_room = Narrator.ask(LocaleKey::ASK_DESTINATION, @player.get_room.get_adjacent_rooms, -> (room){@player.get_room.to_string(room)}, @player.get_name)
        if next_room != Narrator::RETURN_BUTTON
            next_room_instance = @player.get_room.exit_to(next_room)
            if next_room_instance.allow_entry_for(@player)
                @just_entered_room = true
                SoundManager.play('footsteps')
                acted = @player.set_room(next_room_instance)
            else
                acted = false
            end
            if next_room_instance.get_biome::SPECIAL
                acted = acted || next_room_instance.acted?
            end
            return acted
            World.get_instance.set_current_room(@player.get_room)
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
                sleep Settings.get_pause_duration
            end
            return false
        else
            acted = false
            loop do
                choosen_object = Narrator.ask(LocaleKey::ASK_ITEM_TAKEN, @player.get_room.get_loot, ->(object){Loot.to_string(object)}, @player.get_name)
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
