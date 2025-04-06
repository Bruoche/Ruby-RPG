class EntranceTutoOne < Biome
    EXPECTED_LEVEL = 1
    PICTURE = 'entrance'
    EXPLORATION_TRACK = 'Dungeon Entrance'
    COMBAT_TRACK = 'Dungeon Entrance Battle theme'
    FEMALE = EntranceF
    MALE = EntranceM
    FEMALE_CHANCES = 60
    BACKTRACK_CHANCES = 5
    DESCRIPTION = LocaleKey::ENTRANCE_DESCRIPTION
    BESTIARY = [
        Goblin,
        Goblin,
        Goblin,
        Goblin,
        Slime,
        Spider,
        Bat
    ]
    SAFE_CHANCES = 30
    LOOT = [
        Loot.new(
            LocaleKey::ENTRANCE_LOOT_HEALTH_POTION,
            2,
            HealthPotion,
            [5, 20]
        ),
        Loot.new(
            LocaleKey::ENTRANCE_LOOT_BANDAGE,
            20,
            Bandage
        ),
        Loot.new(
            LocaleKey::ENTRANCE_LOOT_COINS,
            25,
            Coins,
            [],
            1,
            3
        )
    ]
    MIN_EXITS = 1
    MAX_EXITS = 3
    TRANSITIONS = [
        BiomeTransition.new(
            LocaleKey::ENTRANCE_TRANSITION_CATACOMBS,
            10,
            'Catacombs'
        ),
        BiomeTransition.new(
            BiomeTransition::NO_MESSAGE,
            5,
            'EntranceDrop'
        ),
        BiomeTransition.new(
            BiomeTransition::NO_MESSAGE,
            100,
            'Entrance',
            3
        )
    ]
end
