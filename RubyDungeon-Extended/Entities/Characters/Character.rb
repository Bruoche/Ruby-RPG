class Character
    FOLDER_PREFIX = 'Characters/'
    MIN_DIALOG_HEIGHT = 5
    PERCENT_MARGIN_RIGHT_DIALOG = 20
    DEFAULT_DIALOG = nil

    def initialize(character_data)
        @name = character_data::NAME
        @intro_dialog = character_data::INTRO_DIALOG
        @idle_dialog = character_data::IDLE_DIALOGS
        @dialogs = character_data::DIALOGS
        @unknown_dialogs = character_data::UNKNOWN_DIALOGS
        @picture = ASCIIPicture.new(ASCIIPrinter::PREFIX + Character::FOLDER_PREFIX + character_data::PICTURE)
        @character_met = []
    end

    def show
        Narrator.write(@picture.get_ascii)
    end

    def put_intro_with_action(question_box, player, dialog = DEFAULT_DIALOG)
        if dialog == DEFAULT_DIALOG
            if @character_met.include?(player)
                dialog = Locale.get_localized(@idle_dialog).sample
            else
                dialog = Locale.get_localized(@intro_dialog)
                @character_met.append(player)
            end
        end
        dialog_box = make_dialog_box(dialog, (TTY::Screen.width - (question_box.width)))
        dialog_box.juxtapose(question_box)
        Narrator.write(dialog_box.get_ascii)
    end

    def make_dialog_box(dialog, width = TTY::Screen.width)
        used_width = width - (4 + (TTY::Screen.width * PERCENT_MARGIN_RIGHT_DIALOG).div(100))
        multiline_dialog = Utils.multiline(Locale.get_localized(dialog), used_width)
        while multiline_dialog.length < MIN_DIALOG_HEIGHT
            multiline_dialog.append(' ' * used_width)
        end
        dialog_box = ASCIIPicture.new(multiline_dialog)
        dialog_box.frame(' ', ' ')
        dialog_box.frame
        return dialog_box
    end
end
