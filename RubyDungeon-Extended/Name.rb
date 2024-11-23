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

    def as_text
        return @denomination
    end

    def get_gendered_a
        if @female
            return Locale.get_localized(Locale::KEY_A_F) + @denomination
        else
            return Locale.get_localized(Locale::KEY_A_M) + @denomination
        end
    end

    def get_gendered_the
        if VOWELS.include?(@denomination[0])
            return Locale.get_localized(Locale::KEY_THE_N) + @denomination
        end
        if @female
            return Locale.get_localized(Locale::KEY_THE_F) + @denomination
        else
            return Locale.get_localized(Locale::KEY_THE_M) + @denomination
        end
    end

    def get_gendered_this
        if @female
            return Locale.get_localized(Locale::KEY_THIS_F) + @denomination
        else
            return Locale.get_localized(Locale::KEY_THIS_M) + @denomination
        end
    end

    def get_gendered_of
        if VOWELS.include?(@denomination[0])
            return Locale.get_localized(Locale::KEY_OF_N) + @denomination
        end
        if @female
            return Locale.get_localized(Locale::KEY_OF_F) + @denomination
        else
            return Locale.get_localized(Locale::KEY_OF_M) + @denomination
        end
    end

    def female?
        return @female
    end

    def generate(gendered_vocabulary)
        name = Locale.get_localized(gendered_vocabulary::NAMES.sample)
        if (([true, false, false].sample) && (gendered_vocabulary.const_defined?(:PREFIXES)))
            prefix = Locale.get_localized(gendered_vocabulary::PREFIXES.sample)
        end
        if (([true, false].sample) && (gendered_vocabulary.const_defined?(:SUFFIXES)))
            suffix = Locale.get_localized(gendered_vocabulary::SUFFIXES.sample)
        end
        return format(Locale.get_localized(Locale::KEY_NAME_TEMPLATE), {
            Locale::F_KEY_NAME => name,
            Locale::F_KEY_PREFIX => prefix,
            Locale::F_KEY_SUFFIX => suffix
        }).strip
    end
end
