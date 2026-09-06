class DefensivePosture < Status
    DESCRIPTION = LocaleKey::DEFENSIVE_POSTURE_DESCRIPTION
    DESCRIPTION_SELF = LocaleKey::DEFENSIVE_POSTURE_DESCRIPTION_SELF
    SAVED = false
    HIDDEN = true
    DEFENSE_EFFECTS = [
        DamageEffect.new(
            -> (instance, host, attack, damage_taken, dodge_score, defense_score, overload_defense_message) {
                total_damage = damage_taken + dodge_score + defense_score
                extra_defense = (total_damage*instance.get_defense_proportion).div(100)
                if extra_defense > damage_taken
                    extra_defense = damage_taken
                end
                return damage_taken - extra_defense,
                    dodge_score,
                    defense_score + extra_defense,
                    overload_defense_message
            },
            100,
            [Attack::PHYSIC_TYPE, Attack::MAGIC_TYPE]
        )
    ]
    UNDEFINED = nil

    def initialize(nb_turns = 1, defense_proportion = 50)
        @defense_proportion = defense_proportion
        super
    end

    def get_defense_proportion
        return @defense_proportion
    end

    def start_of_turn_action(host)
        host.status_handler.reduce_of(DefensivePosture, 1)
    end

    def get_save_data
        return super(@duration.to_s, @defense_proportion)
    end

    def tick_down(duration = 1)
        # Tick down on start_of_turn only
    end
end
