class TranslatorHome < Biome
    EXPECTED_LEVEL = 27
    PICTURE = 'village_entrance'
    EXPLORATION_TRACK = 'Forest'
    COMBAT_TRACK = 'Dungeon Entrance Battle theme'
    FEMALE = GoblinVillageF
    FEMALE_CHANCES = 100
    BACKTRACK_CHANCES = 100
    DESCRIPTION = LocaleKey::FOREST_DESCRIPTION
    NPCS = [
        GoblinTranslator
    ]
    SAFE_CHANCES = 100
    MONSTER_AMOUNT_MULTIPLIER = 2
    LOOT = []
    MIN_EXITS = 0
    MAX_EXITS = 0
end
