module SlimeM
    NAMES = [
        LocaleKey::SLIME
    ].freeze

    PREFIXES = [
        LocaleKey::SMALL_M,
        LocaleKey::BIG_M,
        LocaleKey::TALL_M
    ].freeze

    SUFFIXES = [
        LocaleKey::SCARY_M,
        LocaleKey::ANGRY_M,
        LocaleKey::WARY_M,
        LocaleKey::GREEN_M,
        LocaleKey::BLUISH_M,
        LocaleKey::GREYISH_M,
        LocaleKey::DARK_M
    ].freeze
end

class Slime < Bestiary
    MALE = SlimeM
    FEMALE_CHANCES = 0
    HEALTH_MULTIPLIER = 1
    DAMAGE_MULTIPLIER = 0.5
    PICTURE = 'slime'
    UNPREDICTABILITY = 60
end
