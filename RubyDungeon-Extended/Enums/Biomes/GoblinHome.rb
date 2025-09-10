module GoblinHomeF
    NAMES = [
        LocaleKey::VILLAGE_HUT,
    ].freeze

    PREFIXES = [
        LocaleKey::SMALL_F
    ].freeze

    SUFFIXES = [
        LocaleKey::ISOLATED_F,
        LocaleKey::DARK_F,
        LocaleKey::DUSTY_F,
        LocaleKey::NARROW_F
    ].freeze
end

class GoblinHome < Biome
    EXPECTED_LEVEL = 27
    PICTURE = 'goblin_hut'
    EXPLORATION_TRACK = 'Goblin Village'
    COMBAT_TRACK = 'Dungeon Entrance Battle theme'
    FEMALE = GoblinHomeF
    FEMALE_CHANCES = 100
    BACKTRACK_CHANCES = 0
    DESCRIPTION = LocaleKey::VILLAGE_HOME_DESCRIPTION
    PASSIVE_BESTIARY = [
        FighterGoblin,
        FighterGoblinHeavy,
        VillagerGoblin,
        VillagerGoblin,
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
    MONSTER_AMOUNT_MULTIPLIER = 0.2
    SAFE_CHANCES = 100
    PASSIVES_CHANCE = 90
    LOOT = []
    MIN_EXITS = 0
    MAX_EXITS = 0
    ENTRY_EVENT = -> (room, player) {
        if player.has_status?(GoblinMurderer) && room.got_passives?
            Narrator.write(LocaleKey::GOBLIN_ATTACK)
            room.anger_passives
            room.anger_npcs
        end
        return !Player::ACTED
    }
end
