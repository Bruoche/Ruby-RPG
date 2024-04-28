require_relative "../Vocabulary"

module UndeadF
    NAMES = [
        Monsters::ZOMBIE_F
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

module UndeadM
    NAMES = [
        Monsters::SKELLETON_M,
        Monsters::SKELLETON_M,
        Monsters::ZOMBIE_M
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


class Undead
    MALE = UndeadM
    FEMALE = UndeadF
    FEMALE_CHANCES = 25
    BASE_HEALTH = BaseStats::BASE_HEALTH+(BaseStats::BASE_HEALTH.div(4))
    BASE_DAMAGE = BaseStats::BASE_STRENGTH
end
