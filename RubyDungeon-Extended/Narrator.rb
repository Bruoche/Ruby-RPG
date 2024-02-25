class Narrator
    def self.introduction
        puts
        ASCIIPrinter.print("title")
        puts
        puts "Vous n'êtes pas exactement sûr de la raison de votre venue en ce lieu."
        puts "Mais qu'il s'agisse d'une recherche de trésors, de pouvoir ou juste une soif de connaissances,"
        puts "Vous êtes maintenant au pieds d'un donjon antique réputé comme étant sans fond."
        puts
        puts "Armé.e de votre courage et d'une épée, vous entrez dans la grande batisse sombre."
        puts
        ASCIIPrinter.print("dungeon_outside")
        puts
        pause_text
    end

    def self.introduction_return
        puts
        ASCIIPrinter.print("title")
        puts
        puts "Malgré que vous ayez survécus au donjon, quelque chose en vous semblait appelé par ce dernier."
        puts "Un besoin d'y retourner et découvrir ce qui se cache plus profondémment, d'en déterrer les trésors et d'en prendre la puissance."
        puts "Vous ouvrez la grande porte de la tour mystérieuse, mais, à votre surprise lorsque vous y pénétrez, plus rien n'est pareil qu'avant."
        puts
        ASCIIPrinter.print("dungeon_outside")
        puts
        pause_text
    end

    def self.pause_text
        puts "  (pressez \"Entrée\" pour continuer...)"
        user_input
    end

    def self.describe_monsters_room(player_status, describe_biome, picture, the_room, monsters_description)
        describe_room(player_status, describe_biome, picture)
        print "Lorsque vous entrez dans #{the_room}, "
        puts "vous voyez #{monsters_description}."
    end

    def self.describe_empty_room(player_status, describe_biome, picture, the_room, is_female)
        describe_room(player_status, describe_biome, picture)
        print "Lorsque vous entrez dans #{the_room}, "
        if is_female
            puts "vous la trouvez complètement vide."
        else
            puts "vous le trouvez complètement vide."
        end
    end

    def self.describe_current_room(player_status, describe_biome, picture, a_room, monsters_description)
        describe_room(player_status, describe_biome, picture)
        print "Vous êtes dans #{a_room}"
        if monsters_description != nil
            puts ", vous voyez #{monsters_description}"
        else
            puts " vide."
        end
    end

    def self.describe_room(player_status, describe_biome, picture)
        puts
        puts player_status
        puts
        ASCIIPrinter.print(picture)
        puts
        describe_biome.call
        puts
    end

    def self.start_fight(is_plural)
        puts
        if (is_plural)
            puts "Vous vous jettez sur les monstres se tenant face à vous."
        else
            puts "Vous vous jettez sur le monstre se tenant face à vous."
        end
    end

    def self.avoid_fight(the_monsters)
        puts
        puts "Ne souhaitant pas combattre #{the_monsters}, vous faites profil bas."
    end

    def self.fail_sneak(is_plural)
        puts
        if (is_plural)
            puts "Alors que vous tentez d'éviter les monstres, ceux-ci vous remarquent et se jettent sur vous."
        else
            puts "Alors que vous tentez d'éviter le monstre, celui-ci vous remarque et se jette sur vous."
        end
    end

    def self.death_scene(is_plural)
        puts
        if (is_plural)
            puts "Malheureusement, l'attaque des monstres a raison de vous, et vous vous effondrez au sol."
        else
            puts "Malheureusement, l'attaque du monstre a raison de vous, et vous vous effondrez au sol."
        end
    end

    def self.escape_scene()
        puts "Ce combat ne valant plus la peine pour vous, vous vous échappez."
    end

    def self.fail_escape(is_plural)
        if is_plural
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

    def self.sneaking_transition()
        puts "Vous reprenez votre exploration du donjon."
    end

    def self.ask(question, options, to_string, return_option = nil)
        options = [return_option].concat options
        loop do
            puts question
            for i in 0..(options.length - 1)
                puts "      #{i}) #{to_string.call(options[i]).capitalize}"
            end
            input = user_input.to_i
            if input.between?(1, options.length - 1)
                return input - 1
            elsif input == 0
                return return_option
            else
                unsupported_choice_error
            end
        end
    end

    def self.ask_if_fight(escape_chances)
        puts "Que voulez-vous faire ?"
        puts "      1) Combattre"
        puts "      2) Rester discret (#{escape_chances}% de chances de réussite)"
        return user_input
    end

    def self.ask_fight_action(player_status, monsters_description, escape_chances)
        puts
        puts player_status
        puts "Vous faites face à #{monsters_description}."
        puts
        puts "Que voulez-vous faire ?"
        puts "      1) Attaque physique"
        puts "      2) Attaque magique"
        puts "      3) Sort de soin"
        puts "      4) Utiliser un objet..."
        puts "      5) Fuir... (#{escape_chances}% de chances de réussite)"
        return user_input
    end

    def self.ask_continue()
        puts "Réessayer ?"
        puts "      1) Oui"
        puts "      2) Non"
        return user_input
    end

    def self.unsupported_choice_error()
        puts
        puts "Choix invalide, Veuillez simplement écrire le chiffre correspondant à une des options proposées."
    end

    def self.user_input()
        puts
        print "  >> "
        answer = gets.chomp
        40.times do
            puts
        end
        return answer
    end
end
