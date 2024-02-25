class Game
    def initialize()
        wanna_play = main_menu
        if wanna_play
            loop do
                @last_save = @player.get_save_data
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

    def play()
        @current_room = Room.new(@player, Entrance, Exit.new(@player))
        while (@current_room != nil) && (@current_room != Exit::EXIT)
            @current_room = @current_room.enter()
        end
        if @current_room == Exit::EXIT
            return true
        else
            return false
        end
    end

    def main_menu()
        10.times do
            puts
        end
        ASCIIPrinter.print("title")
        puts
        puts
        puts "1) Nouvelle partie."
        puts "2) Continuer..."
        puts "3) Options"
        puts "4) Quitter"
        case Narrator.user_input
        when "1"
            @player = Player.new({
                "name": "Adventurer",
                "health": BaseStats::BASE_HEALTH,
                "strength": BaseStats::BASE_STRENGTH,
                "intelligence": BaseStats::BASE_INTELLIGENCE,
                "agility": BaseStats::BASE_AGILITY,
                "inventory": "",
                "level": 0,
                "current_xp": 0,
                "next_level": 100
            })
            Narrator.introduction
            return true
        when "2"
            saves = SaveManager.get_saves()
            if saves != nil
                save_index = Narrator.ask("Quelle sauvegarde charger ?", saves, -> (save){if save != nil then return save else return "Retour..." end})
                if save_index != nil
                    @player = Player.new(SaveManager.load(saves[save_index]))
                    Narrator.introduction_return
                    return true
                else
                    main_menu
                end
            else
                puts "Aucune sauvegarde n'a été trouvée..."
                main_menu
            end
        when "3"
            asset_size_menu
            main_menu
        when "4"
            puts "Au revoir !"
            return false
        else
            Narrator.unsupported_choice_error
            main_menu
        end
    end

    def asset_size_menu()
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

    def ask_continue()
        case Narrator.ask_continue
        when "1"
            @player = Player.new(@last_save)
            return true
        when "2"
            return false
        else
            Narrator.unsupported_choice_error
            ask_continue
        end
    end
end
