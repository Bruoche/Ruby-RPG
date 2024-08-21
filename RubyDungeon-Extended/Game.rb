class Game
    SURVIVED = true
    WANNA_PLAY = true
    CHARACTER_SELECTED = true

    def initialize
        wanna_play = main_menu
        if wanna_play
            loop do
                survived = play
                if not survived
                    wanna_play = ask_continue
                end
                if (survived) || (not wanna_play)
                    wanna_play = main_menu
                end
                if not wanna_play
                    break
                end
            end
        end
    end

    def play
        @party.set_room(World.get_instance.setup_entrance(@party.get_level))
        loop do
            @party.take_turns
            if (@party.died?)
                return (not SURVIVED)
            end
            if (@party.exited?)
                return SURVIVED
            end
            @party.get_fights.each do |room, players|
                World.get_instance.get_room(room).get_monsters.attack(players)
            end
        end
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
            if select_characters
                return WANNA_PLAY
            else
                return main_menu
            end
        when "2"
            asset_size_menu
            main_menu
        when "3"
            puts "Au revoir !"
            return (not WANNA_PLAY)
        else
            Narrator.unsupported_choice_error
            main_menu
        end
    end

    def select_characters
        first_player = get_character
        if first_player == nil
            return (not CHARACTER_SELECTED)
        end
        @party = Party.new([first_player])
        loop do
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
            puts "#{index_enter_dungeon}) Entrer dans le donjon"
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
                    Narrator.introduction(@party)
                    return CHARACTER_SELECTED
                else
                    if (@party.size > 1) && (choosen_option == "2")
                        @party.remove_player
                    else
                        Narrator.unsupported_choice_error
                    end
                end
            end
        end
    end

    def get_character
        saves = SaveManager.get_saves
        character_creator = CharacterCreator.new
        if (saves.length > 0)
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
                    save_index = Narrator.ask_complex_element(
                        "Quelle sauvegarde charger ?",
                        saves,
                        -> (save, index){
                            if save != nil
                                save_data = SaveManager.load(save)
                                ASCIIPrinter.show_card(save_data, index)
                            else
                                puts
                                puts "0) Retour..."
                            end
                        }
                    )
                    if save_index != nil
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

    def asset_size_menu
        puts "Si vous voyez ce texte les images ont une taille acceptable."
        3.times do
            puts
        end
        ASCIIPrinter.print("example")
        puts
        puts "Vérifiez que le texte au-dessus de l'image est bien lisible sans nécessiter un scroll vers le haut."
        puts "Si tel est le cas, alors votre taille d'image est bonne pour votre taille d'écrant."
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

    def ask_continue
        case Narrator.ask_continue
        when "1"
            @player = Player.new(SaveManager.load(@save_file), @save_file)
            return true
        when "2"
            return false
        else
            Narrator.unsupported_choice_error
            ask_continue
        end
    end
end
