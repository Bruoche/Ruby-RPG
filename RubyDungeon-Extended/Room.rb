class Room
    RETURN_BUTTON = "retour"
    def initialize(player, biome, precedent_room = nil)
        @name = Name.new(biome)
        @player = player
        if biome.get_safe_room
            @monsters = nil
        else
            @monsters = Pack.new(player.get_level, biome)
        end
        @biome = biome
        @adjacent_rooms = Array.new(rand((1+biome::MIN_EXITS)..(1 + biome::MAX_EXITS)))
        @adjacent_rooms[0] = precedent_room
        @precedent_room = 0
        @objects = nil
    end

    def describe()
        if @arrival
            if (@monsters != nil)
                Narrator.describe_monsters_room(
                    @player.get_full_status,
                    -> (){@biome.describe},
                    @biome::PICTURE,
                    @name.get_gendered_the,
                    @monsters.get_description
                )
            else
                Narrator.describe_empty_room(
                    @player.get_full_status,
                    -> (){@biome.describe},
                    @biome::PICTURE,
                    @name.get_gendered_a,
                    @name.is_female
                )
            end
            @arrival = false
        else
            if (@monsters != nil)
                monsters_description = @monsters.get_description
            else
                monsters_description = nil
            end
            Narrator.describe_current_room(
                @player.get_full_status,
                -> (){@biome.describe},
                @biome::PICTURE,
                @name.get_gendered_a,
                monsters_description
            )
        end
    end

    def get_monsters()
        return @monsters
    end

    def get_denomination()
        return @name.get_gendered_a
    end

    def enter()
        @arrival = true
        room_action
    end

    def room_action()
        if (no_monsters)
            return ask_action()
        else
            return propose_combat()
        end
    end

    def ask_action()
        describe()
        puts "Que souhaitez-vous faire?"
        puts "      1) Aller à..."
        puts "      2) Fouiller #{@name.get_gendered_the}"
        puts "      3) Utiliser un objet"
        if not no_monsters
            puts "      4) Attaquer #{@monsters.get_plural_the}"
        end
        loop do
            case Narrator.user_input
            when "1"
                return propose_exploration
            when "2"
                if search
                    return room_action
                else
                    return ask_action
                end
            when "3"
                if @player.use_item
                    return room_action
                else
                    return ask_action
                end
            when "4"
                if no_monsters
                    Narrator.unsupported_choice_error
                    return ask_action
                else
                    Narrator.start_fight(@monsters.is_plural)
                    return fight_with_adventage(true)
                end
            else
                Narrator.unsupported_choice_error
                return ask_action
            end
        end
    end

    def propose_exploration()
        next_room = Narrator.ask("Où souhaitez-vous aller?", @adjacent_rooms, -> (room){to_string(room)}, RETURN_BUTTON)
        if next_room == RETURN_BUTTON
            return ask_action
        else
            @precedent_room = next_room # Si nous revenons ça sera par là
            if @adjacent_rooms[next_room] == nil
                current_room = self
                @adjacent_rooms[next_room] = Room.new(@player, @biome.get_next, current_room)
            end
            return @adjacent_rooms[next_room]
        end
    end

    def propose_combat()
        describe()
        case Narrator.ask_if_fight(@player.get_escape_chances(@monsters.get_current_power))
        when "1"
            Narrator.start_fight(@monsters.is_plural)
            return fight_with_adventage(true)
        when "2"
            if (@player.can_escape(@monsters.get_current_power))
                Narrator.avoid_fight(@monsters.get_plural_the)
                return ask_action
            else
                Narrator.fail_sneak(@monsters.is_plural)
                return fight_with_adventage(false)
            end
        else
            Narrator.unsupported_choice_error
            propose_combat
        end
    end

    def search()
        if (@objects != nil) && (@objects.length == 0)
            puts "Vous avez déjà pris tout les objets à prendre dans #{@name.get_gendered_this}"
            return false
        else
            searched = false
            if @objects == nil
                puts "Vous fouillez #{@name.get_gendered_the} pour tout objet pouvant vous être utile..."
                @objects = @biome.get_loot
                searched = true
            end
            if @objects.length != 0
                loop do
                    choosen_index = Narrator.ask("Quels objets voulez-vous prendre?", @objects, ->(object){to_string_loot(object)})
                    if choosen_index == nil
                        return searched
                    end
                    searched = true
                    choosen_object = @objects[choosen_index]
                    @player.get_new_item(choosen_object)
                    @objects.delete(choosen_object)
                    if @objects.length == 0
                        return searched
                    end
                end
            else
                puts "Vous ne trouvez rien de valeur."
                return searched
            end
        end
    end

    private

    def no_monsters()
        return (@monsters == nil) || (@monsters.are_dead)
    end

    def fight_with_adventage(player_first)
        survived = Fight.new(@player, @monsters).fight(player_first)
        if survived
            return ask_action
        else
            return nil
        end
    end

    def to_string(room)
        case room
        when RETURN_BUTTON
            return "rester dans #{@name.get_gendered_the}"
        when nil
            return "???"
        else
            return room.get_denomination
        end
    end

    def to_string_loot(object)
        if object == nil
            return "retour..."
        else
            return object.get_description
        end
    end
end
