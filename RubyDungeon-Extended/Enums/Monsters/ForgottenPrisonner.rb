require_relative "../Vocabulary"

module ForgottenPrisonnerF
    NAMES = [
        Monsters::PRISONNER_F
    ].freeze

    PREFIXES = [
        Adjectives::SMALL_F,
        Adjectives::BIG_F,
        Adjectives::TALL_F,
        Adjectives::ANCIENT_F
    ].freeze

    SUFFIXES = [
        Adjectives::SCARY_F,
        Adjectives::ANGRY_F,
        Adjectives::WARY_F,
        Adjectives::GREYISH_F,
        Adjectives::DARK_F,
        Adjectives::TIRED_F
    ].freeze
end

module ForgottenPrisonnerM
    NAMES = [
        Monsters::PRISONNER_M
    ].freeze

    PREFIXES = [
        Adjectives::SMALL_M,
        Adjectives::BIG_M,
        Adjectives::TALL_M,
        Adjectives::ANCIENT_M
    ].freeze

    SUFFIXES = [
        Adjectives::SCARY_M,
        Adjectives::ANGRY_M,
        Adjectives::WARY_M,
        Adjectives::GREYISH_M,
        Adjectives::DARK_M,
        Adjectives::TIRED_M
    ].freeze
end


class ForgottenPrisonner
    IS_BOSS = false
    FEMALE = ForgottenPrisonnerF
    MALE = ForgottenPrisonnerM
    FEMALE_CHANCES = 50
    BASE_HEALTH = BaseStats::BASE_HEALTH.div(2)
    BASE_DAMAGE = BaseStats::BASE_STRENGTH+(BaseStats::BASE_STRENGTH.div(4))
    PICTURE = "forgotten_prisonner"
end
