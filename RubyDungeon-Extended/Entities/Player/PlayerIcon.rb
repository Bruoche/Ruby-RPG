class PlayerIcon
    DEFAULT_PICTURE = 'default'
    ASSETS_PATH = ASCIIPrinter::PREFIX + 'PlayerCharacter/'
    BROWS_FOLDER = 'Brows/'
    EARS_FOLDER = 'Ears/'
    EYES_FOLDER = 'Eyes/'
    MOUTHS_FOLDER = 'Mouths/'
    NOSES_FOLDER = 'Noses/'
    HAIRSTYLES_FOLDER = 'Hairstyles/'
    BASE_NAME = 'base'
    TONES = {
        'pale': 'Light/',
        'mate': 'Half/',
        'noire': 'Dark/'
    }
    EYES_COLOR = {
        'blanc': 'light',
        'clair': 'half',
        'sombre': 'dark'
    }
    HAIRSTYLES = {
        'chauve': 'Bald/',
        'court': 'Hair1/'
    }
    HAIR_COLORS = {
        'blanc': 'white',
        'blond': 'light',
        'clair': 'half',
        'noirs': 'dark'
    }

    def initialize
        @skintone = 'pale'
        @ears = 'ears1'
        @brows = 'brows1'
        @eyes = 'Eyes1/'
        @eye_color = 'sombre'
        @nose = 'nose1'
        @mouth = 'mouth1'
        @hairstyle = 'court'
        @hair_color = 'blond'
    end

    def get_picture
        picture = setup_picture(TONES[@skintone.to_sym]+BASE_NAME)
        picture.superpose(setup_picture(TONES[@skintone.to_sym]+EARS_FOLDER+@ears))
        picture.superpose(setup_picture(TONES[@skintone.to_sym]+BROWS_FOLDER+@brows))
        picture.superpose(setup_picture(TONES[@skintone.to_sym]+EYES_FOLDER+@eyes+EYES_COLOR[@eye_color.to_sym]))
        picture.superpose(setup_picture(TONES[@skintone.to_sym]+NOSES_FOLDER+@nose))
        picture.superpose(setup_picture(TONES[@skintone.to_sym]+MOUTHS_FOLDER+@mouth))
        picture.superpose(setup_picture(HAIRSTYLES_FOLDER+HAIRSTYLES[@hairstyle.to_sym]+HAIR_COLORS[@hair_color.to_sym]))
        return picture
    end

    def get_save_data
        return "#{@skintone}; #{@ears}; #{@brows}; #{@eyes}; #{@eye_color}; #{@nose}; #{@mouth}; #{@hairstyle}; #{@hair_color}; "
    end

    def load(data)
        if data != nil
            features = data.split("; ")
            skintone = features[0]
            if TONES.has_key? skintone.to_sym
                @skintone = skintone
            end
            @ears = features[1]
            @brows = features[2]
            @eyes = features[3]
            eye_color = features[4]
            if EYES_COLOR.has_key? eye_color.to_sym
                @eye_color = eye_color
            end
            @nose = features[5]
            @mouth = features[6]
            hairstyle = features[7]
            if HAIRSTYLES.has_key? hairstyle.to_sym
                @hairstyle = hairstyle
            end
            hair_color = features[8]
            if HAIR_COLORS.has_key? hair_color.to_sym
                @hair_color = hair_color
            end
        end
    end

    def customize
        show
        puts "Quel élément souhaitez-vous modifier ?"
        puts "0) Retour..."
        puts "1) Complexion"
        puts "2) Les yeux"
        puts "3) Les cheveux"
        case Narrator.user_input
        when "0"
            return
        when "1"
            @skintone = choose_color(TONES, @skintone)
        when "2"
            eyes_menu
        when "3"
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
            @hairstyle = choose_feature(HAIRSTYLES, @hairstyle)
        when "2"
            @hair_color = choose_color(HAIR_COLORS, @hair_color);
        else
            Narrator.unsupported_choice_error
        end
        hair_menu
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
