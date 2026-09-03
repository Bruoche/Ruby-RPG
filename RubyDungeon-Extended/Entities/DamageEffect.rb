class DamageEffect < AttackEffect
    NO_TYPE_REQUIREMENT = []

    def initialize(action, chance = 100, attack_type_requirement = NO_TYPE_REQUIREMENT)
        super(action, chance, attack_type_requirement)
    end

    def try(attack, target, damage_taken, dodge_score, defense_score, overload_defense_message)
        if activated?(attack.type)
            execute_on(attack, target, damage_taken, dodge_score, defense_score, overload_defense_message)
        end
    end

    private

    def execute_on(attack, target, damage_taken, dodge_score, defense_score, overload_defense_message)
        @action.call(target, attack, damage_taken, dodge_score, defense_score, overload_defense_message)
    end
end
