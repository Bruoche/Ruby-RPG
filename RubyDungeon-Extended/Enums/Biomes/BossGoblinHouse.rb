module BossGoblinHouseF
    NAMES = [
        LocaleKey::VILLAGE_HUT,
    ].freeze
end

class BossGoblinHouse < Biome
    EXPECTED_LEVEL = 27
    PICTURE = 'goblin_boss'
    EXPLORATION_TRACK = 'Goblin Village'
    COMBAT_TRACK = 'Goblin Elder'
    FEMALE = BossGoblinHouseF
    FEMALE_CHANCES = 100
    BACKTRACK_CHANCES = 0
    DESCRIPTION = LocaleKey::VILLAGE_HOME_DESCRIPTION
    NPCS = [
        GoblinAdvisorRightNpc,
        GoblinElder,
        GoblinAdvisorLeftNpc
    ]
    SAFE_CHANCES = 100
    PASSIVES_CHANCE = 100
    PASSIVE_AMOUNT_MULTIPLIER = 2
    PASSIVE_BESTIARY = [
        FighterGoblinHeavy,
        FighterGoblin,
        FighterGoblin,
        VillagerGoblin,
        VillagerGoblin,
        VillagerGoblin,
        VillagerGoblin,
        VillagerGoblin
    ]
    LOOT = []
    MIN_EXITS = 0
    MAX_EXITS = 0
    ENTRY_EVENT = -> (room, player) {
        if player.have_status?(GoblinMurderer)
            room.set_exploration_track(MusicManager::NO_MUSIC)
            if room.got_passives?
                Narrator.write(LocaleKey::GOBLIN_ATTACK)
                room.anger_passives
                room.anger_npcs
            end
        end
        return !Player::ACTED
    }

    def self.give_everyone_status(status)
        for player in World.get_instance.get_all_players
            player.add_status(status.new)
        end
    end
end
