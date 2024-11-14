class DevNote < Item
    NAME = "note d'au revoir"
    SOUND = "paper"
    USABLE_ON_OTHERS = false
    DROP_CHANCE_SCALABLE = false

    def initialize
        @value = 0
    end

    def get_description
        return "merci d'avoir joué"
    end

    def use(target, user)
        Narrator.thank_for_playing
        play_sound
        Narrator.pause_text
        return !Player::ACTED
    end
end
