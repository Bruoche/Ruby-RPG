module UndeadF
    NAMES = [
        LocaleKey::ZOMBIE_F
    ].freeze

    PREFIXES = [
        LocaleKey::SMALL_F,
        LocaleKey::BIG_F,
        LocaleKey::TALL_F,
        LocaleKey::ANCIENT_F
    ].freeze

    SUFFIXES = [
        LocaleKey::SCARY_F,
        LocaleKey::ANGRY_F,
        LocaleKey::WARY_F,
        LocaleKey::GREYISH_F,
        LocaleKey::DARK_F,
        LocaleKey::TIRED_F
    ].freeze
end

module UndeadM
    NAMES = [
        LocaleKey::ZOMBIE_M
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


class Undead < Bestiary
    MALE = UndeadM
    FEMALE = UndeadF
    FEMALE_CHANCES = 50
    BASE_HEALTH = BaseStats::BASE_HEALTH+(BaseStats::BASE_HEALTH.div(4))
    BASE_DAMAGE = BaseStats::BASE_STRENGTH
    PICTURE = 'undead'
end
