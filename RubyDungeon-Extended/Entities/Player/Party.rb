class Party

    def initialize(players)
        @players = players
    end

    def get_players
        return @players
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

    def max_level
        max_level = 0
        for player in @players do
            if player.get_level > max_level
                max_level = player.get_level
            end
        end
        return max_level
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

    def got_status?(status_class)
        for player in @players do
            if player.have_status?(status_class)
                return true
            end
        end
        return false
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

    def ask_remove_player
        player_index = Narrator.ask_paginated(
            LocaleKey::ASK_PLAYER_REMOVED,
            @players,
            -> (player, index){
                return ASCIIPicture.new(ASCIIPicture.get_card(player.get_save_data, index))
            }
        )
        if player_index != Narrator::RETURN_BUTTON
            player = @players[player_index]
            if player.get_save == SaveManager::NO_EXISTING_SAVEFILE
                if !Narrator.ask_confirmation(format(Locale.get_localized(LocaleKey::CONFIRM_DELETE_CHARACTER), player.get_name))
                    return ask_remove_player
                end
            end
            @players.delete_at(player_index)
        end
    end

    def save
        for player in @players
            save = SaveManager.save_player(player)
            player.set_save(save)
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

    def take_turns
        for player in @players do
            if (not player.exited?) && (not player.died?)
                World.get_instance.set_current_player(player)
                player.act
                finish_fight_if_won(player)
            end
        end
        World.get_instance.set_current_player(World::ENNEMYS_TURN)
    end

    def finish_fight_if_won(player)
        if player.just_won_fight?
            winning_players = get_fights[player.get_room.get_id]
            if player.get_room.get_monsters != nil
                xp_gained = player.get_room.get_monsters.get_xp.div(winning_players.length)
                Narrator.victory_scene(player.get_room.get_monsters.was_plural, xp_gained)
            else
                xp_gained = 0
            end
            for winning_player in winning_players do
                winning_player.stop_fighting
                winning_player.give_xp(xp_gained)
            end
            MusicManager.get_instance.start
        end
    end

    def check_won_fights
        for player in @players do
            finish_fight_if_won(player)
        end
    end
end
