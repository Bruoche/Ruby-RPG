module CatacombsF
    NAMES = [
        LocaleKey::ROOM,
        LocaleKey::ALCOVE,
        LocaleKey::CHAMBER
    ].freeze

    PREFIXES = [
        LocaleKey::SMALL_F,
        LocaleKey::NARROW_F,
        LocaleKey::DUSTY_F
    ].freeze

    SUFFIXES = [
        LocaleKey::SCARY_F,
        LocaleKey::COLD_F,
        LocaleKey::ISOLATED_F,
        LocaleKey::DARK_F,
        LocaleKey::DRY_F,
        LocaleKey::SILENT_F
    ].freeze
end

module CatacombsM
    NAMES = [
        LocaleKey::CORRIDOR,
        LocaleKey::TUNNEL
    ].freeze

    PREFIXES = [
        LocaleKey::SMALL_M,
        LocaleKey::LONG_M,
        LocaleKey::NARROW_M,
        LocaleKey::DUSTY_M
    ].freeze

    SUFFIXES = [
        LocaleKey::SCARY_M,
        LocaleKey::COLD_M,
        LocaleKey::ISOLATED_M,
        LocaleKey::DARK_M,
        LocaleKey::DRY_M,
        LocaleKey::SILENT_M
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
    DESCRIPTION = LocaleKey::CATACOMBS_DESCRIPTION
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
            LocaleKey::CATACOMBS_LOOT_BANDAGE,
            25,
            Bandage
        ),
        Loot.new(
            LocaleKey::CATACOMBS_LOOT_COINS,
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
            LocaleKey::CATACOMBS_TRANSITION_PRISON,
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
