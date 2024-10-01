class Coins < Item
    NAME = "des pièces d'or"
    SOUND = "gold_coins"
    USABLE_ON_OTHERS = false

    def initialize
        @value = 0
    end

    def get_description
        return "monnaie actuelle employée dans les contrées principales composant la grande alliance"
    end
end
