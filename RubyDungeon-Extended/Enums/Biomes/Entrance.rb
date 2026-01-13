module EntranceF
    NAMES = [
        LocaleKey::ROOM,
        LocaleKey::ALCOVE
    ].freeze

    PREFIXES = [
        LocaleKey::SMALL_F,
        LocaleKey::TALL_F,
        LocaleKey::SPACIOUS_F
    ].freeze

    SUFFIXES = [
        LocaleKey::WORRYING_F,
        LocaleKey::COLD_F,
        LocaleKey::HUMID_F,
        LocaleKey::ISOLATED_F,
        LocaleKey::DARK_F
    ].freeze
end

module EntranceM
    NAMES = [
        LocaleKey::CORRIDOR
    ].freeze

    PREFIXES = [
        LocaleKey::SMALL_M,
        LocaleKey::TALL_M,
        LocaleKey::LONG_M
    ].freeze

    SUFFIXES = [
        LocaleKey::WORRYING_M,
        LocaleKey::COLD_M,
        LocaleKey::HUMID_M,
        LocaleKey::ISOLATED_M,
        LocaleKey::DARK_M
    ].freeze
end

class Entrance < Biome
    EXPECTED_LEVEL = 3
    PICTURE = 'entrance'
    EXPLORATION_TRACK = 'Dungeon Entrance'
    COMBAT_TRACK = 'Dungeon Entrance Battle theme'
    FEMALE = EntranceF
    MALE = EntranceM
    FEMALE_CHANCES = 60
    BACKTRACK_CHANCES = 5
    DESCRIPTION = LocaleKey::ENTRANCE_DESCRIPTION
    BESTIARY = [
        Goblin,
        Goblin,
        Goblin,
        Slime,
        Slime,
        Spider,
        Bat
    ]
    SAFE_CHANCES = 30
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
    MIN_EXITS = 1
    MAX_EXITS = 3
    TRANSITIONS = [
        BiomeTransition.new(
            LocaleKey::ENTRANCE_TRANSITION_CATACOMBS,
            20,
            'Catacombs'
        ),
        BiomeTransition.new(
            BiomeTransition::NO_MESSAGE,
            5,
            'EntranceDrop'
        )
    ]
end
