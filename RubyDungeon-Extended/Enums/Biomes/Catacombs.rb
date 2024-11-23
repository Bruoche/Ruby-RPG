module CatacombsF
    NAMES = [
        Locale::KEY_ROOM,
        Locale::KEY_ALCOVE,
        Locale::KEY_CHAMBER
    ].freeze

    PREFIXES = [
        Locale::KEY_SMALL_F,
        Locale::KEY_NARROW_F,
        Locale::KEY_DUSTY_F
    ].freeze

    SUFFIXES = [
        Locale::KEY_SCARY_F,
        Locale::KEY_COLD_F,
        Locale::KEY_ISOLATED_F,
        Locale::KEY_DARK_F,
        Locale::KEY_DRY_F,
        Locale::KEY_SILENT_F
    ].freeze
end

module CatacombsM
    NAMES = [
        Locale::KEY_CORRIDOR,
        Locale::KEY_TUNNEL
    ].freeze

    PREFIXES = [
        Locale::KEY_SMALL_M,
        Locale::KEY_LONG_M,
        Locale::KEY_NARROW_M,
        Locale::KEY_DUSTY_M
    ].freeze

    SUFFIXES = [
        Locale::KEY_SCARY_M,
        Locale::KEY_COLD_M,
        Locale::KEY_ISOLATED_M,
        Locale::KEY_DARK_M,
        Locale::KEY_DRY_M,
        Locale::KEY_SILENT_M
    ].freeze
end

class Catacombs < Biome
    EXPECTED_LEVEL = 7
    PICTURE = 'catacombs'
    EXPLORATION_TRACK = 'Crypt'
    COMBAT_TRACK = 'Dungeon Entrance Battle theme'
    FEMALE = CatacombsF
    MALE = CatacombsM
    FEMALE_CHANCES = 30
    BACKTRACK_CHANCES = 10
    DESCRIPTION = Locale::KEY_CATACOMBS_DESCRIPTION
    BESTIARY = [
        Undead,
        Undead,
        Skeletton,
        Skeletton,
        Bat
    ]
    SAFE_CHANCES = 80
    LOOT = [
        Loot.new(
            Locale::KEY_CATACOMBS_LOOT_BANDAGE,
            25,
            Bandage
        ),
        Loot.new(
            Locale::KEY_CATACOMBS_LOOT_COINS,
            10,
            Coins,
            [],
            2,
            4
        )
    ]
    MIN_EXITS = 1
    MAX_EXITS = 2
    TRANSITIONS = [
        BiomeTransition.new(
            Locale::KEY_CATACOMBS_TRANSITION_PRISON,
            7,
            'OldDungeon'
        ),
        BiomeTransition.new(
            BiomeTransition::NO_MESSAGE,
            3,
            'Entrance',
            3
        ),
        BiomeTransition.new(
            BiomeTransition::NO_MESSAGE,
            1,
            'EntranceTuto',
            0,
            3
        )
    ]
end
