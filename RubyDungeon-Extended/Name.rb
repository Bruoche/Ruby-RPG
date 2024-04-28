class Name
    VOWELS = ['a', 'à', 'e', 'é', 'è', 'i', 'î', 'o', 'ô', 'u', 'û']

    def initialize(vocabulary)
        @female = rand(1..100) <= vocabulary::FEMALE_CHANCES
        if (@female)
            @denomination = generate(vocabulary::FEMALE)
        else
            @denomination = generate(vocabulary::MALE)
        end
    end

    def get_gendered_a()
        if @female
            return "une #{@denomination}"
        else
            return "un #{@denomination}"
        end
    end

    def get_gendered_the()
        if VOWELS.include?(@denomination[0])
            return "l'#{@denomination}"
        end
        if @female
            return "la #{@denomination}"
        else
            return "le #{@denomination}"
        end
    end

    def get_gendered_this()
        if @female
            return "cette #{@denomination}"
        else
            return "ce #{@denomination}"
        end
    end

    def get_gendered_of()
        if VOWELS.include?(@denomination[0])
            return "de l'#{@denomination}"
        end
        if @female
            return "de la #{@denomination}"
        else
            return "du #{@denomination}"
        end
    end

    def is_female
        return @female
    end

    def generate(gendered_vocabulary)
        name = gendered_vocabulary::NAMES.sample
        if (([true, false, false].sample) && (gendered_vocabulary.const_defined?(:PREFIXES)))
            name = "#{gendered_vocabulary::PREFIXES.sample} #{name}"
        end
        if (([true, false].sample) && (gendered_vocabulary.const_defined?(:SUFFIXES)))
            name = "#{name} #{gendered_vocabulary::SUFFIXES.sample}"
        end
        return name
    end
end
