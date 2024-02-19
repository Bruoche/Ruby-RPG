require_relative "../Vocabulary"

module GoblinF
    NAMES = [
        Monsters::GOBLIN_F
    ].freeze

    PREFIXES = [
        Prefixes::SMALL_F,
        Prefixes::BIG_F,
        Prefixes::TALL_F,
        Prefixes::SCARY_F
    ].freeze

    SUFFIXES = [
        Suffixes::MUSCULAR_F,
        Suffixes::WORRIED_F,
        Suffixes::TIRED_F,
        Suffixes::ANGRY_F,
        Suffixes::WARY_F,
        Suffixes::GREEN_F,
        Suffixes::BLUISH_F,
        Suffixes::GREYISH_F,
        Suffixes::SMART_F,
        Suffixes::AGILE_F,
        Suffixes::JADED_F,
        Suffixes::AUTHORITARIAN_F
    ].freeze
end

module GoblinM
    NAMES = [
        Monsters::GOBLIN_M
    ].freeze

    PREFIXES = [
        Prefixes::SMALL_M,
        Prefixes::BIG_M,
        Prefixes::TALL_M,
        Prefixes::SCARY_M
    ].freeze

    SUFFIXES = [
        Suffixes::MUSCULAR_M,
        Suffixes::WORRIED_M,
        Suffixes::TIRED_M,
        Suffixes::ANGRY_M,
        Suffixes::WARY_M,
        Suffixes::GREEN_M,
        Suffixes::BLUISH_M,
        Suffixes::GREYISH_M,
        Suffixes::SMART_M,
        Suffixes::AGILE_M,
        Suffixes::JADED_M,
        Suffixes::AUTHORITARIAN_M
    ].freeze
end


class Goblin
    FEMALE = GoblinF
    MALE = GoblinM
    def self.is_female
        return [true, false].sample
    end
end
