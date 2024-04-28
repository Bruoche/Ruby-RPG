require_relative "../Vocabulary"

module SlimeM
    NAMES = [
        Monsters::SLIME_M
    ].freeze

    PREFIXES = [
        Adjectives::SMALL_M,
        Adjectives::BIG_M,
        Adjectives::TALL_M
    ].freeze

    SUFFIXES = [
        Adjectives::SCARY_M,
        Adjectives::ANGRY_M,
        Adjectives::WARY_M,
        Adjectives::GREEN_M,
        Adjectives::BLUISH_M,
        Adjectives::GREYISH_M,
        Adjectives::DARK_M
    ].freeze
end

class Slime
    MALE = SlimeM
    FEMALE_CHANCES = 0
    BASE_HEALTH = BaseStats::BASE_HEALTH
    BASE_DAMAGE = BaseStats::BASE_STRENGTH.div(2)
end
