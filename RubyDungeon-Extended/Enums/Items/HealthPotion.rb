class HealthPotion < Item
    NAME = LocaleKey::HEALTH_POTION_NAME
    PLURAL_NAME = LocaleKey::HEALTH_POTION_PLURAL
    SOUND = 'potion'
    PICTURE = 'health_potion'

    def initialize(soin_min, soin_max = soin_min)
        @soin = rand(soin_min.to_i..soin_max.to_i)
        @value = @soin.div(2)
    end

    def get_description
        return format(Locale.get_localized(LocaleKey::HEALTH_POTION_DESCRIPTION), @soin)
    end

    def use(target, user)
        if target == user
            Narrator.use_self(user.get_name, LocaleKey::HEALTH_POTION_USE_SELF)
        else
            Narrator.use_other(user.get_name, target.get_name, LocaleKey::HEALTH_POTION_USE_OTHER)
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
