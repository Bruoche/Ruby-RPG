class Coins < Item
    NAME = "des pièces d'or"
    SOUND = "gold_coins"
    USABLE_ON_OTHERS = false
    COIN_TOSS_DURATION = 1.71
    SUSPENSE_DURATION = 3.64

    def initialize
        @value = 0
    end

    def get_description
        return "monnaie actuelle employée dans les contrées principales composant la grande alliance"
    end

    def use(target, user)
        Narrator.toss_coin
        SoundManager.play("coin_toss")
        if [true, false].sample
            result = "face"
        else
            result = "pile"
        end
        sleep COIN_TOSS_DURATION/4
        3.times do
            Narrator.write_same_line(".")
            sleep COIN_TOSS_DURATION/4
        end
        Narrator.add_space_of(1)
        Narrator.coin_toss_suspense
        sleep SUSPENSE_DURATION/4
        3.times do
            Narrator.write_same_line(".")
            sleep SUSPENSE_DURATION/4
        end
        Narrator.add_space_of(2)
        Narrator.coin_toss(result)
        SoundManager.play("coin_toss_result")
        Narrator.add_space_of(1)
        Narrator.pause_text
        return !Player::ACTED
    end
end
