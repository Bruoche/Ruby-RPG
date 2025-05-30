module GoblinGuardF
    NAMES = [
        LocaleKey::GOBLIN_GUARD_F
    ].freeze

    PREFIXES = [
        LocaleKey::SMALL_F,
        LocaleKey::BIG_F,
        LocaleKey::TALL_F,
        LocaleKey::SCARY_F
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
        LocaleKey::AUTHORITARIAN_F
    ].freeze
end

module GoblinGuardM
    NAMES = [
        LocaleKey::GOBLIN_GUARD_M
    ].freeze

    PREFIXES = [
        LocaleKey::SMALL_M,
        LocaleKey::BIG_M,
        LocaleKey::TALL_M,
        LocaleKey::SCARY_M
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
        LocaleKey::AUTHORITARIAN_M
    ].freeze
end


class GoblinGuard < Bestiary
    FEMALE = GoblinGuardF
    MALE = GoblinGuardM
    FEMALE_CHANCES = 50
    HEALTH_MULTIPLIER = 1
    DAMAGE_MULTIPLIER = 1
    PICTURE = 'goblin'
    LOOTS = [
        Loot.new(
            LocaleKey::GOBLIN_LOOT_HEALTH_POTION,
            3,
            HealthPotion,
            [100, 200],
            1,
            2
        ),
        Loot.new(
            LocaleKey::GOBLIN_LOOT_COINS,
            6,
            Coins,
            [],
            3,
            9
        )
    ]
    UNPREDICTABILITY = 10
end
