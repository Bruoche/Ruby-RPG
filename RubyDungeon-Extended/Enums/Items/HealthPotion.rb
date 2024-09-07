class HealthPotion < Item
    NAME = "une potion de soin"
    PICTURE = "health_potion"

    def initialize(soin_min, soin_max = soin_min)
        @soin = rand(soin_min..soin_max)
        @value = @soin.div(2)
    end

    def get_description
        return "restaure #{@soin} points de vie"
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
        return "#{self.class.name}|#{@soin}"
    end
end
