module BossGoblinHouseF
    NAMES = [
        LocaleKey::VILLAGE_HUT,
    ].freeze
end

class BossGoblinHouse < Biome
    EXPECTED_LEVEL = 27
    PICTURE = 'goblin_translator_hut'
    EXPLORATION_TRACK = 'Goblin Village'
    COMBAT_TRACK = 'Dungeon Entrance Battle theme'
    FEMALE = BossGoblinHouseF
    FEMALE_CHANCES = 100
    BACKTRACK_CHANCES = 0
    DESCRIPTION = LocaleKey::VILLAGE_HOME_DESCRIPTION
    NPCS = [
        GoblinElder
    ]
    SAFE_CHANCES = 100
    LOOT = []
    MIN_EXITS = 0
    MAX_EXITS = 0

    def self.give_everyone_status(status)
        for player in World.get_instance.get_all_players
            player.add_status(status.new)
        end
    end
end
