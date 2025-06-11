class AttackEffect
    NO_TYPE_REQUIREMENT = []

    def initialize(action, chance = 100, attack_type_requirement = NO_TYPE_REQUIREMENT)
        @action = action
        @chance = chance
        @attack_type_requirement = []
    end

    def try(target, attack, effective_damage)
        if activated?(attack.type)
            execute_on(target, attack.source, effective_damage)
        end
    end

    private

    def activated?(attack_type)
        if (@attack_type_requirement.length > 0)
            if !(attack_type.in? @attack_type_requirement)
                return false
            end
        end
        return rand(100) <= @chance
    end

    def execute_on(target, source, effective_damage)
        @action.call(target, source, effective_damage)
    end
end
