class BossCell
    EXPECTED_LEVEL = 10
    SPECIAL = true;
    PICTURE = "prisonner_knight";
    def initialize(player, precedent_room = nil)
        @player = player
        @precedent_room = precedent_room
        difficulty_bonus = EXPECTED_LEVEL*BaseStats::NB_STATS_PER_LEVEL
        @boss = LostKnight::make(difficulty_bonus)
        @monsters = Pack.new(monsters: [@boss])
        @name = Name.new(
            name: "geolle"
        )
    end

    def get_denomination()
        return "une cellule lugubre"
    end

    def enter()
        puts "Vous arrivez devant une grande porte métallique."
        puts "Malgré son grand âge et la rouille apparente, elle semble encore trop solide pour être forcée."
        puts
        puts "En écoutant attentivement, vous pouvez entendre une respiration faiblarde transperçant subtilement la grande parroie metallique."
        puts
        if @player.have(PrisonKey)
            ask_enter
        else
            puts "Lorsque vous tentez de l'ouvrir celle-ci vous resiste, semblant être fermée à clef."
            puts
            puts "Vous retournez sur vos pas."
        end
        return @precedent_room
    end

    def ask_enter()
        puts "Essayer la clef de la prison sur la serrure ?"
        puts "1) Oui"
        puts "2) Non"
        case Narrator.user_input
        when "1"
            puts "Vous utilisez la clef de la prison afin d'ouvrir la grande porte."
            puts "Vous poussez sur la porte, ses gonds rouillé vous donnant une résistance forte."
            puts "En y mettant toutes vos forces, vous parvenez à forcer la porte ouverte."
            puts
            puts "Lorsque vous pénétrez dans ce qui semble être une cellule de prison,"
            puts "Vous pouvez voir au fond de la salle obscure un chevalier à l'armure endomagé par les batailles et l'age"
            puts "A peine couverte par les fins lambeau de ce qui devait être un noble surcôt."
            propose_combat
        when "2"
            puts "Vous décidez qu'il ne vaut probablement mieux pas prendre le risque d'ouvrir la porte"
            puts "Et décidez donc de revenir sur vos pas."
            return @precedent_room
        else
            Narrator.unsupported_choice_error
            ask_enter
        end
    end

    def propose_combat()
        describe()
        case Narrator.ask_if_fight(@player.get_escape_chances(@monsters.get_current_power))
        when "1"
            Narrator.start_fight(@monsters.is_plural)
            return fight_with_adventage(true)
        when "2"
            if (@player.can_escape(@monsters.get_current_power))
                Narrator.avoid_fight(@monsters.get_plural_the)
                return ask_action
            else
                Narrator.fail_sneak(@monsters.is_plural)
                return fight_with_adventage(false)
            end
        else
            Narrator.unsupported_choice_error
            propose_combat
        end
    end

    def ask_action
        describe
        puts "Que souhaitez-vous faire?"
        puts "      1) Aller à..."
        #puts "      2) Fouiller #{@name.get_gendered_the}"
        puts "      3) Utiliser un objet"
        if not no_monsters
            puts "      4) Attaquer #{@monsters.get_plural_the}"
        end
        loop do
            case Narrator.user_input
            when "1"
                return propose_exploration
        #    when "2"
        #        if search
        #            return room_action
        #        else
        #            return ask_action
        #        end
            when "3"
                if @player.use_item
                    return room_action
                else
                    return ask_action
                end
            when "4"
                if no_monsters
                    Narrator.unsupported_choice_error
                    return ask_action
                else
                    Narrator.start_fight(@monsters.is_plural)
                    return fight_with_adventage(true)
                end
            else
                Narrator.unsupported_choice_error
                return ask_action
            end
        end
    end

    private

    def no_monsters()
        return (@monsters == nil) || (@monsters.are_dead)
    end

    def propose_exploration()
        puts "Souhaitez vous revenir à #{@precedent_room.get_name.get_gendered_the} ?"
        puts "1) Oui"
        puts "2) Non"
        case Narrator.user_input
        when "1"
            return @precedent_room
        when "2"
            return ask_action
        else
            Narrator.unsupported_choice_error
            propose_exploration
        end
    end

    def describe
        description = ->() {
            puts "Vous êtes au milleu d'une geolle sombre, des chaines brisées jonchent le sol."
        }
        if @arrival
            if (@monsters != nil)
                Narrator.describe_monsters_room(
                    @player.get_full_status,
                    description,
                    BossCell::PICTURE,
                    @name.get_gendered_the,
                    @monsters.get_description
                )
            else
                Narrator.describe_empty_room(
                    @player.get_full_status,
                    description,
                    BossCell::PICTURE,
                    @name.get_gendered_a,
                    @name.is_female
                )
            end
            @arrival = false
        else
            if (@monsters != nil)
                monsters_description = @monsters.get_description
            else
                monsters_description = nil
            end
            Narrator.describe_current_room(
                @player.get_full_status,
                description,
                BossCell::PICTURE,
                @name.get_gendered_a,
                monsters_description
            )
        end
    end

    def fight_with_adventage(player_first)
        survived = Fight.new(@player, @monsters).fight(player_first)
        if survived
            return ask_action
        else
            return nil
        end
    end
end
