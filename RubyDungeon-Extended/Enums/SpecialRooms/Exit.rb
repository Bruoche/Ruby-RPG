class Exit
    SPECIAL = true;
    EXIT = "exit"
    def initialize(player, precedent_room = nil)
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
        file_name = @player.get_save
        if (file_name == nil) || (not confirm_save())
            Narrator.pause_text
            return SaveManager.get_new_id
        end
        return file_name
    end

    def confirm_save()
        puts "Souhaitez-vous écraser votre ancienne sauvegarde ? (Y/N)"
        choice = Narrator.user_input.downcase
        if choice == "y"
            return true
        elsif choice == "n"
            return false
        else
            Narrator.unsupported_choice_error
            return confirm_save()
        end
    end
end
