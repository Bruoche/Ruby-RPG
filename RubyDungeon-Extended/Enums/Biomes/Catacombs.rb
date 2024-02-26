module CatacombsF
    NAMES = [
        Rooms::ROOM_F,
        Rooms::ALCOVE_F,
        Rooms::CHAMBER_F
    ].freeze

    PREFIXES = [
        Adjectives::SMALL_F,
        Adjectives::NARROW_F,
        Adjectives::DUSTY_F
    ].freeze

    SUFFIXES = [
        Adjectives::SCARY_F,
        Adjectives::COLD_F,
        Adjectives::ISOLATED_F,
        Adjectives::DARK_F,
        Adjectives::DRY_F,
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
        Adjectives::LONG_M,
        Adjectives::NARROW_M,
        Adjectives::DUSTY_M
    ].freeze

    SUFFIXES = [
        Adjectives::SCARY_M,
        Adjectives::COLD_M,
        Adjectives::ISOLATED_M,
        Adjectives::DARK_M,
        Adjectives::DRY_M,
        Adjectives::SILENT_M
    ].freeze
end

class Catacombs
    PICTURE = "catacombs"
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
        return rand(1..5) > 4
    end

    def self.get_loot()
        loot = Array.new()
        if rand(1..5) == 1
            puts "Vous remarquez des linceuls encore propres que vous pouvez utiliser comme bandages."
            loot.push(Bandage.new())
        end
        return loot
    end

    def self.get_next
        case rand(1..15)
        when 1
            puts
            puts "Alors que vous enfonciez désespérément dans les catacombes,"
            puts "Vous remarquez enfin un creux dans le mur similaire à celui par lequel vous êtes entrés."
            puts "Lorsque vous vous y engouffrez, vous êtes acceuillis par des grands murs de pierres"
            puts "qui ne sont pas sans rappeler ceux de l'entrée."
            puts
            puts "En revanche, quelque chose à propos de ce lieu semble être bien plus ancien que le reste du donjon."
            Narrator.pause_text
            return OldDungeon
        else
            return Catacombs
        end
    end
end
