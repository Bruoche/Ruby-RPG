require_relative "../Vocabulary"
require_relative "../Monsters/Goblin"
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
        Adjectives::HUMID_F,
        Adjectives::ISOLATED_F,
        Adjectives::DARK_F,
        Adjectives::SILENT_F
    ].freeze
end

module CatacombsM
    NAMES = [
        Rooms::CORRIDOR_M
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

class Entrance
    FEMALE = EntranceF
    MALE = EntranceM
    BESTIARY = [
        Undead,
        CaveCritter
    ].freeze()
    def self.is_female
        return [true, false, false].sample
    end
    def self.describe
        puts "Vous êtes dans des catacombes remplies de tombes et ossements arrangés de façon plus ou moins élaboré."
        puts "Cet endroit est bien plus sec que l'entrée du donjon, l'obscurité est quand à elle plus grande que jamais."
        puts "L'air stagnant et la poussière vous donne une sensation de secheresse."
    end
end
