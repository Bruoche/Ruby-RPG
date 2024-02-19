require_relative "../Vocabulary"
require_relative "../Monsters/Goblin"
require_relative "../Monsters/CaveCritter"

module EntranceF
    NAMES = [
        Rooms::ROOM_F,
        Rooms::ALCOVE_F
    ].freeze

    PREFIXES = [
        Adjectives::SMALL_F,
        Adjectives::TALL_F,
        Adjectives::SPACIOUS_F
    ].freeze

    SUFFIXES = [
        Adjectives::SCARY_F,
        Adjectives::COLD_F,
        Adjectives::HUMID_F,
        Adjectives::ISOLATED_F,
        Adjectives::DARK_F
    ].freeze
end

module EntranceM
    NAMES = [
        Rooms::CORRIDOR_M
    ].freeze

    PREFIXES = [
        Adjectives::SMALL_M,
        Adjectives::TALL_M,
        Adjectives::LONG_M
    ].freeze

    SUFFIXES = [
        Adjectives::SCARY_M,
        Adjectives::COLD_M,
        Adjectives::HUMID_M,
        Adjectives::ISOLATED_M,
        Adjectives::DARK_M
    ].freeze
end

class Entrance
    FEMALE = EntranceF
    MALE = EntranceM
    BESTIARY = [
        Goblin,
        CaveCritter
    ].freeze()
    def self.is_female
        return [true, true, false].sample
    end
end
