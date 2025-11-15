class Game
    WANNA_PLAY = true
    CHARACTER_SELECTED = true
    MAIN_MENU_HEIGHT = 18
    RETAIL_PERCENT = 90

    def initialize(in_debug_mode)
        @@in_debug_mode = in_debug_mode
        if !Settings.initialized?
            SettingsMenu.language_pop_up
        end
        if Settings.warning_pop_up_enabled
            SettingsMenu.warning_pop_up
        end
        game_running = true
        while game_running
            MusicManager.get_instance.start
            MusicManager.get_instance.set_ambiance('Title screen')
            SoundManager.set_volume
            wanna_play = main_menu
            if wanna_play
                while wanna_play
                    OutsideEvents.play(@party)
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

    def self.catch_and_log(exception)
        Narrator.unexpected_error
        SaveManager.log(exception)
        if @@in_debug_mode
            raise exception
        end
    end

    def play
        entrance = World.get_instance.generate_dungeon(@party)
        @party.set_room(entrance)
        while !(@party.died? || @party.exited?)
            @party.take_turns
            @party.get_fights.each do |room, players|
                begin
                    room_instance = World.get_instance.get_room(room)
                    World.get_instance.set_current_room(room_instance)
                    room_instance.get_monsters.take_turns_against(players)
                    @party.check_won_fights
                rescue => unexpected_exception
                    Game.catch_and_log(unexpected_exception)
                end
            end
        end
        MusicManager.get_instance.set_ambiance(MusicManager::NO_MUSIC)
    end

    def main_menu
        if @@in_debug_mode
            Narrator.write("WARNING : debug mode activated - Errors will crash the game without saving.")
            extra_height = 1
        else
            extra_height = 0
        end
        empty_space = (TTY::Screen.height - MAIN_MENU_HEIGHT)
        top_space = empty_space.div(3)
        bottom_space = empty_space - top_space
        Narrator.add_space_of(top_space - (1 + extra_height))
        ASCIIPrinter.print('title')
        Narrator.main_menu_options
        Narrator.add_space_of(bottom_space)
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
            if Narrator.ask_confirmation(LocaleKey::CHARACTER_UNSAVED_RETURN_CONFIRM)
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
                    LocaleKey::ASK_SAVE,
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
