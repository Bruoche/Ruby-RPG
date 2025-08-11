class GoblinGuardBody < Bestiary
    FEMALE = FighterGoblinF
    MALE = FighterGoblinM
    FEMALE_CHANCES = 100
    HEALTH_MULTIPLIER = 1.2
    DAMAGE_MULTIPLIER = 1
    PICTURE = 'goblin_gard'
    LOOTS = [
        Loot.new(
            LocaleKey::GOBLIN_LOOT_HEALTH_POTION,
            3,
            HealthPotion,
            [100, 200],
            1,
            2
        ),
        Loot.new(
            LocaleKey::GOBLIN_LOOT_COINS,
            6,
            Coins,
            [],
            3,
            9
        )
    ]
    UNPREDICTABILITY = 10
end
