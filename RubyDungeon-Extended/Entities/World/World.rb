class World
    @instance = new

    def generate_dungeon(party)
        @party = party
        exit = Exit.new(RoomID.new(Exit.name, 0))
        if party.get_level < (Entrance::EXPECTED_LEVEL * @party.size)
            biome = EntranceTuto
        else
            biome = Entrance
        end
        biome_id = biome.name
        entrance = Room.new(biome, RoomID.new(biome_id, 0), exit)
        @rooms = {Exit.name => [exit], biome_id => [entrance]}
        return entrance
    end

    def self.get_instance
        return @instance
    end

    def get_room(room_id)
        return @rooms[room_id.get_biome][room_id.get_id]
    end

    def get_new_room_id(current_room)
        next_biome = current_room.get_biome.get_next(@party.get_level.div(@party.size))
        next_biome_id = next_biome.name
        if !@rooms.key?(next_biome_id)
            @rooms[next_biome_id] = []
        end
        next_id = RoomID.new(next_biome_id, @rooms[next_biome_id].length)
        if next_biome::SPECIAL
            @rooms[next_biome_id].append(next_biome.new(current_room, next_id, current_room))
        else
            @rooms[next_biome_id].append(Room.new(next_biome, next_id, current_room))
        end
        return next_id
    end

    private

    def initialize(level)
        @rooms = {}
    end
end
