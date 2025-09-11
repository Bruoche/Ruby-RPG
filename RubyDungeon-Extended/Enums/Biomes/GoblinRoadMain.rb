class GoblinRoadMain < Biome
    EXPECTED_LEVEL = 27
    PICTURE = 'village_path'
    EXPLORATION_TRACK = 'Goblin Village'
    COMBAT_TRACK = 'Dungeon Entrance Battle theme'
    FEMALE = GoblinRoadF
    MALE = GoblinRoadM
    FEMALE_CHANCES = 70
    BACKTRACK_CHANCES = 30
    DESCRIPTION = LocaleKey::VILLAGE_ROAD_DESCRIPTION
    PASSIVE_BESTIARY = [
        FighterGoblin,
        FighterGoblinHeavy,
        FighterGoblinHeavy,
        VillagerGoblin,
        VillagerGoblin,
        VillagerGoblin,
        VillagerGoblin,
        VillagerGoblin,
        VillagerGoblin,
        VillagerGoblin,
        VillagerGoblin,
        VillagerGoblin
    ]
    MONSTER_AMOUNT_MULTIPLIER = 1.3
    SAFE_CHANCES = 100
    PASSIVES_CHANCE = 70
    LOOT = []
    MIN_EXITS = 2
    MAX_EXITS = 5
    TRANSITIONS = [
        BiomeTransition.new(
            LocaleKey::GOBLIN_ROAD_TRANSITION_HOME,
            80,
            'GoblinHome'
        ),
        BiomeTransition.new(
            BiomeTransition::NO_MESSAGE,
            100,
            'GoblinRoad'
        )
    ]
    REQUIRED_BIOMES = ['TranslatorHome']
    ENTRY_EVENT = -> (room, player) {
        if player.has_status?(GoblinMurderer) && room.got_passives?
            Narrator.write(LocaleKey::GOBLIN_ATTACK)
            room.anger_passives
            room.anger_npcs
        end
        return !Player::ACTED
    }
end
