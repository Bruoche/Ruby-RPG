class Party

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

    def get_players_in(room)
        players_in_room = []
        for player in @players do
            if room == player.get_room
                players_in_room.append(player)
            end
        end
        return players_in_room
    end

    def get_fights
        fights = {}
        for player in @players do
            if (not player.exited?)
                if player.fighting?
                    if (!fights.key?(player.get_room.get_id))
                        fights[player.get_room.get_id] = []
                    end
                    fights[player.get_room.get_id].append(player)
                end
            end
        end
        return fights
    end

    def show_cards
        cards = ASCIIRow.new
        for player in @players do
            cards.append(ASCIIPicture.new(ASCIIPicture.get_card(player.get_save_data)))
        end
        cards.show
    end

    def add_player(player)
        @players.append(player)
    end

    def remove_player
        player_index = Narrator.ask_complex_element(
            "Quel membre de l'équipe supprimer ?",
            @players,
            -> (player, index){
                if player != Narrator::RETURN_BUTTON
                    ASCIIPrinter.show_card(player.get_save_data, index)
                else
                    puts
                    puts "0) Annuler"
                end
            }
        )
        if player_index != Narrator::RETURN_BUTTON
            @players.delete_at(player_index)
        end
    end

    def save_unsaved
        for player in @players
            if player.get_save == nil
                save = SaveManager.save(player.get_save_data)
                player.set_save(save)
            end
        end
    end

    def load
        i = 0
        for player in @players
            @players[i] = Player.new(SaveManager.load(player.get_save), player.get_save)
            i += 1
        end
    end

    def set_room(room)
        for player in @players do
            player.set_room(room)
        end
    end

    def shop
        shop = Shop.new
        for player in @players do
            shop.propose_purchases_to(player)
        end
    end

    def take_turns
        for player in @players do
            if (not player.exited?) && (not player.died?)
                player.act
                if player.just_won_fight?
                    xp_gained = player.get_room.get_monsters.get_xp
                    Narrator.victory_scene(player.get_room.get_monsters.was_plural, xp_gained)
                    for winning_player in get_fights[player.get_room.get_id] do
                        winning_player.stop_fighting
                        winning_player.give_xp(xp_gained)
                    end
                end
            end
        end
    end
end
