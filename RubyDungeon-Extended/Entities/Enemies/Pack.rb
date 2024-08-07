class Pack
    def initialize(biome)
        @monsters = Array.new
        @initial_monsters = Array.new
        monsters = biome.get_monsters
        for monster in monsters;
            if monster == nil
                monster_type = biome::BESTIARY.sample
                difficulty_bonus = biome::MONSTER_POWER_BONUS
                monster_health = get_random_stat(monster_type::BASE_HEALTH, monsters.length, difficulty_bonus)
                monster_damage = get_random_stat(monster_type::BASE_DAMAGE, monsters.length, difficulty_bonus)
                monster = Monster.new(monster_health, monster_damage, Name.new(monster_type), "vous frappe")
            else
                if monster::IS_BOSS == false
                    monster = Monster.new(monster)
                else
                    monster = Boss.new(monster)
                end
            end
            @monsters.push(monster)
            @initial_monsters.push(monster)
        end
    end

    def get_description
        if are_dead
            if was_plural
                return "les cadavres des monstres que vous avez précédemment battus"
            else
                return "le cadavre du monstre que vous avez précédemment battu"
            end
        end
        monsters_description = ""
        for i in 0..(@monsters.length-1) do
            monsters_description += @monsters[i].get_description
            if (i < (@monsters.length - 2))
                monsters_description += ", "
            elsif (i < (@monsters.length - 1))
                monsters_description += " et "
            end
        end
        return monsters_description
    end

    def get_plural_the
        if (was_plural)
            return "les monstres"
        else
            return @initial_monsters[0].get_name.get_gendered_the
        end
    end

    def get_xp
        xp = 0
        for monster in @initial_monsters do
            xp += monster.get_xp
        end
        multi_encounter_bonus = xp.div(10) * (@initial_monsters.length - 1)
        return xp + multi_encounter_bonus
    end

    def get_power
        power = 0
        for monster in @initial_monsters do
            power += monster.get_power
        end
        multi_encounter_bonus = power.div(10) * (@initial_monsters.length - 1)
        return power + multi_encounter_bonus
    end

    def get_current_power
        power = 0
        for monster in @monsters do
            power += monster.get_power
        end
        return power
    end

    def is_plural
        return @monsters.length > 1
    end

    def was_plural
        return @initial_monsters.length > 1
    end

    def are_dead
        for monster in @monsters do
            if (monster.is_dead)
                @monsters.delete_at(@monsters.index(monster))
            end
        end
        return @monsters.length == 0
    end

    def attack(player)
        for monster in @monsters do
            monster.attack(player)
        end
    end

    def hurt_single(attack)
        if (is_plural)
            choosen_ennemy = Narrator.ask("Quel ennemi souhaitez-vous attaquer?", @monsters, -> (monster){to_string(monster)})
            if choosen_ennemy != nil
                attacked = hurt((choosen_ennemy), attack)[:attacked]
                return attacked
            else
                return false
            end
        else
            attacked = hurt(0, attack)[:attacked]
            return attacked
        end
    end

    def hurt_magic(attack)
        if (attack.damage > 0)
            nb_killed = 0
            for i in 0..(@monsters.length - 1)  do
                if hurt(i - nb_killed, attack)[:dead]
                    nb_killed += 1
                end
            end
        else
            if is_plural
                puts "Dépourvu de puissance magique, vous ne parvenez pas à attaquer les ennemis."
            else
                puts "Dépourvu de puissance magique, vous ne parvenez pas à attaquer l'ennemi."
            end
        end
    end

    private

    def to_string(monster)
        if monster != nil
            return monster.get_description
        else
            return "retour..."
        end
    end

    def get_random_stat(base_stat, nb_monsters, difficulty_bonus)
        stat = rand(base_stat.div(nb_monsters)..(base_stat + difficulty_bonus))
        if stat == 0
            stat = 1
        end
        return stat
    end

    def hurt(index, attack)
        response = {}
        monster = @monsters[index]
        response[:dead] = false
        response[:attacked] = monster.hurt(attack)
        if response[:attacked] == false
            return response
        else
            if monster.is_dead
                puts "#{monster.get_name.get_gendered_the.capitalize} s'effondre sous vos coups."
                @monsters.delete_at(index)
                response[:dead] = true
            end
        end
        return response
    end
end
