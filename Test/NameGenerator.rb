class NameGenerator
    def self.generate(names, pre_adjectives, post_adjectives)
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