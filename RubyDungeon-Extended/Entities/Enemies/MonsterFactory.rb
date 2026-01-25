class MonsterFactory
    PICTURE_PREFIX = 'Ennemies/'
    STATS_AUTO = nil

    def self.make_monster(monster_data, biome, nb_monsters, room, bestiary = biome::BESTIARY)
        if monster_data == STATS_AUTO
            return make_from_scratch(biome, room, nb_monsters, bestiary)
        else
            if monster_data::IS_BOSS
                return Boss.new(room, *monster_data)
            else
                return Monster.new(room, *monster_data)
            end
        end
    end

    private

    def self.make_from_scratch(biome, room, nb_monsters, bestiary = biome::BESTIARY)
        monster_type = bestiary.sample
        if monster_type::IS_BOSS
            return Boss.new(room, *monster_type)
        end
        if biome::MONSTER_POWER_BONUS > 0
            difficulty_bonus = (biome::MONSTER_POWER_BONUS * Math.sqrt(World.get_instance.nb_players)).truncate
        else
            difficulty_bonus = Math.sqrt(World.get_instance.nb_players - 1).truncate
        end
        strength_proportion = 100 - monster_type::MAGIC_PROPORTION
        if monster_type::MAGIC_PROPORTION > 0
            min_strength = 0
            min_intelligence = BaseStats::INTELLIGENCE_UPGRADE_PER_LEVEL
        else
            min_strength = 1
            min_intelligence = 0
        end
        monster_health = get_random_stat(BaseStats::BASE_HEALTH, monster_type::HEALTH_MULTIPLIER, nb_monsters, difficulty_bonus, 1)
        monster_strength = get_random_stat(BaseStats::BASE_STRENGTH, (monster_type::DAMAGE_MULTIPLIER * strength_proportion).to_f/100, nb_monsters, difficulty_bonus, min_strength)
        monster_intelligence = get_random_stat(BaseStats::BASE_INTELLIGENCE, (monster_type::DAMAGE_MULTIPLIER * BaseStats::INTELLIGENCE_COEFF * monster_type::MAGIC_PROPORTION).to_f/100, nb_monsters, difficulty_bonus, min_intelligence)
        name = Name.new(monster_type)
        if name.female?
            suffix = '_f'
        else
            suffix = '_m'
        end
        picture = make_picture_for(monster_type, PICTURE_PREFIX, suffix)
        return Monster.new(
            room,
            monster_health,
            monster_strength,
            monster_intelligence,
            monster_type::HEALING_PROPORTION,
            name,
            monster_type::BASE_MOVES.map(&:clone),
            monster_type::SPELL_MOVES.map(&:clone),
            monster_type::HEAL_MOVES.map(&:clone),
            monster_type::ESCAPE_MOVE.map(&:clone),
            monster_type::UNPREDICTABILITY,
            monster_type::COWARDICE,
            picture,
            monster_type.to_s,
            monster_type::LOOTS,
            monster_type::ATTACK_EFFECTS,
            monster_type::DEATH_EVENT,
            monster_type::SPECIAL_MOVES
        )
    end

    def self.get_random_stat(base_stat, multiplier, nb_monsters, difficulty_bonus, minimum)
        stat = rand(base_stat.div(nb_monsters)..(base_stat + difficulty_bonus))
        stat = Integer(stat * multiplier)
        if stat < minimum
            stat = minimum
        end
        return stat
    end

    def self.make_picture_for(monster_type, type_sub_folder = PICTURE_PREFIX, suffix = '')
       ASCIIPicture.new(ASCIIPrinter::PREFIX + type_sub_folder + monster_type::PICTURE + suffix)
    end
end
