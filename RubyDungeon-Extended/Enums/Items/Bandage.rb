class Bandage
    def initialize()
        @destroyed = false
    end

    def get_name()
        return "des bandages"
    end

    def get_description()
        return "des bandages (restaure une quantitée aléatoire de vos points de vies manquants)"
    end

    def is_destroyed()
        return @destroyed
    end

    def use(target)
        puts "Vous utilisez vos bandages pour soigner vos blessures..."
        used = target.patch_up
        @destroyed = used
    end

    def get_save_data()
        return "Bandage"
    end
end
