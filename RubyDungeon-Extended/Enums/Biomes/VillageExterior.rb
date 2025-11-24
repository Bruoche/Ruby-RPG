class VillageExterior < Biome
    EXPECTED_LEVEL = 27
    PICTURE = 'village_entrance'
    EXPLORATION_TRACK = 'Forest'
    COMBAT_TRACK = 'Dungeon Entrance Battle theme'
    FEMALE = UndergroundForestF
    MALE = UndergroundForestM
    FEMALE_CHANCES = 40
    BACKTRACK_CHANCES = 95
    DESCRIPTION = LocaleKey::VILLAGE_ENTRANCE_DESCRIPTION
    PASSIVE_BESTIARY = [
        FighterGoblin,
        FighterGoblin,
        FighterGoblinHeavy,
        FighterGoblinHeavy,
        VillagerGoblin
    ]
    NPCS = [
        GoblinGuard
    ]
    SAFE_CHANCES = 100
    PASSIVES_CHANCE = 100
    PASSIVE_AMOUNT_MULTIPLIER = 2
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
    ENTRY_EVENT = -> (room, player) {
        if player.have_status?(GoblinMurderer) && room.got_passives?
            Narrator.write(LocaleKey::GOBLIN_ATTACK)
            room.anger_passives
            room.anger_npcs
        end
        return !Player::ACTED
    }
end
