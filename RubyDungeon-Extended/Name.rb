class Name
    VOWELS = ['a', 'à', 'e', 'é', 'è', 'i', 'î', 'o', 'ô', 'u', 'û']

    def initialize(vocabulary)
        @female = vocabulary.is_female
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

    def is_female
        return @female
    end

    def generate(gendered_vocabulary)
        name = gendered_vocabulary::NAMES.sample
        if (([true, false, false].sample) && (gendered_vocabulary::PREFIXES != nil))
            name = "#{gendered_vocabulary::PREFIXES.sample} #{name}"
        end
        if (([true, false].sample) && (gendered_vocabulary::SUFFIXES != nil))
            name = "#{name} #{gendered_vocabulary::SUFFIXES.sample}"
        end
        return name
    end
end
