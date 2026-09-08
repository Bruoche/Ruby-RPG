class CrystalShards < Item
    NAME = LocaleKey::CRYSTAL_SHARDS_NAME
    PLURAL_NAME = LocaleKey::CRYSTAL_SHARDS_PLURAL
    SOUND = 'gold_coins'
    PICTURE = 'amethyst'
    USABLE_ON_OTHERS = false
    DROP_CHANCE_SCALABLE = true
    DROP_QUANTITY_SCALABLE = true

    def initialize
        @value = 14
    end

    def get_description
        return LocaleKey::CRYSTAL_SHARDS_DESCRIPTION
    end
end
