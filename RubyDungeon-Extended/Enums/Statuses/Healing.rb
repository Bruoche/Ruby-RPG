class Healing < Status
    SAVED = false
    ICON = '♥'
    DESCRIPTION = LocaleKey::HEALING_DESCRIPTION

    def initialize(duration, amount)
        super
        @amount = amount
    end

    def end_of_turn_action(host)
        host.heal(@amount)
    end
end
