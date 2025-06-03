module UndergroundForestF
    NAMES = [
        LocaleKey::CLEARING,
        LocaleKey::TRAIL
    ].freeze

    PREFIXES = [
        LocaleKey::SMALL_F,
        LocaleKey::TALL_F,
        LocaleKey::LONG_F,
        LocaleKey::SPACIOUS_F
    ].freeze

    SUFFIXES = [
        LocaleKey::ISOLATED_F,
        LocaleKey::DARK_F,
        LocaleKey::WINDING_F,
        LocaleKey::OVERGROWN_F,
        LocaleKey::CALM_F
    ].freeze
end

module UndergroundForestM
    NAMES = [
        LocaleKey::PATH,
        LocaleKey::FOREST_GROUND
    ].freeze

    PREFIXES = [
        LocaleKey::SMALL_M,
        LocaleKey::TALL_M,
        LocaleKey::LONG_M,
        LocaleKey::SPACIOUS_M
    ].freeze

    SUFFIXES = [
        LocaleKey::ISOLATED_M,
        LocaleKey::DARK_M,
        LocaleKey::WINDING_M,
        LocaleKey::OVERGROWN_M,
        LocaleKey::CALM_M
    ].freeze
end

class UndergroundForest < Biome
    EXPECTED_LEVEL = 25
    PICTURE = 'forest'
    EXPLORATION_TRACK = 'Forest'
    COMBAT_TRACK = 'Dungeon Entrance Battle theme'
    FEMALE = UndergroundForestF
    MALE = UndergroundForestM
    FEMALE_CHANCES = 40
    BACKTRACK_CHANCES = 5
    DESCRIPTION = LocaleKey::FOREST_DESCRIPTION
    BESTIARY = [
        ForestGoblin,
        ForestGoblin,
        ForestGoblin,
        ForestGoblin,
        ForagerGoblin,
        ForagerGoblin,
        ForagerGoblin,
        FighterGoblin
    ]
    SAFE_CHANCES = 50
    MONSTER_AMOUNT_MULTIPLIER = 2
    LOOT = [
        Loot.new(
            LocaleKey::FOREST_LOOT_ROPE,
            20,
            Rope
        ),
        Loot.new(
            LocaleKey::FOREST_LOOT_AMETHYST,
            3,
            Amethyst
        )
    ]
    MIN_EXITS = 2
    MAX_EXITS = 4
    TRANSITIONS = [
        BiomeTransition.new(
            BiomeTransition::NO_MESSAGE,
            5,
            'Caves'
        )
    ]
end
