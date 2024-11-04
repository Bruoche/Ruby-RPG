class PrisonKey < Item
    NAME = "une clef"
    SOUND = "key"
    USABLE_ON_OTHERS = false
    DROP_CHANCE_SCALABLE = true
    DROP_QUANTITY_SCALABLE = false

    def initialize
        @value = 0
    end

    def get_description
        return "doit pouvoir ouvrir une porte quelque part"
    end
end
