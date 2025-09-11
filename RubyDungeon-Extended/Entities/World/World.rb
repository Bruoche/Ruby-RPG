class World
    @instance = new
    AUTO_BIOME = nil
    ENNEMYS_TURN = nil

    def generate_dungeon(party)
        @party = party
        exit = Exit.new(RoomID.new(Exit.name, 0))
        if party.get_level < (Entrance::EXPECTED_LEVEL * @party.size)
            biome = EntranceTuto
        else
            biome = Entrance
        end
        biome = BossCell # TODO remove
        biome_id = biome.name
        @rooms = {Exit.name => [exit]}
        @entrance = Room.new(biome, RoomID.new(biome_id, 0), exit)
        @rooms[biome_id] = [@entrance]
        return @entrance
    end

    def self.get_instance
        return @instance
    end

    def get_room(room_id)
        return @rooms[room_id.get_biome][room_id.get_id]
    end

    def get_entrance
        return @entrance
    end

    def backtrackable_rooms_for(room_id, next_biome_id)
        if @rooms.key?(next_biome_id)
            backtrable_rooms_id = []
            for room in @rooms[next_biome_id]
                if (room.get_id != room_id) && (room.backtrackable?)
                    backtrable_rooms_id.append(room)
                end
            end
            return backtrable_rooms_id
        else
            return []
        end
    end

    def get_new_room_id(current_room, next_biome = AUTO_BIOME)
        if next_biome == AUTO_BIOME
            next_biome = current_room.get_biome.get_next(@party.get_level.div(@party.size))
        end
        next_biome_id = next_biome.name.to_s
        if !@rooms.key?(next_biome_id)
            @rooms[next_biome_id] = []
        end
        backtrackable_rooms = backtrackable_rooms_for(current_room.get_id, next_biome_id)
        if (rand(100) <= next_biome::BACKTRACK_CHANCES) && !(backtrackable_rooms.empty?)
            next_room = backtrackable_rooms.sample
            next_room.set_adjacent_to(current_room.get_id)
            return next_room.get_id
        else
            next_id = RoomID.new(next_biome_id, @rooms[next_biome_id].length)
            if next_biome::SPECIAL
                @rooms[next_biome_id].append(next_biome.new(next_id, current_room))
            else
                @rooms[next_biome_id].append(Room.new(next_biome, next_id, current_room))
            end
            return next_id
        end
    end

    def get_all_players
        return @party.get_players
    end

    def get_players_in(room)
        return @party.get_players_in(room)
    end

    def get_current_player
        return @current_player
    end

    def get_current_room
        return @current_room
    end

    def nb_players
        return @party.size
    end

    def set_current_player(player)
        @current_player = player
        if player != ENNEMYS_TURN
            @current_room = player.get_room
        end
    end

    def set_current_room(room)
        @current_room = room
    end

    private

    def initialize(level)
        @rooms = {}
        @current_player = ENNEMYS_TURN
        @current_room = nil
    end
end
