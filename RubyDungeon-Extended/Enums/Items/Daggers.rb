class Daggers < Item
    NAME = LocaleKey::DAGGERS_NAME
    PLURAL_NAME = LocaleKey::DAGGERS_PLURAL
    SOUND = 'weapon_equip'
    PICTURE = 'health_potion'
    USABLE_ON_OTHERS = false

    def initialize
        @value = 345
    end

    def get_description
        return LocaleKey::DAGGERS_DESCRIPTION
    end

    def use(target, user)
        Narrator.write(format(Locale.get_localized(LocaleKey::DAGGERS_USE), user.get_name))
        play_sound
        target.add_status(CounterPosture.new)
        return Player::ACTED
    end
end
