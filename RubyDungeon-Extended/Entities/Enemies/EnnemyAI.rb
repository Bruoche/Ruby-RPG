class EnnemyAI
    CHOICE_PHYSICAL_ATTACK = 'strike'
    CHOICE_MAGIC_ATTACK = 'magic_attack'
    CHOICE_HEAL = 'heal'

    def initialize(basic_attack_messages, magic_attack_messages, heal_messages, escape_message, denomination, unpredictability, cowardice, healing_coeff, parent_body, attack_effects)
        @basic_attack_messages = basic_attack_messages
        @magic_attack_messages = magic_attack_messages
        @heal_messages = heal_messages
        @escape_message = escape_message
        @denomination = denomination
        @unpredictability = unpredictability
        @cowardice = cowardice
        @healing_coeff = healing_coeff
        @body = parent_body
        @escaped = false
        @attack_effects = attack_effects
    end

    def act(players, pack, strength, intelligence)
        if @cowardice > 0
            potential_damage = 0
            for player in players
                player_strength = player.get_strength
                player_magic = Utils.average(player.get_intelligence)
                if player_strength > player_magic
                    player_damage = player_strength
                else
                    player_damage = player_magic
                end
                potential_damage = potential_damage + player_damage
            end
            if potential_damage > @body.get_current_life
                if rand(100) <= @cowardice
                    escape
                    return
                end
            end
        end
        if rand(100) >= @unpredictability
            act_logically(players, pack, strength, intelligence)
        else
            act_quirky(players, pack, strength, intelligence)
        end
    end

    def choose_target(players, strength)
        if rand(100) > @unpredictability
            return get_priority_physical_target(players, strength)
        else
            return players.sample
        end
    end

    def act_logically(players, pack, strength, intelligence)
        if intelligence > 0
            needyest_ally = get_priority_heal_target(pack)
            potential_heal = calculate_potential_heal(needyest_ally, intelligence)
            potential_spell_damage = calculate_potential_spell_damage(players, intelligence)
        else
            potential_heal = 0
            potential_spell_damage = 0
        end
        priority_target = get_priority_physical_target(players, strength)
        physical_damage = calculate_physical_damage(priority_target, strength)
        if (physical_damage + potential_heal + potential_spell_damage) > 0
            if (potential_spell_damage >= physical_damage)
                if (potential_spell_damage * (100 - @healing_coeff) >= potential_heal * @healing_coeff)
                    magic_attack(players, intelligence)
                else
                    heal_ally(needyest_ally, intelligence)
                end
            else
                physical_attack(priority_target, strength)
            end
        end
    end

    def act_quirky(players, pack, strength, intelligence)
        choice = [CHOICE_PHYSICAL_ATTACK, CHOICE_MAGIC_ATTACK, CHOICE_HEAL].sample
        if (intelligence > 0) && (choice != CHOICE_PHYSICAL_ATTACK)
            allies_to_heal = []
            if (choice == CHOICE_HEAL) || (@healing_coeff >= 100)
                for ally in pack
                    if ally.get_missing_life > 0
                        allies_to_heal.append(ally)
                    end
                end
            end
            if (allies_to_heal.length > 0) && (@healing_coeff > 0)
                heal_ally(allies_to_heal.sample, intelligence)
            else
                magic_attack(players, intelligence)
            end
        else
            physical_attack(players.sample, strength)
        end
    end

    def calculate_potential_heal(needyest_ally, intelligence)
        average_spell_power = Utils.average(intelligence)
        life_to_heal = needyest_ally.get_missing_life
        if life_to_heal > average_spell_power
            average_heal = average_spell_power
        else
            average_heal = life_to_heal
        end
        return average_heal
    end

    def needyer_then?(needyest_ally, ally)
        if ally.get_missing_life > needyest_ally.get_missing_life
            return true
        elsif ally.get_missing_life == needyest_ally.get_missing_life
            return ally.get_max_life < needyest_ally.get_max_life
        end
    end

    def calculate_potential_spell_damage(players, intelligence)
        average_spell_power = Utils.average(intelligence)
        potential_spell_damage = 0
        for player in players do
            potential_damage = player.get_remaining_life
            if potential_damage > average_spell_power
                potential_damage = average_spell_power
            end
            potential_spell_damage += potential_damage
        end
        return potential_spell_damage
    end

    def calculate_physical_damage(target, strength)
        physical_damage = target.get_remaining_life
        if (physical_damage > strength)
            physical_damage = strength
        end
        return physical_damage
    end

    def get_priority_physical_target(players, strength)
        priority_target = players.sample
        best_priority_score = 0
        for player in players do
            priority_score = player.get_remaining_life
            if (strength < priority_score)
                priority_score = strength
            end
            if strength >= player.get_remaining_life
                priority_score = priority_score * 2
            end
            priority_score += rand(player.get_max_life)
            if (priority_score >= best_priority_score)
                priority_target = player
                best_priority_score = priority_score
            end
        end
        return priority_target
    end

    def get_priority_heal_target(pack)
        needyest_ally = @body
        for ally in pack do
            if needyer_then?(needyest_ally, ally)
                needyest_ally = ally
            end
        end
        return needyest_ally
    end

    def escaped?
        return @escaped
    end

    def physical_attack(player, strength)
        SoundManager.play('swoosh')
        Narrator.write("#{@denomination.capitalize} #{Locale.get_localized(@basic_attack_messages.sample) % [player.get_name]}")
        sleep Settings.get_pause_duration
        player.hurt(Attack.new(strength, Attack::PHYSIC_TYPE, @body, @attack_effects))
    end

    def magic_attack(players, intelligence)
        SoundManager.play('monster_magic_charge')
        Narrator.write("#{@denomination.capitalize} #{@magic_attack_messages.sample}")
        sleep Settings.get_pause_duration
        for player in players do
            player.hurt(Attack.new(intelligence, Attack::MAGIC_TYPE, @body))
        end
    end

    def heal_ally(ally, intelligence)
        SoundManager.play('monster_heal_spell')
        Narrator.write("#{@denomination.capitalize} #{@heal_messages.sample}")
        sleep Settings.get_pause_duration
        ally.heal(rand(1..intelligence))
    end

    def escape
        SoundManager.play('ennemy_footsteps')
        Narrator.write(format(Locale.get_localized(@escape_message.sample), @denomination))
        sleep Settings.get_pause_duration
        @escaped = true
    end
end
