class Room
    MONSTER_PRESENT_PICTURE_SUFFIX = '_occupied'
    UNEXPLORED_ROOM = nil

    def initialize(biome, id, precedent_room = nil)
        @id = id
        @name = Name.new(biome)
        @biome = biome
        if precedent_room != nil
            is_new_biome = (precedent_room.get_biome != biome)
        else
            is_new_biome = false
        end
        if biome.is_safe_room(is_new_biome)
            @monsters = nil
        else
            @monsters = Pack.new(biome, self)
        end
        if biome.has_passives
            @passives = PassiveGroup.new(biome, self)
        else
            @passives = PassiveGroup.new(PassiveGroup::GENERATE_EMPTY, self)
        end
        @npcs = CharacterGroup.new(biome::NPCS, self)
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
        @entry_event = @biome::ENTRY_EVENT
    end

    def allow_entry_for(player)
        for requirement in @requirements
            if requirement.ignored?
                return true
            end
            if !requirement.can_enter?(player)
                requirement.impossible_entry_message
                return false
            end
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
        end
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
        if got_monsters? || got_passives? || got_npcs?
            picture += MONSTER_PRESENT_PICTURE_SUFFIX
        end
        if player.just_entered_room?
            if (@monsters != nil)
                Narrator.describe_monsters_room(
                    player,
                    -> {@biome.describe},
                    picture,
                    @name.get_gendered_the,
                    @monsters.get_description,
                )
            else
                Narrator.describe_empty_room(
                    player,
                    -> {@biome.describe},
                    picture,
                    @name.get_gendered_a,
                    @name.female?,
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
        Narrator.describe_extras(
            player,
            @passives.get_description,
            @npcs.get_description
        )
    end

    def get_id
        return @id
    end

    def get_monsters
        return @monsters
    end

    def get_passives
        return @passives
    end

    def get_monster_cards
        return @monsters.get_cards
    end

    def got_monsters?
        return !((@monsters == nil) || @monsters.are_dead)
    end

    def got_passives?
        return !((@passives == nil) || @passives.length <= 0)
    end

    def get_monsters_plural_the
        return @monsters.get_plural_the
    end

    def got_npcs?
        @npcs.any?
    end

    def get_interactables
        interactables = []
        if got_monsters?
            interactables.append(@monsters)
        end
        for npc in @npcs.get_interactables
            interactables.append(npc)
        end
        return interactables
    end

    def get_total_power
        if @monsters != nil
            monster_power = @monsters.get_current_power
        else
            monster_power = 0
        end
        if @passives != nil
            passives_power = @passives.get_current_power
        else
            passives_power = 0
        end
        return monster_power + passives_power
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

    def execute_entry_event(player)
        return @entry_event.call(self, player)
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

    def anger_passives
        initiate_monster_pack(@passives.empty)
    end

    def anger_npcs
        for npc in @npcs.get_interactables
            if !npc.fighting?
                initiate_monster_pack([npc.get_fighter])
                npc.start_fighting
            end
        end
    end

    def anger(character)
        for npc in @npcs.get_interactables
            if npc == character
                if !npc.fighting?
                    initiate_monster_pack([npc.get_fighter])
                    npc.start_fighting
                end
                return
            end
        end
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

    private

    def initiate_monster_pack(added_elements)
        if added_elements.length <= 0
            return
        end
        if @monsters == nil
            @monsters = Pack.new(Pack::GENERATE_EMPTY, self)
        end
        for element in added_elements
            @monsters.add(element)
        end
    end
end
