class Name
    VOWELS = ['a', 'e', 'i', 'o', 'u']

    def Name(vocabulary, female = [true, false].sample)
        @female = female
        if (female)
            @denomination = generate(vocabulary::NAMES_F, vocabulary::PRE_ADJECTIVES_F, vocabulary::POST_ADJECTIVES_F)
        else
            @denomination = generate(vocabulary::NAMES_M, vocabulary::PRE_ADJECTIVES_M, vocabulary::POST_ADJECTIVES_M)
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
        if @denomination[0].in?(vowels)
            return "l'#{@denomination}"
        end
        if @female
            return "la #{@denomination}"
        else
            return "le #{@denomination}"
        end
    end

    def generate(names, pre_adjectives, post_adjectives)
        name = names.sample
        if [true, false, false].sample
            name = "#{pre_adjectives.sample} #{name}"
        end
        if [true, false].sample
            name = "#{name} #{post_adjectives.sample}"
        end
        return name
    end
end
