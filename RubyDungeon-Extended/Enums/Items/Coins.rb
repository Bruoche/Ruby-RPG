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
        print "Vous lancez la pièce dans les airs"
        SoundManager.play("coin_toss")
        if [true, false].sample
            result = "face"
        else
            result = "pile"
        end
        sleep COIN_TOSS_DURATION/4
        3.times do
            print "."
            sleep COIN_TOSS_DURATION/4
        end
        puts
        print "La pièce retombe et roule sur elle-même avant de se stabiliser"
        sleep SUSPENSE_DURATION/4
        3.times do
            print "."
            sleep SUSPENSE_DURATION/4
        end
        puts
        puts
        puts "La pièce est tombée sur #{result}."
        SoundManager.play("coin_toss_result")
        puts
        Narrator.pause_text
        return !Player::ACTED
    end
end
