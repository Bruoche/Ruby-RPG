class DevNote < Item
    NAME = Locale::KEY_DEVNOTE_NAME
    SOUND = 'paper'
    USABLE_ON_OTHERS = false
    DROP_CHANCE_SCALABLE = false

    def initialize
        @value = 0
    end

    def get_description
        return Locale::KEY_DEVNOTE_DESCRIPTION
    end

    def use(target, user)
        Narrator.thank_for_playing
        play_sound
        Narrator.pause_text
        return !Player::ACTED
    end
end
