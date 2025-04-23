class Character
    FOLDER_PREFIX = 'Characters/'
    MIN_DIALOG_HEIGHT = 5
    PERCENT_MARGIN_RIGHT_DIALOG = 20
    DEFAULT_DIALOG = nil
    NO_DIALOG_SPOKEN_LAST = nil

    def initialize(character_data)
        @name = character_data::NAME
        @intro_dialog = character_data::INTRO_DIALOG
        @idle_dialog = character_data::IDLE_DIALOGS
        @conversation_starter = character_data::CONVERSATION_STARTER
        @conversation_keeper = character_data::CONVERSATION_KEEPER
        @repeat_intro = character_data::REPEAT_INTRO
        @dialogs = character_data::DIALOGS
        @unknown_dialogs = character_data::UNKNOWN_DIALOGS
        @name_known_status = character_data::NAME_KNOWN
        @player_nickname = character_data::PLAYER_NICKNAME
        @picture = ASCIIPicture.new(ASCIIPrinter::PREFIX + Character::FOLDER_PREFIX + character_data::PICTURE)
        @character_met = []
        @dialogs_said = []
        @last_dialog_spoken = NO_DIALOG_SPOKEN_LAST
    end

    def said_before?(dialog)
        return @dialogs_said.include?(dialog.get_id)
    end

    def show
        Narrator.write(@picture.get_ascii)
    end

    def put_intro_with_action(question_box, player, dialog = DEFAULT_DIALOG)
        @interlocutor = player
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

    def make_dialog_box(dialog, width = TTY::Screen.width, show_next_arrow = false)
        used_width = width - (4 + (TTY::Screen.width * PERCENT_MARGIN_RIGHT_DIALOG).div(100))
        multiline_dialog = Utils.multiline(insert_name(Locale.get_localized(dialog)), used_width)
        while multiline_dialog.length < MIN_DIALOG_HEIGHT
            multiline_dialog.append(' ' * used_width)
        end
        if multiline_dialog[0].length < used_width
            multiline_dialog[0] = multiline_dialog[0] + (' ' * (used_width - multiline_dialog[0].length))
        end
        dialog_box = ASCIIPicture.new(multiline_dialog)
        dialog_box.frame(' ', ' ')
        if show_next_arrow
            dialog_box.replace_char(-1, -3, '➤')
        end
        dialog_box.frame
        return dialog_box
    end

    def talk(interlocutor)
        @interlocutor = interlocutor
        show
        Narrator.write(make_dialog_box(Locale.get_localized(@conversation_starter).sample).get_ascii)
        loop do
            Narrator.add_space_of(1)
            Narrator.write(LocaleKey::DIALOG_QUESTION)
            prompt = Dialog.process_sentence(Narrator.user_input(@interlocutor.get_name.capitalize))
            if prompt == []
                show
                Narrator.write(make_dialog_box(Locale.get_localized(@conversation_keeper).sample).get_ascii)
            else
                if said_bye?(prompt)
                    return
                end
                show
                dialog_triggered = false
                answer(prompt)
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

    def answer(prompt)
        for dialog in @dialogs do
            if dialog.triggered?(prompt, @last_dialog_spoken, @interlocutor)
                dialog.react(@interlocutor, self)
                print_answer(dialog)
                @last_dialog_spoken = dialog.get_id
                return
            end
        end
        Narrator.write(make_dialog_box(Locale.get_localized(@unknown_dialogs).sample).get_ascii)
    end

    def print_answer(dialog)
        answered_sentences = Locale::get_localized(dialog.get_answer)
        first_sentence = true
        answered_sentences.each_with_index do |sentence, i|
            if first_sentence
                sentence = add_intro(sentence, dialog)
                first_sentence = false
            else
                show
            end
            if i < (answered_sentences.length - 1)
                Narrator.write(make_dialog_box(sentence, TTY::Screen.width, true).get_ascii)
                Narrator.pause_text
            else
                Narrator.write(make_dialog_box(sentence).get_ascii)
            end
        end
    end

    def add_intro(sentence, dialog)
        intro = get_intro(dialog)
        if intro != Dialog::NO_INTRO
            if !Utils::PUNCTUATION.include? intro.strip[-1]
                if sentence[0] != nil
                    sentence[0] = sentence[0].downcase
                end
            end
            return intro + sentence
        else
            return sentence
        end
    end

    def get_intro(dialog)
        if said_before?(dialog) && dialog.change_intro_on_repeat?
            return Locale::get_localized(@repeat_intro)
        else
            @dialogs_said.append(dialog.get_id)
            return Locale::get_localized(dialog.get_intro)
        end
    end

    def insert_name(dialog)
        if dialog.kind_of? Array
            formated_dialog = []
            for line in dialog do
                formated_dialog.append(line.insert_name_single(line))
            end
            return formated_dialog
        else
            return insert_name_single(dialog)
        end
    end

    def insert_name_single(line)
        if line != nil
            if (@interlocutor != nil) && @interlocutor.has_status?(@name_known_status)
                denomination = @interlocutor.get_name
            else
                denomination = Locale.get_localized(@player_nickname)
            end
            return line.gsub(Locale::PLAYER_NAME, denomination)
        end
        return line
    end
end
