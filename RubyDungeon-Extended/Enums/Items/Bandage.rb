class Bandage
    def initialize
        @destroyed = false
    end

    def get_name
        return "des bandages"
    end

    def get_description
        return "des bandages (restaure une quantitée aléatoire de vos points de vies manquants)"
    end

    def is_destroyed
        return @destroyed
    end

    def use(target, user)
        if target == user
            puts "#{user.get_name.capitalize} utilise ses bandages pour soigner ses blessures..."
        else
            puts "#{user.get_name.capitalize} utilise des bandages pour soigner les blessures de #{target.get_name}..."
        end
        used = target.patch_up
        @destroyed = used
        return used
    end

    def get_save_data
        return "Bandage"
    end

    def usable_on_others?
        return true
    end
end
