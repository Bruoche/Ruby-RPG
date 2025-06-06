class AttackEffect
    NO_TYPE_REQUIREMENT = []

    def initialize(action, chance = 100, attack_type_requirement = NO_TYPE_REQUIREMENT)
        @action = action
        @chance = chance
    end
end
