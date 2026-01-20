class Name
    VOWELS = ['a', 'à', 'e', 'é', 'è', 'i', 'î', 'o', 'ô', 'u', 'û']
    VALID_PATTERN = Regexp.new('^[a-zA-ZÀ-ÖØ-öø-ÿ \-\'"]+$')

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
            if VOWELS.include?(denomination[0])
                return Locale.get_localized(LocaleKey::AN_F) + denomination
            else
                return Locale.get_localized(LocaleKey::A_F) + denomination
            end
        else
            if VOWELS.include?(denomination[0])
                return Locale.get_localized(LocaleKey::AN_M) + denomination
            else
                return Locale.get_localized(LocaleKey::A_M) + denomination
            end
        end
    end

    def get_gendered_the
        if VOWELS.include?(denomination[0])
            return Locale.get_localized(LocaleKey::THE_N) + denomination
        end
        if @female
            return Locale.get_localized(LocaleKey::THE_F) + denomination
        else
            return Locale.get_localized(LocaleKey::THE_M) + denomination
        end
    end

    def get_gendered_this
        if @female
            return Locale.get_localized(LocaleKey::THIS_F) + denomination
        else
            return Locale.get_localized(LocaleKey::THIS_M) + denomination
        end
    end

    def get_gendered_of
        if VOWELS.include?(denomination[0])
            return Locale.get_localized(LocaleKey::OF_N) + denomination
        end
        if @female
            return Locale.get_localized(LocaleKey::OF_F) + denomination
        else
            return Locale.get_localized(LocaleKey::OF_M) + denomination
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

    def set_base_name(new_name)
        @name = new_name
    end

    private

    def denomination
        return format(Locale.get_localized(LocaleKey::NAME_TEMPLATE), {
            LocaleKey::F_NAME => Locale.get_localized(@name),
            LocaleKey::F_PREFIX => Locale.get_localized(@prefix),
            LocaleKey::F_SUFFIX => Locale.get_localized(@suffix)
        }).split.join(' ')
    end
end
