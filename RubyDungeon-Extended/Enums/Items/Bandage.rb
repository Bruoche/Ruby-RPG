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
            puts "#{user.get_name.capitalize} utilise ses bandages pour soigner ses blessures..."
        else
            puts "#{user.get_name.capitalize} utilise des bandages pour soigner les blessures de #{target.get_name}..."
        end
        play_sound
        used = target.patch_up
        @destroyed = used
        return used
    end
end
