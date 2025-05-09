class PrisonKey < Item
    NAME = LocaleKey::PRISON_KEY_NAME
    PLURAL_NAME = LocaleKey::PRISON_KEY_PLURAL
    SOUND = 'key'
    USABLE_ON_OTHERS = false
    DROP_CHANCE_SCALABLE = true
    DROP_QUANTITY_SCALABLE = false

    def initialize
        @value = 0
    end

    def get_description
        return LocaleKey::PRISON_KEY_DESCRIPTION
    end
end
