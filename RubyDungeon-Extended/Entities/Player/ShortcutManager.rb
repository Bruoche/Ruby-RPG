class ShortcutManager
    SEPARATOR = '; '
    SHORTCUT_SEPARATOR = ' -> '
    SET_INPUT_SHORTCUT = 'N'
    SHORTCUT_FORMAT = '%s) %s...'
    PAGE_DOWN_KEY = 'A'
    PAGE_UP_KEY = 'Z'
    FORBIDDEN_CHARS = [SET_INPUT_SHORTCUT, PAGE_DOWN_KEY, PAGE_UP_KEY]

    def initialize
        @shortcuts = {}
    end

    def load(shortcuts_data)
        if shortcuts_data != nil && shortcuts_data.length > 0
            for pairing in shortcuts_data.split(SEPARATOR)
                shortcut_array = pairing.split(SHORTCUT_SEPARATOR)
                shortcut = shortcut_array[0]
                item = Logger.try_or_log(StandardError, true) do
                    next Object.const_get(shortcut_array[1])
                end
                if shortcut != nil && shortcut.length > 0 && item != nil
                    @shortcuts[shortcut] = item
                end
            end
        end
    end

    def get_save_data
        save_data = ""
        @shortcuts.each do |shortcut, item|
            save_data += shortcut + SHORTCUT_SEPARATOR + item.name + SEPARATOR
        end
        return save_data
    end

    def get_shortcut_list_string
        list = format(SHORTCUT_FORMAT, SET_INPUT_SHORTCUT, Locale.get_localized(LocaleKey::SHORTCUT_OPTION))
        for shortcut in @shortcuts.keys
            list += ' | ' + to_string(shortcut, SHORTCUT_FORMAT)
        end
        return list
    end

    def try(shortcut, player, accessible = true)
        formatted_shortcut = formated(shortcut)
        if formatted_shortcut == SET_INPUT_SHORTCUT
            manage_shortcuts(player)
            return !Player::ACTED
        end
        item_class = @shortcuts[formatted_shortcut]
        if item_class == nil
            Narrator.unsupported_choice_error
            return !Player::ACTED
        end
        if !accessible
            Narrator.write(LocaleKey::SHORTCUTS_UNAVAILABLE)
            SoundManager.play('spell_fart')
            return !Player::ACTED
        end
        if !player.have?(item_class)
            Narrator.write_formatted(LocaleKey::NO_ITEM_TO_USE, Locale.get_localized(item_class::NAME))
            SoundManager.play('spell_fart')
            return !Player::ACTED
        end
        return player.use_stack_of(item_class)
    end

    def exist?(input)
        return @shortcuts.has_key? formated(input) || formated(input) == SET_INPUT_SHORTCUT
    end

    def valid?(input)
        input = formated(input)
        if exist?(input)
            Narrator.write(LocaleKey::SHORTCUT_ALREADY_USED)
            return false
        end
        if FORBIDDEN_CHARS.include?(input)
            Narrator.write(LocaleKey::KEY_UNAVAILABLE)
            return false
        end
        if !Name::VALID_PATTERN.match? input
            Narrator.write(LocaleKey::FORBIDDEN_CHAR_ERROR)
            return false
        end
        if input.length <= 0
            Narrator.write(LocaleKey::EMPTY_NAME_ERROR)
            return false
        end
        return true
    end

    def formated(input)
        return input.strip.upcase
    end

    def manage_shortcuts(player)
        loop do
            if @shortcuts.length <= 0
                if !add_shortcut(player)
                    return
                end
            else
                Narrator.write(LocaleKey::ASK_SHORTCUT_ACTION)
                case Narrator.user_input(player.get_name)
                when '0'
                    return
                when '1'
                    add_shortcut(player)
                when '2'
                    delete_shortcut(player.get_name)
                else
                    Narrator.unsupported_choice_error
                end
            end
        end
    end

    def add_shortcut(player)
        if !player.has_any_item?
            Narrator.write(LocaleKey::NO_ITEM_TO_SHORTCUT)
            SoundManager.play 'spell_fart'
            return false
        end
        item = player.choose_item(LocaleKey::ASK_ITEM_FOR_SHORTCUT, true)
        if item == nil
            return false
        end
        loop do
            Narrator.write_formatted(LocaleKey::ASK_SHORTCUT_KEY, Locale.get_localized(item::PLURAL_NAME))
            Narrator.write(LocaleKey::ASK_SHORTCUT_KEY_RECOMMENDATION)
            input = formated(Narrator.user_input)
            if input == '0'
                return false
            end
            if valid? input
                @shortcuts[input] = item
                Narrator.write_formatted(LocaleKey::SHORTCUT_CREATED, to_string(input))
                return true
            end
        end
    end

    def delete_shortcut(player_name = Narrator::NO_NAME_DISPLAYED)
        shortcuts = @shortcuts.keys
        shortcut_index = Narrator.ask(LocaleKey::ASK_SHORTCUT_TO_DELETE, shortcuts, -> (shortcut) {to_string(shortcut)}, player_name)
        if shortcut_index == Narrator::RETURN_BUTTON
            return
        end
        if Narrator.ask_confirmation(LocaleKey::CONFIRM_DELETE_SHORTCUT)
            Narrator.write(LocaleKey::SHORTCUT_DELETED)
            @shortcuts.delete(shortcuts[shortcut_index])
        end
    end

    def to_string(shortcut, format = '[%s] %s...')
        if shortcut == Narrator::RETURN_BUTTON
            return Locale.get_localized(LocaleKey::GO_BACK).capitalize
        end
        return format(format, shortcut, Locale.get_localized(@shortcuts[shortcut]::PLURAL_NAME).capitalize)
    end
end
