class Shield < Item
    NAME = LocaleKey::SHIELD_NAME
    PLURAL_NAME = LocaleKey::SHIELD_PLURAL
    SOUND = 'weapon_equip'
    PICTURE = 'shield'
    USABLE_ON_OTHERS = false

    def initialize
        @value = 120
    end

    def get_description
        return LocaleKey::SHIELD_DESCRIPTION
    end

    def use(target, user)
        Narrator.write(format(Locale.get_localized(LocaleKey::SHIELD_USE), user.get_name))
        play_sound
        target.add_status(DefensivePosture.new)
        return Player::ACTED
    end
end
