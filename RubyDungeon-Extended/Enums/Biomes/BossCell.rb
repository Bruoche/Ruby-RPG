module BossCellF
    NAMES = [
        "cellule lugubre"
    ]
end

class BossCell < Biome
    EXPECTED_LEVEL = 10
    PICTURE = "prisonner_knight"
    COMBAT_TRACK = "Dog"
    ENTRY_REQUIREMENTS = [
        BossCellRequireKey
    ]
    FEMALE = BossCellF
    FEMALE_CHANCES = 100
    DESCRIPTION = [
        "Vous êtes au milleu d'une geolle sombre, des chaines brisées jonchent le sol."
    ]
    SAFE_CHANCES = 0
    LOOT = []
    MIN_EXITS = 0
    MAX_EXITS = 0
    TRANSITIONS = []

    def self.get_monsters
        return [LostKnight]
    end
end
