module SmallGolemM
    NAMES = [
        LocaleKey::GOLEM_M
    ].freeze

    PREFIXES = [
        LocaleKey::SMALL_M,
        LocaleKey::BIG_M,
        LocaleKey::TALL_M,
        LocaleKey::SCARY_M
    ].freeze

    SUFFIXES = [
        LocaleKey::BLUISH_M,
        LocaleKey::GREYISH_M,
        LocaleKey::POWERFULL_M,
        LocaleKey::SHINY_M
    ].freeze
end


class SmallGolem < Bestiary
    MALE = SmallGolemM
    FEMALE_CHANCES = 0
    HEALTH_MULTIPLIER = 3
    DAMAGE_MULTIPLIER = 1.3
    PICTURE = 'golem'
    LOOTS = [
        Loot.new(
            LocaleKey::GOLEM_LOOT_AMETHYST,
            100,
            Amethyst
        )
    ]
    UNPREDICTABILITY = 10
end
