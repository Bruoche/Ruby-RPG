class PoisonAttack < Status
    FORCE_SAVE = true
    ICON = '🌢 '
    DESCRIPTION = LocaleKey::POISON_ATTACK_DESCRIPTION
    ATTACK_EFFECTS = [
        AttackEffect.new(
            -> (target, source, inflicted_damage) {
                if inflicted_damage > 0
                    target.status_handler.add(Poison.new(5, 10, source))
                    source.status_handler.reduce_of(PoisonAttack, 1)
                    target_name = target.get_name
                    if !target_name.kind_of? String
                        target_name = target_name.get_gendered_the
                    end
                    Narrator.write(format(Locale.get_localized(LocaleKey::POISONNED), target_name.capitalize))
                    SoundManager.play('poison')
                    sleep Settings.get_pause_duration
                end
            },
            100,
            [Attack::PHYSIC_TYPE]
        )
    ]

    def build_save_data
        return self.class.name + '|' + @duration.to_s
    end

    def initialize(nb_attacks = 1)
        super
    end

    def tick_down(duration = 1)
        # Only tick down on attack action
    end
end
