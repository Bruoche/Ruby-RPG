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
    BASE_HEALTH = BaseStats::BASE_HEALTH
    BASE_DAMAGE = BaseStats::BASE_STRENGTH.div(2)
    PICTURE = 'slime'
end
