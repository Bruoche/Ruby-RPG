class HealthPotion
    def initialize(soin_min, soin_max = soin_min)
        @destroyed = false
        @soin = rand(soin_min..soin_max)
    end

    def get_name
        return "une potion de soin"
    end

    def get_description
        return "une potion de soin (restaure #{@soin} points de vie)"
    end

    def is_destroyed
        return @destroyed
    end

    def use(target, user)
        if target == user
            puts "#{user.get_name.capitalize} bois une potion de soin..."
        else
            puts "#{user.get_name.capitalize} donne une potion de soin à #{target.get_name.capitalize}..."
        end
        target.heal(@soin)
        @destroyed = true
        return Player::ACTED
    end

    def get_save_data
        return "HealthPotion|#{@soin}"
    end

    def usable_on_others?
        return true
    end
end
