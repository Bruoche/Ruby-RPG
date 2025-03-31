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
        difficulty_bonus = (biome::MONSTER_POWER_BONUS * Math.sqrt(World.get_instance.nb_players)).truncate
        monster_health = get_random_stat(BaseStats::BASE_HEALTH, monster_type::HEALTH_MULTIPLIER, nb_monsters, difficulty_bonus)
        monster_damage = get_random_stat(BaseStats::BASE_STRENGTH, monster_type::DAMAGE_MULTIPLIER, nb_monsters, difficulty_bonus)
        name = Name.new(monster_type)
        if name.female?
            suffix = '_f'
        else
            suffix = '_m'
        end
        picture = ASCIIPicture.new(ASCIIPrinter::PREFIX + PICTURE_PREFIX + monster_type::PICTURE + suffix)
        return Monster.new(
            monster_health,
            monster_damage,
            0,
            name,
            [Locale.get_localized(LocaleKey::MONSTER_STRIKE)],
            [Locale.get_localized(LocaleKey::MONSTER_SPELL)],
            [Locale.get_localized(LocaleKey::MONSTER_HEAL)],
            0,
            picture,
            monster_type::LOOTS
        )
    end

    def self.get_random_stat(base_stat, multiplier, nb_monsters, difficulty_bonus)
        stat = rand(base_stat.div(nb_monsters)..(base_stat + difficulty_bonus))
        stat = Integer(stat * multiplier)
        if stat == 0
            stat = 1
        end
        return stat
    end
end
