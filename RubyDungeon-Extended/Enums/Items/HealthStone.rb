class HealthStone < Item
    NAME = LocaleKey::HEALTH_STONE_NAME
    SOUND = 'health_stone'
#    PICTURE = ''

    def initialize(turns, life_min, life_max = life_min)
        @life = rand(life_min.to_i..life_max.to_i)
        @turns = turns.to_i
        base_value = @life.div(2) * @turns
        @value = base_value + (@turns * base_value).div(10)
    end

    def get_description
        return format(Locale.get_localized(LocaleKey::HEALTH_STONE_DESCRIPTION), {
            LocaleKey::F_LIFE => @life,
            LocaleKey::F_AMOUNT => @turns
        })
    end

    def use(target, user)
        if target == user
            Narrator.use_self(user.get_name, LocaleKey::HEALTH_STONE_USE_SELF)
        else
            Narrator.use_other(user.get_name, target.get_name, LocaleKey::HEALTH_STONE_USE_OTHER)
        end
        play_sound
        target.add_status(Healing.new(@turns, @life))
        @destroyed = true
        return Player::ACTED
    end

    def get_save_data
        return "#{self.class.name}|#{@turns}, #{@life}"
    end
end
