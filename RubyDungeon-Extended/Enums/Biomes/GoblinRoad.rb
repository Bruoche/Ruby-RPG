module GoblinRoadF
    NAMES = [
        LocaleKey::ROAD
    ].freeze

    PREFIXES = [
        LocaleKey::SMALL_F,
        LocaleKey::LONG_F,
        LocaleKey::NARROW_F,
        LocaleKey::WINDING_F
    ].freeze

    SUFFIXES = [
        LocaleKey::CALM_F,
        LocaleKey::ISOLATED_F,
        LocaleKey::DARK_F,
        LocaleKey::DUSTY_F,
        LocaleKey::OVERGROWN_F,
        LocaleKey::SILENT_F
    ].freeze
end

module GoblinRoadM
    NAMES = [
        LocaleKey::PATH,
    ].freeze

    PREFIXES = [
        LocaleKey::SMALL_M,
        LocaleKey::LONG_M,
        LocaleKey::NARROW_M,
        LocaleKey::WINDING_M
    ].freeze

    SUFFIXES = [
        LocaleKey::CALM_M,
        LocaleKey::ISOLATED_M,
        LocaleKey::DARK_M,
        LocaleKey::DUSTY_M,
        LocaleKey::OVERGROWN_M,
        LocaleKey::SILENT_M
    ].freeze
end

class GoblinRoad < Biome
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
    PASSIVE_AMOUNT_MULTIPLIER = 1.3
    SAFE_CHANCES = 100
    PASSIVES_CHANCE = 70
    LOOT = []
    MIN_EXITS = 2
    MAX_EXITS = 4
    TRANSITIONS = [
        BiomeTransition.new(
            LocaleKey::GOBLIN_ROAD_TRANSITION_HOME,
            80,
            'GoblinHome'
        )
    ]
    ENTRY_EVENT = -> (room, player) {
        if player.have_status?(GoblinMurderer) && room.got_passives?
            Narrator.write(LocaleKey::GOBLIN_ATTACK)
            room.anger_passives
            room.anger_npcs
        end
        return !Player::ACTED
    }
end
