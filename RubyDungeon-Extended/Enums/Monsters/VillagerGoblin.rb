class VillagerGoblin < Bestiary
    FEMALE = GoblinF
    MALE = GoblinM
    FEMALE_CHANCES = 50
    HEALTH_MULTIPLIER = 0.5
    DAMAGE_MULTIPLIER = 0.5
    PICTURE = 'goblin'
    LOOTS = [
        Loot.new(
            LocaleKey::GOBLIN_LOOT_COINS,
            10,
            Coins,
            [],
            1,
            9
        )
    ]
    UNPREDICTABILITY = 15
    DEATH_EVENT = -> (players, goblin, pack) {
        for player in players
            player.add_status(GoblinMurderer.new)
        end
        room = goblin.get_room
        if room.get_biome != VillageExterior
            if room.get_biome == BossGoblinHouse
                room.set_exploration_track(MusicManager::NO_MUSIC)
            else
                room.set_exploration_track('Goblin Village - Empty')
            end
        end
    }
end
