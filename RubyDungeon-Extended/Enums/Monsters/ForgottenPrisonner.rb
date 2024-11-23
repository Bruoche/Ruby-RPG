module ForgottenPrisonnerF
    NAMES = [
        Locale::KEY_PRISONNER_F
    ].freeze

    PREFIXES = [
        Locale::KEY_SMALL_F,
        Locale::KEY_BIG_F,
        Locale::KEY_TALL_F,
        Locale::KEY_ANCIENT_F
    ].freeze

    SUFFIXES = [
        Locale::KEY_SCARY_F,
        Locale::KEY_ANGRY_F,
        Locale::KEY_WARY_F,
        Locale::KEY_GREYISH_F,
        Locale::KEY_DARK_F,
        Locale::KEY_TIRED_F
    ].freeze
end

module ForgottenPrisonnerM
    NAMES = [
        Locale::KEY_PRISONNER_M
    ].freeze

    PREFIXES = [
        Locale::KEY_SMALL_M,
        Locale::KEY_BIG_M,
        Locale::KEY_TALL_M,
        Locale::KEY_ANCIENT_M
    ].freeze

    SUFFIXES = [
        Locale::KEY_SCARY_M,
        Locale::KEY_ANGRY_M,
        Locale::KEY_WARY_M,
        Locale::KEY_GREYISH_M,
        Locale::KEY_DARK_M,
        Locale::KEY_TIRED_M
    ].freeze
end


class ForgottenPrisonner < Bestiary
    FEMALE = ForgottenPrisonnerF
    MALE = ForgottenPrisonnerM
    FEMALE_CHANCES = 50
    BASE_HEALTH = BaseStats::BASE_HEALTH.div(2)
    BASE_DAMAGE = BaseStats::BASE_STRENGTH+(BaseStats::BASE_STRENGTH.div(4))
    PICTURE = 'forgotten_prisonner'
end
