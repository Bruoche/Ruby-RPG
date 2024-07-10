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

    def use(target)
        puts "Vous buvez la potion de soin..."
        target.heal(@soin)
        @destroyed = true
    end

    def get_save_data
        return "HealthPotion|#{@soin}"
    end
end
