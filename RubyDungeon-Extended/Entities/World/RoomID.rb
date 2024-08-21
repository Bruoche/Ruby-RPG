class RoomID
    def initialize(biome_key, id)
        @biome_key = biome_key
        @id = id
    end

    def get_id
        return @id
    end

    def get_biome
        return @biome_key
    end
end
