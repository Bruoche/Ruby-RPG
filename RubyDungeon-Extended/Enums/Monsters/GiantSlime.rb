module GiantSlimeM
    NAMES = [
        LocaleKey::SLIME
    ].freeze

    PREFIXES = [].freeze

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

class GiantSlime < Bestiary
    MALE = GiantSlimeM
    FEMALE_CHANCES = 0
    HEALTH_MULTIPLIER = 2
    DAMAGE_MULTIPLIER = 1
    PICTURE = 'slime'
    UNPREDICTABILITY = 60
end
