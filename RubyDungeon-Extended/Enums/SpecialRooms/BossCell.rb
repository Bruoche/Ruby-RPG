module BossCellF
    NAMES = [
        "cellule lugubre"
    ]
end

class BossCell < Biome
    EXPECTED_LEVEL = 10
    PICTURE = "prisonner_knight"
    ENTRY_REQUIREMENTS = [
        EntryRequirement.new(
            "Essayer la clef de la prison sur la serrure ?",
            [
                "Vous utilisez la clef de la prison afin d'ouvrir la grande porte.",
                "Vous poussez sur la porte, ses gonds rouillés vous donnant du retord.",
                "En y mettant toutes vos forces, vous parvenez néanmoins à forcer la porte ouverte.",
                "",
                "Lorsque vous pénétrez dans ce qui semble être une cellule de prison,",
                "Vous pouvez voir au fond de la salle obscure un chevalier à l'armure endomagée par les batailles et l'age",
                "A peine couverte par les fins lambeau de ce qui devait être un noble surcôt."
            ],
            [
                "Vous décidez qu'il ne vaut probablement mieux ne pas prendre le risque d'ouvrir la porte",
                "Et décidez donc de revenir sur vos pas."
            ],
            [
                "Lorsque vous tentez de l'ouvrir celle-ci vous resiste, semblant être fermée à clef.",
                "",
                "Vous retournez sur vos pas."
            ],
            [PrisonKey]
        )
    ]
    FEMALE = BossCellF
    FEMALE_CHANCES = 100
    DESCRIPTION = [
        "Vous êtes au milleu d'une geolle sombre, des chaines brisées jonchent le sol."
    ]
    BESTIARY = [
        LostKnight
    ]
    SAFE_CHANCES = 0
    LOOT = []
    MIN_EXITS = 0
    MAX_EXITS = 0
    TRANSITIONS = []

    def self.get_monsters
        return [Boss.new(LostKnight)]
    end
end
