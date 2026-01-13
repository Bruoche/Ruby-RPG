class Coins < Item
    NAME = LocaleKey::COINS_NAME
    PLURAL_NAME = LocaleKey::COINS_PLURAL
    SOUND = 'gold_coins'
    USABLE_ON_OTHERS = false
    COIN_TOSS_DURATION = 1.71
    SUSPENSE_DURATION = 3.64

    def initialize
        @value = 0
    end

    def get_description
        return LocaleKey::COINS_DESCRIPTION
    end

    def use(target, user)
        Narrator.toss_coin
        SoundManager.play('coin_toss')
        if [true, false].sample
            result = Locale.get_localized(LocaleKey::COIN_HEAD)
        else
            result = Locale.get_localized(LocaleKey::COIN_TAIL)
        end
        Game.wait COIN_TOSS_DURATION/4
        3.times do
            Narrator.write_same_line('.')
            Game.wait COIN_TOSS_DURATION/4
        end
        Narrator.add_space_of(1)
        Narrator.coin_toss_suspense
        Game.wait SUSPENSE_DURATION/4
        3.times do
            Narrator.write_same_line('.')
            Game.wait SUSPENSE_DURATION/4
        end
        Narrator.add_space_of(2)
        Narrator.coin_toss(result)
        SoundManager.play('coin_toss_result')
        Narrator.add_space_of(1)
        Narrator.pause_text
        return !Player::ACTED
    end
end
