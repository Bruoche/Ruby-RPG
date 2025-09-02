class PassiveGroup
    GENERATE_EMPTY = nil

    def initialize(biome, room)
        @passives = Array.new
        if biome != GENERATE_EMPTY
            passives = biome.get_passives
            for passive_data in passives
                @passives.append(MonsterFactory.make_monster(passive_data, biome, passives.length, room, biome::PASSIVE_BESTIARY))
            end
        end
    end

    def get_description
        if empty?
            return ''
        else
            passive_names = []
            for passive in @passives
                passive_names.append(passive.get_name.get_gendered_a)
            end
            return format(Locale.get_localized(LocaleKey::DESCRIBE_PASSIVES), TextFormatter.enumerate(passive_names))
        end
    end

    def get_current_power
        power = 0
        for passive in @passives
            power += passive.get_power
        end
        return power
    end

    def length
        return @passives.length
    end

    def plural?
        return @passives.length > 1
    end

    def empty?
        return (@passives.length <= 0)
    end

    def add(monster)
        @passives.append(monster)
    end

    def empty
        passives = @passives
        @passives = []
        return passives
    end
end
