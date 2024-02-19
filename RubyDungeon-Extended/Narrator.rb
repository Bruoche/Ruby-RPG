class Narrator
    def self.introduction
        puts
        puts "          DEBUT DU JEU"
        puts
        puts "Vous n'êtes pas exactement sûrs de la raison de votre venue en ce lieu."
        puts "Mais qu'il s'agisse d'une recherche de trésors, de pouvoir ou juste une soif de connaissances,"
        puts "Vous êtes maintenant au pieds d'un donjon antique réputé comme étant sans fond."
        puts
        puts "Armé.e de votre courage et d'une épée, vous entrez dans la grande batisse sombre."
        puts
        puts "  (pressez \"Entrée\" pour continuer...)"
        user_input
    end

    def self.describe_room(player_status, the_room, monsters_description, spot_risk, describe_biome)
        puts
        puts player_status
        puts
        describe_biome.call
        puts
        puts "Lorsque vous entrez dans #{the_room}, vous voyez #{monsters_description}."
        puts "Chances d'être détecté : #{spot_risk}\%"
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
        puts "Ne souhaitant pas combattre #{the_monsters}, vous avancez discretement vers la suite du donjon."
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
        puts "Vous continuez votre route dans le donjon et avancez vers la pièce suivante."
    end

    def self.ask_if_fight()
        puts "Que voulez-vous faire ?"
        puts "      1) Combattre"
        puts "      2) Fuir"
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
        puts "      3) Se soigner"
        puts "      4) Fuir... (#{escape_chances}% de chances de s'échapper)"
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
