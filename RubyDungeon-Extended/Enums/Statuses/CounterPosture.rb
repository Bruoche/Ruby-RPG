class CounterPosture < Status
    DESCRIPTION = LocaleKey::COUNTER_POSTURE_DESCRIPTION
    DESCRIPTION_SELF = LocaleKey::COUNTER_POSTURE_DESCRIPTION_SELF
    SAVED = false
    HIDDEN = true
    COEFF = 0.67
    DEFENSE_EFFECTS = [
        DamageEffect.new(
            -> (host, attack, damage_taken, dodge_score, defense_score, overload_defense_message) {
                if damage_taken + defense_score <= 0
                    instance = host.status_handler.get(CounterPosture)
                    if instance != nil
                        SoundManager.play('counter')
                        Narrator.write_formatted(LocaleKey::COUNTER_POSTURE_STRIKE, host.get_name())
                        Game.wait
                        damage_dealt = instance.damage_dealt(host.get_strength)
                        instance.update_damage_dealt
                        attack.source.hurt(host.make_attack(damage_dealt, Attack::PHYSIC_TYPE))
                        overload_defense_message = true
                    else
                        Logger.debug "<< Trying to deal CounterPosture while it is nil >>"
                    end
                end
                return damage_taken, dodge_score, defense_score, overload_defense_message
            },
            100,
            [Attack::PHYSIC_TYPE, Attack::MAGIC_TYPE]
        )
    ]
    UNDEFINED = nil

    def initialize(nb_turns = 1)
        @next_damage = UNDEFINED
        super
    end

    def start_of_turn_action(host)
        @next_damage = host.get_strength
        host.status_handler.reduce_of(CounterPosture, 1)
    end

    def damage_dealt(strength)
        if @next_damage == nil
            @next_damage = strength
        end
        return @next_damage.round
    end

    def update_damage_dealt
        @next_damage = @next_damage*COEFF
    end

    def get_save_data
        return super(@duration.to_s)
    end

    def tick_down(duration = 1)
        # Tick down on start_of_turn only
    end
end
