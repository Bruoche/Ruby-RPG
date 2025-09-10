class TranslatorHome < Biome
    EXPECTED_LEVEL = 27
    PICTURE = 'goblin_translator_hut'
    EXPLORATION_TRACK = 'Goblin Village'
    COMBAT_TRACK = 'Dungeon Entrance Battle theme'
    FEMALE = GoblinHomeF
    FEMALE_CHANCES = 100
    BACKTRACK_CHANCES = 0
    DESCRIPTION = LocaleKey::VILLAGE_HOME_DESCRIPTION
    NPCS = [
        GoblinTranslator
    ]
    SAFE_CHANCES = 100
    LOOT = []
    MIN_EXITS = 0
    MAX_EXITS = 0
end
