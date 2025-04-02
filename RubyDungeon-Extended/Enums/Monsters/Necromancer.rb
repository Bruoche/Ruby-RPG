module NecromancerF
    NAMES = [
        LocaleKey::NECROMANCER_F
    ].freeze

    PREFIXES = [
        LocaleKey::BIG_F,
        LocaleKey::TALL_F,
        LocaleKey::ANCIENT_F
    ].freeze

    SUFFIXES = [
        LocaleKey::SCARY_F,
        LocaleKey::GREYISH_F,
        LocaleKey::DARK_F,
        LocaleKey::POWERFULL_F
    ].freeze
end

module NecromancerM
    NAMES = [
        LocaleKey::NECROMANCER_M
    ].freeze

    PREFIXES = [
        LocaleKey::BIG_M,
        LocaleKey::TALL_M,
        LocaleKey::ANCIENT_M
    ].freeze

    SUFFIXES = [
        LocaleKey::SCARY_M,
        LocaleKey::GREYISH_M,
        LocaleKey::DARK_M,
        LocaleKey::POWERFULL_M
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
    PICTURE = 'necromancer'
    UNPREDICTABILITY = 0
end
