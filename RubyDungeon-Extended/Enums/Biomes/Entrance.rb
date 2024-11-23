module EntranceF
    NAMES = [
        Locale::KEY_ROOM,
        Locale::KEY_ALCOVE
    ].freeze

    PREFIXES = [
        Locale::KEY_SMALL_F,
        Locale::KEY_TALL_F,
        Locale::KEY_SPACIOUS_F
    ].freeze

    SUFFIXES = [
        Locale::KEY_WORRYING_F,
        Locale::KEY_COLD_F,
        Locale::KEY_HUMID_F,
        Locale::KEY_ISOLATED_F,
        Locale::KEY_DARK_F
    ].freeze
end

module EntranceM
    NAMES = [
        Locale::KEY_CORRIDOR
    ].freeze

    PREFIXES = [
        Locale::KEY_SMALL_M,
        Locale::KEY_TALL_M,
        Locale::KEY_LONG_M
    ].freeze

    SUFFIXES = [
        Locale::KEY_WORRYING_M,
        Locale::KEY_COLD_M,
        Locale::KEY_HUMID_M,
        Locale::KEY_ISOLATED_M,
        Locale::KEY_DARK_M
    ].freeze
end

class Entrance < Biome
    EXPECTED_LEVEL = 3
    PICTURE = 'entrance'
    EXPLORATION_TRACK = 'Dungeon Entrance'
    COMBAT_TRACK = 'Dungeon Entrance Battle theme'
    FEMALE = EntranceF
    MALE = EntranceM
    FEMALE_CHANCES = 60
    BACKTRACK_CHANCES = 5
    DESCRIPTION = Locale::KEY_ENTRANCE_DESCRIPTION
    BESTIARY = [
        Goblin,
        Goblin,
        Goblin,
        Slime,
        Slime,
        Spider,
        Bat
    ]
    SAFE_CHANCES = 30
    LOOT = [
        Loot.new(
            Locale::KEY_ENTRANCE_LOOT_HEALTH_POTION,
            2,
            HealthPotion,
            [5, 20]
        ),
        Loot.new(
            Locale::KEY_ENTRANCE_LOOT_BANDAGE,
            15,
            Bandage
        ),
        Loot.new(
            Locale::KEY_ENTRANCE_LOOT_COINS,
            25,
            Coins,
            [],
            1,
            3
        )
    ]
    MIN_EXITS = 1
    MAX_EXITS = 3
    TRANSITIONS = [
        BiomeTransition.new(
            Locale::KEY_ENTRANCE_TRANSITION_CATACOMBS,
            15,
            'Catacombs'
        )
    ]
end
