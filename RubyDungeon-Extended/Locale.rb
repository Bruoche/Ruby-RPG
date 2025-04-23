class Locale
    ID_FR = :'FR'
    ID_EN = :'EN'
    DEFAULT_LOCALE = ID_FR
    AVAILABLE_LOCALES = [ID_EN, ID_FR]
    PLAYER_NAME = '{name}'

    def self.get_localized(text_key)
        current_locale = get_locale(Settings.locale)
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
            return text_key.to_s
        end
    end
end
