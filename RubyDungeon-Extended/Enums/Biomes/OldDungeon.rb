module OldDungeonF
    NAMES = [
        Rooms::ROOM_F,
        Rooms::ALCOVE_F,
        Rooms::CELL_F,
        Rooms::TORTURE_CHAMBER_F,
        Rooms::GEOLLE_F
    ].freeze

    PREFIXES = [
        Adjectives::SMALL_F,
        Adjectives::TALL_F,
        Adjectives::NARROW_F,
        Adjectives::STRANGE_F
    ].freeze

    SUFFIXES = [
        Adjectives::WORRYING_F,
        Adjectives::COLD_F,
        Adjectives::ISOLATED_F,
        Adjectives::DARK_F,
        Adjectives::DUSTY_F,
        Adjectives::RUINED_F
    ].freeze
end

module OldDungeonM
    NAMES = [
        Rooms::CORRIDOR_M,
        Rooms::REFECTORY_M,
        Rooms::SLEEP_PLACE_M,
    ].freeze

    PREFIXES = [
        Adjectives::SMALL_M,
        Adjectives::TALL_M,
        Adjectives::NARROW_M,
        Adjectives::STRANGE_M
    ].freeze

    SUFFIXES = [
        Adjectives::WORRYING_M,
        Adjectives::COLD_M,
        Adjectives::ISOLATED_M,
        Adjectives::DARK_M,
        Adjectives::DUSTY_M,
        Adjectives::RUINED_M
    ].freeze
end

class OldDungeon < Biome
    EXPECTED_LEVEL = 10
    PICTURE = "old_dungeon"
    FEMALE = OldDungeonF
    MALE = OldDungeonM
    FEMALE_CHANCES = 75
    DESCRIPTION = [
        "Vous êtes dans ce qui semble être une ancienne prison.",
        "Bien que cet endroit soit un peu plus acceuillant que les catacombes, il ne l'est pas de beaucoup.",
        "Vous êtes ainsi pris d'un sentiment de mal-aise dans ce lieu semblant porter le poids d'une histoire sombre."
    ]
    BESTIARY = [
        Goblin,
        Undead,
        ForgottenPrisonner
    ]
    SAFE_CHANCES = 66
    LOOT = [
        Loot.new(
            [
                "Vous voyez une potion de soin posée sur une table au coté d'outils divers.",
                "Vous trouvez une potion de soin rangée dans une meuble.",
                "Vous remarquez une potion de soin oubliée au sol au coin de la pièce."
            ],
            5,
            HealthPotion,
            [20, 75]
        ),
        Loot.new(
            ["Vous remarquez des bagnes que vous pouvez déchirer afin de créer des bandages."],
            15,
            Bandage
        ),
        Loot.new(
            ["Vous remarquez une clef accrochée à un des murs."],
            2,
            PrisonKey
        )
    ]
    MIN_EXITS = 0
    MAX_EXITS = 2
    TRANSITIONS = [
        BiomeTransition.new(
            [
                "Vous arrivez devant une grande porte métallique.",
                "Malgré son grand âge et la rouille apparente, elle semble encore trop solide pour être forcée.",
                "",
                "En écoutant attentivement, vous pouvez entendre une respiration faiblarde transperçant subtilement la grande parroie metallique."
            ],
            5,
            BossCell
        )
    ]
end
