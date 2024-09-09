class Character
    FOLDER_PREFIX = "Characters/"

    def initialize(character_data)
        @name = character_data::NAME
        @intro_dialog = character_data::INTRO_DIALOG
        @dialogs = character_data::DIALOGS
        @unknown_dialogs = character_data::UNKNOWN_DIALOGS
        @picture = ASCIIPicture.new(ASCIIPrinter::PREFIX + Character::FOLDER_PREFIX + character_data::PICTURE)
    end
end
