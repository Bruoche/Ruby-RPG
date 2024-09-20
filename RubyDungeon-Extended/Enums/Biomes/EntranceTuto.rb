class EntranceTuto < Biome
    EXPECTED_LEVEL = 0
    PICTURE = "entrance"
    EXPLORATION_TRACK = "Dungeon Entrance"
    FEMALE = EntranceF
    MALE = EntranceM
    FEMALE_CHANCES = 60
    BACKTRACK_CHANCES = 5
    DESCRIPTION = [
        "Vous êtes entouré.e d'épais murs de pierres.",
        "L'air est humide et l'obscurité reigne au sein de l'ancienne forteresse,",
        "Mais les courants d'air atteignants votre dos sont un rappel de votre proximité avec la surface."
    ]
    BESTIARY = [
        Goblin,
        Goblin,
        Goblin,
        Goblin,
        Slime,
        Spider,
        Bat
    ]
    SAFE_CHANCES = 30
    LOOT = [
        Loot.new(
            [
                "Vous voyez une potion de soin posée sur une table.",
                "Vous trouvez une potion de soin rangée dans une commode."
            ],
            2,
            HealthPotion,
            [5, 20]
        ),
        Loot.new(
            ["Vous remarquez des draperies que vous pouvez déchirer afin de créer des bandages."],
            20,
            Bandage
        ),
        Loot.new(
            [
                "Vous trouvez quelques pièces posées sur une table",
                "Vous voyez une petite bourse posée sur une étagère"
            ],
            25,
            Coins,
            [],
            1,
            3
        )
    ]
    MIN_EXITS = 1
    MAX_EXITS = 3
    TRANSITIONS = [
        BiomeTransition.new(
            [
                "Alors que vous avancez à travers le donjon, vous arrivez vers des couloirs plus restraints descendant plus profondément dans la terre.",
                "Vous vous engouffrez dans ce qui semble être un lieu de repos pour les anciens habitants de ce donjon depuis longtemps disparus."
            ],
            10,
            "Catacombs"
        ),
        BiomeTransition.new(
            BiomeTransition::NO_MESSAGE,
            100,
            "Entrance",
            3
        )
    ]
end
