class CharacterCreator
    DEFAULT_NAME = "Nameless"

    def initialize()
        @name = DEFAULT_NAME
    end

    def make_character()
        ask_name
        return creation_menu
    end

    private

    def ask_name
        puts "Quel est votre nom ?"
        if (@name != DEFAULT_NAME)
            puts "Nom actuel : #{@name}"
        end
        @name = Narrator.user_input.to_s
    end

    def make_player()
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
            "next_level": 100
        }
    end

    def creation_menu
        ASCIIPrinter.showCard(make_data)
        puts "Est-ce qui vous êtes ?"
        puts "  0) Retour au menu principal"
        puts "  1) Changer de nom"
        puts "  2) Confirmer"
        case Narrator.user_input
        when "0"
            return confirm_quit
        when "1"
            ask_name
            creation_menu
        when "2"
            return make_player
        end
    end

    def confirm_quit
        puts "Êtes-vous sûr de vouloir revenir au menu principal ? (Y/N)"
        puts "Les modifications effectuées ne seront pas sauvegardées."
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
