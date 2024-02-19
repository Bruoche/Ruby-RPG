require "Monster"

class Pack
    def initialize(player_level)
        @monsters = Array.new
        @initial_monsters = Array.new
        if (player_level.div(BaseStats::LEVELS_PER_EXTRA_MONSTER) >= 1)
            nb_monsters = rand(1..player_level.div(BaseStats::LEVELS_PER_EXTRA_MONSTER) + 1)
        else
            nb_monsters = 1
        end
        for i in 1..nb_monsters do
            monster_health = rand(BaseStats::BASE_HEALTH.div(nb_monsters)..(BaseStats::BASE_HEALTH + (player_level*BaseStats::NB_STATS_PER_LEVEL)))
            monster_damage = rand(BaseStats::BASE_STRENGTH.div(nb_monsters)..(BaseStats::BASE_STRENGTH + (player_level*BaseStats::NB_STATS_PER_LEVEL)))
            monster = Monster.new(monster_health, monster_damage)
            @monsters.push(monster)
            @initial_monsters.push(monster)
        end
    end

    def get_description()
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
        bonus = power.div(10) * @initial_monsters.length
        return power + bonus
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
            puts "Quel ennemi souhaitez-vous attaquer?"
            for i in 1..@monsters.length
                puts "      #{i}) #{@monsters[i-1].get_description.capitalize}"
            end
            loop do
                input = Narrator.user_input.to_iA&
                if input.between?(1, @monsters.length)
                    hurt((input-1), damage)
                    break
                else
                    Narrator.unsupported_choice_error
                end
            end
        else
            hurt(0, damage)
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
