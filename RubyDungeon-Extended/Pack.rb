class Pack
    def initialize(biome)
        @monsters = Array.new
        @initial_monsters = Array.new
        nb_monsters = rand(1..(biome::MONSTER_AMOUNT_BONUS + 1))
        for i in 1..nb_monsters do
            monster_type = biome::BESTIARY.sample
            difficulty_bonus = biome::MONSTER_POWER_BONUS
            monster_health = rand(monster_type::BASE_HEALTH.div(nb_monsters)..(monster_type::BASE_HEALTH + difficulty_bonus))
            monster_damage = rand(monster_type::BASE_DAMAGE.div(nb_monsters)..(monster_type::BASE_DAMAGE + difficulty_bonus))
            if monster_health = 0
                monster_health = 1
            end
            if monster_damage = 0
                monster_damage = 1
            end
            monster = Monster.new(monster_health, monster_damage, Name.new(monster_type))
            @monsters.push(monster)
            @initial_monsters.push(monster)
        end
    end

    def get_description()
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

    def get_plural_the()
        if (was_plural)
            return "les monstres"
        else
            return @initial_monsters[0].get_name.get_gendered_the
        end
    end

    def get_power()
        power = 0
        for monster in @initial_monsters do
            power += monster.get_power
        end
        multi_encounter_bonus = power.div(10) * (@initial_monsters.length - 1)
        return power + multi_encounter_bonus
    end

    def get_current_power()
        power = 0
        for monster in @monsters do
            power += monster.get_power
        end
        return power
    end

    def is_plural()
        return @monsters.length > 1
    end

    def was_plural()
        return @initial_monsters.length > 1
    end

    def are_dead()
        for monster in @monsters do
            if (monster.is_dead)
                @monsters.delete(monster)
            end
        end
        return @monsters.length == 0
    end

    def attack(player)
        for monster in @monsters do
            player.hurt(monster.attack)
        end
    end

    def hurt_single(damage)
        if (is_plural)
            choosen_ennemy = Narrator.ask("Quel ennemi souhaitez-vous attaquer?", @monsters, -> (monster){to_string(monster)})
            if choosen_ennemy != nil
                hurt((choosen_ennemy), damage)
                return true
            else
                return false
            end
        else
            hurt(0, damage)
            return true
        end
    end

    def hurt_magic(power)
        if (power > 0)
            nb_killed = 0
            for i in 0..(@monsters.length - 1)  do
                if hurt(i - nb_killed, rand(1..power))
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

    def hurt(index, damage)
        monster = @monsters[index]
        monster.hurt(damage)
        if monster.is_dead
            puts "#{monster.get_name.get_gendered_the.capitalize} s'effondre sous vos coups."
            @monsters.delete(monster)
            return true
        end
        return false
    end
end
