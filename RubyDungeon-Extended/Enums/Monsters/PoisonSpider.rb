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
    UNPREDICTABILITY = 100
    ATTACK_EFFECTS = [
        AttackEffect.new(
            -> (player, monster, inflicted_damage) {
                if inflicted_damage > 0
                    player.add_status(Poison.new(5, 10, monster))
                    puts "poisonned"
                    SoundManager.play('potion')
                end
            },
            100,
            [Attack::PHYSIC_TYPE]
        )
    ]
end
