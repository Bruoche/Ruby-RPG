class Hole
    SPECIAL = true;
    TOP_BIOME = EntranceDrop
    BOTTOM_BIOME = CavesDrop
    BACKTRACK_CHANCES = 0

    def initialize(id, precedent_room = nil)
        @id = id
        if precedent_room.get_biome == TOP_BIOME
            @top = precedent_room
            bottom_id = World.get_instance.get_new_room_id(self, BOTTOM_BIOME)
            @bottom = World.get_instance.get_room(bottom_id)
        else
            top_id = World.get_instance.get_new_room_id(self, TOP_BIOME)
            @top = World.get_instance.get_room(top_id)
            @bottom = precedent_room
        end
        @roped = false
        @skip_player = false
    end

    def get_id
        return @id
    end

    def get_biome
        return self.class
    end

    def get_denomination
        return Locale.get_localized(LocaleKey::A_HOLE)
    end

    def allow_entry_for(player)
        if player.get_room.get_biome == TOP_BIOME
            if @roped
                move(player, @bottom)
                return false
            end
            if player.have?(Rope.new)
                Narrator.write(LocaleKey::PREPARE_JUMP)
                if Narrator.ask_confirmation(LocaleKey::ASK_USE_ROPE_HOLE, player.get_name)
                    roped_by(player)
                    move(player, @bottom)
                    return false
                end
            end
            ask_jump(player)
            return false
        end
        if @roped
            move(player, @top)
        else
            Narrator.write(LocaleKey::STUCK_DOWN_HOLE)
            Narrator.pause_text
        end
        return false #otherwise the player gets moved inside the hole biome
    end

    def backtrackable?
        return false
    end

    def acted?
        if @skip_player
            @skip_player = false
            return true
        else
            return false
        end
    end

    private

    def roped_by(player)
        Narrator.write(LocaleKey::ATTACH_ROPE)
        SoundManager.play('paper')
        Game.wait 1
        player.remove_item(Rope.new)
        @roped = true
        @top.set_picture("entrance_roped")
        @bottom.set_picture("cave_roped")
    end

    def move(player, direction)
        player.set_room(direction)
        player.set_entered_room(true)
        Narrator.climb_rope(direction == @bottom)
    end

    def ask_jump(player)
        if Narrator.ask_confirmation(LocaleKey::ASK_JUMP, player.get_name)
            Narrator.jump_hole(player)
            SoundManager.play("swoosh")
            Game.wait
            player.set_room(@bottom)
            player.hurt(Attack.new(100, Attack::FALL_TYPE, nil))
            @skip_player = true
        else
            Narrator.write(LocaleKey::NEVERMIND_HOLE)
        end
    end
end
