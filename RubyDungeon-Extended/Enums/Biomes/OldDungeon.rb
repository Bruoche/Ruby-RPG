module OldDungeonF
    NAMES = [
        Rooms::ROOM_F,
        Rooms::ALCOVE_F,
        Rooms::CELL_F,
        Rooms::TORTURE_CHAMBER_F,
        Rooms::GEOLLE_F
    ].freeze

    PREFIXES = [
        Adjectives::SMALL_F,
        Adjectives::TALL_F,
        Adjectives::NARROW_F,
        Adjectives::STRANGE_F
    ].freeze

    SUFFIXES = [
        Adjectives::WORRYING_F,
        Adjectives::COLD_F,
        Adjectives::ISOLATED_F,
        Adjectives::DARK_F,
        Adjectives::DUSTY_F,
        Adjectives::RUINED_F
    ].freeze
end

module OldDungeonM
    NAMES = [
        Rooms::CORRIDOR_M,
        Rooms::REFECTORY_M,
        Rooms::SLEEP_PLACE_M,
    ].freeze

    PREFIXES = [
        Adjectives::SMALL_M,
        Adjectives::TALL_M,
        Adjectives::NARROW_M,
        Adjectives::STRANGE_M
    ].freeze

    SUFFIXES = [
        Adjectives::WORRYING_M,
        Adjectives::COLD_M,
        Adjectives::ISOLATED_M,
        Adjectives::DARK_M,
        Adjectives::DUSTY_M,
        Adjectives::RUINED_M
    ].freeze
end

class OldDungeon
    PICTURE = "old_dungeon"
    FEMALE = OldDungeonF
    MALE = OldDungeonM
    MIN_EXITS = 0
    MAX_EXITS = 2
    BESTIARY = [
        Goblin,
        Undead,
        ForgottenPrisonner
    ].freeze()
    MONSTER_AMOUNT_BONUS = 1
    MONSTER_POWER_BONUS = 2

    def self.is_female
        return [true, true, true, false].sample
    end

    def self.describe
        puts "Vous êtes dans ce qui semble être une ancienne prison."
        puts "Bien que cet endroit soit un peu plus acceuillant que les catacombes, il ne l'est pas de beaucoup."
        puts "Vous êtes ainsi pris d'un sentiment de mal-aise dans ce lieu semblant porter le poids d'une histoire sombre."
    end

    def self.get_safe_room
        return rand(1..3) > 2
    end

    def self.get_loot()
        loot = Array.new()
        if rand(1..20) == 1
            puts [
                "Vous voyez une potion de soin posée sur une table au coté d'outils divers.",
                "Vous trouvez une potion de soin rangée dans une meuble.",
                "Vous remarquez une potion de soin oubliée au sol au coin de la pièce."
            ].sample
            loot.push(HealthPotion.new(rand(5..30)))
        end
        if rand(1..3) == 1
            puts "Vous remarquez des bagnes que vous pouvez déchirer afin de créer des bandages."
            loot.push(Bandage.new())
        end
        if rand(1..50) == 1
            puts "Vous remarquez une clef accrochée à un des murs."
            loot.push(PrisonKey.new())
        end
        return loot
    end

    def self.get_next
        return OldDungeon
    end
end
