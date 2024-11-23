class PrisonKey < Item
    NAME = Locale::KEY_PRISON_KEY_NAME
    SOUND = 'key'
    USABLE_ON_OTHERS = false
    DROP_CHANCE_SCALABLE = true
    DROP_QUANTITY_SCALABLE = false

    def initialize
        @value = 0
    end

    def get_description
        return Locale::KEY_PRISON_KEY_DESCRIPTION
    end
end
