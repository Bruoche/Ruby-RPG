class Amethyst < Item
    NAME = LocaleKey::AMETHYST_NAME
    PLURAL_NAME = LocaleKey::AMETHYST_PLURAL
    SOUND = 'gold_coins'
    PICTURE = 'amethyst'
    USABLE_ON_OTHERS = false
    DROP_CHANCE_SCALABLE = true
    DROP_QUANTITY_SCALABLE = true

    def initialize
        @value = 14
    end

    def get_description
        return LocaleKey::AMETHYST_DESCRIPTION
    end
end
