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
        Adjectives::WORRYING_F,
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
        Adjectives::WORRYING_M,
        Adjectives::COLD_M,
        Adjectives::HUMID_M,
        Adjectives::ISOLATED_M,
        Adjectives::DARK_M
    ].freeze
end

class Entrance
    PICTURE = "entrance"
    FEMALE = EntranceF
    MALE = EntranceM
    MIN_EXITS = 1
    MAX_EXITS = 3
    BESTIARY = [
        Goblin,
        Slime,
        CaveCritter
    ].freeze()
    MONSTER_AMOUNT_BONUS = 0
    MONSTER_POWER_BONUS = 0

    def self.is_female
        return [true, true, false].sample
    end

    def self.describe
        puts "Vous êtes entouré.e d'épais murs de pierres."
        puts "L'air est humide et l'obscurité reigne au sein de l'ancienne forteresse,"
        puts "Mais les courants d'air atteignants votre dos sont un rappel de votre proximité avec la surface."
    end

    def self.get_safe_room
        return rand(1..10) < 3
    end

    def self.get_loot()
        loot = Array.new()
        if rand(1..50) == 1
            puts ["Vous voyez une potion de soin posée sur une table.", "Vous trouvez une potion de soin rangée dans une commode."].sample
            loot.push(HealthPotion.new(rand(5..10)))
        end
        if rand(1..3) == 1
            puts "Vous remarquez des draperies que vous pouvez déchirer afin de créer des bandages."
            loot.push(Bandage.new())
        end
        return loot
    end

    def self.get_next
        case rand(1..7)
        when 1
            puts
            puts "Alors que vous avancez à travers le donjon, vous arrivez vers des couloirs plus restraints descendant plus profondément dans la terre."
            puts "Vous vous engouffrez dans ce qui semble être un lieu de repos pour les anciens habitants de ce donjon depuis longtemps disparus."
            Narrator.pause_text
            return Catacombs
        else
            return Entrance
        end
    end
end
