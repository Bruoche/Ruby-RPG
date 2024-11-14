class HealthPotion < Item
    NAME = "une potion de soin"
    SOUND = "potion"
    PICTURE = "health_potion"

    def initialize(soin_min, soin_max = soin_min)
        @soin = rand(soin_min.to_i..soin_max.to_i)
        @value = @soin.div(2)
    end

    def get_description
        return "restaure #{@soin} points de vie"
    end

    def use(target, user)
        if target == user
            Narrator.health_potion_use_self(user.get_name)
        else
            Narrator.health_potion_use_other(user.get_name, target.get_name)
        end
        play_sound
        target.heal(@soin)
        @destroyed = true
        return Player::ACTED
    end

    def get_save_data
        return "#{self.class.name}|#{@soin}"
    end
end
