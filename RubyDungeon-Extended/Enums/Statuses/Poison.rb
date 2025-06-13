class Poison < Status
    SAVED = false
    ICON = '☠︎︎ '
    DESCRIPTION = LocaleKey::POISON_DESCRIPTION

    def initialize(duration, amount, source)
        super
        @amount = amount
        @source = source
    end

    def end_of_turn_action(host)
        name = host.get_name
        if !name.kind_of? String
            name = name.get_gendered_the
        end
        Narrator.write(format(Locale.get_localized(LocaleKey::POISON_AFFECT), name.capitalize))
        SoundManager.play('potion')
        sleep Settings.get_pause_duration
        host.hurt(Attack.new(@amount, Attack::POISON_TYPE, @source))
    end
end
