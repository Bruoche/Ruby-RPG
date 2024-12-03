class Game
    WANNA_PLAY = true
    CHARACTER_SELECTED = true
    RETAIL_PERCENT = 90

    def initialize
        if Settings.warning_pop_up_enabled
            SettingsMenu.warning_pop_up
        end
        game_running = true
        while game_running
            MusicManager.get_instance.start
            MusicManager.get_instance.set_ambiance('Title screen')
            wanna_play = main_menu
            if wanna_play
                while wanna_play
                    MusicManager.get_instance.set_ambiance(MusicManager::NO_MUSIC)
                    Narrator.introduction_shop
                    MusicManager.get_instance.set_ambiance('Merchant')
                    @party.shop
                    @party.save
                    MusicManager.get_instance.set_ambiance('Dungeon Entrance', 'Dungeon Entrance Battle theme')
                    Narrator.introduction(@party)
                    wanna_continue = true
                    while wanna_continue
                        play
                        if @party.died?
                            wanna_continue = ask_continue
                        else
                            wanna_continue = false
                        end
                    end
                    if Narrator.ask_play_again
                        @party.load
                        wanna_play = true
                    else
                        wanna_play = false
                    end
                end
            else
                game_running = false
            end
        end
    end

    def play
        entrance = World.get_instance.generate_dungeon(@party)
        @party.set_room(entrance)
        while !(@party.died? || @party.exited?)
            @party.take_turns
            @party.get_fights.each do |room, players|
                begin
                    World.get_instance.get_room(room).get_monsters.take_turns_against(players)
                rescue => unexpected_exception
                    Narrator.unexpected_error
                    SaveManager.log(unexpected_exception)
                end
            end
        end
        MusicManager.get_instance.set_ambiance(MusicManager::NO_MUSIC)
    end

    def main_menu
        Narrator.add_space_of(10)
        ASCIIPrinter.print('title')
        Narrator.main_menu_options
        case Narrator.user_input
        when '1'
            if initialize_party == CHARACTER_SELECTED
                return WANNA_PLAY
            else
                return main_menu
            end
        when '2'
            SettingsMenu.options_menu
            main_menu
        when '3'
            return (not WANNA_PLAY)
        else
            Narrator.unsupported_choice_error
            main_menu
        end
    end

    def initialize_party
        first_player = get_character
        if first_player == nil
            return (not CHARACTER_SELECTED)
        end
        @party = Party.new([first_player])
        return select_characters
    end

    def select_characters
        Narrator.select_characters_options(@party)
        index_enter_dungeon = 2
        if (@party.size > 1)
            Narrator.remove_party_member_option
            index_enter_dungeon += 1
        end
        Narrator.start_travel_option(index_enter_dungeon)
        choosen_option = Narrator.user_input
        case choosen_option
        when '0'
            if Narrator.ask_confirmation(Locale::KEY_CHARACTER_UNSAVED_RETURN_CONFIRM)
                return (not CHARACTER_SELECTED)
            end
        when '1'
            new_player = get_character
            if new_player != nil
                @party.add_player(new_player)
            end
        else
            if (choosen_option == index_enter_dungeon.to_s)
                return CHARACTER_SELECTED
            else
                if (@party.size > 1) && (choosen_option == '2')
                    @party.remove_player
                else
                    Narrator.unsupported_choice_error
                end
            end
        end
        return select_characters
    end

    def get_character
        saves = SaveManager.get_saves
        character_creator = CharacterCreator.new
        if (saves != nil) && (saves.length > 0)
            Narrator.new_or_old_character
            case Narrator.user_input
            when '0'
                return nil
            when '1'
                new_character = character_creator.make_character
                if new_character == nil
                    return get_character
                end
                return new_character
            when '2'
                save_index = Narrator.ask_paginated(
                    Locale::KEY_ASK_SAVE,
                    saves,
                    -> (save, index){
                        save_data = SaveManager.load(save)
                        return ASCIIPicture.new(ASCIIPicture.get_card(save_data, index))
                    },
                    Narrator::NO_NAME_DISPLAYED,
                    true
                )
                if save_index != Narrator::RETURN_BUTTON
                    save = saves[save_index]
                    return Player.new(SaveManager.load(save), save)
                else
                    return get_character
                end
            else
                Narrator.unsupported_choice_error
                return get_character
            end
        else
            return character_creator.make_character
        end
    end

    def ask_continue
        case Narrator.ask_continue
        when '1'
            @party.load
            return true
        when '2'
            return false
        else
            Narrator.unsupported_choice_error
            ask_continue
        end
    end
end
