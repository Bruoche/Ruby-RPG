class PoisonPotion < Item
    NAME = LocaleKey::POISON_POTION_NAME
    PLURAL_NAME = LocaleKey::POISON_POTION_PLURAL
    SOUND = 'potion'
    PICTURE = 'health_potion'
    USABLE_ON_OTHERS = false

    def initialize(turns, life_min, life_max = life_min)
        @life = rand(life_min.to_i..life_max.to_i)
        @turns = turns.to_i
        base_value = @life.div(2) * @turns
        @value = base_value + (@turns * base_value).div(10)
    end

    def get_description
        return LocaleKey::POISON_POTION_DESCRIPTION
    end

    def use(target, user)
        Narrator.write(format(Locale.get_localized(LocaleKey::POISON_POTION_USE), user.get_name))
        play_sound
        target.add_status(PoisonAttack.new(1))
        @destroyed = true
        return !Player::ACTED
    end

    def get_save_data
        return "#{self.class.name}|#{@turns}, #{@life}"
    end
end
