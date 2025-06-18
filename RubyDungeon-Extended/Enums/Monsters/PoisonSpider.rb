module PoisonSpiderF
    NAMES = [
        LocaleKey::POISON_SPIDER
    ].freeze

    PREFIXES = [
        LocaleKey::SMALL_F,
        LocaleKey::BIG_F,
        LocaleKey::TALL_F
    ].freeze

    SUFFIXES = [
        LocaleKey::SCARY_F,
        LocaleKey::ANGRY_F,
        LocaleKey::WARY_F,
        LocaleKey::GREEN_F,
        LocaleKey::BLUISH_F,
        LocaleKey::GREYISH_F,
        LocaleKey::DARK_F
    ].freeze
end

class PoisonSpider < Bestiary
    FEMALE = PoisonSpiderF
    FEMALE_CHANCES = 100
    HEALTH_MULTIPLIER = 0.5
    DAMAGE_MULTIPLIER = 1
    PICTURE = 'spider'
    LOOTS = [
        Loot.new(
            LocaleKey::POISON_SPIDER_LOOT_POISON,
            10,
            PoisonPotion,
            [5, 10]
        )
    ]
    UNPREDICTABILITY = 100
    ATTACK_EFFECTS = [
        AttackEffect.new(
            -> (player, monster, inflicted_damage) {
                if inflicted_damage > 0
                    player.add_status(Poison.new(5, 10, monster))
                    Narrator.write(format(Locale.get_localized(LocaleKey::POISONNED), player.get_name.capitalize))
                    SoundManager.play('poison')
                    sleep Settings.get_pause_duration
                end
            },
            100,
            [Attack::PHYSIC_TYPE]
        )
    ]
end
