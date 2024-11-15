class Narrator
    RETURN_BUTTON = "return_button"
    NO_NAME_DISPLAYED = nil

    def self.add_space_of(height)
        height.times do
            puts
        end
    end

    def self.write(text)
        if text.kind_of?(Array)
            puts text
        else
            puts Locale.get_localized(text)
        end
    end

    def self.write_same_line(text)
        print text
    end

    def self.warning_pop_up
        Narrator.write([
            "",
            "Attention :",
            "Mourrir dans ce jeu perdra toute votre progression en cours dans le donjon.",
            "Sortez du donjon pour sauvegarder votre progression.",
            "",
            "Info sur le terminal :",
            "Presser [Ctrl + C] fermera le jeu.",
            "Presser [Alt + Entrée] met le jeu en plein écran.",
            "",
            "1) Ok",
            "2) Ne plus me le rappeler"
        ])
    end

    def self.main_menu_options
        Narrator.write(Locale::KEY_MAIN_MENU_OPTIONS)
    end

    def self.select_characters_options(party)
        Narrator.write("Aventuriers entrant dans le donjon : ")
        party.show_cards
        Narrator.write([
            "",
            "",
            "0) Retour",
            "1) Ajouter un membre à l'équipe"
        ])
    end

    def self.remove_party_member_option
        Narrator.write("2) Retirer un membre de l'équipe")
    end

    def self.start_travel_option(index)
        Narrator.write("#{index}) Commencer le voyage")
    end

    def self.new_or_old_character
        Narrator.write([
            "0) Retour",
            "1) Nouveau personnage",
            "2) Personnage existant"
        ])
    end

    def self.character_creation_options
        Narrator.write([
            "Quel élément souhaitez-vous modifier ?",
            "0) Valider l'apparence",
            "1) Complexion",
            "2) Corpulence",
            "3) Couleur des yeux",
            "4) Les oreilles",
            "5) Le nez",
            "6) Les sourcils",
            "7) Pilosité faciale",
            "8) Les cheveux"
        ])
    end

    def self.beard_options
        Narrator.write([
            "Quel élément souhaitez-vous modifier ?",
            "0) Retour...",
            "1) La moustache",
            "2) Le menton",
            "3) Les pattes",
            "4) La couleur"
        ])
    end

    def self.hair_options
        Narrator.write([
            "Quel élément souhaitez-vous modifier ?",
            "0) Retour...",
            "1) La coupe",
            "2) La couleur"
        ])
    end

    def self.hairstyle_options
        Narrator.write([
            "Quel portion de votre coupe de cheveux souhaitez-vous modifier ?",
            "0) Retour...",
            "1) L'avant",
            "2) L'arrière"
        ])
    end

    def self.options_selection
        Narrator.write([
            "Que souhaitez-vous faire ?",
            "    0) Retour...",
            "    1) Modifier la hauteur des images",
            "    2) Modifier l'audio"
        ])
    end

    def self.asset_size_verification_line
        Narrator.write("Si vous voyez ce texte les images ont une taille acceptable.")
    end

    def self.sound_options
        Narrator.write("Volume de musique : #{Settings.music_volume}%")
        Narrator.add_space_of(1)
        Narrator.write("Effets sonores : #{Settings.sound_effects ? "Oui" : "Non"}")
        add_space_of(3)
        Narrator.write([
            "Que souhaitez-vous faire ?",
            "    0) Retour...",
            "    1) Modifier le volume de la musique",
            "    2) Activier/Désactiver les effets sonores"
        ])
    end

    def self.asset_size_options
        Narrator.write([
            "Vérifiez que le texte au-dessus de l'image est bien lisible sans nécessiter un scroll vers le haut.",
            "Si tel est le cas, alors votre taille d'image est bonne pour votre taille d'écran.",
            "",
            "Autrement, tentez de mettre les images en petites tailles,",
            "ou de réduire la taille de police du texte de votre terminal si cela ne suffit pas.",
            "",
            "Quelle taille d'image souhaitez-vous ?",
            "0) Retour",
            "1) Grande (recommandée)",
            "2) Petite"
        ])
    end

    def self.current_equipment_title
        Narrator.write("Equipement actuel : ")
    end

    def self.equipment_options(wear_equipment)
        Narrator.write([
            "Que voulez-vous faire ?",
            "    0) Retour",
            "    1) Equiper une nouvelle pièce d'armure"
        ])
        if wear_equipment
            Narrator.write("    2) Retirer une pièce d'armure")
        end
    end

    def self.inventory_options
        Narrator.write([
            "",
            "Que souhaitez-vous faire ?",
            "      0) Retour",
            "      1) Utiliser un objet",
            "      2) Gérer l'equipement"
        ])
    end

    def self.shop_inventory_options
        Narrator.write([
            "",
            "Que voulez-vous faire ?",
            "    0) Retour...",
            "    1) Gérer l'équipement"
        ])
    end

    def self.player_options(room_name)
        Narrator.write([
            "Que souhaitez-vous faire?",
            "      1) Aller à..."
        ])
        Narrator.write("      2) Fouiller #{room_name}")
        Narrator.write([
            "      3) Faire un inventaire",
            "      4) Attendre"
        ])
    end

    def self.player_option_fight(monster_denomination)
        Narrator.write("      5) Attaquer #{@player.get_room.get_monsters_plural_the}")
    end

    def self.stat_options(
        current_stat, total_stats,
        current_life, life_increase,
        current_strength, strength_increase,
        current_intelligence, intelligence_increase,
        current_agility, agility_increase)
        Narrator.write("Quelle statistique souhaitez-vous augmenter ? (#{current_stat}/#{total_stats})")
        Narrator.write("1) ♥ Vie            (#{current_life} -> #{current_life + life_increase})")
        Narrator.write("2) ♣ Force          (#{current_strength} -> #{current_strength + strength_increase})")
        Narrator.write("3) ♠ Intelligence   (#{current_intelligence} -> #{current_intelligence + intelligence_increase})")
        Narrator.write("4) ♦ Agilité        (#{current_agility} -> #{current_agility + agility_increase})")
    end

    def self.teleporter_ask_destination
        Narrator.write([
            "Où souhaitez vous aller ?",
            "    0) Annuler",
            "    1) La sortie"
        ])
    end

    def self.teleporter_ask_destination_allies(index, ally_name)
        Narrator.write("    #{index}) Rejoindre #{ally_name}")
    end

    def self.yes_or_no
        Narrator.write([
            "1) Oui",
            "2) Non"
        ])
    end

    def self.no_items_to_use
        Narrator.write("Vous n'avez pas d'objets à utiliser.")
    end

    def self.no_items_to_sell
        Narrator.write("Aucun objet à vendre")
    end

    def self.item_possessed_title
        Narrator.write("Vous possédez : ")
    end

    def self.list(thing)
        Narrator.write("    - " + thing.capitalize)
    end

    def self.introduction_shop
        Narrator.write([
            "",
            "Sur votre chemin vers le donjon,",
            "Vous décidez de faire une courte halte auprès d'une échoppe pour voir les équipements que vous pourriez employer, anticipant ce qui vous attend.",
            ""
        ])
        pause_text
    end

    def self.introduction(party)
        Narrator.add_space_of(1)
        ASCIIPrinter.print("title")
        Narrator.add_space_of(1)
        if party.starting?
            Narrator.write([
                "Vous n'êtes pas exactement sûr de la raison de votre venue en ce lieu.",
                "Mais qu'il s'agisse d'une recherche de trésors, de pouvoir ou juste une soif de connaissances,",
                "Vous êtes maintenant au pieds d'un donjon antique réputé comme étant sans fond.",
                "",
                "Armé.e de votre courage et d'une épée, vous entrez dans la grande batisse sombre."
            ])
        else
            if party.new_members?
                Narrator.write([
                    "Après votre précédente expérience dans le donjon,",
                    "Vous avez décidés de revenir plus nombreux, de nouveaux membres s'ajoutant à votre escouade.",
                    "Ces donjons vous obsèdent, et il vous faut en découvrir les tréfonds, quoi qu'ils ne renferment."
                ])
            else
                Narrator.write([
                    "Malgré que vous ayez survécus au donjon, quelque chose en vous semblait appelé par ce dernier.",
                    "Un besoin d'y retourner et découvrir ce qui se cache plus profondémment, d'en déterrer les trésors et d'en prendre la puissance.",
                    "Vous ouvrez la grande porte de la tour mystérieuse, mais, à votre surprise lorsque vous y pénétrez plus rien n'est pareil qu'avant."
                ])
            end
        end
        Narrator.add_space_of(1)
        ASCIIPrinter.print("dungeon_outside")
        Narrator.add_space_of(1)
        pause_text
    end

    def self.thank_for_playing
        Narrator.write([
            "Vous ouvrez le petit papier soigneusement plié, et en lisez le contenu : ",
            "",
            "",
            "      Félicitation !",
            "    Vous avez terminé la démo de Ruby Dungeon et battu son boss.",
            "    J'éspère sincérement que vous avez aimé mon jeu, et vous remercie d'avoir joué jusqu'au bout.",
            "",
            "     Libre à vous de faire ce que bon vous semble dans les donjons maintenant, il n'y a pas de secrets supplémentaires à trouver.",
            "   Le jeu complet sortira, j'espère, d'ici quelques mois et votre sauvegarde sera toujours compatible avec ce dernier.",
            "   (il faudra simplement que vous mettiez le dossier \"save\" dans les dossiers du jeu complet quand il sortira).",
            "",
            "     En espérant que ça ne soit qu'un Au revoir,",
            "       - Bruoche",
            ""
        ])
    end

    def self.pause_text
        Narrator.write("  (pressez \"Entrée\" pour continuer...)")
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
            Narrator.write("vous la trouvez complètement vide.")
        else
            Narrator.write("vous le trouvez complètement vide.")
        end
        describe_allies(player)
    end

    def self.describe_current_room(player, describe_biome, picture, a_room, monsters_description)
        describe_room(player, describe_biome, picture)
        print "Vous êtes dans #{a_room}"
        if monsters_description != nil
            describe_monsters(player, monsters_description)
        else
            Narrator.write(" vide.")
        end
        describe_allies(player)
    end

    def self.describe_room(player, describe_biome, picture)
        Narrator.add_space_of(1)
        ASCIIPrinter.print([picture, ASCIIPicture.get_status(player)])
        Narrator.add_space_of(1)
        describe_biome.call
        Narrator.add_space_of(1)
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
            Narrator.write(", vous voyez #{monsters_description}.")
        else
            Narrator.write(", vous voyez #{Utils.enumerate(allies_fighting)} combattant #{monsters_description}.")
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
                Narrator.write("Le corps de #{dead_allies[0]} gie sur le sol.")
            elsif dead_allies.length > 1
                Narrator.write("Les corps de #{Utils.enumerate(dead_allies)} gient sur le sol.")
            end
        else
            if allies.length == 1
                print "A vos cotés se trouve #{allies[0]}"
            elsif allies.length > 1
                print "A vos cotés se trouvent #{Utils.enumerate(allies)}"
            end
            if dead_allies.empty?
                Narrator.write(".")
            elsif dead_allies.length == 1
                Narrator.write("et le corps de #{dead_allies[0]}.")
            else
                Narrator.write("et les corps de #{Utils.enumerate(dead_allies)}.")
            end
        end
    end

    def self.start_fight(plural)
        Narrator.add_space_of(1)
        if plural
            Narrator.write("Vous vous jettez sur les monstres se tenant face à vous.")
        else
            Narrator.write("Vous vous jettez sur le monstre se tenant face à vous.")
        end
    end

    def self.avoid_fight(the_monsters)
        Narrator.add_space_of(1)
        Narrator.write("Ne souhaitant pas combattre #{the_monsters}, vous faites profil bas.")
    end

    def self.fail_sneak(plural)
        Narrator.add_space_of(1)
        if plural
            Narrator.write("Alors que vous tentez d'éviter les monstres, ceux-ci vous remarquent et se jettent sur vous.")
        else
            Narrator.write("Alors que vous tentez d'éviter le monstre, celui-ci vous remarque et se jette sur vous.")
        end
    end

    def self.death_scene(plural)
        Narrator.add_space_of(1)
        if plural
            Narrator.write("Malheureusement, l'attaque des monstres a raison de vous, et vous vous effondrez au sol.")
        else
            Narrator.write("Malheureusement, l'attaque du monstre a raison de vous, et vous vous effondrez au sol.")
        end
    end

    def self.escape_scene
        Narrator.write("Ce combat ne valant plus la peine pour vous, vous vous échappez.")
    end

    def self.fail_escape(plural)
        if plural
            Narrator.write("Vous tentez de vous échapper, mais les monstres ne vous laissent pas faire.")
        else
            Narrator.write("Vous tentez de vous échapper, mais le monstre ne vous laisse pas faire.")
        end
    end

    def self.victory_scene(was_plural, xp)
        Narrator.add_space_of(1)
        if was_plural
            Narrator.write("Victoire ! Tout les monstres sont morts et vous obtenez #{xp} points d'expérience.")
        else
            Narrator.write("Victoire ! Le monstre meurt et vous laisse #{xp} points d'expérience.")
        end
    end

    def self.sneaking_transition
        Narrator.write("Vous reprenez votre exploration du donjon.")
    end

    def self.exit_dungeon(did_nothing)
        if (did_nothing)
            print "Trop effrayé.e par les terreurs du donjon, "
        else
            print "En ayant terminé avec le donjon, "
        end
        Narrator.write([
            "Vous quittez l'étrange batisse.",
            "Vous avez survécu.",
            ""
        ])
    end

    def self.hurt(denomination, damage)
        Narrator.write("#{denomination.capitalize} prend #{damage} dégats.")
    end

    def self.detailed_hurt(denomination, damage_taken, damage, dodge_score, defense_text)
        Narrator.write("#{denomination.capitalize} prend #{damage_taken} dégats. (#{damage} reçu, #{dodge_score} esquivé#{defense_text})")
    end

    def self.heal(denomination, amount)
        Narrator.write("#{denomination.capitalize} récupère #{amount} points de vie.")
    end

    def self.dont_need_heal(denomination)
        Narrator.write("#{denomination.capitalize} n'est pas blessé.e et n'a donc pas besoin d'être soigné.e.")
    end

    def self.heal_spell_fail
        Narrator.write("Vous ne savez pas comment vous soigner.")
    end

    def self.heal_spell_cast(denomination, target)
        Narrator.write("#{denomination.capitalize} soigne #{target}.")
    end

    def self.self_heal(denomination, amount)
        Narrator.write("#{denomination.capitalize} se soigne #{amount} points de vie.")
    end

    def self.player_spell_fail
        Narrator.write("Dépourvu de puissance magique, vous ne parvenez pas à lancer de sorts.")
    end

    def self.player_spell_cast(denomination)
        Narrator.write("#{denomination.capitalize} lance une attaque magique.")
    end

    def self.monster_death(denomination)
        Narrator.write("#{denomination.capitalize} s'effondre sous vos coups.")
    end

    def self.player_death(denomination)
        Narrator.write("#{denomination.capitalize} s'éffondre au sol.")
    end

    def self.obtain_item(denomination, item_name)
        Narrator.write("#{denomination.capitalize} obtiens #{item_name}.")
    end

    def self.remove_armor(denomination, item_name)
        Narrator.write("#{denomination.capitalize} retire #{item_name}.")
    end

    def self.equip_armor(denomination, item_name)
        Narrator.write("#{denomination.capitalize} s'équipe d'#{item_name}.")
    end

    def self.searching(room_name)
        print "Vous fouillez #{room_name} pour tout objet pouvant vous être utile"
    end

    def self.everything_taken_already(denomination)
        Narrator.write("Vous avez déjà pris tout les objets à prendre dans #{denomination}.")
    end

    def self.nothing_found
        Narrator.write("Vous ne trouvez rien de valeur.")
    end

    def self.level_up
        Narrator.write("Niveau supérieur !")
    end

    def self.unknown_use
        Narrator.write("Vous ne savez pas comment utiliser cet objet...")
    end

    def self.bandage_use_self(user_name)
        Narrator.write("#{user_name.capitalize} utilise ses bandages pour soigner ses blessures...")
    end

    def self.bandage_use_other(user_name, target_name)
        Narrator.write("#{user_name.capitalize} utilise des bandages pour soigner les blessures de #{target_name}...")
    end

    def self.toss_coin
        print "Vous lancez la pièce dans les airs"
    end

    def self.coin_toss_suspense
        print "La pièce retombe et roule sur elle-même avant de se stabiliser"
    end

    def self.coin_toss(result)
        Narrator.write("La pièce est tombée sur #{result}.")
    end

    def self.health_potion_use_self(user_name)
        Narrator.write("#{user_name.capitalize} bois une potion de soin...")
    end

    def self.health_potion_use_other(user_name, target_name)
        Narrator.write("#{user_name.capitalize} donne une potion de soin à #{target_name}...")
    end

    def self.teleporter_fail
        Narrator.write("Alors que vous tentez d'aggriper l'artéfact pour vous échapper, vos adversaires vous en empêchent.")
    end

    def self.teleporter_start
        Narrator.write("Lorsque vous prenez la pierre en votre main, une douce chaleur en émane.")
        Narrator.add_space_of(1)
    end

    def self.knight_slash
        Narrator.write("Le chevalier assène un coup d'épée puissant avec l'objectif de trancher son ennemi.")
    end

    def self.knight_limb_loss(limb_name)
        Narrator.write("#{limb_name.capitalize} se brise sous vos coups.")
    end

    def self.knight_change_weapon_side(boss_name)
        Narrator.write("#{boss_name.capitalize} change son arme de main.")
    end

    def self.knight_phase_change
        Narrator.write("Il semble être pris d'une résolution soudaine et insoupsonnée.")
    end

    def self.knight_defenseless(boss_name)
        Narrator.write("#{boss_name.capitalize} laisse son arme tomber au sol, impuissant.")
    end

    def self.knight_death1(boss_name)
        Narrator.write([
            "Le casque #{boss_name} s'enfonce sous vos coups,",
            "Sous la pression du métal contre son crâne, un craquement sinistre résonne en son coeur."
        ])
    end

    def self.knight_death2
        Narrator.add_space_of(1)
        Narrator.write("Le chevalier reste immobile quelques instants, avant de s'effondrer soudainement.")
    end

    def self.show_player_battle_cards(player)
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
    end

    def self.put_scrollbar(scroll_bar, current_page, nb_pages)
        Narrator.write(scroll_bar)
        Narrator.write("Page #{current_page + 1}/#{nb_pages}")
    end

    def self.ask_name(current_name)
        Narrator.write("Quel est votre nom ?")
        if (current_name != CharacterCreator::DEFAULT_NAME)
            Narrator.write("Nom actuel : #{current_name}")
        end
    end

    def self.ask_confirm_character
        Narrator.write([
            "Est-ce qui vous êtes ?",
            "  0) Annuler la création du personnage",
            "  1) Changer de nom",
            "  2) Changer d'apparence",
            "  3) Confirmer"
        ])
    end

    def self.ask_play_again
        loop do
            Narrator.write([
                "Que souhaitez-vous faire?",
                "    a) Retourner au magasin",
                "    b) Partir au menu principal"
            ])
            case Narrator.user_input.capitalize
            when "A"
                return true
            when "B"
                return false
            else
                Narrator.unsupported_choice_error
            end
        end
    end

    def self.ask_desired_volume
        Narrator.write("Quel volume souhaitez-vous ? (volume actuel : #{Settings.music_volume}%)")
    end

    def self.ask_if_sound_effects
        Narrator.write([
            "Souhaitez-vous des effets sonores ?",
            "    0) Retour...",
            "    1) Oui",
            "    2) Non"
        ])
    end

    def self.usage_options(item_name, usage_text)
        Narrator.write("Que souhaitez faire avec #{item_name} ?")
        Narrator.write("0) Annuler...")
        Narrator.write("1) #{usage_text}")
        Narrator.write("2) Donner")
    end

    def self.ask_quantity_given(item_name)
        Narrator.write("Combien de #{item_name} souhaitez-vous donner ?")
    end

    def self.ask_quantity_sold(item_name)
        Narrator.write("Combien de #{item_name} souhaitez-vous vendre ?")
    end

    def self.ask_if_fight(escape_chances, player_name)
        Narrator.write([
            "Que voulez-vous faire ?",
            "      1) Combattre"
        ])
        Narrator.write("      2) Rester discret (#{escape_chances}% de chances de réussite)")
        return user_input(player_name)
    end

    def self.ask_fight_action(player, monsters_description, escape_chances)
        monster_cards_pages = player.get_room.get_monster_cards
        loop do
            monster_cards_pages.show(25)
            Narrator.add_space_of(1)
            show_player_battle_cards(player)
            Narrator.write("Vous faites face à #{monsters_description}.")
            Narrator.add_space_of(1)
            Narrator.write([
                "Que voulez-vous faire ?",
                "      1) Attaque physique",
                "      2) Attaque magique",
                "      3) Sort de soin",
                "      4) Utiliser un objet..."
            ])
            Narrator.write("      5) Fuir... (#{escape_chances}% de chances de réussite)")
            input = user_input(player.get_name)
            case input
            when "1"
                return player.get_room.get_monsters.hurt_single(player.strength_attack)
            when "2"
                player.get_room.get_monsters.hurt_magic(player.magic_attack)
                return Player::ACTED
            when "3"
                return player.heal_spell
            when "4"
                return player.use_item
            when "5"
                if player.can_escape?(player.get_room.get_monsters.get_current_power)
                    escape_scene
                    return player.escape
                else
                    fail_escape(player.get_room.get_monsters.plural?)
                    return Player::ACTED
                end
            else
                if input.capitalize == "A"
                    monster_cards_pages.page_down
                elsif input.capitalize == "Z"
                    monster_cards_pages.page_up
                else
                    unsupported_choice_error
                end
            end
        end
    end

    def self.ask_continue
        Narrator.write([
            "Réessayer ?",
            "      1) Oui",
            "      2) Non"
        ])
        return user_input
    end

    def self.ask_armor_replacement_confirmation(armor_name)
        Narrator.write("Êtes-vous sûr de vouloir remplacer votre armure actuelle par #{armor_name} ? (y/n)")
    end

    def self.ask_confirmation(question)
        if !question.kind_of?(Array)
            question = [question]
        end
        for line in question
            Narrator.write(line)
        end
        case Narrator.user_input.downcase
        when "y"
            return true
        when "n"
            return false
        else
            Narrator.unsupported_choice_error
            return self.ask_confirmation(question)
        end
    end

    def self.unsupported_choice_error
        Narrator.add_space_of(1)
        Narrator.write("Choix invalide, Veuillez simplement écrire le chiffre correspondant à une des options proposées.")
    end

    def self.page_up_impossible_error
        Narrator.write("Impossible de passer à la page suivante. Page maximale atteinte.")
    end

    def self.page_down_impossible_error
        Narrator.write("Impossible de passer à la page précédente. Page minimale atteinte.")
    end

    def self.empty_name_error
        Narrator.write("Le nom ne peux être vide.")
    end

    def self.forbiden_char_error
        Narrator.write("Les noms ne peuvent pas contenir de caractères spéciaux.")
    end

    def self.no_file_found_error(fine_name)
        Narrator.write("Aucun fichier nommé #{file_name} n'a pu être trouvé.")
    end

    def self.negative_quantity_error
        Narrator.write("Vous ne pouvez pas donner un nombre négatif d'objet, veuillez inscrire un nombre positif.")
    end

    def self.unexpected_damage_type_error
        Narrator.write("<< unexpected damage type encountered >>")
    end

    def self.unexpected_error
        Narrator.write("<< an unexpected error occured >>")
    end

    def self.user_input(name = NO_NAME_DISPLAYED)
        Narrator.add_space_of(1)
        if name != NO_NAME_DISPLAYED
            name_prefix = name + " : "
        else
            name_prefix = ""
        end
        print "  #{name_prefix}>> "
        begin
            answer = gets.chomp
        rescue SystemExit, Interrupt => e
            loop do
                Narrator.write([
                    "Êtes vous sûr de vouloir fermer le jeu ? (y/n)",
                    "Toute progression non sauvegardée sera perdue."
                ])
                case user_input.capitalize
                when "Y"
                    raise e
                when "N"
                    return user_input
                end
            end
        end
        TTY::Screen.height.times do
            Narrator.add_space_of(1)
        end
        return answer
    end

    def self.ask(question, options, to_string, player_name = NO_NAME_DISPLAYED, return_option = Narrator::RETURN_BUTTON)
        ask_general(question, options, to_string, return_option,
            -> (element, i, to_string) {Narrator.write("      #{i}) #{to_string.call(element).capitalize}")},
            player_name
        )
    end

    def self.ask_complex_element(question, options, getter, player_name = NO_NAME_DISPLAYED, return_option = Narrator::RETURN_BUTTON)
        options = [return_option].concat options
        loop do
            Narrator.write(question)
            Narrator.write("    0) Retour...")
            options_row = ASCIIRow.new
            for i in 1..(options.length - 1)
                options_row.append(getter.call(options[i], i))
            end
            options_row.show
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

    def self.ask_paginated(question, options, getter, player_name = NO_NAME_DISPLAYED, last_first = false, return_option = Narrator::RETURN_BUTTON)
        options_pages = ASCIIPaginator.new(ASCIIRow::DEFAULT_SPACING_BETWEEN, last_first)
        for i in 1..(options.length)
            options_pages.append(getter.call(options[i - 1], i))
        end
        loop do
            options_pages.show(2)
            Narrator.add_space_of(1)
            Narrator.write(question)
            input = user_input(player_name)
            if input.to_i.between?(1, options.length)
                return input.to_i - 1
            elsif input.capitalize == "A"
                options_pages.page_down
            elsif input.capitalize == "Z"
                options_pages.page_up
            elsif input == "0"
                return return_option
            else
                unsupported_choice_error
            end
        end
    end

    private

    def self.ask_general(question, options, to_string, return_option, print_operation, player_name = NO_NAME_DISPLAYED)
        if options.is_a? Hash
            return ask_hash(question, options, to_string, return_option, print_operation)
        end
        options = [return_option].concat options
        loop do
            Narrator.write(question)
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
            Narrator.write(question)
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
