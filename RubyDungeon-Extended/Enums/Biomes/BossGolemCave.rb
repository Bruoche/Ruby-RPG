module BossGolemCaveF
    NAMES = [
        LocaleKey::GOLEM_CAVE
    ]
end

class BossGolemCave < Biome
    EXPECTED_LEVEL = 33
    PICTURE = 'golem_boss_cave'
    COMBAT_TRACK = 'Dog'
    ENTRY_REQUIREMENTS = [
        BossGolemConfirm
    ]
    FEMALE = BossGolemCaveF
    FEMALE_CHANCES = 100
    DESCRIPTION = LocaleKey::GOLEM_CAVE_DESCRIPTION
    SAFE_CHANCES = 0
    LOOT = []
    MIN_EXITS = 0
    MAX_EXITS = 0
    TRANSITIONS = []

    def self.get_monsters
        return [GolemBoss]
    end
end
