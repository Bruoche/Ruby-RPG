class Bandage < Item
    NAME = "des bandages"
    SOUND = "bandage"

    def initialize
        @value = 0
    end

    def get_description
        return "restaure une quantitée aléatoire de vos points de vies manquants"
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
