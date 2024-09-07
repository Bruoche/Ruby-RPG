class PrisonKey < Item
    NAME = "une clef"
    USABLE_ON_OTHERS = false

    def initialize
        @value = 0
    end

    def get_description
        return "doit pouvoir ouvrir une porte quelque part"
    end
end
