class OutsideEvents
    GUILD_LEVEL = 20

    def self.play(party)
        outside_shop = Shop.new
        guild = Guild.new
        if party.got_status?(GuildMember)
            ask_destination(party, outside_shop, guild)
        else
            if party.max_level >= GUILD_LEVEL
                if party.size > 1
                    Narrator.guild_invite_party
                else
                    Narrator.guild_invite
                end
                ask_destination(party, outside_shop, guild)
            else
                Narrator.introduction_shop
                for player in party.get_players
                    go_to(player, outside_shop)
                end
            end
        end
    end

    private

    def self.ask_destination(party, outside_shop, guild)
        for player in party.get_players
            destination_is_dungeon = false
            while !destination_is_dungeon
                if (player.get_level >= GUILD_LEVEL) && (!player.has_status?(GuildMember))
                    player.set_status(GuildMember.new)
                end
                Narrator.write(LocaleKey::ASK_OUTSIDE_DESTINATION)
                case Narrator.user_input(player.get_name)
                when '0'
                    destination_is_dungeon = true
                when '1'
                    go_to(player, guild)
                when '2'
                    go_to(player, outside_shop)
                else
                    Narrator.unsupported_choice_error
                end
            end
        end
    end

    def self.go_to(player, building)
        MusicManager.get_instance.set_ambiance(building.get_music)
        building.enter(player)
    end
end
