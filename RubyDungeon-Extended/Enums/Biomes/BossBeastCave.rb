module BossBeastCaveF
    NAMES = [
        LocaleKey::DISMAL_CELL
    ]
end

class BossBeastCave < Biome
    EXPECTED_LEVEL = 40
    PICTURE = 'prisonner_knight'
    COMBAT_TRACK = 'Dog'
    FEMALE = BossBeastCaveF
    FEMALE_CHANCES = 100
    DESCRIPTION = LocaleKey::DISMAL_CELL_DESCRIPTION
    SAFE_CHANCES = 0
    LOOT = []
    MIN_EXITS = 0
    MAX_EXITS = 0
    TRANSITIONS = []

    def self.get_monsters
        return [Beast]
    end
end
