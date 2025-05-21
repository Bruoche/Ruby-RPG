class Guild
    def initialize
        @shop = GuildShop.new
        @forge = GuildForge.new
    end

    def enter(player)
        Narrator.describe_guild
        Narrator.write(LocaleKey::ASK_GUILD_ACTION)
        case Narrator.user_input(player.get_name)
        when "0"
            return
        when "1"
            @forge.enter(player)
        when "2"
            @shop.enter(player)
        else
            Narrator.unsupported_choice_error
        end
        enter(player)
    end

    def get_music
        return 'Adventurers Waltz'
    end
end
