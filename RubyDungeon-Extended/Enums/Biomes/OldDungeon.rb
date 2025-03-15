module OldDungeonF
    NAMES = [
        LocaleKey::ROOM,
        LocaleKey::ALCOVE,
        LocaleKey::CELL,
        LocaleKey::TORTURE_CHAMBER,
        LocaleKey::GEOLLE
    ].freeze

    PREFIXES = [
        LocaleKey::SMALL_F,
        LocaleKey::TALL_F,
        LocaleKey::NARROW_F,
        LocaleKey::STRANGE_F
    ].freeze

    SUFFIXES = [
        LocaleKey::WORRYING_F,
        LocaleKey::COLD_F,
        LocaleKey::ISOLATED_F,
        LocaleKey::DARK_F,
        LocaleKey::DUSTY_F,
        LocaleKey::RUINED_F
    ].freeze
end

module OldDungeonM
    NAMES = [
        LocaleKey::CORRIDOR,
        LocaleKey::REFECTORY,
        LocaleKey::SLEEP_PLACE,
    ].freeze

    PREFIXES = [
        LocaleKey::SMALL_M,
        LocaleKey::TALL_M,
        LocaleKey::NARROW_M,
        LocaleKey::STRANGE_M
    ].freeze

    SUFFIXES = [
        LocaleKey::WORRYING_M,
        LocaleKey::COLD_M,
        LocaleKey::ISOLATED_M,
        LocaleKey::DARK_M,
        LocaleKey::DUSTY_M,
        LocaleKey::RUINED_M
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
    DESCRIPTION = LocaleKey::PRISON_DESCRIPTION
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
            LocaleKey::PRISON_LOOT_HEALTH_POTION,
            10,
            HealthPotion,
            [20, 75]
        ),
        Loot.new(
            LocaleKey::PRISON_LOOT_BANDAGE,
            15,
            Bandage
        ),
        Loot.new(
            LocaleKey::PRISON_LOOT_KEY,
            5,
            PrisonKey
        )
    ]
    MIN_EXITS = 0
    MAX_EXITS = 2
    TRANSITIONS = [
        BiomeTransition.new(
            LocaleKey::PRISON_TRANSITION_CELL,
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
