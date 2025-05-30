module CavesF
    NAMES = [
        LocaleKey::ROOM,
    ].freeze

    PREFIXES = [
        LocaleKey::SMALL_F,
        LocaleKey::TALL_F,
        LocaleKey::LONG_M,
        LocaleKey::SPACIOUS_F
    ].freeze

    SUFFIXES = [
        LocaleKey::COLD_F,
        LocaleKey::FLOODED_F,
        LocaleKey::GLISTENING_F,
        LocaleKey::HUMID_F,
        LocaleKey::ISOLATED_F,
        LocaleKey::DARK_F,
        LocaleKey::SHINY_F
    ].freeze
end

module CavesM
    NAMES = [
        LocaleKey::CORRIDOR,
        LocaleKey::TUNNEL
    ].freeze

    PREFIXES = [
        LocaleKey::SMALL_M,
        LocaleKey::TALL_M,
        LocaleKey::LONG_M,
        LocaleKey::SPACIOUS_F
    ].freeze

    SUFFIXES = [
        LocaleKey::COLD_M,
        LocaleKey::FLOODED_M,
        LocaleKey::GLISTENING_M,
        LocaleKey::HUMID_M,
        LocaleKey::ISOLATED_M,
        LocaleKey::DARK_M,
        LocaleKey::SHINY_M
    ].freeze
end

class Caves < Biome
    EXPECTED_LEVEL = 20
    PICTURE = 'cave'
    EXPLORATION_TRACK = 'Cave Entrance'
    COMBAT_TRACK = 'Dungeon Entrance Battle theme'
    FEMALE = CavesF
    MALE = CavesM
    FEMALE_CHANCES = 66
    BACKTRACK_CHANCES = 2
    DESCRIPTION = LocaleKey::CAVE_DESCRIPTION
    BESTIARY = [
        Spider,
        Bat
    ]
    SAFE_CHANCES = 85
    MONSTER_AMOUNT_MULTIPLIER = 0.5
    LOOT = [
        Loot.new(
            LocaleKey::CAVES_LOOT_AMETHYST,
            24,
            Amethyst
        )
    ]
    MIN_EXITS = 0
    MAX_EXITS = 3
    TRANSITIONS = [
        BiomeTransition.new(
            LocaleKey::CAVES_TRANSITION_FOREST,
            12,
            'UndergroundForest'
        ),
        BiomeTransition.new(
            BiomeTransition::NO_MESSAGE,
            1,
            'DeepCatacombs'
        ),
        BiomeTransition.new(
            BiomeTransition::NO_MESSAGE,
            5,
            'CavesDrop'
        )
    ]
end
