class Healing < Status
    SAVED = false
    ICON = '♥'
    DESCRIPTION = LocaleKey::HEALING_DESCRIPTION

    def initialize(duration, amount)
        super
        @amount = amount
    end

    def end_of_turn_action(host)
        if !host.died?
            host.heal(@amount)
            reduce_duration_of(1)
        end
    end

    def tick_down(duration = 1)
        # Only tick down on heal
    end
end
