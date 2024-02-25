class Settings
    PRINT_SMALL_SYM = :print_small
    DEFAULT_SETTINGS = {Settings::PRINT_SMALL_SYM => false}

    def self.print_small()
        update_settings
        return @@settings[PRINT_SMALL_SYM] == "true"
    end

    def self.set_print_small(print_small)
        @@settings[PRINT_SMALL_SYM] = print_small
        SaveManager.save_settings(@@settings)
    end

    private

    def self.update_settings()
        @@settings = SaveManager.get_settings
        if @@settings == nil
            @@settings = DEFAULT_SETTINGS
        end
    end
end
