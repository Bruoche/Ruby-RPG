module ForagerGoblinF
    NAMES = [
        LocaleKey::FORAGER_GOBLIN_F
    ].freeze

    PREFIXES = [
        LocaleKey::SMALL_F,
        LocaleKey::BIG_F,
        LocaleKey::TALL_F
    ].freeze

    SUFFIXES = [
        LocaleKey::MUSCULAR_F,
        LocaleKey::WORRIED_F,
        LocaleKey::TIRED_F,
        LocaleKey::ANGRY_F,
        LocaleKey::WARY_F,
        LocaleKey::GREEN_F,
        LocaleKey::BLUISH_F,
        LocaleKey::GREYISH_F,
        LocaleKey::SMART_F,
        LocaleKey::AGILE_F,
        LocaleKey::JADED_F,
    ].freeze
end

module ForagerGoblinM
    NAMES = [
        LocaleKey::FORAGER_GOBLIN_M
    ].freeze

    PREFIXES = [
        LocaleKey::SMALL_M,
        LocaleKey::BIG_M,
        LocaleKey::TALL_M
    ].freeze

    SUFFIXES = [
        LocaleKey::MUSCULAR_M,
        LocaleKey::WORRIED_M,
        LocaleKey::TIRED_M,
        LocaleKey::ANGRY_M,
        LocaleKey::WARY_M,
        LocaleKey::GREEN_M,
        LocaleKey::BLUISH_M,
        LocaleKey::GREYISH_M,
        LocaleKey::SMART_M,
        LocaleKey::AGILE_M,
        LocaleKey::JADED_M,
    ].freeze
end

class ForagerGoblin < Bestiary
    FEMALE = ForagerGoblinF
    MALE = ForagerGoblinM
    FEMALE_CHANCES = 50
    HEALTH_MULTIPLIER = 0.25
    DAMAGE_MULTIPLIER = 0.25
    PICTURE = 'goblin'
    LOOTS = [
        Loot.new(
            LocaleKey::GOBLIN_LOOT_FRUITS,
            50,
            DetoxFruit,
            [20],
            6,
            9
        )
    ]
    UNPREDICTABILITY = 10
    COWARDICE = 100
end
