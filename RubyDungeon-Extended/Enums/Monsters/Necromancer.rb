module NecromancerF
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

module NecromancerM
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


class Necromancer < Bestiary
    MALE = NecromancerM
    FEMALE = NecromancerF
    FEMALE_CHANCES = 50
    HEALTH_MULTIPLIER = 1
    DAMAGE_MULTIPLIER = 1
    MAGIC_PROPORTION = 100
    HEALING_PROPORTION = 100
    PICTURE = 'goblin'
end
