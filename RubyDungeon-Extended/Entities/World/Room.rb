class Room
    MONSTER_PRESENT_PICTURE_SUFFIX = '_occupied'
    UNEXPLORED_ROOM = nil

    def initialize(biome, id, precedent_room = nil)
        @id = id
        @name = Name.new(biome)
        if precedent_room != nil
            new_biome = (precedent_room.get_biome != biome)
        else
            new_biome = false
        end
        if biome.is_safe_room(new_biome)
            @monsters = nil
        else
            @monsters = Pack.new(biome, self)
        end
        @biome = biome
        @adjacent_rooms = Array.new(rand((1+biome::MIN_EXITS)..(1 + biome::MAX_EXITS)))
        if precedent_room != nil
            @adjacent_rooms[0] = precedent_room.get_id
        end
        room_index = 1
        skipped_biomes = false
        for required_biome in biome::REQUIRED_BIOMES
            required_biome_class = Object.const_get(required_biome)
            if (precedent_room.get_biome != required_biome_class) || skipped_biomes
                required_room_id = World.get_instance.get_new_room_id(self, required_biome_class)
                @adjacent_rooms[room_index] = World.get_instance.get_room(required_room_id).get_id
                room_index += 1
            else
                skipped_biomes = true
            end
        end
        @objects = nil
        @requirements = @biome.get_entry_requirements
        @monster_loots = []
        @picture = @biome::PICTURE
    end

    def allow_entry_for(player)
        for requirement in @requirements
            if requirement.ignored?
                return true
            else
                if requirement.can_enter?(player)
                    requirement.ask_enter
                    Narrator.yes_or_no
                    case Narrator.user_input(player.get_name)
                    when '1'
                        requirement.entry_message
                        return true
                    when '2'
                        requirement.no_entry_message
                        return false
                    else
                        Narrator.unsupported_choice_error
                        return allow_entry_for(player)
                    end
                else
                    requirement.impossible_entry_message
                    return false
                end
            end
        end
        return true
    end

    def exit_to(next_room)
        if @adjacent_rooms[next_room] == UNEXPLORED_ROOM
            @adjacent_rooms[next_room] = World.get_instance.get_new_room_id(self)
        end
        next_room_instance = World.get_instance.get_room(@adjacent_rooms[next_room])
        return next_room_instance
    end

    def describe(player)
        picture = @picture
        if got_monsters?
            picture += MONSTER_PRESENT_PICTURE_SUFFIX
        end
        if player.just_entered_room?
            if (@monsters != nil)
                Narrator.describe_monsters_room(
                    player,
                    -> {@biome.describe},
                    picture,
                    @name.get_gendered_the,
                    @monsters.get_description
                )
            else
                Narrator.describe_empty_room(
                    player,
                    -> {@biome.describe},
                    @picture,
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
                player,
                -> {@biome.describe},
                picture,
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

    def get_monster_cards
        return @monsters.get_cards
    end

    def got_monsters?
        return !((@monsters == nil) || @monsters.are_dead)
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

    def get_this_denomination
        return @name.get_gendered_this
    end

    def get_biome
        return @biome
    end

    def get_adjacent_rooms
        return @adjacent_rooms
    end

    def searched_before?
        return @objects != nil
    end

    def backtrackable?
        for room in @adjacent_rooms
            if room == UNEXPLORED_ROOM
                return true
            end
        end
        return false
    end

    def get_loot
        if !searched_before?
            search
        end
        return @objects
    end

    def add_loot(loot)
        @monster_loots.append(loot)
    end

    def set_picture(new_picture)
        @picture = new_picture
    end

    def search
        if !searched_before?
            SoundManager.play('searching')
            Narrator.searching(@name.get_gendered_the)
            3.times do
                sleep Settings.get_pause_duration
                Narrator.write_same_line('.')
            end
            Narrator.add_space_of(1)
            sleep Settings.get_pause_duration
            @objects = @biome.get_loot
        end
        for loot in @monster_loots
            if loot.dropped?
                bundle = loot.get_item
                bundle.get_item.play_sound
                sleep Settings.get_pause_duration
                @objects.append(bundle)
            end
        end
        @monster_loots = []
        return @objects
    end

    def take(choosen_object_index)
        choosen_object = @objects[choosen_object_index]
        @objects.delete_at(choosen_object_index)
        return choosen_object
    end

    def set_adjacent_to(other_room_id)
        possible_adjacence = []
        i = 0
        for room_id in @adjacent_rooms
            if room_id == UNEXPLORED_ROOM
                possible_adjacence.append(i)
            end
            i += 1
        end
        @adjacent_rooms[possible_adjacence.sample] = other_room_id
    end

    def to_string(room_id)
        case room_id
        when Narrator::RETURN_BUTTON
            return format(Locale.get_localized(LocaleKey::STAY_IN), @name.get_gendered_the)
        when nil
            return '???'
        else
            return World.get_instance.get_room(room_id).get_denomination
        end
    end
end
