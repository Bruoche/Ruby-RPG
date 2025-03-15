class Bandage < Item
    NAME = LocaleKey::BANDAGES_NAME
    SOUND = 'bandage'

    def initialize
        @value = 0
    end

    def get_description
        return LocaleKey::BANDAGES_DESCRIPTION
    end

    def use(target, user)
        if target == user
            Narrator.bandage_use_self(user.get_name)
        else
            Narrator.bandage_use_other(user.get_name, target.get_name)
        end
        play_sound
        used = target.patch_up
        @destroyed = used
        return used
    end
end
