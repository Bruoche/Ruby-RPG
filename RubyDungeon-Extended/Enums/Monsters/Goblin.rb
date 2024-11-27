module GoblinF
    NAMES = [
        Locale::KEY_GOBLIN_F
    ].freeze

    PREFIXES = [
        Locale::KEY_SMALL_F,
        Locale::KEY_BIG_F,
        Locale::KEY_TALL_F,
        Locale::KEY_SCARY_F
    ].freeze

    SUFFIXES = [
        Locale::KEY_MUSCULAR_F,
        Locale::KEY_WORRIED_F,
        Locale::KEY_TIRED_F,
        Locale::KEY_ANGRY_F,
        Locale::KEY_WARY_F,
        Locale::KEY_GREEN_F,
        Locale::KEY_BLUISH_F,
        Locale::KEY_GREYISH_F,
        Locale::KEY_SMART_F,
        Locale::KEY_AGILE_F,
        Locale::KEY_JADED_F,
        Locale::KEY_SCOUT_F,
        Locale::KEY_AUTHORITARIAN_F
    ].freeze
end

module GoblinM
    NAMES = [
        Locale::KEY_GOBLIN_M
    ].freeze

    PREFIXES = [
        Locale::KEY_SMALL_M,
        Locale::KEY_BIG_M,
        Locale::KEY_TALL_M,
        Locale::KEY_SCARY_M
    ].freeze

    SUFFIXES = [
        Locale::KEY_MUSCULAR_M,
        Locale::KEY_WORRIED_M,
        Locale::KEY_TIRED_M,
        Locale::KEY_ANGRY_M,
        Locale::KEY_WARY_M,
        Locale::KEY_GREEN_M,
        Locale::KEY_BLUISH_M,
        Locale::KEY_GREYISH_M,
        Locale::KEY_SMART_M,
        Locale::KEY_AGILE_M,
        Locale::KEY_JADED_M,
        Locale::KEY_SCOUT_M,
        Locale::KEY_AUTHORITARIAN_M
    ].freeze
end


class Goblin < Bestiary
    FEMALE = GoblinF
    MALE = GoblinM
    FEMALE_CHANCES = 50
    BASE_HEALTH = BaseStats::BASE_HEALTH
    BASE_DAMAGE = BaseStats::BASE_STRENGTH
    PICTURE = 'goblin'
    LOOTS = [
        Loot.new(
            Locale::KEY_GOBLIN_LOOT_COINS,
            33,
            Coins,
            [],
            1,
            3
        )
    ]
end
