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
    BASE_HEALTH = BaseStats::BASE_HEALTH+(BaseStats::BASE_HEALTH.div(4))
    BASE_DAMAGE = BaseStats::BASE_STRENGTH
    PICTURE = 'skeletton'
end
