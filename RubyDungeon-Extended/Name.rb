class Name
    VOWELS = ['a', 'à', 'e', 'é', 'è', 'i', 'î', 'o', 'ô', 'u', 'û']

    def initialize(vocabulary)
        @female = rand(1..100) <= vocabulary::FEMALE_CHANCES
        if (@female)
            generate(vocabulary::FEMALE)
        else
            generate(vocabulary::MALE)
        end
    end

    def as_text
        return denomination
    end

    def get_gendered_a
        if @female
            return Locale.get_localized(Locale::KEY_A_F) + denomination
        else
            return Locale.get_localized(Locale::KEY_A_M) + denomination
        end
    end

    def get_gendered_the
        if VOWELS.include?(denomination[0])
            return Locale.get_localized(Locale::KEY_THE_N) + denomination
        end
        if @female
            return Locale.get_localized(Locale::KEY_THE_F) + denomination
        else
            return Locale.get_localized(Locale::KEY_THE_M) + denomination
        end
    end

    def get_gendered_this
        if @female
            return Locale.get_localized(Locale::KEY_THIS_F) + denomination
        else
            return Locale.get_localized(Locale::KEY_THIS_M) + denomination
        end
    end

    def get_gendered_of
        if VOWELS.include?(denomination[0])
            return Locale.get_localized(Locale::KEY_OF_N) + denomination
        end
        if @female
            return Locale.get_localized(Locale::KEY_OF_F) + denomination
        else
            return Locale.get_localized(Locale::KEY_OF_M) + denomination
        end
    end

    def female?
        return @female
    end

    def generate(gendered_vocabulary)
        @name = gendered_vocabulary::NAMES.sample
        if (([true, false, false].sample) && (gendered_vocabulary.const_defined?(:PREFIXES)))
            @prefix = gendered_vocabulary::PREFIXES.sample
        end
        if (([true, false].sample) && (gendered_vocabulary.const_defined?(:SUFFIXES)))
            @suffix = gendered_vocabulary::SUFFIXES.sample
        end
    end

    private

    def denomination
        return format(Locale.get_localized(Locale::KEY_NAME_TEMPLATE), {
            Locale::F_KEY_NAME => Locale.get_localized(@name),
            Locale::F_KEY_PREFIX => Locale.get_localized(@prefix),
            Locale::F_KEY_SUFFIX => Locale.get_localized(@suffix)
        }).split.join(' ')
    end
end
