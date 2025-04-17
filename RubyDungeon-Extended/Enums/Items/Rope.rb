class Rope < Item
    NAME = LocaleKey::ROPE_NAME
    PLURAL_NAME = LocaleKey::ROPE_PLURAL
    SOUND = 'paper'
    USABLE_ON_OTHERS = false
    DROP_CHANCE_SCALABLE = false
    DROP_QUANTITY_SCALABLE = false

    def initialize
        @value = 0
    end

    def get_description
        return LocaleKey::ROPE_DESCRIPTION
    end
end
