module SpiderF
    NAMES = [
        LocaleKey::SPIDER
    ].freeze

    PREFIXES = [
        LocaleKey::SMALL_F,
        LocaleKey::BIG_F,
        LocaleKey::TALL_F
    ].freeze

    SUFFIXES = [
        LocaleKey::SCARY_F,
        LocaleKey::ANGRY_F,
        LocaleKey::WARY_F,
        LocaleKey::GREEN_F,
        LocaleKey::BLUISH_F,
        LocaleKey::GREYISH_F,
        LocaleKey::DARK_F
    ].freeze
end

class Spider < Bestiary
    FEMALE = SpiderF
    FEMALE_CHANCES = 100
    HEALTH_MULTIPLIER = 0.5
    DAMAGE_MULTIPLIER = 0.5
    PICTURE = 'spider'
end
