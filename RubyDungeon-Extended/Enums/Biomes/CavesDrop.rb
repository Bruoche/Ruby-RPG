module CavesDropF
    NAMES = [
        LocaleKey::OPEN_CAVE,
    ].freeze
end

class CavesDrop < Biome
    EXPECTED_LEVEL = 20
    PICTURE = 'cave_opened'
    EXPLORATION_TRACK = 'Cave Entrance'
    COMBAT_TRACK = 'Dungeon Entrance Battle theme'
    FEMALE = CavesDropF
    FEMALE_CHANCES = 100
    BACKTRACK_CHANCES = 2
    DESCRIPTION = LocaleKey::OPEN_CAVE_DESCRIPTION
    SAFE_CHANCES = 100
    LOOT = [
        Loot.new(
            LocaleKey::CAVES_LOOT_AMETHYST,
            24,
            Amethyst
        ),
        Loot.new(
            LocaleKey::CAVES_LOOT_ROPE,
            50,
            Rope
        )
    ]
    MIN_EXITS = 2
    MAX_EXITS = 2
    TRANSITIONS = [
        BiomeTransition.new(
            BiomeTransition::NO_MESSAGE,
            100,
            'Caves'
        ),
    ]
    REQUIRED_BIOMES = ['Hole']
end
