require_relative "../Vocabulary"

module UndeadM
    NAMES = [
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
    def self.is_female
        return false
    end
end
