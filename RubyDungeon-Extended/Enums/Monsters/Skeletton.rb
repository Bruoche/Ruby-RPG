module SkelettonM
    NAMES = [
        LocaleKey::SKELETON
    ].freeze

    PREFIXES = [
        LocaleKey::SMALL_M,
        LocaleKey::BIG_M,
        LocaleKey::TALL_M,
        LocaleKey::ANCIENT_M
    ].freeze

    SUFFIXES = [
        LocaleKey::SCARY_M,
        LocaleKey::ANGRY_M,
        LocaleKey::WARY_M,
        LocaleKey::GREYISH_M,
        LocaleKey::DARK_M,
        LocaleKey::TIRED_M
    ].freeze
end


class Skeletton < Bestiary
    MALE = SkelettonM
    FEMALE_CHANCES = 0
    HEALTH_MULTIPLIER = 0.75
    DAMAGE_MULTIPLIER = 1.25
    PICTURE = 'skeletton'
end
