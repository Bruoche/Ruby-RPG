class VillageExterior < Biome
    EXPECTED_LEVEL = 27
    PICTURE = 'forest'
    EXPLORATION_TRACK = 'Forest'
    COMBAT_TRACK = 'Dungeon Entrance Battle theme'
    FEMALE = UndergroundForestF
    MALE = UndergroundForestM
    FEMALE_CHANCES = 40
    BACKTRACK_CHANCES = 95
    DESCRIPTION = LocaleKey::FOREST_DESCRIPTION
    BESTIARY = []
    PASSIVE_BESTIARY = [
        FighterGoblin,
        FighterGoblin,
        FighterGoblin,
        VillagerGoblin,
        VillagerGoblin
    ]
    NPCS = [
        GoblinGuard
    ]
    SAFE_CHANCES = 100
    PASSIVES_CHANCE = 100
    MONSTER_AMOUNT_MULTIPLIER = 2
    LOOT = []
    MIN_EXITS = 2
    MAX_EXITS = 4
    TRANSITIONS = [
        BiomeTransition.new(
            LocaleKey::FOREST_TRANSITION_SWAMP,
            10,
            'Swamp'
        ),
        BiomeTransition.new(
            BiomeTransition::NO_MESSAGE,
            5,
            'Caves'
        ),
        BiomeTransition.new(
            BiomeTransition::NO_MESSAGE,
            100,
            'UndergroundForest'
        )
    ]
    REQUIRED_BIOMES = ['VillageTransition']
end
