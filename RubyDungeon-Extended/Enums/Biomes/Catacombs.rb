require_relative "../Vocabulary"
require_relative "../Monsters/Undead"
require_relative "../Monsters/CaveCritter"

module CatacombsF
    NAMES = [
        Rooms::ROOM_F,
        Rooms::ALCOVE_F,
        Rooms::CHAMBER_F
    ].freeze

    PREFIXES = [
        Adjectives::SMALL_F,
        Adjectives::NARROW_F,
        Adjectives::DRY_F,
        Adjectives::DUSTY_F
    ].freeze

    SUFFIXES = [
        Adjectives::SCARY_F,
        Adjectives::COLD_F,
        Adjectives::ISOLATED_F,
        Adjectives::DARK_F,
        Adjectives::SILENT_F
    ].freeze
end

module CatacombsM
    NAMES = [
        Rooms::CORRIDOR_M,
        Rooms::TUNNEL_M
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

class Catacombs
    FEMALE = CatacombsF
    MALE = CatacombsM
    MIN_EXITS = 1
    MAX_EXITS = 2
    BESTIARY = [
        Undead,
        CaveCritter
    ].freeze()
    MONSTER_AMOUNT_BONUS = 1
    MONSTER_POWER_BONUS = 2

    def self.is_female
        return [true, false, false].sample
    end

    def self.describe
        puts "Vous êtes dans des catacombes remplies de tombes et ossements arrangés de façon plus ou moins élaboré."
        puts "Cet endroit est bien plus sec que l'entrée du donjon, l'obscurité est quand à elle plus grande que jamais."
        puts "L'air stagnant et la poussière vous donnent une sensation de secheresse."
    end

    def self.get_safe_room
        return rand(1..4) > 3
    end

    def self.get_next
        return Catacombs
    end
end