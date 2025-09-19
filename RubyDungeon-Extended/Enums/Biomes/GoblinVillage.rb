module GoblinVillageF
    NAMES = [
        LocaleKey::VILLAGE_HUB,
    ].freeze
end

class GoblinVillage < Biome
    EXPECTED_LEVEL = 27
    PICTURE = 'goblin_village'
    EXPLORATION_TRACK = 'Goblin Village'
    COMBAT_TRACK = 'Dungeon Entrance Battle theme'
    FEMALE = GoblinVillageF
    FEMALE_CHANCES = 100
    BACKTRACK_CHANCES = 95
    DESCRIPTION = LocaleKey::VILLAGE_HUB_DESCRIPTION
    PASSIVE_BESTIARY = [
        FighterGoblin,
        FighterGoblinHeavy,
        FighterGoblinHeavy,
        VillagerGoblin,
        VillagerGoblin,
        VillagerGoblin,
        VillagerGoblin,
        VillagerGoblin
    ]
    MONSTER_AMOUNT_MULTIPLIER = 1.3
    SAFE_CHANCES = 100
    PASSIVES_CHANCE = 100
    LOOT = []
    MIN_EXITS = 4
    MAX_EXITS = 5
    TRANSITIONS = [
        BiomeTransition.new(
            BiomeTransition::NO_MESSAGE,
            100,
            'GoblinRoad'
        ),
    ]
    REQUIRED_BIOMES = ['VillageTransition', 'BossGoblinHouse', 'VillageShop', 'GoblinRoadMain']
    ENTRY_EVENT = -> (room, player) {
        if player.has_status?(GoblinMurderer) && room.got_passives?
            Narrator.write(LocaleKey::GOBLIN_ATTACK)
            room.anger_passives
            room.anger_npcs
        end
        return !Player::ACTED
    }
end
