module PoisonSpiderF
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

class PoisonSpider < Bestiary
    FEMALE = PoisonSpiderF
    FEMALE_CHANCES = 100
    HEALTH_MULTIPLIER = 0.5
    DAMAGE_MULTIPLIER = 1
    PICTURE = 'spider'
    UNPREDICTABILITY = 100
end
