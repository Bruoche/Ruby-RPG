class Player
    def initialize(player_data, savefile = SaveManager::NO_EXISTING_SAVEFILE)
        @inventory = Inventory.new
        @inventory.load(            player_data[:inventory])
        @picture = PlayerIcon.new
        @picture.load(              player_data[:picture])
        @name =                     player_data[:name]
        @lifebar = Lifebar.new(     player_data[:health].to_i)
        @strength =                 player_data[:strength].to_i
        @intelligence =             player_data[:intelligence].to_i
        @agility =                  player_data[:agility].to_i
        @level =                    player_data[:level].to_i
        @current_xp =               player_data[:current_xp].to_i
        time_passed_saved =         player_data[:time_played]
        if time_passed_saved == nil
            @time_played = Time.new(0)
        else
            if time_passed_saved.kind_of? String
                @time_played = Time.parse(time_passed_saved)
            else
                @time_played = time_passed_saved
            end
        end
        @creation_timestamp = Time.now
        @savefile = savefile
        @exited = false
        @fighting = false
        @just_entered_room = true
    end

    def get_save
        return @savefile
    end

    def set_save(savefile)
        @savefile = savefile
    end

    def get_save_data
        return {
            "name": @name,
            "health": @lifebar.get_max_life,
            "strength": @strength,
            "intelligence": @intelligence,
            "agility": @agility,
            "level": @level,
            "current_xp": @current_xp,
            "time_played": @time_played + time_passed,
            "inventory": @inventory.get_save_data,
            "picture": @picture.get_save_data
        }
    end

    def time_passed
        return Time.now - @creation_timestamp
    end

    def get_full_status
        return "Vous êtes un.e aventurier.e de niveau #{@level} (#{@current_xp}/#{required_xp}).\n" + get_status
    end

    def get_status
        return "Vous avez #{@lifebar.life_to_string} points de vies, faites #{@strength} dégats et avez #{@intelligence} points de puissance magique."
    end

    def get_level
        return @level
    end

    def get_remaining_life
        return @lifebar.get_life
    end

    def get_max_life
        return @lifebar.get_max_life
    end

    def required_xp
        desired_level = @level + 1
        nb_monsters_max = 1 + @level.div(BaseStats::LEVELS_PER_EXTRA_MONSTER)
        potential_health = get_potential_stat(BaseStats::BASE_HEALTH, BaseStats::HEALTH_UPGRADE_PER_LEVEL)
        potential_strength = get_potential_stat(BaseStats::BASE_STRENGTH, BaseStats::STRENGTH_UPGRADE_PER_LEVEL)
        potential_power = potential_health * potential_strength * nb_monsters_max
        monster_pack_bonus = potential_power.div(10) * (nb_monsters_max-1)
        first_levels_increase = ((100*desired_level).round - 100)
        return potential_power + monster_pack_bonus + first_levels_increase
    end

    def get_escape_chances(monsters_power)
        if (monsters_power == 0)
            return 100
        end
		spot_risk = (monsters_power - stealth_score)
        spot_risk = (spot_risk*100)/(monsters_power)
        if spot_risk <= 0
            return 100
        end
		return 100 - spot_risk
	end

    def can_escape?(monsters_power)
        perception_score = rand(monsters_power + 1)
        return perception_score < stealth_score
    end

    def have(item)
        return @inventory.have(item)
    end

    def died?
        return @lifebar.is_empty
    end

    def exited?
        return @exited
    end

    def fighting?
        return @fighting
    end

    def just_entered_room?
        return @just_entered_room
    end

    def just_won_fight?
        if @fighting
            return !@room.got_monsters?
        else
            return false
        end
    end

    def get_room
        return @room
    end

    def act
        if !(died? || exited?)
            if @fighting
                return fight_action
            else
                if @room.got_monsters?
                    return propose_combat
                else
                    return ask_action
                end
            end
        end
    end

    def ask_action
        @room.describe(self)
        @just_entered_room = false
        puts "Que souhaitez-vous faire?"
        puts "      1) Aller à..."
        puts "      2) Fouiller #{@room.get_the_denomination}"
        puts "      3) Utiliser un objet"
        puts "      4) Attendre"
        if @room.got_monsters?
            puts "      4) Attaquer #{@room.get_monsters_plural_the}"
        end
        case Narrator.user_input
        when "1"
            propose_exploration
        when "2"
            if search
                return
            else
                return ask_action
            end
        when "3"
            if use_item
                return act
            else
                return ask_action
            end
        when "4"
            return
        when "5"
            if (not @room.got_monsters?)
                Narrator.unsupported_choice_error
                return ask_action
            else
                Narrator.start_fight(@room.get_monsters.plural?)
                @fighting = true
                return fight_action
            end
        else
            Narrator.unsupported_choice_error
            return ask_action
        end
    end

    def propose_combat
        @room.describe(self)
        case Narrator.ask_if_fight(get_escape_chances(@room.get_monsters.get_current_power))
        when "1"
            Narrator.start_fight(@room.get_monsters.plural?)
            @fighting = true
            return act
        when "2"
            if can_escape?(@room.get_monsters.get_current_power)
                Narrator.avoid_fight(@room.get_monsters.get_plural_the)
                return ask_action
            else
                Narrator.fail_sneak(@room.get_monsters.plural?)
                @fighting = true
                return
            end
        else
            Narrator.unsupported_choice_error
            propose_combat
        end
    end

    def fight_action
        case Narrator.ask_fight_action(get_status, @room.get_monsters.get_description, get_escape_chances(@room.get_monsters.get_current_power))
        when "1"
            acted = @room.get_monsters.hurt_single(strength_attack)
            if not acted
                fight_action
            end
        when "2"
            @room.get_monsters.hurt_magic(magic_attack)
        when "3"
            heal
        when "4"
            used = use_item
            if not used
                fight_action
            end
        when "5"
            if can_escape?(@room.get_monsters.get_current_power)
                @fighting = false
                ask_action
            else
                Narrator.fail_escape(@room.get_monsters.plural?)
            end
        else
            Narrator.unsupported_choice_error
            fight_action
        end
        return
    end

    def stop_fighting
        @fighting = false
    end

    def propose_exploration
        next_room = Narrator.ask("Où souhaitez-vous aller?", @room.get_adjacent_rooms, -> (room){@room.to_string(room)}, Narrator::RETURN_BUTTON)
        if next_room != Narrator::RETURN_BUTTON
            next_room_instance = @room.exit_to(next_room)
            if next_room_instance.allow_entry_for(self)
                @room = next_room_instance
                @just_entered_room = true
            end
            act
        else
            ask_action
        end
    end

    def search
        searched_before = @room.searched_before?
        available_items = @room.search
        if available_items.length == 0
            if searched_before
                puts "Vous avez déjà pris tout les objets à prendre dans #{@room.get_this_denomination}"
            else
                puts "Vous ne trouvez rien de valeur."
            end
            return false
        else
            acted = false
            loop do
                choosen_object = Narrator.ask("Quels objets voulez-vous prendre?", @room.get_loot, ->(object){Loot.to_string(object)})
                if choosen_object == nil
                    return acted
                end
                acted = true
                get_new_item(@room.take(choosen_object))
                if @room.get_loot.length == 0
                    return acted
                end
            end
        end
    end

    def set_room(room)
        @room = room
        @arrival = true
    end

    def set_save(savefile)
        @savefile = savefile
    end

    def exit
        @exited = true
    end

    def hurt(attack)
        damage = rand(attack.damage_dealt)
        puts("Vous prenez #{damage} dégats.")
        @lifebar.damage(damage)
    end

    def strength_attack
        return Attack.new(@strength, Attack::PHYSIC_TYPE)
    end

    def magic_attack
        return Attack.new(@intelligence, Attack::MAGIC_TYPE)
    end

    def heal(amount = nil)
        if amount != nil
            puts "Vous obtenez #{amount} points de vie."
            @lifebar.heal(amount)
        else
            if (@intelligence > 0)
                amount = rand(1..@intelligence)
                puts "Vous vous soignez #{amount} points de vie."
                @lifebar.heal(amount)
            else
                puts "Vous ne savez pas comment vous soigner. Aucun point de vie n'est régénéré."
            end
        end
    end

    def patch_up
        if (@lifebar.get_missing_life > 0)
            amount = rand(1..(@lifebar.get_missing_life + 1)) - 1
            puts "Vous vous soignez #{amount} points de vie."
            @lifebar.heal(amount)
            return true
        else
            puts "Vous n'êtes pas blessé et n'avez donc pas besoin de vous soigner."
            return false
        end
    end

    def get_xp(amount)
        @current_xp += amount
        while (@current_xp >= required_xp)
            puts "Niveau supérieur !"
            @current_xp -= required_xp
            @level += 1
            stat_up
            @lifebar.heal(@lifebar.get_missing_life)
        end
    end

    def get_new_item(item)
        @inventory.add(item)
    end

    def use_item
        @inventory.ask_use(self)
    end

    def stat_up
        for i in 1..nb_stats_up do
            loop do
                puts "Quelle statistique souhaitez-vous augmenter ? (#{i}/#{nb_stats_up})"
                puts "1) (ಇ) Vie            (#{@lifebar.get_max_life} -> #{@lifebar.get_max_life + BaseStats::HEALTH_UPGRADE_PER_LEVEL})"
                puts "2) (ೞ) Force          (#{@strength} -> #{@strength + BaseStats::STRENGTH_UPGRADE_PER_LEVEL})"
                puts "3) (೨) Intelligence   (#{@intelligence} -> #{@intelligence + BaseStats::INTELLIGENCE_UPGRADE_PER_LEVEL})"
                puts "4) (ಖ) Agilité        (#{@agility} -> #{@agility + BaseStats::AGILITY_UPGRADE_PER_LEVEL})"
                case Narrator.user_input
                when "1"
                    @lifebar.increment(BaseStats::HEALTH_UPGRADE_PER_LEVEL)
                    break
                when "2"
                    @strength += BaseStats::STRENGTH_UPGRADE_PER_LEVEL
                    break
                when "3"
                    @intelligence += BaseStats::INTELLIGENCE_UPGRADE_PER_LEVEL
                    break
                when "4"
                    @agility += BaseStats::AGILITY_UPGRADE_PER_LEVEL
                    break
                else
                    puts "Choix invalide. Veuillez simplement renseigner le chiffre correspondant à votre choix"
                end
            end
        end
    end

    private

    def stealth_score
        return (@agility**2).div(2)
    end

    def nb_stats_up(level = @level)
        return BaseStats::NB_STATS_PER_LEVEL + (level.div(BaseStats::LEVELS_PER_EXTRA_MONSTER))
    end

    def get_potential_stat(base_stat, increase_rate)
        return base_stat + (@level * increase_rate.div(2) * nb_stats_up.div(2) + 1).div(2)
    end
end
