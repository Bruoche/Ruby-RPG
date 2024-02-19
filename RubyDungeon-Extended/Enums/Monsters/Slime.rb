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
    def self.is_female
        return false
    end
end
