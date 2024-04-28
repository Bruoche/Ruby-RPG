class Biome
    def self.inherited(child)
        TracePoint.trace(:end) do |t|
            if child == t.self
                unless child.const_defined?(:SPECIAL)
                    child.const_set(:SPECIAL, false)
                end
                unless child.const_defined?(:MONSTER_AMOUNT_BONUS)
                    child.const_set(:MONSTER_AMOUNT_BONUS, child.const_get(:EXPECTED_LEVEL).div(BaseStats::LEVELS_PER_EXTRA_MONSTER))
                end
                unless child.const_defined?(:MONSTER_POWER_BONUS)
                    child.const_set(:MONSTER_POWER_BONUS, child.const_get(:EXPECTED_LEVEL)*BaseStats::NB_STATS_PER_LEVEL)
                end
                unless child.const_defined?(:ENTRY_REQUIREMENTS)
                    child.const_set(:ENTRY_REQUIREMENTS, [])
                end
            end
        end
    end

    def self.describe()
        for line in self::DESCRIPTION
            puts line
        end
    end

    def self.is_safe_room
        return  rand(1..100) <= self::SAFE_CHANCES
    end

    def self.get_monsters
        nb_monsters_max = 1 + self::MONSTER_AMOUNT_BONUS
        return Array.new(rand(1..nb_monsters_max))
    end

    def self.get_loot()
        loots = Array.new()
        for loot in self::LOOT
            if loot.dropped?
                loots.push(loot.get_item)
            end
        end
        return loots
    end

    def self.get_next(player_level)
        for transition in self::TRANSITIONS
            if transition.happened?(player_level)
                return transition.get_next_biome
            end
        end
        return self
    end
end
