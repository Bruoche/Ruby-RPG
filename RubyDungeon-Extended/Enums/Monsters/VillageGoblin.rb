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
    }
end
