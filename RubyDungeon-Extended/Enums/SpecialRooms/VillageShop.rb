class VillageShop
    SPECIAL = true;
    BACKTRACK_CHANCES = 0

    def initialize(id, precedent_room = nil)
        @id = id
        @shop = GoblinForge.new
    end

    def get_id
        return @id
    end

    def get_biome
        return self.class
    end

    def get_denomination
        return Locale.get_localized(LocaleKey::VILLAGE_FORGE)
    end

    def allow_entry_for(player)
        @shop.enter(player)
        return false
    end

    def backtrackable?
        return false
    end

    def acted?
        return @acted
    end

    private

    def move(player, direction)
        player.set_room(direction)
        player.set_entered_room(true)
    end
end
