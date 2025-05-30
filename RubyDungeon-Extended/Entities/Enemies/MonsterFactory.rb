class MonsterFactory
    PICTURE_PREFIX = 'Ennemies/'

    def self.make_monster(monster_data, biome, nb_monsters)
        if monster_data == nil
            return make_from_scratch(biome, nb_monsters)
        else
            if monster_data::IS_BOSS == false
                return Monster.new(monster_data)
            else
                return Boss.new(monster_data)
            end
        end
    end

    private

    def self.make_from_scratch(biome, nb_monsters)
        monster_type = biome::BESTIARY.sample
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
        monster_strength = get_random_stat(BaseStats::BASE_STRENGTH, (monster_type::DAMAGE_MULTIPLIER * strength_proportion)/100, nb_monsters, difficulty_bonus, min_strength)
        monster_intelligence = get_random_stat(BaseStats::BASE_INTELLIGENCE, (monster_type::DAMAGE_MULTIPLIER * BaseStats::INTELLIGENCE_COEFF * monster_type::MAGIC_PROPORTION)/100, nb_monsters, difficulty_bonus, min_intelligence)
        name = Name.new(monster_type)
        if name.female?
            suffix = '_f'
        else
            suffix = '_m'
        end
        picture = ASCIIPicture.new(ASCIIPrinter::PREFIX + PICTURE_PREFIX + monster_type::PICTURE + suffix)
        return Monster.new(
            monster_health,
            monster_strength,
            monster_intelligence,
            monster_type::HEALING_PROPORTION,
            name,
            [Locale.get_localized(LocaleKey::MONSTER_STRIKE)],
            [Locale.get_localized(LocaleKey::MONSTER_SPELL)],
            [Locale.get_localized(LocaleKey::MONSTER_HEAL)],
            [Locale.get_localized(LocaleKey::MONSTER_ESCAPE)],
            monster_type::UNPREDICTABILITY,
            monster_type::COWARDICE,
            picture,
            monster_type::LOOTS
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
end
