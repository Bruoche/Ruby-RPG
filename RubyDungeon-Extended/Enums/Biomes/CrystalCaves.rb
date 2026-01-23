module CrystalCavesF
    NAMES = [
        LocaleKey::ROOM,
    ].freeze

    PREFIXES = [
        LocaleKey::SMALL_F,
        LocaleKey::LONG_F,
        LocaleKey::NARROW_F,
    ].freeze

    SUFFIXES = [
        LocaleKey::COLD_F,
        LocaleKey::GLISTENING_F,
        LocaleKey::ISOLATED_F,
        LocaleKey::STRANGE_F,
        LocaleKey::SHINY_F
    ].freeze
end

module CrystalCavesM
    NAMES = [
        LocaleKey::CORRIDOR,
        LocaleKey::TUNNEL
    ].freeze

    PREFIXES = [
        LocaleKey::SMALL_M,
        LocaleKey::LONG_M,
        LocaleKey::NARROW_M,
    ].freeze

    SUFFIXES = [
        LocaleKey::COLD_M,
        LocaleKey::GLISTENING_M,
        LocaleKey::ISOLATED_M,
        LocaleKey::STRANGE_M,
        LocaleKey::SHINY_M
    ].freeze
end

class CrystalCaves < Biome
    EXPECTED_LEVEL = 30
    PICTURE = 'crystal_caves'
    EXPLORATION_TRACK = 'Crystal Cave'
    COMBAT_TRACK = 'Dungeon Entrance Battle theme'
    FEMALE = CrystalCavesF
    MALE = CrystalCavesM
    FEMALE_CHANCES = 66
    BACKTRACK_CHANCES = 2
    DESCRIPTION = LocaleKey::CRYSTAL_CAVE_DESCRIPTION
    BESTIARY = [
        SmallGolem
    ]
    SAFE_CHANCES = 30
    MONSTER_AMOUNT_MULTIPLIER = 0.3
    MIN_EXITS = 0
    MAX_EXITS = 3
    TRANSITIONS = [
        BiomeTransition.new(
            BiomeTransition::NO_MESSAGE,
            1,
            'Caves'
        )
    ]
end
