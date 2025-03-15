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
        LocaleKey::ICON_PALE => 'Light/',
        LocaleKey::ICON_HALF => 'Half/',
        LocaleKey::ICON_BLACK => 'Dark/'
    }
    SIZES = {
        LocaleKey::ICON_THIN => 'thin',
        LocaleKey::ICON_MEDIUM => 'medium',
        LocaleKey::ICON_LARGE => 'large'
    }
    EYES_COLOR = {
        LocaleKey::ICON_WHITE => 'light',
        LocaleKey::ICON_LIGHT => 'half',
        LocaleKey::ICON_DARK => 'dark'
    }
    EARS = {
        LocaleKey::ICON_AVERAGES => 'ears1',
        LocaleKey::ICON_ROUNDS => 'ears2',
        LocaleKey::ICON_LARGES => 'ears3',
        LocaleKey::ICON_FLATS => 'ears4'
    }
    NOSES = {
        LocaleKey::ICON_SMALL_ROUND_M => 'nose2',
        LocaleKey::ICON_NARROW_M => 'nose4',
        LocaleKey::ICON_MEDIUM_M => 'nose1',
        LocaleKey::ICON_LARGE_M => 'nose3'
    }
    BROWS = {
        LocaleKey::ICON_NONE_M => 'brows6',
        LocaleKey::ICON_ROUNDS_M => 'brows5',
        LocaleKey::ICON_MINIS_M => 'brows4',
        LocaleKey::ICON_MEDIUMS_M => 'brows1',
        LocaleKey::ICON_LARGES_M => 'brows2',
        LocaleKey::ICON_UNIBROW => 'brows3'
    }
    BEARDS = {
        LocaleKey::ICON_NONE => 'None/',
        LocaleKey::ICON_BARBICHE => 'Beard1/',
        LocaleKey::ICON_MINIBOUC => 'Beard2/',
        LocaleKey::ICON_BOUC => 'Beard3/',
        LocaleKey::ICON_THIN_BOUC => 'Beard4/',
        LocaleKey::ICON_POINTY_BOUC => 'Beard5/',
        LocaleKey::ICON_LONG_BOUC => 'Beard6/',
        LocaleKey::ICON_LARGE_BOUC => 'Beard7/',
        LocaleKey::ICON_SMALL_BEARD => 'Beard8/',
        LocaleKey::ICON_BEARD => 'Beard9/',
        LocaleKey::ICON_LONG_BEARD => 'Beard10/'
    }
    MOUSTACHES = {
        LocaleKey::ICON_NONE => 'None/',
        LocaleKey::ICON_NARROW => 'Moustache1/',
        LocaleKey::ICON_BUSH => 'Moustache2/',
        LocaleKey::ICON_HORSESHOE => 'Moustache3/',
        LocaleKey::ICON_FUMANCHU => 'Moustache4/',
        LocaleKey::ICON_BRUSH => 'Moustache5/',
        LocaleKey::ICON_CRAYON => 'Moustache6/',
        LocaleKey::ICON_FRENCH => 'Moustache7/',
        LocaleKey::ICON_HOOK => 'Moustache8/',
        LocaleKey::ICON_BIKEHANDLE => 'Moustache9/'
    }
    SIDEBURNS = {
        LocaleKey::ICON_NONES_M => 'None/',
        LocaleKey::ICON_PREPUBESCENT => 'Sideburn1/',
        LocaleKey::ICON_LONG_PREPUBESCENT => 'Sideburn2/',
        LocaleKey::ICON_START_GROWTH => 'Sideburn3/',
        LocaleKey::ICON_THINS => 'Sideburn4/',
        LocaleKey::ICON_SHORT_CUT => 'Sideburn9/',
        LocaleKey::ICON_POINTY_SIDEBURN => 'Sideburn5/',
        LocaleKey::ICON_MEDIUMS => 'Sideburn6/',
        LocaleKey::ICON_LARGE => 'Sideburn7/',
        LocaleKey::ICON_LONG_SIDEBURNS => 'Sideburn8/',
        LocaleKey::ICON_COMPLETES => 'Sideburn10/',
        LocaleKey::ICON_LONG_COMPLETES => 'Sideburn11/'
    }
    HAIRSTYLES_FRONT = {
        LocaleKey::ICON_BALD => 'Bald/',
        LocaleKey::ICON_RECEEDING => 'Hair16/',
        LocaleKey::ICON_SHAVED => 'Hair17/',
        LocaleKey::ICON_FLAT => 'Hair14/',
        LocaleKey::ICON_ATTACHED => 'Hair6/',
        LocaleKey::ICON_SHORT_M => 'Hair1/',
        LocaleKey::ICON_SPIKY => 'Hair13/',
        LocaleKey::ICON_FRINGE1 => 'Hair2/',
        LocaleKey::ICON_FRINGE2 => 'Hair3/',
        LocaleKey::ICON_FLAT_FRINGE => 'Hair4/',
        LocaleKey::ICON_SHORT_BLIND_FRINGE => 'Hair5/',
        LocaleKey::ICON_BLIND_FRINGE => 'Hair12/',
        LocaleKey::ICON_OVER_EYES => 'Hair7/',
        LocaleKey::ICON_EYE_COVER => 'Hair8/',
        LocaleKey::ICON_STRAIGHT_STRANDS => 'Hair9/',
        LocaleKey::ICON_DIAGONALS_STRANDS => 'Hair10/',
        LocaleKey::ICON_LARGE_STRANDS => 'Hair11/',
        LocaleKey::ICON_MOHAWK => 'Hair15/'
    }
    HAIRSTYLES_BACK = {
        LocaleKey::ICON_NONE_M => 'Bald/',
        LocaleKey::ICON_VERY_SHORT_M => 'Hair8/',
        LocaleKey::ICON_SHORT_M => 'Hair9/',
        LocaleKey::ICON_SQUARE => 'Hair5/',
        LocaleKey::ICON_LONG_SQUARE => 'Hair1/',
        LocaleKey::ICON_LONG_FLAT => 'Hair2/',
        LocaleKey::ICON_LONG_PUFFY => 'Hair7/',
        LocaleKey::ICON_PONYTAIL => 'Hair3/',
        LocaleKey::ICON_PIGTAILS => 'Hair4/',
        LocaleKey::ICON_BUN => 'Hair6/'
    }
    HAIR_COLORS = {
        LocaleKey::ICON_WHITE => 'white',
        LocaleKey::ICON_LIGHT => 'light',
        LocaleKey::ICON_DARK => 'half',
        LocaleKey::ICON_BLACKS => 'dark'
    }

    def initialize
        @skintone = LocaleKey::ICON_PALE
        @corpulence = LocaleKey::ICON_MEDIUM
        @ears = LocaleKey::ICON_MEDIUMS
        @brows = LocaleKey::ICON_MEDIUMS_M
        @eyes = 'Eyes1/'
        @eye_color = LocaleKey::ICON_DARK
        @nose = LocaleKey::ICON_MEDIUM_M
        @mouth = 'mouth1'
        @hairstyle_front = LocaleKey::ICON_SHORT_M
        @hairstyle_back = LocaleKey::ICON_NONE_M
        @hair_color = LocaleKey::ICON_LIGHT
        @beard_color = LocaleKey::ICON_LIGHT
        @beard = LocaleKey::ICON_NONE
        @moustache = LocaleKey::ICON_NONE
        @sideburns = LocaleKey::ICON_NONES_M
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
            body_menu
        when '2'
            features_menu
        when '3'
            beard_menu
        when '4'
            hair_menu
        else
            Narrator.unsupported_choice_error
        end
        customize
    end

    def body_menu
        show
        Narrator.body_options
        case Narrator.user_input
        when '0'
            return
        when '1'
            @skintone = choose_color(TONES, @skintone)
        when '2'
            @corpulence = choose(SIZES, @corpulence, LocaleKey::ASK_CORPULENCE, Locale.get_localized(LocaleKey::KEEP_CORPULENCE))
        else
            Narrator.unsupported_choice_error
        end
        body_menu
    end

    def features_menu
        show
        Narrator.features_options
        case Narrator.user_input
        when '0'
            return
        when '1'
            @eye_color = choose_color(EYES_COLOR, @eye_color);
        when '2'
            @ears = choose(EARS, @ears, LocaleKey::ASK_EARS, Locale.get_localized(LocaleKey::KEEP_EARS))
        when '3'
            @nose = choose(NOSES, @nose, LocaleKey::ASK_NOSE, Locale.get_localized(LocaleKey::KEEP_NOSE))
        when '4'
            @brows = choose(BROWS, @brows, LocaleKey::ASK_EYEBROWS, Locale.get_localized(LocaleKey::KEEP_EYEBROWS))
        else
            Narrator.unsupported_choice_error
        end
        features_menu
    end

    def beard_menu
        show
        Narrator.beard_options
        case Narrator.user_input
        when '0'
            return
        when '1'
            @moustache = choose(MOUSTACHES, @moustache, LocaleKey::ASK_MOUSTACHE, Locale.get_localized(LocaleKey::KEEP_MOUSTACHE))
        when '2'
            @beard = choose(BEARDS, @beard, LocaleKey::ASK_BEARD, Locale.get_localized(LocaleKey::KEEP_BEARD))
        when '3'
            @sideburns = choose(SIDEBURNS, @sideburns, LocaleKey::ASK_SIDEBURNS, Locale.get_localized(LocaleKey::KEEP_SIDEBURNS))
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
            @hairstyle_front = choose(HAIRSTYLES_FRONT, @hairstyle_front, LocaleKey::ASK_HAIRCUT, Locale.get_localized(LocaleKey::KEEP_HAIRSTYLE))
        when '2'
            @hairstyle_back = choose(HAIRSTYLES_BACK, @hairstyle_back, LocaleKey::ASK_HAIRCUT, Locale.get_localized(LocaleKey::KEEP_HAIRSTYLE))
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
        choose(features, current, LocaleKey::ASK_FEATURE, Locale.get_localized(LocaleKey::KEEP_FEATURE))
    end

    def choose_color(colors, current)
        choose(colors, current, LocaleKey::ASK_COLOR, Locale.get_localized(LocaleKey::KEEP_COLOR))
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
