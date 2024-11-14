class CharacterCreator
    DEFAULT_NAME = nil

    def initialize
        @name = DEFAULT_NAME
    end

    def make_character
        ask_name
        @picture = PlayerIcon.new
        @picture.customize
        return creation_menu
    end

    private

    def ask_name
        Narrator.ask_name(@name)
        choosen_name = Narrator.user_input.to_s
        if choosen_name == ""
            Narrator.empty_name_error
            return ask_name
        end
        name_pattern = Regexp.new('^[a-zA-ZÀ-ÖØ-öø-ÿ0-9 \-\'"]+$')
        if !(name_pattern.match?(choosen_name))
            Narrator.forbiden_char_error
            return ask_name
        end
        @name = choosen_name
    end

    def make_player
        return Player.new(make_data)
    end

    def make_data
        return {
            "name": @name,
            "health": BaseStats::BASE_HEALTH,
            "strength": BaseStats::BASE_STRENGTH,
            "intelligence": BaseStats::BASE_INTELLIGENCE,
            "agility": BaseStats::BASE_AGILITY,
            "inventory": "",
            "level": 0,
            "current_xp": 0,
            "next_level": 100,
            "picture": @picture.get_save_data
        }
    end

    def creation_menu
        ASCIIPrinter.show_card(make_data)
        Narrator.ask_confirm_character
        case Narrator.user_input
        when "0"
            if Narrator.ask_confirmation([
                "Êtes-vous sûr de vouloir revenir en arrière ? (y/n)",
                "Les modifications effectuées ne seront pas sauvegardées."
            ])
                return nil
            else
                return creation_menu
            end
        when "1"
            ask_name
        when "2"
            @picture.customize
        when "3"
            return make_player
        else
            Narrator.unsupported_choice_error
        end
        creation_menu
    end

    def confirm_quit

        case Narrator.user_input.downcase
        when "y"
            return nil
        when "n"
            return creation_menu
        else
            Narrator.unsupported_choice_error
            confirm_quit
        end
    end

end
