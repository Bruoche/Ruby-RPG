class DetoxFruit < Item
    NAME = LocaleKey::DETOX_FRUIT_NAME
    PLURAL_NAME = LocaleKey::DETOX_FRUIT_NAME_PLURAL
    SOUND = 'fruit_bite'

    def initialize(soin_min, soin_max = soin_min)
        @soin = rand(soin_min.to_i..soin_max.to_i)
        @value = @soin.div(4)
    end

    def get_description
        return format(Locale.get_localized(LocaleKey::DETOX_FRUIT_DESCRIPTION), @soin)
    end

    def use(target, user)
        if target == user
            Narrator.use_self(user.get_name, LocaleKey::DETOX_FRUIT_USE_SELF)
        else
            Narrator.use_other(user.get_name, target.get_name, LocaleKey::DETOX_FRUIT_USE_OTHER)
        end
        play_sound
        if [true, false].sample
            target.remove_status(Poison)
            Narrator.write(LocaleKey::DETOX_DETOX)
            SoundManager.play('poison_cleanse')
            sleep Settings.get_pause_duration
        else
            Narrator.write(LocaleKey::DETOX_FRUIT_NO_EFFECT)
            SoundManager.play('spell_fart')
            sleep Settings.get_pause_duration
        end
        target.heal(@soin)
        @destroyed = true
        return Player::ACTED
    end

    def get_save_data
        return "#{self.class.name}|#{@soin}"
    end
end
