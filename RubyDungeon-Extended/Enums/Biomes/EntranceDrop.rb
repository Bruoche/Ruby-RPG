module EntranceDropF
    NAMES = [
        LocaleKey::ROOM,
        LocaleKey::ALCOVE
    ].freeze

    PREFIXES = [
        LocaleKey::TALL_F,
        LocaleKey::SPACIOUS_F
    ].freeze

    SUFFIXES = [
        LocaleKey::WORRYING_F,
        LocaleKey::COLD_F,
        LocaleKey::HUMID_F,
        LocaleKey::DARK_F
    ].freeze
end

class EntranceDrop < Biome
    EXPECTED_LEVEL = 3
    PICTURE = 'entrance'
    EXPLORATION_TRACK = 'Dungeon Entrance'
    COMBAT_TRACK = 'Dungeon Entrance Battle theme'
    FEMALE = EntranceDropF
    FEMALE_CHANCES = 100
    BACKTRACK_CHANCES = 5
    DESCRIPTION = LocaleKey::ENTRANCE_HOLE_DESCRIPTION
    BESTIARY = []
    SAFE_CHANCES = 50
    LOOT = [
        Loot.new(
            LocaleKey::ENTRANCE_LOOT_HEALTH_POTION,
            2,
            HealthPotion,
            [5, 20]
        ),
        Loot.new(
            LocaleKey::ENTRANCE_LOOT_BANDAGE,
            15,
            Bandage
        ),
        Loot.new(
            LocaleKey::ENTRANCE_LOOT_COINS,
            25,
            Coins,
            [],
            1,
            3
        )
    ]
    MIN_EXITS = 2
    MAX_EXITS = 3
    TRANSITIONS = [
        BiomeTransition.new(
            LocaleKey::ENTRANCE_TRANSITION_CATACOMBS,
            15,
            'Catacombs'
        ),
        BiomeTransition.new(
            BiomeTransition::NO_MESSAGE,
            100,
            'Entrance',
            3
        ),
        BiomeTransition.new(
            BiomeTransition::NO_MESSAGE,
            100,
            'EntranceTuto'
        )
    ]
    REQUIRED_BIOMES = ['Hole']
end
