class Narrator
    RETURN_BUTTON = "return_button"
    NO_NAME_DISPLAYED = nil

    def self.introduction(party)
        puts
        ASCIIPrinter.print("title")
        puts
        if party.starting?
            puts "Vous n'êtes pas exactement sûr de la raison de votre venue en ce lieu."
            puts "Mais qu'il s'agisse d'une recherche de trésors, de pouvoir ou juste une soif de connaissances,"
            puts "Vous êtes maintenant au pieds d'un donjon antique réputé comme étant sans fond."
            puts
            puts "Armé.e de votre courage et d'une épée, vous entrez dans la grande batisse sombre."
        else
            if party.new_members?
                puts "Après votre précédente expérience dans le donjon,"
                puts "Vous avez décidés de revenir plus nombreux, de nouveaux membres s'ajoutant à votre escouade."
                puts "Ces donjons vous obsèdent, et il vous faut en découvrir les tréfonds, quoi qu'ils ne renferment."
            else
                puts "Malgré que vous ayez survécus au donjon, quelque chose en vous semblait appelé par ce dernier."
                puts "Un besoin d'y retourner et découvrir ce qui se cache plus profondémment, d'en déterrer les trésors et d'en prendre la puissance."
                puts "Vous ouvrez la grande porte de la tour mystérieuse, mais, à votre surprise lorsque vous y pénétrez plus rien n'est pareil qu'avant."
            end
        end
        puts
        ASCIIPrinter.print("dungeon_outside")
        puts
        pause_text
    end

    def self.pause_text
        puts "  (pressez \"Entrée\" pour continuer...)"
        user_input
    end

    def self.describe_monsters_room(player, describe_biome, picture, the_room, monsters_description)
        describe_room(player, describe_biome, picture)
        print "Lorsque vous entrez dans #{the_room}"
        describe_monsters(player, monsters_description)
        describe_allies(player)
    end

    def self.describe_empty_room(player, describe_biome, picture, the_room, female)
        describe_room(player, describe_biome, picture)
        print "Lorsque vous entrez dans #{the_room}, "
        if female
            puts "vous la trouvez complètement vide."
        else
            puts "vous le trouvez complètement vide."
        end
        describe_allies(player)
    end

    def self.describe_current_room(player, describe_biome, picture, a_room, monsters_description)
        describe_room(player, describe_biome, picture)
        print "Vous êtes dans #{a_room}"
        if monsters_description != nil
            describe_monsters(player, monsters_description)
        else
            puts " vide."
        end
        describe_allies(player)
    end

    def self.describe_room(player, describe_biome, picture)
        puts
        ASCIIPrinter.print([picture, ASCIIPicture.get_status(player)])
        puts
        describe_biome.call
        puts
    end

    def self.describe_monsters(player, monsters_description)
        allies_fighting = []
        allies = World.get_instance.get_players_in(player.get_room)
        for ally in allies
            if (ally != player) && (ally.fighting?)
                allies_fighting.append(ally.get_name)
            end
        end
        if (allies_fighting.empty?)
            puts ", vous voyez #{monsters_description}."
        else
            puts ", vous voyez #{Utils.enumerate(allies_fighting)} combattant #{monsters_description}."
        end
    end

    def self.describe_allies(player)
        potential_allies = World.get_instance.get_players_in(player.get_room)
        allies = []
        dead_allies = []
        for ally in potential_allies
            if (ally != player) && (!ally.fighting?)
                if ally.died?
                    dead_allies.append(ally.get_name)
                else
                    allies.append(ally.get_name)
                end
            end
        end
        if allies.empty?
            if dead_allies.length == 1
                puts "Le corps de #{dead_allies[0]} gie sur le sol."
            elsif dead_allies.length > 1
                puts "Les corps de #{Utils.enumerate(dead_allies)} gient sur le sol."
            end
        else
            if allies.length == 1
                print "A vos cotés se trouve #{allies[0]}"
            elsif allies.length > 1
                print "A vos cotés se trouvent #{Utils.enumerate(allies)}"
            end
            if dead_allies.empty?
                puts "."
            elsif dead_allies.length == 1
                puts "et le corps de #{dead_allies[0]}."
            else
                puts "et les corps de #{Utils.enumerate(dead_allies)}."
            end
        end
    end

    def self.start_fight(plural)
        puts
        if plural
            puts "Vous vous jettez sur les monstres se tenant face à vous."
        else
            puts "Vous vous jettez sur le monstre se tenant face à vous."
        end
    end

    def self.avoid_fight(the_monsters)
        puts
        puts "Ne souhaitant pas combattre #{the_monsters}, vous faites profil bas."
    end

    def self.fail_sneak(plural)
        puts
        if plural
            puts "Alors que vous tentez d'éviter les monstres, ceux-ci vous remarquent et se jettent sur vous."
        else
            puts "Alors que vous tentez d'éviter le monstre, celui-ci vous remarque et se jette sur vous."
        end
    end

    def self.death_scene(plural)
        puts
        if plural
            puts "Malheureusement, l'attaque des monstres a raison de vous, et vous vous effondrez au sol."
        else
            puts "Malheureusement, l'attaque du monstre a raison de vous, et vous vous effondrez au sol."
        end
    end

    def self.escape_scene
        puts "Ce combat ne valant plus la peine pour vous, vous vous échappez."
    end

    def self.fail_escape(plural)
        if plural
            puts "Vous tentez de vous échapper, mais les monstres ne vous laissent pas faire."
        else
            puts "Vous tentez de vous échapper, mais le monstre ne vous laisse pas faire."
        end
    end

    def self.victory_scene(was_plural, xp)
        puts
        if was_plural
            puts "Victoire ! Tout les monstres sont morts et vous obtenez #{xp} points d'expérience."
        else
            puts "Victoire ! Le monstre meurt et vous laisse #{xp} points d'expérience."
        end
    end

    def self.sneaking_transition
        puts "Vous reprenez votre exploration du donjon."
    end

    def self.ask(question, options, to_string, player_name = NO_NAME_DISPLAYED, return_option = Narrator::RETURN_BUTTON)
        ask_general(question, options, to_string, return_option,
            -> (element, i, to_string) {puts "      #{i}) #{to_string.call(element).capitalize}"},
            player_name
        )
    end

    def self.ask_complex_element(question, options, print, player_name = NO_NAME_DISPLAYED, return_option = Narrator::RETURN_BUTTON)
        ask_general(question, options, print, return_option,
            -> (element, i, print) {print.call(element, i)},
            player_name
        )
    end

    def self.confirm_save
        puts "Souhaitez-vous sauvegarder sur une copie du personnage actuel ? (Y/N)"
        choice = Narrator.user_input.downcase
        if choice == "y"
            return true
        elsif choice == "n"
            return false
        else
            Narrator.unsupported_choice_error
            return confirm_save
        end
    end

    def self.ask_if_fight(escape_chances, player_name)
        puts "Que voulez-vous faire ?"
        puts "      1) Combattre"
        puts "      2) Rester discret (#{escape_chances}% de chances de réussite)"
        return user_input(player_name)
    end

    def self.ask_fight_action(player, monsters_description, escape_chances)
        player.get_room.get_monster_cards.show
        battle_cards = ASCIIRow.new
        for ally in World.get_instance.get_players_in(player.get_room)
            if ally.fighting?
                battle_card = ASCIIPicture.new(ASCIIPicture.battle_card(ally))
                if ally == player
                    battle_card.frame(ASCIIPicture::IMPORTANT_HORIZONTAL_FRAME, ASCIIPicture::IMPORTANT_VERTICAL_FRAME, ASCIIPicture::IMPORTANT_CORNER_PIECE)
                else
                    if ally.died?
                        battle_card.frame(ASCIIPicture::DEAD_HORIZONTAL_FRAME, ASCIIPicture::DEAD_VERTICAL_FRAME)
                    else
                        battle_card.frame
                    end
                end
                battle_cards.append(battle_card)
            end
        end
        battle_cards.show
        puts "Vous faites face à #{monsters_description}."
        puts
        puts "Que voulez-vous faire ?"
        puts "      1) Attaque physique"
        puts "      2) Attaque magique"
        puts "      3) Sort de soin"
        puts "      4) Utiliser un objet..."
        puts "      5) Fuir... (#{escape_chances}% de chances de réussite)"
        return user_input(player.get_name)
    end

    def self.ask_continue
        puts "Réessayer ?"
        puts "      1) Oui"
        puts "      2) Non"
        return user_input
    end

    def self.ask_confirmation(question)
        if !question.kind_of?(Array)
            question = [question]
        end
        for line in question
            puts line
        end
        case Narrator.user_input.downcase
        when "y"
            return true
        when "n"
            return false
        else
            Narrator.unsupported_choice_error
            return self.ask_confirmation
        end
    end

    def self.unsupported_choice_error
        puts
        puts "Choix invalide, Veuillez simplement écrire le chiffre correspondant à une des options proposées."
    end

    def self.user_input(name = NO_NAME_DISPLAYED)
        puts
        if name != NO_NAME_DISPLAYED
            name_prefix = name + " : "
        else
            name_prefix = ""
        end
        print "  #{name_prefix}>> "
        answer = gets.chomp
        40.times do
            puts
        end
        return answer
    end

    private

    def self.ask_general(question, options, to_string, return_option, print_operation, player_name = NO_NAME_DISPLAYED)
        if options.is_a? Hash
            return ask_hash(question, options, to_string, return_option, print_operation)
        end
        options = [return_option].concat options
        loop do
            puts question
            for i in 0..(options.length - 1)
                print_operation.call(options[i], i, to_string)
            end
            input = user_input(player_name).to_i
            if input.between?(1, options.length - 1)
                return input - 1
            elsif input == 0
                return return_option
            else
                unsupported_choice_error
            end
        end
    end

    def self.ask_hash(question, hash, to_string, return_option, print_operation, player_name = NO_NAME_DISPLAYED)
        options = [return_option].concat hash.keys
        loop do
            puts question
            for i in 0..(options.length - 1)
                print_operation.call(options[i], i, to_string)
            end
            input = user_input(player_name).to_i
            if input.between?(1, options.length - 1)
                return options[input]
            elsif input == 0
                return return_option
            else
                unsupported_choice_error
            end
        end
    end
end
