class Party

    ROW_SPAN = 160

    def initialize(players)
        @players = players
    end

    def size
        return @players.length
    end

    def get_level
        level = 0
        for player in @players do
            level += player.get_level
        end
        return level
    end

    def died?
        for player in @players do
            if !player.died?
                return false
            end
        end
        return true
    end

    def exited?
        for player in @players do
            if !player.exited?
                if !player.died?
                    return false
                end
            end
        end
        return true
    end

    def starting?
        for player in @players do
            if player.get_level > 0
                return false
            end
        end
        return true
    end

    def new_members?
        for player in @players do
            if player.get_level == 0
                return true
            end
        end
        return false
    end

    def get_fights
        fights = {}
        for player in @players do
            if (not player.exited?) && (not player.died?)
                if player.fighting?
                    if (!fights.key?(player.room.get_id))
                        fights[player.room.get_id] = []
                    end
                    fights[player.room.get_id].append(player)
                end
            end
        end
        return fights
    end

    def show_cards
        cards = []
        rows = []
        for player in @players do
            for row in rows do
                if row.length > ROW_SPAN
                    cards.append(rows)
                    rows = []
                end
            end
            x = 0
            for line in ASCIIPrinter.get_card(player.get_save_data) do
                if rows[x] == nil
                    rows[x] = ""
                end
                rows[x] += "       " + line
                x += 1
            end
        end
        cards.append(rows)
        for rows in cards do
            for line in rows do
                puts line
            end
        end
    end

    def add_player(player)
        @players.append(player)
    end

    def remove_player
        player_index = Narrator.ask_complex_element(
            "Quel membre de l'équipe supprimer ?",
            @players,
            -> (player, index){
                if player != nil
                    ASCIIPrinter.show_card(player.get_save_data, index)
                else
                    puts
                    puts "0) Annuler"
                end
            }
        )
        if player_index != nil
            @players.delete_at(player_index)
        end
    end

    def set_room(room)
        for player in @players do
            player.set_room(room)
        end
    end

    def take_turns
        for player in @players do
            if (not player.exited?) && (not player.died?)
                player.act
                if player.just_won_fight
                    xp_gained = player.get_room.get_monsters.get_xp
                    Narrator.victory_scene(player.get_room.monsters.was_plural, xp_gained)
                    for winning_player in get_fights{player.room.get_id} do
                        winning_player.stop_fighting
                        winning_player.get_xp(xp_gained)
                    end
                end
            end
        end
    end
end
