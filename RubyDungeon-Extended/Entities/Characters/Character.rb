class Character
    FOLDER_PREFIX = 'Characters/'
    MIN_DIALOG_HEIGHT = 5
    PERCENT_MARGIN_RIGHT_DIALOG = 20
    DEFAULT_DIALOG = nil

    def initialize(character_data)
        @name = character_data::NAME
        @intro_dialog = character_data::INTRO_DIALOG
        @idle_dialog = character_data::IDLE_DIALOGS
        @conversation_starter = character_data::CONVERSATION_STARTER
        @conversation_keeper = character_data::CONVERSATION_KEEPER
        @repeat_intro = character_data::REPEAT_INTRO
        @dialogs = character_data::DIALOGS
        @unknown_dialogs = character_data::UNKNOWN_DIALOGS
        @picture = ASCIIPicture.new(ASCIIPrinter::PREFIX + Character::FOLDER_PREFIX + character_data::PICTURE)
        @character_met = []
        @dialogs_said = []
    end

    def said_before?(dialog)
        return @dialogs_said.include?(dialog.get_id)
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

    def talk(interlocutor)
        show
        Narrator.write(make_dialog_box(Locale.get_localized(@conversation_starter).sample).get_ascii)
        loop do
            Narrator.add_space_of(1)
            Narrator.write(LocaleKey::DIALOG_QUESTION)
            prompt = Dialog.process_sentence(Narrator.user_input(interlocutor.get_name.capitalize))
            if prompt == []
                show
                Narrator.write(make_dialog_box(Locale.get_localized(@conversation_keeper).sample).get_ascii)
            else
                if said_bye?(prompt)
                    return
                end
                show
                dialog_triggered = false
                for dialog in @dialogs do
                    if dialog.triggered?(prompt)
                        print_answer(dialog)
                        dialog_triggered = true
                        break
                    end
                end
                if !dialog_triggered
                    Narrator.write(make_dialog_box(Locale.get_localized(@unknown_dialogs).sample).get_ascii)
                end
            end
        end
    end

    private

    def said_bye?(prompt)
        for goodbye_phrase in Locale.get_localized(LocaleKey::DIALOG_END_KEYWORDS)
            said_bye = true
            for word in goodbye_phrase.split
                if !prompt.include? word
                    said_bye = false
                end
            end
            if said_bye
                return true
            end
        end
        return false
    end

    def print_answer(dialog)
        answered_sentences = Locale::get_localized(dialog.get_answer)
        first_sentence = true
        answered_sentences.each_with_index do |sentence, i|
            if first_sentence
                if said_before?(dialog)
                    intro = Locale::get_localized(@repeat_intro)
                else
                    @dialogs_said.append(dialog.get_id)
                    intro = Locale::get_localized(dialog.get_intro)
                end
                if intro != Dialog::NO_INTRO
                    if !Utils::PUNCTUATION.include? intro.strip[-1]
                        if sentence[0] != nil
                            sentence[0] = sentence[0].downcase
                        end
                    end
                    sentence = intro + sentence
                end
                first_sentence = false
            else
                show
            end
            Narrator.write(make_dialog_box(sentence).get_ascii)
            if i < (answered_sentences.length - 1)
                Narrator.pause_text
            end
        end
    end
end
