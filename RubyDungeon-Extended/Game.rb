class Game
    WANNA_PLAY = true
    CHARACTER_SELECTED = true
    RETAIL_PERCENT = 90

    def initialize
        wanna_play = true
        while wanna_play
            MusicManager.get_instance.start
            MusicManager.get_instance.set_ambiance("Title screen")
            wanna_play = main_menu
            if wanna_play
                MusicManager.get_instance.set_ambiance(MusicManager::NO_MUSIC)
                Narrator.introduction_shop
                MusicManager.get_instance.set_ambiance("Merchant")
                @party.shop
                @party.save
                MusicManager.get_instance.set_ambiance("Dungeon Entrance", "Dungeon Entrance Battle theme")
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
                    puts "<< an unexpected error occured >>"
                    SaveManager.log(unexpected_exception)
                end
            end
        end
        MusicManager.get_instance.set_ambiance(MusicManager::NO_MUSIC)
    end

    def main_menu
        10.times do
            puts
        end
        ASCIIPrinter.print("title")
        puts
        puts
        puts "1) Entrer dans le donjon"
        puts "2) Options"
        puts "3) Quitter"
        case Narrator.user_input
        when "1"
            if initialize_party == CHARACTER_SELECTED
                return WANNA_PLAY
            else
                return main_menu
            end
        when "2"
            options_menu
            main_menu
        when "3"
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
        puts "Aventuriers entrant dans le donjon : "
        @party.show_cards
        puts
        puts
        puts "0) Retour"
        puts "1) Ajouter un membre à l'équipe"
        index_enter_dungeon = 2
        if (@party.size > 1)
            puts "2) Retirer un membre de l'équipe"
        index_enter_dungeon += 1
        end
        puts "#{index_enter_dungeon}) Commencer le voyage"
        choosen_option = Narrator.user_input
        case choosen_option
        when "0"
            if Narrator.ask_confirmation(["Êtes-vous sûr de vouloir revenir en arrière ? (Y/N)", "Les personnages sélectionnés ne seront pas sauvegardés"])
                return (not CHARACTER_SELECTED)
            end
        when "1"
            new_player = get_character
            if new_player != nil
                @party.add_player(new_player)
            end
        else
            if (choosen_option == index_enter_dungeon.to_s)
                return CHARACTER_SELECTED
            else
                if (@party.size > 1) && (choosen_option == "2")
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
            puts "0) Retour"
            puts "1) Nouveau personnage"
            puts "2) Personnage existant"
            case Narrator.user_input
            when "0"
                return nil
            when "1"
                new_character = character_creator.make_character
                if new_character == nil
                    return get_character
                end
                return new_character
            when "2"
                save_index = Narrator.ask_paginated(
                    "Quelle sauvegarde charger ?",
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
                puts Narrator.unsupported_choice_error
                return get_character
            end
        else
            return character_creator.make_character
        end
    end

    def options_menu
        loop do
            puts "Que souhaitez-vous faire ?"
            puts "    0) Retour..."
            puts "    1) Modifier la hauteur des images"
            puts "    2) Modifier l'audio"
            case Narrator.user_input
            when "0"
                return
            when "1"
                asset_size_menu
            when "2"
                sound_menu
            else
                Narrator.unsupported_choice_error
            end
        end
    end

    def asset_size_menu
        puts "Si vous voyez ce texte les images ont une taille acceptable."
        3.times do
            puts
        end
        ASCIIPrinter.print("example")
        puts
        puts "Vérifiez que le texte au-dessus de l'image est bien lisible sans nécessiter un scroll vers le haut."
        puts "Si tel est le cas, alors votre taille d'image est bonne pour votre taille d'écran."
        puts
        puts "Autrement, tentez de mettre les images en petites tailles,"
        puts "ou de réduire la taille de police du texte de votre terminal si cela ne suffit pas."
        puts
        puts "Quelle taille d'image souhaitez-vous ?"
        puts "0) Retour"
        puts "1) Grande (recommandée)"
        puts "2) Petite"
        case Narrator.user_input
        when "0"
        when "1"
            Settings.set_print_small(false)
            asset_size_menu
        when "2"
            Settings.set_print_small(true)
            asset_size_menu
        else
            Narrator.unsupported_choice_error
            asset_size_menu
        end
    end

    def sound_menu
        loop do
            puts "Volume de musique : #{Settings.music_volume}%"
            puts
            puts "Effets sonores : #{Settings.sound_effects ? "Oui" : "Non"}"
            puts
            puts
            puts
            puts "Que souhaitez-vous faire ?"
            puts "    0) Retour..."
            puts "    1) Modifier le volume de la musique"
            puts "    2) Activier/Désactiver les effets sonores"
            case Narrator.user_input
            when "0"
                return
            when "1"
                music_volume_menu
            when "2"
                sound_effects_menu
            else
                Narrator.unsupported_choice_error
            end
        end
    end

    def music_volume_menu
        puts "Quel volume souhaitez-vous ? (volume actuel : #{Settings.music_volume}%)"
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
        puts "Souhaitez-vous des effets sonores ?"
        puts "    0) Retour..."
        puts "    1) Oui"
        puts "    2) Non"
        case Narrator.user_input
        when "0"
        when "1"
            Settings.set_sound_effects(true)
            SoundManager.play("stat_up")
        when "2"
            Settings.set_sound_effects(false)
        else
            Narrator.unsupported_choice_error
            sound_effects_menu
        end
    end

    def ask_continue
        case Narrator.ask_continue
        when "1"
            @party.load
            return true
        when "2"
            return false
        else
            Narrator.unsupported_choice_error
            ask_continue
        end
    end
end
