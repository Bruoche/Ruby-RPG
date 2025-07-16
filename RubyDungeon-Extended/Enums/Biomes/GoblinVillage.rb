module GoblinVillageF
    NAMES = [
        LocaleKey::OPEN_CAVE,
    ].freeze
end

class GoblinVillage < Biome
    EXPECTED_LEVEL = 27
    PICTURE = 'cave_opened'
    EXPLORATION_TRACK = 'Cave Entrance'
    COMBAT_TRACK = 'Dungeon Entrance Battle theme'
    FEMALE = GoblinVillageF
    FEMALE_CHANCES = 100
    BACKTRACK_CHANCES = 95
    DESCRIPTION = LocaleKey::OPEN_CAVE_DESCRIPTION
    SAFE_CHANCES = 100
    LOOT = []
    MIN_EXITS = 2
    MAX_EXITS = 3
    TRANSITIONS = [
        BiomeTransition.new(
            BiomeTransition::NO_MESSAGE,
            100,
            'Caves'
        ),
    ]
    REQUIRED_BIOMES = ['VillageTransition']
end
