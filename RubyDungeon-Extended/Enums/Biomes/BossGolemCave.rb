module BossGolemCaveF
    NAMES = [
        LocaleKey::DISMAL_CELL
    ]
end

class BossGolemCave < Biome
    EXPECTED_LEVEL = 33
    PICTURE = 'prisonner_knight'
    COMBAT_TRACK = 'Dog'
    ENTRY_REQUIREMENTS = [
        BossCellRequireKey
    ]
    FEMALE = BossGolemCaveF
    FEMALE_CHANCES = 100
    DESCRIPTION = LocaleKey::DISMAL_CELL_DESCRIPTION
    SAFE_CHANCES = 0
    LOOT = []
    MIN_EXITS = 0
    MAX_EXITS = 0
    TRANSITIONS = []

    def self.get_monsters
        return [GolemBoss]
    end
end
