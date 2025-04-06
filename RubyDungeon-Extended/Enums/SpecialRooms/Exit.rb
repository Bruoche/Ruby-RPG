class Exit
    SPECIAL = true;
    EXIT = 'exit'

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
        return Locale.get_localized(LocaleKey::THE_EXIT)
    end

    def allow_entry_for(player)
        Narrator.add_space_of(1)
        ASCIIPrinter.print('dungeon_outside')
        Narrator.add_space_of(1)
        Narrator.exit_dungeon(player.get_level == 0)
        SaveManager.save_player(player)
        Narrator.pause_text
        player.exit
        return true
    end

    def acted?
        return true
    end
end
