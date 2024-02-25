class Exit
    EXIT = "exit"
    def initialize(player)
        @player = player
    end

    def get_denomination()
        return "la sortie"
    end

    def enter()
        puts
        ASCIIPrinter.print("dungeon_outside")
        puts
        if (@player.get_level == 0)
            print "Trop effrayé.e par les terreurs du donjon, "
        else
            print "En ayant terminé avec le donjon, "
        end
        puts "Vous quittez l'étrange batisse."
        puts "Vous avez survécu."
        puts
        file_name = ask_save
        SaveManager.save(@player.get_save_data, file_name)
        return EXIT
    end

    def ask_save()
        puts "Quel nom donner à votre sauvegarde ?"
        file_name = Narrator.user_input
        saves = SaveManager.get_saves
        if (saves != nil) && (saves.include?(file_name.downcase))
            if not confirm_save()
                return ask_save
            end
        end
        return file_name
    end

    def confirm_save()
        puts "Ce nom de fichier est déjà occupé."
        puts "Souhaitez-vous l'écraser ? (Y/N)"
        choice = Narrator.user_input.downcase
        if choice == "y"
            return true
        elsif choice == "n"
            return false
        else
            Narrator.unsupported_choice_error
        end
    end
end
