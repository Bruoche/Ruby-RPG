class ForestGoblin < Bestiary
    FEMALE = GoblinF
    MALE = GoblinM
    FEMALE_CHANCES = 50
    HEALTH_MULTIPLIER = 0.5
    DAMAGE_MULTIPLIER = 0.5
    PICTURE = 'goblin'
    LOOTS = [
        Loot.new(
            LocaleKey::GOBLIN_LOOT_COINS,
            12,
            Coins,
            [],
            6,
            9
        )
    ]
    UNPREDICTABILITY = 10
    COWARDICE = 2
end
