class Monster
    CHOICE_PHYSICAL_ATTACK = 'strike'
    CHOICE_MAGIC_ATTACK = 'magic_attack'
    CHOICE_HEAL = 'heal'

    def initialize(life, damage, name, basic_attack_messages, magic_attack_messages, heal_messages, unpredictability) # TODO
        @lifebar = Lifebar.new(life)
        @name = name
        @strength = damage
        @intelligence = intelligence
        @basic_attack_messages = basic_attack_messages
        @basic_attack_messages = magic_attack_messages
        @heal_messages = heal_messages
        @unpredictability = unpredictability
    end

    def get_description
        return "#{@name.get_gendered_a} avec #{@lifebar.life_to_string} points de vies et #{@strength} dégats"
    end

    def get_description_the
        return "#{@name.get_gendered_the} avec #{@lifebar.life_to_string} points de vies et #{@strength} dégats"
    end

    def get_name
        return @name
    end

    def get_power
        return @lifebar.get_max_life * @strength
    end

    def get_xp
        return get_power
    end

    def get_damage
        return @strength
    end

    def get_missing_life
        return @lifebar.get_missing_life
    end

    def get_max_life
        return @lifebar.get_max_life
    end

    def set_damage(damage)
        @strength = damage
    end

    def died?
        return @lifebar.is_empty
    end

    def hurt(attack)
        puts("#{@name.get_gendered_the.capitalize} prend #{attack.damage_dealt} dégats.")
        @lifebar.damage(damage)
        return true
    end

    def heal(amount)
        puts("#{@name.get_gendered_the.capitalize} récupère #{amount} points de vie.")
        @lifebar.heal(amount)
    end

    def attack(players, pack)
        if rand(100) > @unpredictability
            if @intelligence > 0
                average_spell_power = (@intelligence+1)/2
                needyest_ally = self
                for ally in @pack do
                    if ally.get_missing_life >= needyest_ally.get_missing_life
                        if !((ally.get_missing_life == needyest_ally.get_missing_life) && (ally.get_max_life > needyest_ally.get_missing_life))
                            needyest_ally = ally
                        end
                    end
                end
                average_heal = needyest_ally.get_missing_life
                if (potential_heal > average_spell_power)
                    potential_heal = average_heal
                end
                potential_spell_damage = 0
                for player in players do
                    potential_damage = player.get_remaining_life
                    if potential_damage > average_spell_power
                        potential_damage = average_spell_power
                    end
                    potential_spell_damage += potential_damage
                end
            else
                average_heal = 0
                potential_spell_damage = 0
            end
            best_priority_score = 0
            for player in players do
                priority_score = player.get_remaining_life
                if (@strength < priority_score)
                    priority_score = @strength
                end
                priority_score += rand(player.get_max_life)
                if (priority_score >= best_priority_score)
                    priority_target = player
                end
            end
            physical_damage = priority_target.get_remaining_life
            if (physical_damage > @strength)
                physical_damage = @strength
            end
            if (potential_spell_damage >= physical_damage)
                if (potential_spell_damage >= potential_heal)
                    magic_attack(players)
                else
                    heal_ally(needyest_ally)
                end
            end
        else
            choice = [CHOICE_PHYSICAL_ATTACK, CHOICE_MAGIC_ATTACK, CHOICE_HEAL].sample
            if (@intelligence > 0) && (choice != CHOICE_PHYSICAL_ATTACK)
                allies_to_heal = []
                if (choice == CHOICE_HEAL)
                    for ally in pack
                        if ally.get_missing_life > 0
                            allies_to_heal.add(ally)
                        end
                    end
                end
                if allies_to_heal.length > 0
                    heal_ally(allies_to_heal.sample)
                else
                    magic_attack(players)
                end
            else
                physical_attack(players.sample)
            end
        end
    end

    def magic_attack(players)
        puts "#{@name.get_gendered_the.capitalize} #{@magic_attack_messages.sample}"
        for player in players do
            player.hurt(Attack.new(rand(@intelligence), Attack::MAGIC_TYPE))
        end
    end

    def physical_attack(player)
        puts "#{@name.get_gendered_the.capitalize} #{@basic_attack_messages.sample}"
        player.hurt(Attack.new(@strength, Attack::PHYSIC_TYPE))
    end

    def heal_ally(ally)
        puts "#{@name.get_gendered_the.capitalize} #{@heal_messages.sample}"
        ally.heal(rand(1..@intelligence))
    end
end
