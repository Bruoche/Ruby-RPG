class Pack
    def initialize(biome)
        @monsters = Array.new
        @initial_monsters = Array.new
        monsters = biome.get_monsters
        for monster_data in monsters
            monster = MonsterFactory.make_monster(monster_data, biome, monsters.length)
            @monsters.append(monster)
            @initial_monsters.append(monster)
        end
    end

    def get_cards
        monster_cards = ASCIIPaginator.new
        for monster in @monsters
            monster_cards.append(ASCIIPicture.new(ASCIIPicture.monster_card(monster)))
        end
        return monster_cards
    end

    def get_description
        if are_dead
            if was_plural
                return Locale.get_localized(LocaleKey::MONSTER_BODIES)
            else
                return Locale.get_localized(LocaleKey::MONSTER_BODY)
            end
        end
        monsters_description = ''
        for i in 0..(@monsters.length-1)
            monsters_description += @monsters[i].get_description
            if (i < (@monsters.length - 2))
                monsters_description += ', '
            elsif (i < (@monsters.length - 1))
                monsters_description += Locale.get_localized(LocaleKey::AND_SPACED)
            end
        end
        return monsters_description
    end

    def enumerate
        if @monsters.empty?
            return LocaleKey::NOTHING
        end
        monsters_description = ''
        for i in 0..(@monsters.length-1)
            monsters_description += @monsters[i].get_name.get_gendered_a
            if (i < (@monsters.length - 2))
                monsters_description += ', '
            elsif (i < (@monsters.length - 1))
                monsters_description += Locale.get_localized(LocaleKey::AND_SPACED)
            end
        end
        return monsters_description
    end


    def get_plural_the
        if (was_plural)
            return Locale.get_localized(LocaleKey::THE_MONSTERS)
        else
            return @initial_monsters[0].get_name.get_gendered_the
        end
    end

    def get_xp
        xp = 0
        for monster in @initial_monsters
            xp += monster.get_xp
        end
        multi_encounter_bonus = xp.div(10) * (@initial_monsters.length - 1)
        return xp + multi_encounter_bonus
    end

    def get_power
        power = 0
        for monster in @initial_monsters
            power += monster.get_power
        end
        multi_encounter_bonus = power.div(10) * (@initial_monsters.length - 1)
        return power + multi_encounter_bonus
    end

    def get_current_power
        power = 0
        for monster in @monsters
            power += monster.get_power
        end
        return power
    end

    def plural?
        return @monsters.length > 1
    end

    def was_plural
        return @initial_monsters.length > 1
    end

    def are_dead
        for monster in @monsters
            if monster.died? || monster.escaped?
                @monsters.delete_at(@monsters.index(monster))
            end
        end
        return @monsters.length == 0
    end

    def take_turns_against(players)
        for monster in @monsters
            monster.act(players, @monsters)
            if monster.escaped?
                @monsters.delete_at(@monsters.index(monster))
            end
        end
    end

    def hurt_single(attack)
        if (plural?)
            choosen_ennemy = Narrator.ask(LocaleKey::ASK_MONSTER_AIMED_AT, @monsters, -> (monster){to_string(monster)}, attack.source.get_name)
            if choosen_ennemy != Narrator::RETURN_BUTTON
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
            shared_attack = Attack.new(
                (attack.damage/(1 + (BaseStats::SPELL_DAMAGE_GROUP_DIVISOR_COEFF * (@monsters.length - 1)))).truncate,
                attack.type,
                attack.source
            )
            nb_killed = 0
            for i in 0..(@monsters.length - 1)
                if hurt(i - nb_killed, shared_attack)[:dead]
                    nb_killed += 1
                end
            end
        end
    end

    private

    def to_string(monster)
        if monster != Narrator::RETURN_BUTTON
            return monster.get_description
        else
            return Locale.get_localized(LocaleKey::GO_BACK)
        end
    end

    def hurt(index, attack)
        response = {}
        monster = @monsters[index]
        response[:dead] = false
        response[:attacked] = monster.hurt(attack)
        if response[:attacked] == false
            return response
        else
            if monster.died?
                SoundManager.play('ennemy_death')
                Narrator.monster_death(monster.get_name.get_gendered_the)
                sleep Settings::BATTLE_ACTION_PAUSE
                @monsters.delete_at(index)
                for loot in monster.get_loots
                    attack.source.get_room.add_loot(loot)
                end
                response[:dead] = true
            end
        end
        return response
    end
end
