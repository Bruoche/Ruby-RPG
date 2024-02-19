require_relative "../Vocabulary"

module GoblinF
    NAMES = [
        Monsters::GOBLIN_F
    ].freeze

    PREFIXES = [
        Adjectives::SMALL_F,
        Adjectives::BIG_F,
        Adjectives::TALL_F,
        Adjectives::SCARY_F
    ].freeze

    SUFFIXES = [
        Adjectives::MUSCULAR_F,
        Adjectives::WORRIED_F,
        Adjectives::TIRED_F,
        Adjectives::ANGRY_F,
        Adjectives::WARY_F,
        Adjectives::GREEN_F,
        Adjectives::BLUISH_F,
        Adjectives::GREYISH_F,
        Adjectives::SMART_F,
        Adjectives::AGILE_F,
        Adjectives::JADED_F,
        Adjectives::SCOUT_F,
        Adjectives::AUTHORITARIAN_F
    ].freeze
end

module GoblinM
    NAMES = [
        Monsters::GOBLIN_M
    ].freeze

    PREFIXES = [
        Adjectives::SMALL_M,
        Adjectives::BIG_M,
        Adjectives::TALL_M,
        Adjectives::SCARY_M
    ].freeze

    SUFFIXES = [
        Adjectives::MUSCULAR_M,
        Adjectives::WORRIED_M,
        Adjectives::TIRED_M,
        Adjectives::ANGRY_M,
        Adjectives::WARY_M,
        Adjectives::GREEN_M,
        Adjectives::BLUISH_M,
        Adjectives::GREYISH_M,
        Adjectives::SMART_M,
        Adjectives::AGILE_M,
        Adjectives::JADED_M,
        Adjectives::SCOUT_M,
        Adjectives::AUTHORITARIAN_M
    ].freeze
end


class Goblin
    FEMALE = GoblinF
    MALE = GoblinM
    def self.is_female
        return [true, false].sample
    end
end
