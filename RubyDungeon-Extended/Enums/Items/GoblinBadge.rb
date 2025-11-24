class GoblinBadge < Item
    NAME = LocaleKey::PRISON_KEY_NAME
    PLURAL_NAME = LocaleKey::PRISON_KEY_PLURAL
    SOUND = 'key'
    USABLE_ON_OTHERS = false

    def initialize
        @value = 0
    end

    def get_description
        return LocaleKey::PRISON_KEY_DESCRIPTION
    end

    def use(target, user)
        return !Player::ACTED #todo make goblins around passive
    end
end
