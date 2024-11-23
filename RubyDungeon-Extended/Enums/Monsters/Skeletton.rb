module SkelettonM
    NAMES = [
        Locale::KEY_SKELETON
    ].freeze

    PREFIXES = [
        Locale::KEY_SMALL_M,
        Locale::KEY_BIG_M,
        Locale::KEY_TALL_M,
        Locale::KEY_ANCIENT_M
    ].freeze

    SUFFIXES = [
        Locale::KEY_SCARY_M,
        Locale::KEY_ANGRY_M,
        Locale::KEY_WARY_M,
        Locale::KEY_GREYISH_M,
        Locale::KEY_DARK_M,
        Locale::KEY_TIRED_M
    ].freeze
end


class Skeletton < Bestiary
    MALE = SkelettonM
    FEMALE_CHANCES = 0
    BASE_HEALTH = BaseStats::BASE_HEALTH+(BaseStats::BASE_HEALTH.div(4))
    BASE_DAMAGE = BaseStats::BASE_STRENGTH
    PICTURE = 'skeletton'
end
