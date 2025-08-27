class DetoxJuice < Item
    NAME = LocaleKey::DETOX_JUICE_NAME
    PLURAL_NAME = LocaleKey::DETOX_JUICE_NAME_PLURAL
    SOUND = 'potion'

    def initialize(soin_min, soin_max = soin_min)
        @soin = rand(soin_min.to_i..soin_max.to_i)
        @value = @soin * 2
    end

    def get_description
        return format(Locale.get_localized(LocaleKey::DETOX_JUICE_DESCRIPTION), @soin)
    end

    def use(target, user)
        if target == user
            Narrator.use_self(user.get_name, LocaleKey::DETOX_JUICE_USE_SELF)
        else
            Narrator.use_other(user.get_name, target.get_name, LocaleKey::DETOX_JUICE_USE_OTHER)
        end
        play_sound
        target.remove_status(Poison)
        Narrator.write(LocaleKey::DETOX_DETOX)
        SoundManager.play('poison_cleanse')
        sleep Settings.get_pause_duration
        target.heal(@soin)
        @destroyed = true
        return Player::ACTED
    end

    def get_save_data
        return "#{self.class.name}|#{@soin}"
    end
end
