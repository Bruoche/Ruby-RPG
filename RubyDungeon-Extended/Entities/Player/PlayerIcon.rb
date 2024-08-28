class PlayerIcon
    BACKGROUND = 'empty_frame'
    ASSETS_PATH = ASCIIPrinter::PREFIX + 'PlayerCharacter/'
    BASE_FOLDER = 'Bases/'
    BROWS_FOLDER = 'Brows/'
    EARS_FOLDER = 'Ears/'
    EYES_FOLDER = 'Eyes/'
    MOUTHS_FOLDER = 'Mouths/'
    NOSES_FOLDER = 'Noses/'
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
        @brows = 'brows1'
        @eyes = 'Eyes1/'
        @eye_color = 'sombre'
        @nose = 'nose1'
        @mouth = 'mouth1'
        @hairstyle_front = 'court'
        @hairstyle_back = 'aucun'
        @hair_color = 'clair'
    end

    def get_picture
        picture = setup_picture(BACKGROUND)
        picture.superpose(setup_picture(HAIRSTYLES_FOLDER+BACK_FOLDER+HAIRSTYLES_BACK[@hairstyle_back.to_sym]+HAIR_COLORS[@hair_color.to_sym]))
        picture.superpose(setup_picture(TONES[@skintone.to_sym]+EARS_FOLDER+EARS[@ears.to_sym]))
        picture.superpose(setup_picture(TONES[@skintone.to_sym]+BASE_FOLDER+SIZES[@corpulence.to_sym]))
        picture.superpose(setup_picture(TONES[@skintone.to_sym]+BROWS_FOLDER+@brows))
        picture.superpose(setup_picture(TONES[@skintone.to_sym]+EYES_FOLDER+@eyes+EYES_COLOR[@eye_color.to_sym]))
        picture.superpose(setup_picture(TONES[@skintone.to_sym]+NOSES_FOLDER+@nose))
        picture.superpose(setup_picture(TONES[@skintone.to_sym]+MOUTHS_FOLDER+@mouth))
        picture.superpose(setup_picture(HAIRSTYLES_FOLDER+FRONT_FOLDER+HAIRSTYLES_FRONT[@hairstyle_front.to_sym]+HAIR_COLORS[@hair_color.to_sym]))
        return picture
    end

    def get_save_data
        return "#{@skintone}; #{@corpulence}; #{@ears}; #{@brows}; #{@eyes}; #{@eye_color}; #{@nose}; #{@mouth}; #{@hairstyle_front}; #{@hairstyle_back}; #{@hair_color}; "
    end

    def load(data)
        if data != nil
            features = data.split("; ")
            @i = 0;
            @skintone = get_feature(features, TONES, @skintone)
            @corpulence = get_feature(features, SIZES, @corpulence)
            @ears = get_feature(features, EARS, @ears)
            @brows = features[@i]
            @i += 1
            @eyes = features[@i]
            @i += 1
            @eye_color = get_feature(features, EYES_COLOR, @eye_color)
            @nose = features[@i]
            @i += 1
            @mouth = features[@i]
            @i += 1
            @hairstyle_front = get_feature(features, HAIRSTYLES_FRONT, @hairstyle_front)
            @hairstyle_back = get_feature(features, HAIRSTYLES_BACK, @hairstyle_back)
            @hair_color = get_feature(features, HAIR_COLORS, @hair_color)
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
        puts "Quel élément souhaitez-vous modifier ?"
        puts "0) Valider l'apparence"
        puts "1) Complexion"
        puts "2) Corpulence"
        puts "3) Les yeux"
        puts "4) Les oreilles"
        puts "5) Les cheveux"
        case Narrator.user_input
        when "0"
            return
        when "1"
            @skintone = choose_color(TONES, @skintone)
        when "2"
            @corpulence = choose(SIZES, @corpulence, "Quelle corpulence souhaitez-vous ?", "Conserver la corpulence")
        when "3"
            eyes_menu
        when "4"
            @ears = choose(EARS, @ears, "Quelles oreilles souhaitez-vous ?", "Conserver les oreilles")
        when "5"
            hair_menu
        else
            Narrator.unsupported_choice_error
        end
        customize
    end

    def eyes_menu
        show
        puts "Quel élément souhaitez-vous modifier ?"
        puts "0) Retour..."
        puts "1) La forme"
        puts "2) La couleur"
        case Narrator.user_input
        when "0"
            return
        when "1"
            puts "nuh huh"
        when "2"
            @eye_color = choose_color(EYES_COLOR, @eye_color);
        else
            Narrator.unsupported_choice_error
        end
        eyes_menu
    end

    def hair_menu
        show
        puts "Quel élément souhaitez-vous modifier ?"
        puts "0) Retour..."
        puts "1) La coupe"
        puts "2) La couleur"
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
        puts "Quel portion de votre coupe de cheveux souhaitez-vous modifier ?"
        puts "0) Retour..."
        puts "1) L'avant"
        puts "2) L'arrière"
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
            puts "    "+line
        end
        puts
        puts
        puts
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
                if (element != nil)
                    return element
                else
                    return "#{return_label} #{current}"
                end
            }
        )
        if choosen_color != nil
            return choosen_color
        else
            return current
        end
    end
end
