module SpiderF
    NAMES = [
        Locale::KEY_SPIDER
    ].freeze

    PREFIXES = [
        Locale::KEY_SMALL_F,
        Locale::KEY_BIG_F,
        Locale::KEY_TALL_F
    ].freeze

    SUFFIXES = [
        Locale::KEY_SCARY_F,
        Locale::KEY_ANGRY_F,
        Locale::KEY_WARY_F,
        Locale::KEY_GREEN_F,
        Locale::KEY_BLUISH_F,
        Locale::KEY_GREYISH_F,
        Locale::KEY_DARK_F
    ].freeze
end

class Spider < Bestiary
    FEMALE = SpiderF
    FEMALE_CHANCES = 100
    BASE_HEALTH = BaseStats::BASE_HEALTH.div(2)
    BASE_DAMAGE = BaseStats::BASE_STRENGTH.div(2)
    PICTURE = 'spider'
end
