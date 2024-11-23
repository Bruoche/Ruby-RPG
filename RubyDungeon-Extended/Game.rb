class Game
    WANNA_PLAY = true
    CHARACTER_SELECTED = true
    RETAIL_PERCENT = 90

    def initialize
        warning_pop_up
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

    def warning_pop_up
        if Settings.warning_pop_up_enabled
            loop do
                Narrator.warning_pop_up
                case Narrator.user_input
                when '1'
                    return
                when '2'
                    Settings.set_warning_pop_up_enabled(false)
                    return
                else
                    Narrator.unsupported_choice_error
                end
            end
        end
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
            options_menu
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
                    'Quelle sauvegarde charger ?',
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

    def options_menu
        loop do
            Narrator.options_selection
            case Narrator.user_input
            when '0'
                return
            when '1'
                asset_size_menu
            when '2'
                sound_menu
            when '3'
                language_menu
            else
                Narrator.unsupported_choice_error
            end
        end
    end

    def asset_size_menu
        Narrator.asset_size_verification_line
        Narrator.add_space_of(3)
        ASCIIPrinter.print('example')
        Narrator.asset_size_options
        case Narrator.user_input
        when '0'
        when '1'
            Settings.set_print_small(false)
            asset_size_menu
        when '2'
            Settings.set_print_small(true)
            asset_size_menu
        else
            Narrator.unsupported_choice_error
            asset_size_menu
        end
    end

    def sound_menu
        loop do
            Narrator.sound_options
            case Narrator.user_input
            when '0'
                return
            when '1'
                music_volume_menu
            when '2'
                sound_effects_menu
            else
                Narrator.unsupported_choice_error
            end
        end
    end

    def language_menu
        loop do
            Narrator.language_options
            index = 1
            for available_locale in Locale::AVAILABLE_LOCALES
                Narrator.enumerate(Locale.get_localized(available_locale), index)
                index += 1
            end
            choosen_locale = Narrator.user_input.to_i
            if (choosen_locale > 0) && (choosen_locale <= Locale::AVAILABLE_LOCALES.length)
                Settings.set_locale(Locale::AVAILABLE_LOCALES[choosen_locale - 1])
                return
            else
                if choosen_locale == 0
                    return
                else
                    Narrator.unsupported_choice_error
                end
            end
        end
    end

    def music_volume_menu
        Narrator.ask_desired_volume
        new_volume = Narrator.user_input
        if new_volume.to_i.to_s != new_volume
            Narrator.unsupported_choice_error
            return music_volume_menu
        else
            new_volume = new_volume.to_i
        end
        if new_volume < 0
            new_volume = 0
        end
        if new_volume > 100
            new_volume = 100
        end
        Settings.set_music_volume(new_volume)
    end

    def sound_effects_menu
        Narrator.ask_if_sound_effects
        case Narrator.user_input
        when '0'
        when '1'
            Settings.set_sound_effects(true)
            SoundManager.play('stat_up')
        when '2'
            Settings.set_sound_effects(false)
        else
            Narrator.unsupported_choice_error
            sound_effects_menu
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
