class VillageTransition
    SPECIAL = true;
    OUT_BIOME = VillageExterior
    IN_BIOME = GoblinVillage
    BACKTRACK_CHANCES = 0

    def initialize(id, precedent_room = nil)
        @id = id
        if precedent_room.get_biome == IN_BIOME
            out_id = World.get_instance.get_new_room_id(self, OUT_BIOME)
            @out = World.get_instance.get_room(out_id)
            @in = precedent_room
        else
            @out = precedent_room
            in_id = World.get_instance.get_new_room_id(self, IN_BIOME)
            @in = World.get_instance.get_room(in_id)
        end
        @passed = false
    end

    def get_id
        return @id
    end

    def get_biome
        return self.class
    end

    def get_denomination
        return Locale.get_localized(LocaleKey::VILLAGE_ENTRANCE)
    end

    def allow_entry_for(player)
        @acted = false
        if player.get_room.get_biome == IN_BIOME
            move(player, @out)
            return
        end
        room_power = player.get_room.get_total_power
        if player.has_status?(AllowedEntry) || (room_power <= 0)
            move(player, @in)
            return
        end
        if Narrator.ask_confirmation(format(Locale.get_localized(LocaleKey::ASK_SNEAK_VILLAGE_ENTRANCE), player.get_escape_chances(room_power)), player.get_name)
            if player.can_escape?(room_power)
                move(player, @in)
                return
            end
            Narrator.fail_sneak(true)
            player.get_room.anger_passives
            player.get_room.anger_npcs
            player.start_fighting
            @acted = true
        end
        return false #otherwise the player gets moved inside this transition biome
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
