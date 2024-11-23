module SlimeM
    NAMES = [
        Locale::KEY_SLIME
    ].freeze

    PREFIXES = [
        Locale::KEY_SMALL_M,
        Locale::KEY_BIG_M,
        Locale::KEY_TALL_M
    ].freeze

    SUFFIXES = [
        Locale::KEY_SCARY_M,
        Locale::KEY_ANGRY_M,
        Locale::KEY_WARY_M,
        Locale::KEY_GREEN_M,
        Locale::KEY_BLUISH_M,
        Locale::KEY_GREYISH_M,
        Locale::KEY_DARK_M
    ].freeze
end

class Slime < Bestiary
    MALE = SlimeM
    FEMALE_CHANCES = 0
    BASE_HEALTH = BaseStats::BASE_HEALTH
    BASE_DAMAGE = BaseStats::BASE_STRENGTH.div(2)
    PICTURE = 'slime'
end
