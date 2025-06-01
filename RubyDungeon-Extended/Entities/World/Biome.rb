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
                unless child.const_defined?(:BACKTRACK_CHANCES)
                    child.const_set(:BACKTRACK_CHANCES, 0)
                end
                unless child.const_defined?(:EXPLORATION_TRACK)
                    child.const_set(:EXPLORATION_TRACK, MusicManager::NO_MUSIC)
                end
                unless child.const_defined?(:COMBAT_TRACK)
                    child.const_set(:COMBAT_TRACK, MusicManager::NO_MUSIC)
                end
                unless child.const_defined?(:MONSTER_AMOUNT_MULTIPLIER)
                    child.const_set(:MONSTER_AMOUNT_MULTIPLIER, 1)
                end
                unless child.const_defined?(:REQUIRED_BIOMES)
                    child.const_set(:REQUIRED_BIOMES, [])
                end
            end
        end
    end

    def self.describe
        Narrator.write(self::DESCRIPTION)
    end

    def self.is_safe_room(new_biome)
        if self::SAFE_CHANCES == 0
            return false
        end
        if self::SAFE_CHANCES == 100
            return true
        end
        if new_biome
            return rand(1..100) <= 99
        else
            return rand(1..100) <= self::SAFE_CHANCES
        end
    end

    def self.get_monsters
        nb_monsters_max = ((1 + self::MONSTER_AMOUNT_BONUS) * Math.sqrt(World.get_instance.nb_players)).truncate
        nb_monsters_max = (nb_monsters_max * self::MONSTER_AMOUNT_MULTIPLIER).round
        if nb_monsters_max < 1
            nb_monsters_max = 1
        end
        return Array.new(rand(1..nb_monsters_max))
    end

    def self.get_loot
        loots = Array.new
        for loot in self::LOOT
            if loot.dropped?
                bundle = loot.get_item
                bundle.get_item.play_sound
                sleep Settings.get_pause_duration
                loots.append(bundle)
            end
        end
        return loots
    end

    def self.get_entry_requirements
        requirements = Array.new
        for requirement in self::ENTRY_REQUIREMENTS
            requirements.append(EntryRequirement.new(requirement))
        end
        return requirements
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
