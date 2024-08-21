class World
    @instance = new

    def setup_entrance(level)
        if level < 3
            biome = EntranceTuto
        else
            biome = Entrance
        end
        biome_id = biome.class.name
        entrance = Room.new(biome, RoomID.new(biome_id, 0), Exit.new)
        @rooms = {biome_id => [entrance]}
    end

    def self.get_instance
        return @instance
    end

    def get_room(room_id)
        return @rooms[room_id.get_biome][room_id.get_id]
    end

    def get_new_room_id(precedent_room = nil)
        next_biome = @biome.get_next(@player.get_level)
        next_biome_id = next_biome.class.name
        if !@rooms.key?(next_biome_id)
            @rooms[] = []
        end
        next_id = RoomID.new(next_biome_id, @rooms[next_biome_id].length)
        if next_biome::SPECIAL
            @adjacent_rooms[next_room] = next_biome.new(@player, current_room)
        else
            @adjacent_rooms[next_room] = Room.new(next_biome, next_id, current_room)
        end
    end

    private

    def initialize(level)
        @rooms = {}
    end
end
