module DeepForestM
    NAMES = [
        LocaleKey::PATH
    ].freeze

    PREFIXES = [
        LocaleKey::SMALL_M,
        LocaleKey::LONG_M
    ].freeze

    SUFFIXES = [
        LocaleKey::WORRYING_M,
        LocaleKey::COLD_M,
        LocaleKey::ISOLATED_M,
        LocaleKey::WINDING_M,
        LocaleKey::DARK_M,
        LocaleKey::SILENT_M
    ].freeze
end

class DeepForest < Biome
    EXPECTED_LEVEL = 40
    PICTURE = 'deep_forest'
    EXPLORATION_TRACK = MusicManager::NO_MUSIC
    COMBAT_TRACK = MusicManager::NO_MUSIC
    MALE = DeepForestM
    FEMALE_CHANCES = 0
    BACKTRACK_CHANCES = 5
    DESCRIPTION = LocaleKey::DEEP_FOREST_DESCRIPTION
    BESTIARY = []
    SAFE_CHANCES = 100
    LOOT = []
    MIN_EXITS = 1
    MAX_EXITS = 1
    TRANSITIONS = [
        BiomeTransition.new(
            BiomeTransition::NO_MESSAGE,
            5,
            'UndergroundForest'
        )
    ]
end
