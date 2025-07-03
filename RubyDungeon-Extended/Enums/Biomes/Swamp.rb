module SwampF
    NAMES = [
        LocaleKey::BOG,
        LocaleKey::BOG,
        LocaleKey::TRAIL
    ].freeze

    PREFIXES = [
        LocaleKey::SMALL_F,
        LocaleKey::NARROW_F,
        LocaleKey::LONG_F,
    ].freeze

    SUFFIXES = [
        LocaleKey::WORRYING_F,
        LocaleKey::FLOODED_F,
        LocaleKey::HUMID_F,
        LocaleKey::COLD_F,
        LocaleKey::ISOLATED_F,
        LocaleKey::DARK_F,
        LocaleKey::OVERGROWN_F,
        LocaleKey::WINDING_F,
    ].freeze
end

module SwampM
    NAMES = [
        LocaleKey::PATH,
        LocaleKey::MARSH,
        LocaleKey::SWAMP
    ].freeze

    PREFIXES = [
        LocaleKey::SMALL_M,
        LocaleKey::NARROW_M,
        LocaleKey::LONG_M,
    ].freeze

    SUFFIXES = [
        LocaleKey::WORRYING_M,
        LocaleKey::FLOODED_M,
        LocaleKey::HUMID_M,
        LocaleKey::COLD_M,
        LocaleKey::ISOLATED_M,
        LocaleKey::DARK_M,
        LocaleKey::OVERGROWN_M,
        LocaleKey::WINDING_M,
    ].freeze
end

class Swamp < Biome
    EXPECTED_LEVEL = 27
    PICTURE = 'swamp'
    EXPLORATION_TRACK = 'Dungeon Entrance'
    COMBAT_TRACK = 'Dungeon Entrance Battle theme'
    FEMALE = SwampF
    MALE = SwampM
    FEMALE_CHANCES = 50
    BACKTRACK_CHANCES = 8
    DESCRIPTION = LocaleKey::SWAMP_DESCRIPTION
    BESTIARY = [
        GiantSlime,
        GiantSlime,
        Slime,
        Slime,
        Slime,
        PoisonSpider
    ]
    SAFE_CHANCES = 40
    LOOT = [
    ]
    MIN_EXITS = 2
    MAX_EXITS = 4
    TRANSITIONS = [
        BiomeTransition.new(
            BiomeTransition::NO_MESSAGE,
            3,
            'UndergroundForest'
        )
    ]
end
