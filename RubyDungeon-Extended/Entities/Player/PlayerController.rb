class PlayerController
    def initialize(player)
        @player = player
        @exited = false
        @fighting = false
        @just_entered_room = true
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

    def stop_fighting
        @fighting = false
    end

    def exit
        @exited = true
    end

    def act
        if !(@player.died? || @player.exited?)
            if @fighting
                return fight_action
            else
                if @player.get_room.got_monsters?
                    return propose_combat
                else
                    return ask_action
                end
            end
        end
    end

    def ask_action
        @player.get_room.describe(@player)
        @just_entered_room = false
        puts "Que souhaitez-vous faire?"
        puts "      1) Aller à..."
        puts "      2) Fouiller #{@player.get_room.get_the_denomination}"
        puts "      3) Utiliser un objet"
        puts "      4) Attendre"
        if @player.get_room.got_monsters?
            puts "      5) Attaquer #{@player.get_room.get_monsters_plural_the}"
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
            if @player.use_item
                return act
            else
                return ask_action
            end
        when "4"
            return
        when "5"
            if (not @player.get_room.got_monsters?)
                Narrator.unsupported_choice_error
                return ask_action
            else
                Narrator.start_fight(@player.get_room.get_monsters.plural?)
                @fighting = true
                return fight_action
            end
        else
            Narrator.unsupported_choice_error
            return ask_action
        end
    end

    def propose_combat
        @player.get_room.describe(@player)
        case Narrator.ask_if_fight(@player.get_escape_chances(@player.get_room.get_monsters.get_current_power))
        when "1"
            Narrator.start_fight(@player.get_room.get_monsters.plural?)
            @fighting = true
            return act
        when "2"
            if @player.can_escape?(@player.get_room.get_monsters.get_current_power)
                Narrator.avoid_fight(@player.get_room.get_monsters.get_plural_the)
                return ask_action
            else
                Narrator.fail_sneak(@player.get_room.get_monsters.plural?)
                @fighting = true
                return
            end
        else
            Narrator.unsupported_choice_error
            propose_combat
        end
    end

    def fight_action
        case Narrator.ask_fight_action(@player.get_status, @player.get_room.get_monsters.get_description, @player.get_escape_chances(@player.get_room.get_monsters.get_current_power))
        when "1"
            acted = @player.get_room.get_monsters.hurt_single(@player.strength_attack)
            if not acted
                fight_action
            end
        when "2"
            @player.get_room.get_monsters.hurt_magic(@player.magic_attack)
        when "3"
            @player.heal
        when "4"
            used = @player.use_item
            if not used
                fight_action
            end
        when "5"
            if @player.can_escape?(@player.get_room.get_monsters.get_current_power)
                @fighting = false
                ask_action
            else
                Narrator.fail_escape(@player.get_room.get_monsters.plural?)
            end
        else
            Narrator.unsupported_choice_error
            fight_action
        end
        return
    end

    def propose_exploration
        next_room = Narrator.ask("Où souhaitez-vous aller?", @player.get_room.get_adjacent_rooms, -> (room){@player.get_room.to_string(room)}, Narrator::RETURN_BUTTON)
        if next_room != Narrator::RETURN_BUTTON
            next_room_instance = @player.get_room.exit_to(next_room)
            if next_room_instance.allow_entry_for(@player)
                @player.set_room(next_room_instance)
                @just_entered_room = true
            end
            act
        else
            ask_action
        end
    end

    def search
        searched_before = @player.get_room.searched_before?
        available_items = @player.get_room.search
        if available_items.length == 0
            if searched_before
                puts "Vous avez déjà pris tout les objets à prendre dans #{@player.get_room.get_this_denomination}"
            else
                puts "Vous ne trouvez rien de valeur."
            end
            return false
        else
            acted = false
            loop do
                choosen_object = Narrator.ask("Quels objets voulez-vous prendre?", @player.get_room.get_loot, ->(object){Loot.to_string(object)})
                if choosen_object == nil
                    return acted
                end
                acted = true
                @player.give_item(@player.get_room.take(choosen_object))
                if @player.get_room.get_loot.length == 0
                    return acted
                end
            end
        end
    end
end
