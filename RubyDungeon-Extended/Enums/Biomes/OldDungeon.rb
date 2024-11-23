module OldDungeonF
    NAMES = [
        Locale::KEY_ROOM,
        Locale::KEY_ALCOVE,
        Locale::KEY_CELL,
        Locale::KEY_TORTURE_CHAMBER,
        Locale::KEY_GEOLLE
    ].freeze

    PREFIXES = [
        Locale::KEY_SMALL_F,
        Locale::KEY_TALL_F,
        Locale::KEY_NARROW_F,
        Locale::KEY_STRANGE_F
    ].freeze

    SUFFIXES = [
        Locale::KEY_WORRYING_F,
        Locale::KEY_COLD_F,
        Locale::KEY_ISOLATED_F,
        Locale::KEY_DARK_F,
        Locale::KEY_DUSTY_F,
        Locale::KEY_RUINED_F
    ].freeze
end

module OldDungeonM
    NAMES = [
        Locale::KEY_CORRIDOR,
        Locale::KEY_REFECTORY,
        Locale::KEY_SLEEP_PLACE,
    ].freeze

    PREFIXES = [
        Locale::KEY_SMALL_M,
        Locale::KEY_TALL_M,
        Locale::KEY_NARROW_M,
        Locale::KEY_STRANGE_M
    ].freeze

    SUFFIXES = [
        Locale::KEY_WORRYING_M,
        Locale::KEY_COLD_M,
        Locale::KEY_ISOLATED_M,
        Locale::KEY_DARK_M,
        Locale::KEY_DUSTY_M,
        Locale::KEY_RUINED_M
    ].freeze
end

class OldDungeon < Biome
    EXPECTED_LEVEL = 10
    PICTURE = 'old_dungeon'
    EXPLORATION_TRACK = 'Prison'
    COMBAT_TRACK = 'Dungeon Entrance Battle theme'
    FEMALE = OldDungeonF
    MALE = OldDungeonM
    FEMALE_CHANCES = 75
    BACKTRACK_CHANCES = 5
    DESCRIPTION = Locale::KEY_PRISON_DESCRIPTION
    BESTIARY = [
        Goblin,
        Undead,
        Skeletton,
        ForgottenPrisonner,
        ForgottenPrisonner,
        ForgottenPrisonner
    ]
    SAFE_CHANCES = 66
    LOOT = [
        Loot.new(
            Locale::KEY_PRISON_LOOT_HEALTH_POTION,
            10,
            HealthPotion,
            [20, 75]
        ),
        Loot.new(
            Locale::KEY_PRISON_LOOT_BANDAGE,
            15,
            Bandage
        ),
        Loot.new(
            Locale::KEY_PRISON_LOOT_KEY,
            5,
            PrisonKey
        )
    ]
    MIN_EXITS = 0
    MAX_EXITS = 2
    TRANSITIONS = [
        BiomeTransition.new(
            Locale::KEY_PRISON_TRANSITION_CELL,
            5,
            'BossCell'
        ),
        BiomeTransition.new(
            BiomeTransition::NO_MESSAGE,
            1,
            'Catacombs'
        )
    ]
end
