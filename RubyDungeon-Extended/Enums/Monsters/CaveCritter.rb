require_relative "../Vocabulary"

module CaveCritterF
    NAMES = [
        Monsters::SPIDER_F,
        Monsters::BAT_F
    ].freeze

    PREFIXES = [
        Adjectives::SMALL_F,
        Adjectives::BIG_F,
        Adjectives::TALL_F
    ].freeze

    SUFFIXES = [
        Adjectives::SCARY_F,
        Adjectives::ANGRY_F,
        Adjectives::WARY_F,
        Adjectives::GREEN_F,
        Adjectives::BLUISH_F,
        Adjectives::GREYISH_F,
        Adjectives::DARK_F
    ].freeze
end

class CaveCritter
    FEMALE = CaveCritterF
    def self.is_female
        return true
    end
end
