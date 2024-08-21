class Room
    RETURN_BUTTON = "retour"

    def initialize(biome, id, precedent_room = nil)
        @id = id
        @name = Name.new(biome)
        if biome.is_safe_room
            @monsters = nil
        else
            @monsters = Pack.new(biome)
        end
        @biome = biome
        @adjacent_rooms = Array.new(rand((1+biome::MIN_EXITS)..(1 + biome::MAX_EXITS)))
        @adjacent_rooms[0] = precedent_room
        @precedent_room = 0
        @objects = nil
        @requirements = @biome.get_entry_requirements
    end

    def enter
        for requirement in @requirements
            if requirement.ignored?
                return room_action
            else
                if requirement.can_enter?(@player)
                    requirement.ask_enter
                    puts "1) Oui"
                    puts "2) Non"
                    case Narrator.user_input
                    when "1"
                        requirement.entry_message
                        return room_action
                    when "2"
                        requirement.no_entry_message
                        return @adjacent_rooms[@precedent_room]
                    else
                        Narrator.unsupported_choice_error
                        return enter
                    end
                else
                    requirement.impossible_entry_message
                    return @adjacent_rooms[@precedent_room]
                end
            end
        end
        return room_action
    end

    def describe(arrival)
        if arrival
            if (@monsters != nil)
                Narrator.describe_monsters_room(
                    @player.get_full_status,
                    -> {@biome.describe},
                    @biome::PICTURE,
                    @name.get_gendered_the,
                    @monsters.get_description
                )
            else
                Narrator.describe_empty_room(
                    @player.get_full_status,
                    -> {@biome.describe},
                    @biome::PICTURE,
                    @name.get_gendered_a,
                    @name.female?
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
                -> {@biome.describe},
                @biome::PICTURE,
                @name.get_gendered_a,
                monsters_description
            )
        end
    end

    def get_id
        return @id
    end

    def get_monsters
        return @monsters
    end

    def got_monsters?
        return (@monsters == nil) || (@monsters.are_dead)
    end

    def get_monsters_plural_the
        return @monsters.get_plural_the
    end

    def get_denomination
        return @name.get_gendered_a
    end

    def get_the_denomination
        return @name.get_gendered_the
    end

    def get_biome
        return @biome.class.name
    end

    def search
        searched = false
        if (@objects != nil) && (@objects.length == 0)
            puts "Vous avez déjà pris tout les objets à prendre dans #{@name.get_gendered_this}"
            return searched
        else
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
                    @objects.delete_at(choosen_index)
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
