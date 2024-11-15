class Locale
    ID_FR = 'FR'
    ID_EN = 'EN'
    DEFAULT_LOCALE = ID_FR
    AVAILABLE_LOCALES = [ID_FR]
    KEY_MAIN_MENU_OPTIONS = :main_menu_options

    def self.get_localized(text_key)
        current_locale = get_locale(ID_EN)
        available_texts = current_locale::TEXTS
        if available_texts.key?(text_key)
            return available_texts[text_key]
        else
            return fallback(text_key, current_locale)
        end
    end

    private

    def self.get_locale(id)
        return Object.const_get(id)
    end

    def self.fallback(text_key, current_locale)
        default_locale = get_locale(DEFAULT_LOCALE)
        default_texts = default_locale::TEXTS
        if (current_locale != default_locale) && default_texts.key?(text_key)
            return default_texts[text_key]
        else
            return text_key
        end
    end
end
