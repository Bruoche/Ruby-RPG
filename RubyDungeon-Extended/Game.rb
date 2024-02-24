require 'Narrator'
require 'SaveManager'
require 'Enums/BaseStats'
require 'Enums/Biomes/Entrance'
require 'Player'
require 'Fight'
require 'Room'
require 'Exit'

class Game
    def initialize()
        wanna_play = main_menu
        if wanna_play
            loop do
                @last_save = @player.get_save_data
                survived = play
                if survived
                    wanna_play = main_menu
                else
                    wanna_play = ask_continue
                end
                if not wanna_play
                    break
                end
            end
        end
    end

    def play()
        Narrator.introduction
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
        puts
        ASCIIPrinter.print("title")
        puts
        puts
        puts "1) Nouvelle partie."
        puts "2) Continuer..."
        puts "3) Quitter"
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
            return true
        when "2"
            saves = SaveManager.get_saves()
            if saves != nil
                save_index = Narrator.ask("Quelle sauvegarde charger ?", saves, -> (save){if save != nil then return save else return "Retour..." end})
                if save_index != nil
                    @player = Player.new(SaveManager.load(saves[save_index]))
                    return true
                else
                    main_menu
                end
            else
                puts "Aucune sauvegarde n'a été trouvée..."
                main_menu
            end
        when "3"
            puts "Au revoir !"
            return false
        else
            Narrator.unsupported_choice_error
            main_menu
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
