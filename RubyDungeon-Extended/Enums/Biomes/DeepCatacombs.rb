module DeepCatacombsF
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
        LocaleKey::WORRYING_F,
        LocaleKey::HUMID_F,
        LocaleKey::SCARY_F,
        LocaleKey::COLD_F,
        LocaleKey::ISOLATED_F,
        LocaleKey::DARK_F,
        LocaleKey::DRY_F,
        LocaleKey::SILENT_F
    ].freeze
end

module DeepCatacombsM
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
        LocaleKey::WORRYING_M,
        LocaleKey::HUMID_M,
        LocaleKey::SCARY_M,
        LocaleKey::COLD_M,
        LocaleKey::ISOLATED_M,
        LocaleKey::DARK_M,
        LocaleKey::DRY_M,
        LocaleKey::SILENT_M
    ].freeze
end

class DeepCatacombs < Biome
    EXPECTED_LEVEL = 17
    PICTURE = 'deep_catacombs'
    EXPLORATION_TRACK = 'Rotten Crypt'
    COMBAT_TRACK = 'Dungeon Entrance Battle theme'
    FEMALE = DeepCatacombsF
    MALE = DeepCatacombsM
    FEMALE_CHANCES = 30
    BACKTRACK_CHANCES = 10
    DESCRIPTION = LocaleKey::DEEP_CATACOMBS_DESCRIPTION
    BESTIARY = [
        Undead,
        Undead,
        Skeletton,
        Skeletton,
        Necromancer
    ]
    SAFE_CHANCES = 50
    LOOT = [
        Loot.new(
            LocaleKey::DEEP_CATACOMBS_LOOT_BANDAGE,
            5,
            Bandage
        )
    ]
    MIN_EXITS = 1
    MAX_EXITS = 2
    TRANSITIONS = [
        BiomeTransition.new(
            LocaleKey::DEEP_CATACOMBS_TRANSITION_CAVES,
            3,
            'Caves'
        ),
        BiomeTransition.new(
            BiomeTransition::NO_MESSAGE,
            3,
            'Catacombs'
        ),
    ]
end
