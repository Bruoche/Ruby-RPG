module BaseStats
    BASE_HEALTH = 20
    BASE_STRENGTH = 5
    BASE_INTELLIGENCE = 0
    BASE_AGILITY = 10

    NB_STATS_PER_LEVEL = 2

    HEALTH_UPGRADE_PER_LEVEL = 2
    STRENGTH_UPGRADE_PER_LEVEL = 2
    INTELLIGENCE_UPGRADE_PER_LEVEL = 3
    AGILITY_UPGRADE_PER_LEVEL = 2
    INTELLIGENCE_COEFF = BaseStats::INTELLIGENCE_UPGRADE_PER_LEVEL / BaseStats::NB_STATS_PER_LEVEL

    AGILITY_PENALITY_PER_KILO = 6
    STRENGTH_PENALITY_PERCENTAGE = 20
    LEVELS_PER_UPGRADE = 6

    SPELL_DAMAGE_GROUP_DIVISOR_COEFF = 0.75
    SPELL_DAMAGE_BODYPARTS_DIVISOR_COEFF = 0.25

    LEVELS_PER_EXTRA_MONSTER = 3
    LEVELS_PER_COINS_PER_ROOMS = 6

    EXPECTED_ROOMS_PER_ARMOR = 25

    RISK_REDUCTION_ON_NEW_BIOME = 3
end
