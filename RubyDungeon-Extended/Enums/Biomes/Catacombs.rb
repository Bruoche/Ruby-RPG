module CatacombsF
    NAMES = [
        Rooms::ROOM_F,
        Rooms::ALCOVE_F,
        Rooms::CHAMBER_F
    ].freeze

    PREFIXES = [
        Adjectives::SMALL_F,
        Adjectives::NARROW_F,
        Adjectives::DUSTY_F
    ].freeze

    SUFFIXES = [
        Adjectives::SCARY_F,
        Adjectives::COLD_F,
        Adjectives::ISOLATED_F,
        Adjectives::DARK_F,
        Adjectives::DRY_F,
        Adjectives::SILENT_F
    ].freeze
end

module CatacombsM
    NAMES = [
        Rooms::CORRIDOR_M,
        Rooms::TUNNEL_M
    ].freeze

    PREFIXES = [
        Adjectives::SMALL_M,
        Adjectives::LONG_M,
        Adjectives::NARROW_M,
        Adjectives::DUSTY_M
    ].freeze

    SUFFIXES = [
        Adjectives::SCARY_M,
        Adjectives::COLD_M,
        Adjectives::ISOLATED_M,
        Adjectives::DARK_M,
        Adjectives::DRY_M,
        Adjectives::SILENT_M
    ].freeze
end

class Catacombs < Biome
    EXPECTED_LEVEL = 7
    PICTURE = "catacombs"
    FEMALE = CatacombsF
    MALE = CatacombsM
    FEMALE_CHANCES = 30
    BACKTRACK_CHANCES = 25
    DESCRIPTION = [
        "Vous êtes dans des catacombes remplies de tombes et ossements arrangés de façon plus ou moins élaboré.",
        "Cet endroit est bien plus sec que l'entrée du donjon, l'obscurité est quant à elle plus grande que jamais.",
        "L'air stagnant et la poussière vous donnent une sensation de secheresse."
    ]
    BESTIARY = [
        Undead,
        Undead,
        Skeletton,
        Skeletton,
        Bat
    ]
    SAFE_CHANCES = 80
    LOOT = [
        Loot.new(
            ["Vous remarquez des linceuls encore propres que vous pouvez utiliser comme bandages."],
            25,
            Bandage
        ),
        Loot.new(
            [
                "Vous remarquez qu'une des hurnes possèdes quelques pièce en son fond",
                "Vous voyez quelques pièces posées en offrande sur une des dépouilles entreposée en ce lieu"
            ],
            10,
            Coins,
            [],
            2,
            4
        )
    ]
    MIN_EXITS = 1
    MAX_EXITS = 2
    TRANSITIONS = [
        BiomeTransition.new(
            [
                "Alors que vous enfonciez désespérément dans les catacombes,",
                "Vous remarquez enfin un creux dans le mur similaire à celui par lequel vous êtes entrés.",
                "Lorsque vous vous y engouffrez, vous êtes acceuillis par des grands murs de pierres",
                "qui ne sont pas sans rappeler ceux de l'entrée.",
                "",
                "En revanche, quelque chose à propos de ce lieu semble être bien plus ancien que le reste du donjon."
            ],
            7,
            "OldDungeon"
        ),
        BiomeTransition.new(
            BiomeTransition::NO_MESSAGE,
            3,
            "Entrance",
            3
        ),
        BiomeTransition.new(
            BiomeTransition::NO_MESSAGE,
            3,
            "EntranceTuto",
            0,
            3
        )
    ]
end
