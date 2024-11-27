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
        Locale::KEY_ICON_PALE => 'Light/',
        Locale::KEY_ICON_HALF => 'Half/',
        Locale::KEY_ICON_BLACK => 'Dark/'
    }
    SIZES = {
        Locale::KEY_ICON_THIN => 'thin',
        Locale::KEY_ICON_MEDIUM => 'medium',
        Locale::KEY_ICON_LARGE => 'large'
    }
    EYES_COLOR = {
        Locale::KEY_ICON_WHITE => 'light',
        Locale::KEY_ICON_LIGHT => 'half',
        Locale::KEY_ICON_DARK => 'dark'
    }
    EARS = {
        Locale::KEY_ICON_AVERAGES => 'ears1',
        Locale::KEY_ICON_ROUNDS => 'ears2',
        Locale::KEY_ICON_LARGES => 'ears3',
        Locale::KEY_ICON_FLATS => 'ears4'
    }
    NOSES = {
        Locale::KEY_ICON_SMALL_ROUND_M => 'nose2',
        Locale::KEY_ICON_NARROW_M => 'nose4',
        Locale::KEY_ICON_MEDIUM_M => 'nose1',
        Locale::KEY_ICON_LARGE_M => 'nose3'
    }
    BROWS = {
        Locale::KEY_ICON_NONE_M => 'brows6',
        Locale::KEY_ICON_ROUNDS_M => 'brows5',
        Locale::KEY_ICON_MINIS_M => 'brows4',
        Locale::KEY_ICON_MEDIUMS_M => 'brows1',
        Locale::KEY_ICON_LARGES_M => 'brows2',
        Locale::KEY_ICON_UNIBROW => 'brows3'
    }
    BEARDS = {
        Locale::KEY_ICON_NONE => 'None/',
        Locale::KEY_ICON_BARBICHE => 'Beard1/',
        Locale::KEY_ICON_MINIBOUC => 'Beard2/',
        Locale::KEY_ICON_BOUC => 'Beard3/',
        Locale::KEY_ICON_THIN_BOUC => 'Beard4/',
        Locale::KEY_ICON_POINTY_BOUC => 'Beard5/',
        Locale::KEY_ICON_LONG_BOUC => 'Beard6/',
        Locale::KEY_ICON_LARGE_BOUC => 'Beard7/',
        Locale::KEY_ICON_SMALL_BEARD => 'Beard8/',
        Locale::KEY_ICON_BEARD => 'Beard9/',
        Locale::KEY_ICON_LONG_BEARD => 'Beard10/'
    }
    MOUSTACHES = {
        Locale::KEY_ICON_NONE => 'None/',
        Locale::KEY_ICON_NARROW => 'Moustache1/',
        Locale::KEY_ICON_BUSH => 'Moustache2/',
        Locale::KEY_ICON_HORSESHOE => 'Moustache3/',
        Locale::KEY_ICON_FUMANCHU => 'Moustache4/',
        Locale::KEY_ICON_BRUSH => 'Moustache5/',
        Locale::KEY_ICON_CRAYON => 'Moustache6/',
        Locale::KEY_ICON_FRENCH => 'Moustache7/',
        Locale::KEY_ICON_HOOK => 'Moustache8/',
        Locale::KEY_ICON_BIKEHANDLE => 'Moustache9/'
    }
    SIDEBURNS = {
        Locale::KEY_ICON_NONES_M => 'None/',
        Locale::KEY_ICON_PREPUBESCENT => 'Sideburn1/',
        Locale::KEY_ICON_LONG_PREPUBESCENT => 'Sideburn2/',
        Locale::KEY_ICON_START_GROWTH => 'Sideburn3/',
        Locale::KEY_ICON_THINS => 'Sideburn4/',
        Locale::KEY_ICON_SHORT_CUT => 'Sideburn9/',
        Locale::KEY_ICON_POINTY_SIDEBURN => 'Sideburn5/',
        Locale::KEY_ICON_MEDIUMS => 'Sideburn6/',
        Locale::KEY_ICON_LARGE => 'Sideburn7/',
        Locale::KEY_ICON_LONG_SIDEBURNS => 'Sideburn8/',
        Locale::KEY_ICON_COMPLETES => 'Sideburn10/',
        Locale::KEY_ICON_LONG_COMPLETES => 'Sideburn11/'
    }
    HAIRSTYLES_FRONT = {
        Locale::KEY_ICON_BALD => 'Bald/',
        Locale::KEY_ICON_RECEEDING => 'Hair16/',
        Locale::KEY_ICON_SHAVED => 'Hair17/',
        Locale::KEY_ICON_FLAT => 'Hair14/',
        Locale::KEY_ICON_ATTACHED => 'Hair6/',
        Locale::KEY_ICON_SHORT_M => 'Hair1/',
        Locale::KEY_ICON_SPIKY => 'Hair13/',
        Locale::KEY_ICON_FRINGE1 => 'Hair2/',
        Locale::KEY_ICON_FRINGE2 => 'Hair3/',
        Locale::KEY_ICON_FLAT_FRINGE => 'Hair4/',
        Locale::KEY_ICON_SHORT_BLIND_FRINGE => 'Hair5/',
        Locale::KEY_ICON_BLIND_FRINGE => 'Hair12/',
        Locale::KEY_ICON_OVER_EYES => 'Hair7/',
        Locale::KEY_ICON_EYE_COVER => 'Hair8/',
        Locale::KEY_ICON_STRAIGHT_STRANDS => 'Hair9/',
        Locale::KEY_ICON_DIAGONALS_STRANDS => 'Hair10/',
        Locale::KEY_ICON_LARGE_STRANDS => 'Hair11/',
        Locale::KEY_ICON_MOHAWK => 'Hair15/'
    }
    HAIRSTYLES_BACK = {
        Locale::KEY_ICON_NONE_M => 'Bald/',
        Locale::KEY_ICON_VERY_SHORT_M => 'Hair8/',
        Locale::KEY_ICON_SHORT_M => 'Hair9/',
        Locale::KEY_ICON_SQUARE => 'Hair5/',
        Locale::KEY_ICON_LONG_SQUARE => 'Hair1/',
        Locale::KEY_ICON_LONG_FLAT => 'Hair2/',
        Locale::KEY_ICON_LONG_PUFFY => 'Hair7/',
        Locale::KEY_ICON_PONYTAIL => 'Hair3/',
        Locale::KEY_ICON_PIGTAILS => 'Hair4/',
        Locale::KEY_ICON_BUN => 'Hair6/'
    }
    HAIR_COLORS = {
        Locale::KEY_ICON_WHITE => 'white',
        Locale::KEY_ICON_LIGHT => 'light',
        Locale::KEY_ICON_DARK => 'half',
        Locale::KEY_ICON_BLACKS => 'dark'
    }

    def initialize
        @skintone = Locale::KEY_ICON_PALE
        @corpulence = Locale::KEY_ICON_MEDIUM
        @ears = Locale::KEY_ICON_MEDIUMS
        @brows = Locale::KEY_ICON_MEDIUMS_M
        @eyes = 'Eyes1/'
        @eye_color = Locale::KEY_ICON_DARK
        @nose = Locale::KEY_ICON_MEDIUM_M
        @mouth = 'mouth1'
        @hairstyle_front = Locale::KEY_ICON_SHORT_M
        @hairstyle_back = Locale::KEY_ICON_NONE_M
        @hair_color = Locale::KEY_ICON_LIGHT
        @beard_color = Locale::KEY_ICON_LIGHT
        @beard = Locale::KEY_ICON_NONE
        @moustache = Locale::KEY_ICON_NONE
        @sideburns = Locale::KEY_ICON_NONES_M
    end

    def get_picture
        picture = setup_picture(BACKGROUND)
        picture.superpose(setup_picture(HAIRSTYLES_FOLDER+BACK_FOLDER+HAIRSTYLES_BACK[@hairstyle_back.to_sym].to_s+HAIR_COLORS[@hair_color.to_sym].to_s))
        picture.superpose(setup_picture(TONES[@skintone.to_sym].to_s+EARS_FOLDER+EARS[@ears.to_sym].to_s))
        picture.superpose(setup_picture(TONES[@skintone.to_sym].to_s+BASE_FOLDER+SIZES[@corpulence.to_sym].to_s))
        picture.superpose(setup_picture(TONES[@skintone.to_sym].to_s+BROWS_FOLDER+BROWS[@brows.to_sym].to_s))
        picture.superpose(setup_picture(TONES[@skintone.to_sym].to_s+EYES_FOLDER+@eyes+EYES_COLOR[@eye_color.to_sym].to_s))
        picture.superpose(setup_picture(TONES[@skintone.to_sym].to_s+NOSES_FOLDER+NOSES[@nose.to_sym].to_s))
        picture.superpose(setup_picture(TONES[@skintone.to_sym].to_s+MOUTHS_FOLDER+@mouth))
        picture.superpose(setup_picture(BEARDS_FOLDER+SIDEBURNS_FOLDER+SIDEBURNS[@sideburns.to_sym].to_s+HAIR_COLORS[@beard_color.to_sym].to_s))
        picture.superpose(setup_picture(BEARDS_FOLDER+CHIN_FOLDER+BEARDS[@beard.to_sym].to_s+HAIR_COLORS[@beard_color.to_sym].to_s))
        picture.superpose(setup_picture(BEARDS_FOLDER+MOUSTACHE_FOLDER+MOUSTACHES[@moustache.to_sym].to_s+HAIR_COLORS[@beard_color.to_sym].to_s))
        picture.superpose(setup_picture(HAIRSTYLES_FOLDER+FRONT_FOLDER+HAIRSTYLES_FRONT[@hairstyle_front.to_sym].to_s+HAIR_COLORS[@hair_color.to_sym].to_s))
        return picture
    end

    def get_save_data
        return "#{@skintone}; #{@corpulence}; #{@ears}; #{@brows}; #{@eyes}; #{@eye_color}; #{@nose}; #{@mouth}; #{@hairstyle_front}; #{@hairstyle_back}; #{@hair_color}; #{@sideburns}; #{@beard}; #{@moustache}; #{@beard_color}; "
    end

    def load(data)
        if data != nil
            features = data.split('; ')
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
        when '0'
            return
        when '1'
            @skintone = choose_color(TONES, @skintone)
        when '2'
            @corpulence = choose(SIZES, @corpulence, Locale::KEY_ASK_CORPULENCE, Locale.get_localized(Locale::KEY_KEEP_CORPULENCE))
        when '3'
            @eye_color = choose_color(EYES_COLOR, @eye_color);
        when '4'
            @ears = choose(EARS, @ears, Locale::KEY_ASK_EARS, Locale.get_localized(Locale::KEY_KEEP_EARS))
        when '5'
            @nose = choose(NOSES, @nose, Locale::KEY_ASK_NOSE, Locale.get_localized(Locale::KEY_KEEP_NOSE))
        when '6'
            @brows = choose(BROWS, @brows, Locale::KEY_ASK_EYEBROWS, Locale.get_localized(Locale::KEY_KEEP_EYEBROWS))
        when '7'
            beard_menu
        when '8'
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
        when '0'
            return
        when '1'
            @moustache = choose(MOUSTACHES, @moustache, Locale::KEY_ASK_MOUSTACHE, Locale.get_localized(Locale::KEY_KEEP_MOUSTACHE))
        when '2'
            @beard = choose(BEARDS, @beard, Locale::KEY_ASK_BEARD, Locale.get_localized(Locale::KEY_KEEP_BEARD))
        when '3'
            @sideburns = choose(SIDEBURNS, @sideburns, Locale::KEY_ASK_SIDEBURNS, Locale.get_localized(Locale::KEY_KEEP_SIDEBURNS))
        when '4'
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
        when '0'
            return
        when '1'
            hairstyle_menu
        when '2'
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
        when '0'
            return
        when '1'
            @hairstyle_front = choose(HAIRSTYLES_FRONT, @hairstyle_front, Locale::KEY_ASK_HAIRCUT, Locale.get_localized(Locale::KEY_KEEP_HAIRSTYLE))
        when '2'
            @hairstyle_back = choose(HAIRSTYLES_BACK, @hairstyle_back, Locale::KEY_ASK_HAIRCUT, Locale.get_localized(Locale::KEY_KEEP_HAIRSTYLE))
        end
        hairstyle_menu
    end

    def show
        for line in get_picture.get_ascii
            Narrator.write('    ' + line)
        end
        Narrator.add_space_of(3)
    end

    private

    def setup_picture(end_path)
        ASCIIPicture.new(ASSETS_PATH+end_path, true)
    end

    def choose_feature(features, current)
        choose(features, current, Locale::KEY_ASK_FEATURE, Locale.get_localized(Locale::KEY_KEEP_FEATURE))
    end

    def choose_color(colors, current)
        choose(colors, current, Locale::KEY_ASK_COLOR, Locale.get_localized(Locale::KEY_KEEP_COLOR))
    end

    def choose(elements, current, question, return_label)
        choosen_color = Narrator.ask(
            question,
            elements,
            -> (element) {
                if (element != Narrator::RETURN_BUTTON)
                    return Locale::get_localized(element)
                else
                    return return_label + ' ' + Locale.get_localized(current)
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
