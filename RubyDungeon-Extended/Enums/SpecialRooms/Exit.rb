class Exit
    SPECIAL = true;
    EXIT = "exit"

    def initialize(id)
        @id = id
    end

    def get_id
        return @id
    end

    def get_biome
        return self.class
    end

    def get_denomination
        return "la sortie"
    end

    def allow_entry_for(player)
        puts
        ASCIIPrinter.print("dungeon_outside")
        puts
        if (player.get_level == 0)
            print "Trop effrayé.e par les terreurs du donjon, "
        else
            print "En ayant terminé avec le donjon, "
        end
        puts "Vous quittez l'étrange batisse."
        puts "Vous avez survécu."
        puts
        SaveManager.ask_save(player)
        player.exit
        return true
    end
end
