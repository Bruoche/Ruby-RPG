class Poison < Status
    SAVED = false
    ICON = '☠︎︎'

    def initialize(duration, amount, source)
        super
        @amount = amount
        @source = source
    end

    def end_of_turn_action(host)
        host.hurt(Attack.new(@amount, Attack::POISON_TYPE, @source))
    end
end
