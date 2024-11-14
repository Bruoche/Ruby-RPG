class PlayerIcon
    BACKGROUND = 'empty_frame'
    ASSETS_PATH = ASCIIPrinter::PREFIX + 'PlayerCharacter/'
    BASE_FOLDER = 'Bases/'
    BROWS_FOLDER = 'Brows/'
    EARS_FOLDER = 'Ears/'
    EYES_FOLDER = 'Eyes/'
    MOUTHS_FOLDER = 'Mouths/'
    NOSES_FOLDER = 'Noses/'
    BEARDS_FOLDER = 'FacialHair/'
    CHIN_FOLDER = 'Beards/'
    MOUSTACHE_FOLDER = 'Moustaches/'
    SIDEBURNS_FOLDER = 'Sideburns/'
    HAIRSTYLES_FOLDER = 'Hairstyles/'
    FRONT_FOLDER = 'Front/'
    BACK_FOLDER = 'Back/'
    TONES = {
        'pale': 'Light/',
        'mate': 'Half/',
        'noire': 'Dark/'
    }
    SIZES = {
        'maigre': 'thin',
        'moyenne': 'medium',
        'large': 'large'
    }
    EYES_COLOR = {
        'blanc': 'light',
        'clair': 'half',
        'sombre': 'dark'
    }
    EARS = {
        'moyennes': 'ears1',
        'rondes': 'ears2',
        'larges': 'ears3',
        'plates': 'ears4'
    }
    NOSES = {
        'petit rond': 'nose2',
        'fin': 'nose4',
        'moyen': 'nose1',
        'large': 'nose3'
    }
    BROWS = {
        'aucun': 'brows6',
        'ronds': 'brows5',
        'minis': 'brows4',
        'moyens': 'brows1',
        'larges': 'brows2',
        'mono-sourcil': 'brows3'
    }
    BEARDS = {
        'aucune': 'None/',
        'barbiche': 'Beard1/',
        'mini-bouc': 'Beard2/',
        'bouc': 'Beard3/',
        'bouc fin': 'Beard4/',
        'bouc en pointe': 'Beard5/',
        'bouc long': 'Beard6/',
        'bouc large': 'Beard7/',
        'petite barbe': 'Beard8/',
        'barbe': 'Beard9/',
        'barbe longue': 'Beard10/'
    }
    MOUSTACHES = {
        'aucune': 'None/',
        'fine': 'Moustache1/',
        'broussaille': 'Moustache2/',
        'fer à cheval': 'Moustache3/',
        'Fu Manchu': 'Moustache4/',
        'brosse': 'Moustache5/',
        'crayon': 'Moustache6/',
        'française': 'Moustache7/',
        'crochet': 'Moustache8/',
        'guidon': 'Moustache9/'
    }
    SIDEBURNS = {
        'aucuns': 'None/',
        'prépubaires': 'Sideburn1/',
        'prépubaires longue': 'Sideburn2/',
        'début de pousse': 'Sideburn3/',
        'fines': 'Sideburn4/',
        'coupées court': 'Sideburn9/',
        'pointes': 'Sideburn5/',
        'moyennes': 'Sideburn6/',
        'large': 'Sideburn7/',
        'longues': 'Sideburn8/',
        'complètes': 'Sideburn10/',
        'complètes longues': 'Sideburn11/'
    }
    HAIRSTYLES_FRONT = {
        'chauve': 'Bald/',
        'calvicie': 'Hair16/',
        'rasé': 'Hair17/',
        'plaqués': 'Hair14/',
        'attachés': 'Hair6/',
        'court': 'Hair1/',
        'pointes': 'Hair13/',
        'frange 1': 'Hair2/',
        'frange 2': 'Hair3/',
        'frange lisse': 'Hair4/',
        'frange rideau courte': 'Hair5/',
        'frange rideau': 'Hair12/',
        'couvre-yeux': 'Hair7/',
        'couvre-oeuil': 'Hair8/',
        'meches droites': 'Hair9/',
        'meches diagonales': 'Hair10/',
        'meches larges': 'Hair11/',
        'crête': 'Hair15/'
    }
    HAIRSTYLES_BACK = {
        'aucun': 'Bald/',
        'très court': 'Hair8/',
        'court': 'Hair9/',
        'carré': 'Hair5/',
        'carré long dégradé': 'Hair1/',
        'cheveux longs lisses': 'Hair2/',
        'cheveux longs épais': 'Hair7/',
        'queue de cheval': 'Hair3/',
        'couettes': 'Hair4/',
        'chignon': 'Hair6/'
    }
    HAIR_COLORS = {
        'blanc': 'white',
        'clair': 'light',
        'sombre': 'half',
        'noirs': 'dark'
    }

    def initialize
        @skintone = 'pale'
        @corpulence = 'moyenne'
        @ears = 'moyennes'
        @brows = 'moyens'
        @eyes = 'Eyes1/'
        @eye_color = 'sombre'
        @nose = 'moyen'
        @mouth = 'mouth1'
        @hairstyle_front = 'court'
        @hairstyle_back = 'aucun'
        @hair_color = 'clair'
        @beard_color = 'clair'
        @beard = 'aucune'
        @moustache = 'aucune'
        @sideburns = 'aucuns'
    end

    def get_picture
        picture = setup_picture(BACKGROUND)
        picture.superpose(setup_picture(HAIRSTYLES_FOLDER+BACK_FOLDER+HAIRSTYLES_BACK[@hairstyle_back.to_sym]+HAIR_COLORS[@hair_color.to_sym]))
        picture.superpose(setup_picture(TONES[@skintone.to_sym]+EARS_FOLDER+EARS[@ears.to_sym]))
        picture.superpose(setup_picture(TONES[@skintone.to_sym]+BASE_FOLDER+SIZES[@corpulence.to_sym]))
        picture.superpose(setup_picture(TONES[@skintone.to_sym]+BROWS_FOLDER+BROWS[@brows.to_sym]))
        picture.superpose(setup_picture(TONES[@skintone.to_sym]+EYES_FOLDER+@eyes+EYES_COLOR[@eye_color.to_sym]))
        picture.superpose(setup_picture(TONES[@skintone.to_sym]+NOSES_FOLDER+NOSES[@nose.to_sym]))
        picture.superpose(setup_picture(TONES[@skintone.to_sym]+MOUTHS_FOLDER+@mouth))
        picture.superpose(setup_picture(BEARDS_FOLDER+SIDEBURNS_FOLDER+SIDEBURNS[@sideburns.to_sym]+HAIR_COLORS[@beard_color.to_sym]))
        picture.superpose(setup_picture(BEARDS_FOLDER+CHIN_FOLDER+BEARDS[@beard.to_sym]+HAIR_COLORS[@beard_color.to_sym]))
        picture.superpose(setup_picture(BEARDS_FOLDER+MOUSTACHE_FOLDER+MOUSTACHES[@moustache.to_sym]+HAIR_COLORS[@beard_color.to_sym]))
        picture.superpose(setup_picture(HAIRSTYLES_FOLDER+FRONT_FOLDER+HAIRSTYLES_FRONT[@hairstyle_front.to_sym]+HAIR_COLORS[@hair_color.to_sym]))
        return picture
    end

    def get_save_data
        return "#{@skintone}; #{@corpulence}; #{@ears}; #{@brows}; #{@eyes}; #{@eye_color}; #{@nose}; #{@mouth}; #{@hairstyle_front}; #{@hairstyle_back}; #{@hair_color}; #{@sideburns}; #{@beard}; #{@moustache}; #{@beard_color}; "
    end

    def load(data)
        if data != nil
            features = data.split("; ")
            @i = 0;
            @skintone = get_feature(features, TONES, @skintone)
            @corpulence = get_feature(features, SIZES, @corpulence)
            @ears = get_feature(features, EARS, @ears)
            @brows = get_feature(features, BROWS, @brows)
            @eyes = features[@i]
            @i += 1
            @eye_color = get_feature(features, EYES_COLOR, @eye_color)
            @nose = get_feature(features, NOSES, @nose)
            @mouth = features[@i]
            @i += 1
            @hairstyle_front = get_feature(features, HAIRSTYLES_FRONT, @hairstyle_front)
            @hairstyle_back = get_feature(features, HAIRSTYLES_BACK, @hairstyle_back)
            @hair_color = get_feature(features, HAIR_COLORS, @hair_color)
            @sideburns = get_feature(features, SIDEBURNS, @sideburns)
            @beard = get_feature(features, BEARDS, @beard)
            @moustache = get_feature(features, MOUSTACHES, @moustache)
            @beard_color = get_feature(features, HAIR_COLORS, @beard_color)
        end
    end

    def get_feature(features, possible_features, precedent_feature)
        feature = features[@i]
        @i += 1
        if (feature != nil) && (possible_features.has_key? feature.to_sym)
            return feature
        end
        return precedent_feature
    end

    def customize
        show
        Narrator.character_creation_options
        case Narrator.user_input
        when "0"
            return
        when "1"
            @skintone = choose_color(TONES, @skintone)
        when "2"
            @corpulence = choose(SIZES, @corpulence, "Quelle corpulence souhaitez-vous ?", "Conserver la corpulence")
        when "3"
            @eye_color = choose_color(EYES_COLOR, @eye_color);
        when "4"
            @ears = choose(EARS, @ears, "Quelles oreilles souhaitez-vous ?", "Conserver les oreilles")
        when "5"
            @nose = choose(NOSES, @nose, "Quel nez souhaitez-vous ?", "Conserver le nez")
        when "6"
            @brows = choose(BROWS, @brows, "Quelle forme de sourcil souhaitez-vous ?", "Conserver les sourcils")
        when "7"
            beard_menu
        when "8"
            hair_menu
        else
            Narrator.unsupported_choice_error
        end
        customize
    end

    def beard_menu
        show
        Narrator.beard_options
        case Narrator.user_input
        when "0"
            return
        when "1"
            @moustache = choose(MOUSTACHES, @moustache, "Quelle moustache souhaitez-vous ?", "Conserver la moustache")
        when "2"
            @beard = choose(BEARDS, @beard, "Quelle barbe souhaitez-vous sur le menton ?", "Conserver la barbe")
        when "3"
            @sideburns = choose(SIDEBURNS, @sideburns, "Quelle pattes souhaitez-vous ?", "Conserver les pattes")
        when "4"
            @beard_color = choose_color(HAIR_COLORS, @beard_color);
        else
            Narrator.unsupported_choice_error
        end
        beard_menu
    end

    def hair_menu
        show
        Narrator.hair_options
        case Narrator.user_input
        when "0"
            return
        when "1"
            hairstyle_menu
        when "2"
            @hair_color = choose_color(HAIR_COLORS, @hair_color);
        else
            Narrator.unsupported_choice_error
        end
        hair_menu
    end

    def hairstyle_menu
        show
        Narrator.hairstyle_options
        case Narrator.user_input
        when "0"
            return
        when "1"
            @hairstyle_front = choose(HAIRSTYLES_FRONT, @hairstyle_front, "Quelle coupe souhaitez-vous ?", "Conserver la coupe")
        when "2"
            @hairstyle_back = choose(HAIRSTYLES_BACK, @hairstyle_back, "Quelle coupe souhaitez-vous ?", "Conserver la coupe")
        end
        hairstyle_menu
    end

    def show
        for line in get_picture.get_ascii
            Narrator.write("    "+line)
        end
        Narrator.add_space_of(3)
    end

    private

    def setup_picture(end_path)
        ASCIIPicture.new(ASSETS_PATH+end_path, true)
    end

    def choose_feature(features, current)
        choose(features, current, "Quel trait souhaitez vous ?", "Conserver le trait")
    end

    def choose_color(colors, current)
        choose(colors, current, "Quelle couleur ?", "Conserver la couleur")
    end

    def choose(elements, current, question, return_label)
        choosen_color = Narrator.ask(
            question,
            elements,
            -> (element) {
                if (element != Narrator::RETURN_BUTTON)
                    return element
                else
                    return "#{return_label} #{current}"
                end
            }
        )
        if choosen_color != Narrator::RETURN_BUTTON
            return choosen_color
        else
            return current
        end
    end
end
