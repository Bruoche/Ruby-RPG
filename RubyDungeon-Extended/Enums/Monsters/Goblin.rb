module GoblinF
    NAMES = [
        LocaleKey::GOBLIN_F
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
        LocaleKey::SCOUT_F,
        LocaleKey::AUTHORITARIAN_F
    ].freeze
end

module GoblinM
    NAMES = [
        LocaleKey::GOBLIN_M
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
        LocaleKey::SCOUT_M,
        LocaleKey::AUTHORITARIAN_M
    ].freeze
end


class Goblin < Bestiary
    FEMALE = GoblinF
    MALE = GoblinM
    FEMALE_CHANCES = 50
    HEALTH_MULTIPLIER = 1
    DAMAGE_MULTIPLIER = 1
    PICTURE = 'goblin'
    LOOTS = [
        Loot.new(
            LocaleKey::GOBLIN_LOOT_COINS,
            33,
            Coins,
            [],
            1,
            3
        )
    ]
end
