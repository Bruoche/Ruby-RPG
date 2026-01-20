class FR
    TEXTS = {
        # General
        Locale::ID_FR => "Français",
        Locale::ID_EN => "Anglais",
        LocaleKey::YES => "Oui",
        LocaleKey::NO => "Non",
        LocaleKey::YES_INPUT => 'o',
        LocaleKey::NO_INPUT => 'n',
        # Monster
        LocaleKey::BAT => "chauve-souris",
        LocaleKey::GOBLIN_F => "gobeline",
        LocaleKey::GOBLIN_M => "gobelin",
        LocaleKey::FIGHTER_GOBLIN_F => "garde gobeline",
        LocaleKey::FIGHTER_GOBLIN_M => "garde gobelin",
        LocaleKey::FORAGER_GOBLIN_F => "gobeline cueilleuse",
        LocaleKey::FORAGER_GOBLIN_M => "gobelin cueilleur",
        LocaleKey::GIANT_SLIME => "slime géant",
        LocaleKey::HARPY => "harpie",
        LocaleKey::KNIGHT_F => "chevalière",
        LocaleKey::NECROMANCER_F => "nécromancienne",
        LocaleKey::PRISONNER_F => "prisonnière oubliée",
        LocaleKey::SPIDER => "araignée",
        LocaleKey::ZOMBIE_F => "mort-vivante",
        LocaleKey::KNIGHT_M => "chevalier",
        LocaleKey::NECROMANCER_M => "nécromancien",
        LocaleKey::PRISONNER_M => "prisonnier oublié",
        LocaleKey::SKELETON => "squelette",
        LocaleKey::SLIME => "slime",
        LocaleKey::SPRIGGAN => "spriggan",
        LocaleKey::ZOMBIE_M => "mort-vivant",
        LocaleKey::POISON_SPIDER => "araignée maraicageuse",
        # Bodyparts
        LocaleKey::HEAD => "tête",
        LocaleKey::ARM => "bras",
        # Rooms
        LocaleKey::ALCOVE => "pièce",
        LocaleKey::CELL => "cellule",
        LocaleKey::CHAMBER => "chambre",
        LocaleKey::CLEARING => "clairière",
        LocaleKey::FOREST_GROUND => "terrain forestier",
        LocaleKey::GEOLLE => "geôle",
        LocaleKey::ROAD => "route",
        LocaleKey::ROOM => "salle",
        LocaleKey::TORTURE_CHAMBER => "chambre de torture",
        LocaleKey::CORRIDOR => "couloir",
        LocaleKey::PATH => "chemin",
        LocaleKey::REFECTORY => "réfectoire",
        LocaleKey::SLEEP_PLACE => "dortoir",
        LocaleKey::TUNNEL => "tunnel",
        LocaleKey::TRAIL => "piste",
        LocaleKey::MARSH => "marais",
        LocaleKey::SWAMP => "marécage",
        LocaleKey::BOG => "tourbière",
        # Female Adjectives
        LocaleKey::AGILE_F => "agile",
        LocaleKey::ANCIENT_F => "ancienne",
        LocaleKey::ANGRY_F => "énervée",
        LocaleKey::AUTHORITARIAN_F => "autoritaire",
        LocaleKey::BIG_F => "grosse",
        LocaleKey::BLUISH_F => "bleutée",
        LocaleKey::CALM_F => "calme",
        LocaleKey::COLD_F => "froide",
        LocaleKey::DARK_F => "sombre",
        LocaleKey::DRY_F => "sèche",
        LocaleKey::DUSTY_F => "poussiéreuse",
        LocaleKey::FLOODED_F => "innondée",
        LocaleKey::GLISTENING_F => "luisante",
        LocaleKey::GREEN_F => "verte",
        LocaleKey::GREYISH_F => "grisée",
        LocaleKey::HUMID_F => "humide",
        LocaleKey::ISOLATED_F => "isolée",
        LocaleKey::JADED_F => "blasée",
        LocaleKey::LEFT_F => "gauche",
        LocaleKey::LONG_F => "longue",
        LocaleKey::LOST_F => "perdue",
        LocaleKey::MUSCULAR_F => "musclée",
        LocaleKey::NARROW_F => "étroite",
        LocaleKey::OVERGROWN_F => "en friche",
        LocaleKey::POWERFULL_F => "puissante",
        LocaleKey::RIGHT_F => "droite",
        LocaleKey::RUINED_F => "en ruine",
        LocaleKey::SCARY_F => "terrifiante",
        LocaleKey::SCOUT_F => "éclaireuse",
        LocaleKey::SHINY_F => "brillante",
        LocaleKey::SILENT_F => "silencieuse",
        LocaleKey::SMALL_F => "petite",
        LocaleKey::SMART_F => "intelligente",
        LocaleKey::SPACIOUS_F => "spacieuse",
        LocaleKey::STRANGE_F => "étrange",
        LocaleKey::TALL_F => "grande",
        LocaleKey::TIRED_F => "fatiguée",
        LocaleKey::WARY_F => "méfiante",
        LocaleKey::WINDING_F => "sinueuse",
        LocaleKey::WORRIED_F => "inquiète",
        LocaleKey::WORRYING_F => "inquiétante",
        # Male Adjectives
        LocaleKey::AGILE_M => "agile",
        LocaleKey::ANCIENT_M => "ancien",
        LocaleKey::ANGRY_M => "énervé",
        LocaleKey::AUTHORITARIAN_M => "autoritaire",
        LocaleKey::BIG_M => "gros",
        LocaleKey::BLUISH_M => "bleuté",
        LocaleKey::CALM_M => "calme",
        LocaleKey::COLD_M => "froid",
        LocaleKey::DARK_M => "sombre",
        LocaleKey::DRY_M => "sec",
        LocaleKey::DUSTY_M => "poussiéreux",
        LocaleKey::FLOODED_M => "innondé",
        LocaleKey::GLISTENING_M => "luisant",
        LocaleKey::GREEN_M => "vert",
        LocaleKey::GREYISH_M => "grisé",
        LocaleKey::HUMID_M => "humide",
        LocaleKey::ISOLATED_M => "isolé",
        LocaleKey::JADED_M => "blasé",
        LocaleKey::LEFT_M => "gauche",
        LocaleKey::LONG_M => "long",
        LocaleKey::LOST_M => "perdu",
        LocaleKey::MUSCULAR_M => "musclé",
        LocaleKey::NARROW_M => "étroit",
        LocaleKey::OVERGROWN_M => "en friche",
        LocaleKey::POWERFULL_M => "puissant",
        LocaleKey::RIGHT_M => "droit",
        LocaleKey::RUINED_M => "en ruine",
        LocaleKey::SCARY_M => "terrifiant",
        LocaleKey::SCOUT_M => "éclaireur",
        LocaleKey::SHINY_M => "brillant",
        LocaleKey::SILENT_M => "silencieux",
        LocaleKey::SMALL_M => "petit",
        LocaleKey::SMART_M => "intelligent",
        LocaleKey::SPACIOUS_M => "spacieux",
        LocaleKey::STRANGE_M => "étrange",
        LocaleKey::TALL_M => "grand",
        LocaleKey::TIRED_M => "fatigué",
        LocaleKey::WARY_M => "méfiant",
        LocaleKey::WINDING_M => "sinueux",
        LocaleKey::WORRIED_M => "inquiet",
        LocaleKey::WORRYING_M => "inquiétant",
        # Player Icon
        LocaleKey::ICON_PALE => "pale",
        LocaleKey::ICON_HALF => "mate",
        LocaleKey::ICON_BLACK => "noire",
        LocaleKey::ICON_THIN => "maigre",
        LocaleKey::ICON_MEDIUM => "moyenne",
        LocaleKey::ICON_LARGE => "large",
        LocaleKey::ICON_WHITE => "blanc",
        LocaleKey::ICON_LIGHT => "clair",
        LocaleKey::ICON_DARK => "sombre",
        LocaleKey::ICON_AVERAGES => "moyennes",
        LocaleKey::ICON_ROUNDS => "rondes",
        LocaleKey::ICON_LARGES => "larges",
        LocaleKey::ICON_FLATS => "aplatis",
        LocaleKey::ICON_SMALL_ROUND_M => "petit rond",
        LocaleKey::ICON_NARROW_M => "fin",
        LocaleKey::ICON_MEDIUM_M => "moyen",
        LocaleKey::ICON_LARGE_M => "large",
        LocaleKey::ICON_NONE_M => "aucun",
        LocaleKey::ICON_ROUNDS_M => "ronds",
        LocaleKey::ICON_MINIS_M => "minis",
        LocaleKey::ICON_MEDIUMS_M => "moyens",
        LocaleKey::ICON_LARGES_M => "larges",
        LocaleKey::ICON_UNIBROW => "mono-sourcil",
        LocaleKey::ICON_NONE => "aucune",
        LocaleKey::ICON_BARBICHE => "barbiche",
        LocaleKey::ICON_MINIBOUC => "mini-bouc",
        LocaleKey::ICON_BOUC => "bouc",
        LocaleKey::ICON_THIN_BOUC => "bouc fin",
        LocaleKey::ICON_POINTY_BOUC => "bouc en pointe",
        LocaleKey::ICON_LONG_BOUC => "bouc long",
        LocaleKey::ICON_LARGE_BOUC => "bouc large",
        LocaleKey::ICON_SMALL_BEARD => "petite barbe",
        LocaleKey::ICON_BEARD => "barbe",
        LocaleKey::ICON_LONG_BEARD => "barbe longue",
        LocaleKey::ICON_NARROW => "fine",
        LocaleKey::ICON_BUSH => "broussaille",
        LocaleKey::ICON_HORSESHOE => "fer à cheval",
        LocaleKey::ICON_FUMANCHU => "Fu Manchu",
        LocaleKey::ICON_BRUSH => "brosse",
        LocaleKey::ICON_CRAYON => "crayon",
        LocaleKey::ICON_FRENCH => "française",
        LocaleKey::ICON_HOOK => "crochet",
        LocaleKey::ICON_BIKEHANDLE => "guidon",
        LocaleKey::ICON_NONES_M => "aucuns",
        LocaleKey::ICON_PREPUBESCENT => "prépubaires",
        LocaleKey::ICON_LONG_PREPUBESCENT => "prépubères longue",
        LocaleKey::ICON_START_GROWTH => "début de pousse",
        LocaleKey::ICON_THINS => "fines",
        LocaleKey::ICON_SHORT_CUT => "coupées court",
        LocaleKey::ICON_POINTY_SIDEBURN => "pointes",
        LocaleKey::ICON_MEDIUMS => "moyennes",
        LocaleKey::ICON_LONG_SIDEBURNS => "longues",
        LocaleKey::ICON_COMPLETES => "complètes",
        LocaleKey::ICON_LONG_COMPLETES => "complètes longues",
        LocaleKey::ICON_BALD => "chauve",
        LocaleKey::ICON_RECEEDING => "calvitie",
        LocaleKey::ICON_SHAVED => "rasé",
        LocaleKey::ICON_FLAT => "plaqués",
        LocaleKey::ICON_ATTACHED => "attachés",
        LocaleKey::ICON_SHORT_M => "court",
        LocaleKey::ICON_SPIKY => "pointes",
        LocaleKey::ICON_FRINGE1 => "frange 1",
        LocaleKey::ICON_FRINGE2 => "frange 2",
        LocaleKey::ICON_FLAT_FRINGE => "frange lisse",
        LocaleKey::ICON_SHORT_BLIND_FRINGE => "frange rideau courte",
        LocaleKey::ICON_BLIND_FRINGE => "frange rideau",
        LocaleKey::ICON_OVER_EYES => "couvre-yeux",
        LocaleKey::ICON_EYE_COVER => "couvre-oeil",
        LocaleKey::ICON_STRAIGHT_STRANDS => "meches droites",
        LocaleKey::ICON_DIAGONALS_STRANDS => "meches diagonales",
        LocaleKey::ICON_LARGE_STRANDS => "meches larges",
        LocaleKey::ICON_MOHAWK => "crête",
        LocaleKey::ICON_VERY_SHORT_M => "très court",
        LocaleKey::ICON_SQUARE => "carré",
        LocaleKey::ICON_LONG_SQUARE => "carré long dégradé",
        LocaleKey::ICON_LONG_FLAT => "cheveux longs lisses",
        LocaleKey::ICON_LONG_PUFFY => "cheveux longs épais",
        LocaleKey::ICON_PONYTAIL => "queue de cheval",
        LocaleKey::ICON_PIGTAILS => "couettes",
        LocaleKey::ICON_BUN => "chignon",
        LocaleKey::ICON_BLACKS => "noirs",
        # Other
        LocaleKey::NAME_TEMPLATE => "%{#{LocaleKey::F_PREFIX}} %{#{LocaleKey::F_NAME}} %{#{LocaleKey::F_SUFFIX}}",
        LocaleKey::AND_SPACED => " et ",
        LocaleKey::PAGE => "Page",
        LocaleKey::A_F => "une ",
        LocaleKey::A_M => "un ",
        LocaleKey::AN_F => "une ",
        LocaleKey::AN_M => "un ",
        LocaleKey::THE_N => "l'",
        LocaleKey::THE_F => "la ",
        LocaleKey::THE_M => "le ",
        LocaleKey::THIS_F => "cette ",
        LocaleKey::THIS_M => "ce ",
        LocaleKey::OF_N => "de l'",
        LocaleKey::OF_F => "de la ",
        LocaleKey::OF_M => "du ",
        LocaleKey::NOTHING => "rien",
        LocaleKey::YOURSELF => "vous-même",
        LocaleKey::GO_BACK => "retour...",
        LocaleKey::ABORT => "annuler...",
        LocaleKey::GO_BACK_ENUMERATED => "    0) Retour...",
        LocaleKey::ABORT_ENUMERATED   => "    0) Annuler...",
        LocaleKey::WARNING_POP_UP => [
            "",
            "Attention :",
            "Mourir dans ce jeu vous fera perdre toute votre progression en cours dans le donjon.",
            "Sortez du donjon pour sauvegarder votre progression.",
            "",
            "Infos sur le terminal :",
            "Presser [Ctrl + C] fermera le jeu.",
            "Presser [Alt + Entrée] met le jeu en plein écran.",
            "",
            "Pour une experience optimale, assurez vous de bien voir quatres nuances de gris ci-dessous :",
            "░ ▒ ▓ █",
            "",
            "Si vous ne voyez pas quatres carrés ci-dessus, veuillez changer vos paramètres de terminal pour selectionner une police supportant ces caractères",
            "(par exemple : Consolas)",
            ""
        ],
        LocaleKey::WARNING_POP_UP_OPTIONS => [
            "    1) Ok",
            "    2) Ne plus me le rappeler"
        ],
        LocaleKey::WARNING_POP_UP_SETTINGS => [
            "Souhaitez-vous que cet avertissement s'affiche au démarrage du jeu ?",
            "    1) Montrer au démarrage",
            "    2) Ne pas montrer"
        ],
        LocaleKey::MAIN_MENU_OPTIONS => [
            "",
            "",
            "    1) Entrer dans le donjon",
            "    2) Options",
            "    3) Quitter"
        ],
        LocaleKey::SELECT_MULTIPLE_OPTIONS => "[0] Confirmer | [E] Tout sélectionner | [R] Tout dé-sélectionner",
        LocaleKey::PARTY_LIST_TITLE => "Aventuriers entrant dans le donjon : ",
        LocaleKey::PARTY_MANAGE_OPTIONS => [
            "",
            "",
            "    0) Retour",
            "    1) Ajouter un membre à l'équipe"
        ],
        LocaleKey::PARTY_MANAGE_REMOVE_OPTION => "    2) Retirer un membre de l'équipe",
        LocaleKey::START_TRAVEL_OPTION => ") Commencer le voyage",
        LocaleKey::NEW_OR_OLD_CHARACTER => [
            "    0) Retour",
            "    1) Nouveau personnage",
            "    2) Personnage existant"
        ],
        LocaleKey::CHARACTER_CREATION_OPTIONS => [
            "Quel élément souhaitez-vous modifier ?",
            "    0) Valider l'apparence",
            "    1) Corps",
            "    2) Traits du visage",
            "    3) Pilosité faciale",
            "    4) Cheveux"
        ],
        LocaleKey::BODY_OPTIONS => [
            "Quel élément souhaitez-vous modifier ?",
            "    0) Retour...",
            "    1) Couleur de peau",
            "    2) Corpulence",
        ],
        LocaleKey::FEATURES_OPTIONS => [
            "Quel trait du visage souhaitez-vous modifier ?",
            "    0) Retour...",
            "    1) Couleur des yeux",
            "    2) Les oreilles",
            "    3) Le nez",
            "    4) Les sourcils",
        ],
        LocaleKey::CHARACTER_CREATION_BEARD_OPTIONS => [
            "Quel élément souhaitez-vous modifier ?",
            "    0) Retour...",
            "    1) La moustache",
            "    2) Le menton",
            "    3) Les pattes",
            "    4) La couleur"
        ],
        LocaleKey::CHARACTER_CREATION_HAIR_OPTIONS => [
            "Quel élément souhaitez-vous modifier ?",
            "    0) Retour...",
            "    1) La coupe",
            "    2) La couleur"
        ],
        LocaleKey::CHARACTER_CREATION_HAIRSTYLE_OPTIONS => [
            "Quelle partie de votre coupe de cheveux souhaitez-vous modifier ?",
            "    0) Retour...",
            "    1) L'avant",
            "    2) L'arrière"
        ],
        LocaleKey::SETTINGS_OPTIONS => [
            "Quelles options souhaitez-vous gérer ?",
            "    0) Retour...",
            "    1) Hauteur des images",
            "    2) Audio",
            "    3) Langue",
            "    4) Informations"
        ],
        LocaleKey::ASSET_SIZE_VERIFICATION => "Si vous voyez ce texte les images ont une taille acceptable.",
        LocaleKey::CURRENT_MUSIC_VOLUME => "Volume de la musique : ",
        LocaleKey::CURRENT_SOUND_EFFECTS => "Effets sonores : ",
        LocaleKey::SOUND_OPTIONS => [
            "Que souhaitez-vous faire ?",
            "    0) Retour...",
            "    1) Modifier le volume de la musique",
            "    2) Modifier le volume des effets sonores",
            "    3) (avancé) Pré-charger les musiques"
        ],
        LocaleKey::ASSET_SIZE_OPTIONS => [
            "Vérifiez que le texte au-dessus de l'image est bien lisible sans nécessiter un scroll vers le haut.",
            "Si tel est le cas, alors votre taille d'image est bonne pour votre taille d'écran.",
            "",
            "Autrement, tentez de mettre les images en petites tailles,",
            "ou de réduire la taille de police du texte de votre terminal si cela ne suffit pas.",
            "",
            "Quelle taille d'image souhaitez-vous ?",
            "    0) Retour",
            "    1) Grande (recommandée)",
            "    2) Petite"
        ],
        LocaleKey::LANGUAGE_SETTINGS_TITLE => "Quelle langue souhaitez-vous ? (Langue actuelle : %s)",
        LocaleKey::LANGUAGE_POP_UP_TITLE => "Quelle langue souhaitez-vous ?",
        LocaleKey::CURRENT_EQUIPMENT_TITLE => "Equipement actuel : ",
        LocaleKey::EQUIPMENT_OPTIONS => [
            "Que voulez-vous faire ?",
            "    0) Retour",
            "    1) Equiper une nouvelle pièce d'armure"
        ],
        LocaleKey::EQUIPMENT_REMOVE_OPTION => "    2) Retirer une pièce d'armure",
        LocaleKey::INVENTORY_OPTIONS => [
            "",
            "Que souhaitez-vous faire ?",
            "      0) Retour",
            "      1) Utiliser un objet",
            "      2) Gérer l'equipement"
        ],
        LocaleKey::INVENTORY_OPTIONS_SHOP => [
            "",
            "Que voulez-vous faire ?",
            "    0) Retour...",
            "    1) Gérer l'équipement"
        ],
        LocaleKey::PLAYER_OPTIONS_FIRST => [
            "Que souhaitez-vous faire ?",
            "    1) Aller à..."
        ],
        LocaleKey::PLAYER_OPTIONS_SEARCH => "    2) Fouiller ",
        LocaleKey::PLAYER_OPTIONS_SECOND => [
            "    3) Faire un inventaire",
            "    4) Attendre"
        ],
        LocaleKey::PLAYER_FIGHT_OPTION => "Attaquer ",
        LocaleKey::STAT_UP_TITLE => "Quelle statistique souhaitez-vous augmenter ? (%{#{LocaleKey::F_CURRENT}}/%{#{LocaleKey::F_TOTAL}})",
        LocaleKey::STAT_UP_HEALTH       => "    1) ♥ Vie            (%{#{LocaleKey::F_CURRENT}} -> %{#{LocaleKey::F_NEW}})",
        LocaleKey::STAT_UP_STRENGTH     => "    2) ♣ Force          (%{#{LocaleKey::F_CURRENT}} -> %{#{LocaleKey::F_NEW}})",
        LocaleKey::STAT_UP_INTELLIGENCE => "    3) ♠ Intelligence   (%{#{LocaleKey::F_CURRENT}} -> %{#{LocaleKey::F_NEW}})",
        LocaleKey::STAT_UP_AGILITY      => "    4) ♦ Agilité        (%{#{LocaleKey::F_CURRENT}} -> %{#{LocaleKey::F_NEW}})",
        LocaleKey::TELEPORT_OPTIONS => [
            "Où souhaitez-vous aller ?",
            "    0) Annuler",
            "    1) La sortie"
        ],
        LocaleKey::TELEPORT_JOIN_OPTION => "Rejoindre ",
        LocaleKey::ASK_CATALYST_TARGET => "Quels monstres souhaitez-vous inclure dans l'attaque magique ? (exclure tous pour annuler)",
        LocaleKey::YES_OR_NO => [
            "    1) Oui",
            "    2) Non"
        ],
        LocaleKey::NO_ITEMS_TO_USE => "Vous n'avez pas d'objets à utiliser.",
        LocaleKey::NO_ITEMS_TO_SELL => "Aucun objet à vendre.",
        LocaleKey::NO_ITEMS_TO_UPGRADE => "Aucune armure à améliorer.",
        LocaleKey::NO_ITEMS_TO_EQUIP => "Aucun objet à équiper.",
        LocaleKey::INVENTORY_TITLE => "Vous possédez : ",
        LocaleKey::SHOP_INTRO => [
            "",
            "Sur votre chemin vers le donjon,",
            "Vous décidez de faire une courte halte auprès d'une échoppe pour voir les équipements que vous pourriez employer, anticipant ce qui vous attend.",
            ""
        ],
        LocaleKey::GUILD_INVITE_INTRO => "Alors que vous preniez votre route habituelle, un homme imposant vous approche, une expression joviale peinte sur son visage.",
        LocaleKey::GUILD_INVITE_PARTY_DIALOG => "Eh vous, vous êtes des aventuriers aussi n'est-ce pas ?\nUne guilde à récemment été ouverte au centre du village pour servir de base d'opération à ceux qui explorent la tour nouvellement apparue.\nVous semblez bien gaillards, je suis sûr que vous vous sentiriez comme chez vous là-bas. Et puis, on a de la bière et de l'équipement à vendre, je suis sûr que vous y trouverez votre bonheur.",
        LocaleKey::GUILD_INVITE_DIALOG => "Eh vous, vous êtes là pour le donjon aussi n'est-ce pas?\nUne guilde à récemment été ouverte au centre du village pour servir de base d'opération à ceux qui explorent la tour nouvellement apparue.\nVous semblez robuste, je suis sûr que vous vous sentiriez comme chez vous là-bas. Et puis, on a de la bière et de l'équipement à vendre, je suis sûr que vous y trouverez votre bonheur.",
        LocaleKey::GUILD_INVITE_END => "Avant que vous ne puissiez répondre, l'homme vous tend une carte d'invitation à la Guilde des Aventuriers et reprend son chemin.",
        LocaleKey::ASK_OUTSIDE_DESTINATION => [
            "Où souhaitez vous aller ?",
            "    0) Le donjon",
            "    1) La Guilde des Aventuriers",
            "    2) Magasin ambulant"
        ],
        LocaleKey::GUILD_DESCRIPTION => [
            "Lorsque vous entrez dans le grand bâtiment logeant la Guilde des Aventuriers, ",
            "Vous êtes accueilli par une grande salle ouverte remplie de combattants et du brouhaha des nombreuses discussions joviales prenant place autour des tablées placées en face d'un bar.",
            "Cette vue vous fait vous rendre compte du nombre énorme de personnes s'étant déplacées tout comme vous pour tirer parti de la tour récemment apparue.",
            "Sur votre gauche, vous remarquez également qu'une forge et une petite échoppe ont été installées dans le bâtiment, offrant des équipements variés.",
            "",
            "L'ambiance, bien que bruyante, s'avère généralement chaleureuse, et cela vous réconforte après tout ce temps passé dans la froide solitude du donjon."
        ],
        LocaleKey::ASK_GUILD_ACTION => [
            "Que souhaitez-vous faire ?",
            "    0) Sortir de la guilde",
            "    1) Aller à la forge",
            "    2) Aller au magasin"
        ],
        LocaleKey::FIRST_INTRO => [
            "Vous n'êtes pas exactement sûr·e de la raison de votre venue en ce lieu.",
            "Mais qu'il s'agisse d'une recherche de trésors, de pouvoir ou juste une soif de connaissances,",
            "Vous êtes maintenant au pieds d'un donjon étrange et réputé comme étant sans fond.",
            "",
            "Armé·e de votre courage et d'une épée, vous entrez dans la grande batisse sombre."
        ],
        LocaleKey::NEW_MEMBERS_INTRO => [
            "Après votre précédente expérience dans le donjon,",
            "Vous avez décidés de revenir plus nombreux, de nouveaux membres s'ajoutant à votre escouade.",
            "Ces donjons vous obsèdent, et il vous faut en découvrir les tréfonds quoi qu'ils ne renferment."
        ],
        LocaleKey::RETURN_INTRO => [
            "Malgré que vous ayez survécus au donjon, quelque chose en vous semblait appelé par ce dernier.",
            "Un besoin d'y retourner et découvrir ce qui se cache plus profondémment, d'en déterrer les trésors et d'en prendre la puissance.",
            "Vous ouvrez la grande porte de la tour mystérieuse, mais, à votre surprise lorsque vous y pénétrez plus rien n'est pareil qu'avant."
        ],
        LocaleKey::THANK_YOU_NOTE => [
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
        ],
        LocaleKey::PRESS_CONTINUE => "  (pressez \"Entrée\" pour continuer...)",
        LocaleKey::ENTER_ROOM => "Lorsque vous entrez dans ",
        LocaleKey::EMPTY_ROOM_F => "celle-ci vous semble entièrement vide.",
        LocaleKey::EMPTY_ROOM_M => "celui-ci vous semble entièrement vide.",
        LocaleKey::IN_A_ROOM => "Vous êtes dans ",
        LocaleKey::IS_EMPTY => " vide.",
        LocaleKey::MONSTER_ROOM => ", vous voyez %s.",
        LocaleKey::MONSTER_ROOM_FIGHTING => ", vous voyez %{#{LocaleKey::F_ALLIES}} combattant %{#{LocaleKey::F_ENNEMIES}}.",
        LocaleKey::DEAD_ALLY => "Le corps de %s gît sur le sol.",
        LocaleKey::DEAD_ALLIES => "Les corps de %s gisent sur le sol.",
        LocaleKey::ALLY_ASIDE => "À vos côtés se trouve ",
        LocaleKey::ALLIES_ASIDE => "À vos côtés se trouvent ",
        LocaleKey::AND_DEAD_ALLY => "et le corps de ",
        LocaleKey::AND_DEAD_ALLIES => "et les corps de ",
        LocaleKey::ATTACK_MONSTERS => "Vous vous jetez sur les monstres se tenant face à vous.",
        LocaleKey::ATTACK_MONSTER => "Vous vous jetez sur le monstre se tenant face à vous.",
        LocaleKey::AVOID_FIGHT => "Ne souhaitant pas combattre %s, vous faites profil bas.",
        LocaleKey::FAIL_ESCAPE_PLURAL => "Alors que vous tentez d'éviter les monstres, ceux-ci vous remarquent et se jettent sur vous.",
        LocaleKey::FAIL_ESCAPE_SINGLE => "Alors que vous tentez d'éviter le monstre, celui-ci vous remarque et se jette sur vous.",
        LocaleKey::GAME_OVER_PLURAL => "Malheureusement, l'attaque des monstres a raison de vous, et vous vous effondrez au sol.",
        LocaleKey::GAME_OVER_SINGLE => "Malheureusement, l'attaque du monstre a raison de vous, et vous vous effondrez au sol.",
        LocaleKey::ESCAPE => "Ce combat ne valant plus la peine pour vous, vous vous échappez.",
        LocaleKey::ESCAPE_FAIL_PLURAL => "Vous tentez de vous échapper, mais les monstres ne vous laissent pas faire.",
        LocaleKey::ESCAPE_FAIL_SINGLE => "Vous tentez de vous échapper, mais le monstre ne vous laisse pas faire.",
        LocaleKey::VICTORY_PLURAL => "Victoire ! Tous les monstres meurent et vous obtenez %d points d'expérience.",
        LocaleKey::VICTORY_SINGLE => "Victoire ! Le monstre meurt et vous laisse %d points d'expérience.",
        LocaleKey::EXPLORATION_CONTINUE => "Vous reprenez votre exploration du donjon.",
        LocaleKey::EXIT_SCARED => "Trop effrayé·e par les terreurs du donjon, ",
        LocaleKey::EXIT_DONE => "En ayant terminé avec le donjon, ",
        LocaleKey::EXIT_SURVIVED => [
            "Vous quittez l'étrange batisse.",
            "Vous avez survécu.",
            ""
        ],
        LocaleKey::HURT_MESSAGE => "%{#{LocaleKey::F_TARGET}} prend %{#{LocaleKey::F_AMOUNT}} dégats.",
        LocaleKey::DETAILED_HURT_MESSAGE => "%{#{LocaleKey::F_TARGET}} prend %{#{LocaleKey::F_AMOUNT}} dégats. (%{#{LocaleKey::F_TOTAL}} reçu, %{#{LocaleKey::F_DODGED}} esquivé%{#{LocaleKey::F_PARRIED}})",
        LocaleKey::HEAL_MESSAGE => "%{#{LocaleKey::F_TARGET}} récupère %{#{LocaleKey::F_AMOUNT}} points de vie.",
        LocaleKey::DONT_NEED_HEAL => "%s n'est pas blessé·e et n'a donc pas besoin d'être soigné·e.",
        LocaleKey::HEAL_FAIL_MESSAGE => "Vous ne savez pas comment vous soigner.",
        LocaleKey::HEAL_SPELL_MESSAGE => "%{#{LocaleKey::F_SOURCE}} soigne %{#{LocaleKey::F_TARGET}}.",
        LocaleKey::SELF_HEAL_MESSAGE => "%{#{LocaleKey::F_TARGET}} se soigne %{#{LocaleKey::F_AMOUNT}} points de vie.",
        LocaleKey::SPELL_FAIL => "Dépourvu·e de puissance magique, vous ne parvenez pas à lancer de sorts.",
        LocaleKey::SPELL_CAST => "%s lance une attaque magique.",
        LocaleKey::MONSTER_DEATH => "%s s'effondre sous vos coups.",
        LocaleKey::PLAYER_DEATH => "%s s'effondre au sol.",
        LocaleKey::OBTAIN_ITEM => "%{#{LocaleKey::F_TARGET}} obtiens %{#{LocaleKey::F_ITEM}}.",
        LocaleKey::REMOVE_ARMOR => "%{#{LocaleKey::F_TARGET}} retire %{#{LocaleKey::F_ITEM}}.",
        LocaleKey::EQUIP_ARMOR => "%{#{LocaleKey::F_TARGET}} s'équipe d'%{#{LocaleKey::F_ITEM}}.",
        LocaleKey::SEARCHING => "Vous fouillez %s pour tous objet pouvant vous être utile",
        LocaleKey::ALREADY_TAKEN => "Vous avez déjà pris tous les objets à prendre dans %s.",
        LocaleKey::NOTHING_FOUND => "Vous ne trouvez rien de valeur.",
        LocaleKey::LEVEL_UP => "%s gagne un niveau !",
        LocaleKey::UNKNOWN_USE => "Vous ne savez pas quoi faire de cet objet...",
        LocaleKey::BANDAGE_USE_SELF => "%s utilise ses bandages pour soigner ses blessures...",
        LocaleKey::BANDAGE_USE_OTHER => "%{#{LocaleKey::F_SOURCE}} utilise des bandages pour soigner les blessures de %{#{LocaleKey::F_TARGET}}...",
        LocaleKey::TOSS_COIN => "Vous lancez la pièce dans les airs",
        LocaleKey::COIN_TOSS_SUSPENSE => "La pièce retombe et roule sur elle-même avant de se stabiliser",
        LocaleKey::COIN_TOSS_RESULT => "La pièce est tombée sur %s.",
        LocaleKey::HEALTH_POTION_USE_SELF => "%s bois une potion de soin...",
        LocaleKey::HEALTH_POTION_USE_OTHER => "%{#{LocaleKey::F_SOURCE}} donne une potion de soin à %{#{LocaleKey::F_TARGET}}...",
        LocaleKey::HEALTH_STONE_USE_SELF => "%s utilise une pastille de soin...",
        LocaleKey::HEALTH_STONE_USE_OTHER => "%{#{LocaleKey::F_SOURCE}} donne une pastille de soin à %{#{LocaleKey::F_TARGET}}...",
        LocaleKey::TELEPORTER_FAIL => "Alors que vous tentez d'aggriper l'artéfact pour vous échapper, vos adversaires vous en empêchent.",
        LocaleKey::TELEPORTER_START => "Lorsque vous prenez la pierre en votre main, une douce chaleur en émane.",
        LocaleKey::POISON_DESCRIPTION_SELF => "Vous sentez votre corps entier brûler alors que le poison traverse vos veines.",
        LocaleKey::POISON_DESCRIPTION => "Le poison traverse ses veines.",
        LocaleKey::POISON_ATTACK_DESCRIPTION_SELF => "Votre arme est enduite de poison.",
        LocaleKey::POISON_ATTACK_DESCRIPTION => "Son arme est enduite de poison.",
        LocaleKey::POISONNED => "%s se fait empoisonner",
        LocaleKey::POISON_AFFECT => "%s sent le poison brûler en son corps.",
        LocaleKey::HEALING_DESCRIPTION_SELF => "Vous sentez une douce chaleur émerger de vous-même pendant que les blessures sur votre corps se soignent doucement.",
        LocaleKey::HEALING_DESCRIPTION => "Ses blessures se soignent doucement.",
        LocaleKey::RAGE_DESCRIPTION_SELF => "Vous êtes emplis de rage.",
        LocaleKey::RAGE_DESCRIPTION => "Est emplis de rage, frappant fort et aveuglément.",
        LocaleKey::RAGING => "%s est enragé.",
        LocaleKey::SLIME_DIVIDE => "Bien qu'il ai été liquéfié, les résidus verdâtres %s se reforment en deux petits slimes.",
        LocaleKey::KNIGHT_SLASH => "Le chevalier assène un coup d'épée puissant avec l'objectif de trancher son ennemi.",
        LocaleKey::KNIGHT_LIMB_LOSS => "%s se brise sous vos coups.",
        LocaleKey::KNIGHT_CHANGE_WEAPON_SIDE => "%s change son arme de main.",
        LocaleKey::KNIGHT_PHASE_CHANGE => "Il semble être pris d'une résolution soudaine et insoupçonnée.",
        LocaleKey::KNIGHT_DEFENSELESS => "%s laisse son arme tomber au sol, impuissant.",
        LocaleKey::KNIGHT_DEATH_FIRST => "Le casque %s s'enfonce sous vos coups,",
        LocaleKey::KNIGHT_DEATH_SECOND => "Sous la pression du métal contre son crâne, un craquement sinistre résonne en son coeur.",
        LocaleKey::KNIGHT_DEATH_THIRD => "Le chevalier reste immobile quelques instants, avant de s'effondrer soudainement.",
        LocaleKey::ELDER_GOBLIN_SURPRISE_ATTACK_DIRECT => "Votre attaque surprise sur leur ancienne bien-aimée enrage le reste des goblins.",
        LocaleKey::ELDER_GOBLIN_SURPRISE_ATTACK_ADVISOR => "Votre attaque surprise sur ses aidants enrage la vieille gobline.",
        LocaleKey::ELDER_GOBLIN_DELEGATE => "%{#{LocaleKey::F_SUBJECT}} signe à %{#{LocaleKey::F_OBJECT}} quoi faire.",
        LocaleKey::ELDER_GOBLIN_LIMB_LOSS => "%s se brise sous votre assault.",
        LocaleKey::ELDER_GOBLIN_ARMLESS => "Alors qu'elle semblait désarmée, ne pouvant plus utiliser ses bras pour se défendre, vous voyez la gobline commencer à marmonner des prières.",
        LocaleKey::GOBLIN_ELDER_BOSS_DEATH_RAGE => "Alors que le corps frèle et ensenglanté de la gobline s'écrase contre le sol, sa petite chaise tombant bruyamant avec elle, les autres goblins observent sous le choc. Après quelques instants de suspent, ils se tournent vers vous le regard empli de larmes et de rage.",
        LocaleKey::GOBLIN_ELDER_BOSS_GRIEF_RAGE => "Alors que le deuxième aidant de la gobline atteint le sol, immobile, vous pouvez voir le museau de l'ancienne gobline se distordre de rage.",
        LocaleKey::ASK_CONFIRM_RETURN_SELECT => "Confirmez-vous la selection? (%{#{LocaleKey::F_AMOUNT}}/%{#{LocaleKey::F_TOTAL}} sélectionnés)",
        LocaleKey::ASK_NAME => "Quel est votre nom ?",
        LocaleKey::CURRENT_NAME => "Nom actuel : ",
        LocaleKey::ASK_CONFIRM_CHARACTER => [
            "Est-ce qui vous êtes ?",
            "    0) Annuler la création du personnage",
            "    1) Changer de nom",
            "    2) Changer d'apparence",
            "    3) Confirmer"
        ],
        LocaleKey::ASK_SHOP => [
            "Que souhaitez-vous faire ?",
            "    a) Continuer",
            "    b) Retour au menu principal"
        ],
        LocaleKey::ASK_VOLUME => "Quel volume souhaitez-vous ? (volume actuel : %s%%)",
        LocaleKey::ASK_SOUND_EFFECTS => [
            "Souhaitez-vous des effets sonores ?",
            "    0) Retour...",
            "    1) Oui",
            "    2) Non"
        ],
        LocaleKey::ASK_MAX_SONG_PRELOADED_INTRO => [
            "Garder les musiques chargées permet de réduire les temps de chargement lorsque vous retournez dans une zone déjà visitée.",
            "Le plus de musiques sont gardées en mémoire, le plus de zones peuvent être visitées puis re-visitées sans chargement, mais le plus de mémoire sera utilisé."
        ],
        LocaleKey::ASK_MAX_SONG_PRELOADED => "Combien de musiques devraient être gardées en mémoire? (quantité actuelle : %d)",
        LocaleKey::ASK_USE => "Que souhaitez faire avec %s ?",
        LocaleKey::GIVE_OPTION => "    2) Donner",
        LocaleKey::ASK_QUANTITY_GIVEN => "Combien de %s souhaitez-vous donner ?",
        LocaleKey::ASK_QUANTITY_SOLD => "Combien de %s souhaitez-vous vendre ?",
        LocaleKey::PROPOSE_COMBAT => [
            "Que voulez-vous faire ?",
            "      1) Combattre"
        ],
        LocaleKey::PROPOSE_SNEAK => "      2) Rester discret (%s%% de chances de réussite)",
        LocaleKey::INTERACTIBLES_OPTION => "    5) Intéractions...",
        LocaleKey::NPC_INTERACT_OPTION => "Intéragir avec %s",
        LocaleKey::DESCRIBE_ENNEMIES => "Vous faites face à %s.",
        LocaleKey::DESCRIBE_PASSIVES => "Vous voyez également %s à vos côtés, ne semblant pas vous vouloir de mal.",
        LocaleKey::DEFAULT_NPC_DESCRIPTION => "A vos côtés se trouve %s.",
        LocaleKey::NPC_FIGHTING_DESCRIPTION => "Vous voyez %s en position de combat.",
        LocaleKey::FIGHT_ACTIONS => [
            "Que voulez-vous faire ?",
            "      1) Attaque physique",
            "      2) Attaque magique",
            "      3) Sort de soin",
            "      4) Utiliser un objet..."
        ],
        LocaleKey::ESCAPE_COMBAT => "      5) Fuir... (%d%% de chances de réussite)",
        LocaleKey::TRY_AGAIN => [
            "Réessayer ?",
            "      1) Oui",
            "      2) Non"
        ],
        LocaleKey::ARMOR_CHANGE_CONFIRMATION => "Êtes-vous sûr·e de vouloir remplacer votre armure actuelle par %s ?",
        LocaleKey::NPC_QUESTION_INTRO => [
            "Que souhaitez-vous faire ?",
            "    0) Retour"
        ],
        LocaleKey::NPC_OPTION_TALK => "    1) Parler à %s",
        LocaleKey::NPC_OPTION_ATTACK => "    %i) Attaquer %s",
        LocaleKey::NPC_UNAVAILABLE => "Trop occupée à combattre, %s n'est pas disponible.",
        LocaleKey::NPC_ATTACK_CONFIRM => "Attaquer %s?",
        LocaleKey::ASK_INTERACTION => "Que souhaitez-vous faire ?",
        LocaleKey::UNSUPPORTED_CHOICE_ERROR => "Choix invalide, Veuillez simplement écrire le chiffre correspondant à une des options proposées.",
        LocaleKey::PAGE_UP_IMPOSSIBLE_ERROR => "Impossible de passer à la page suivante. Page maximale atteinte.",
        LocaleKey::PAGE_DOWN_IMPOSSIBLE_ERROR => "Impossible de passer à la page précédente. Page minimale atteinte.",
        LocaleKey::EMPTY_NAME_ERROR => "Le champ ne peut être vide.",
        LocaleKey::FORBIDDEN_CHAR_ERROR => "Le champ ne peut pas contenir de caractères spéciaux ou chiffres.",
        LocaleKey::NO_FILE_FOUND_ERROR => "Aucun fichier nommé %s n'a pu être trouvé.",
        LocaleKey::NEGATIVE_QUANTITY_ERROR => "Vous ne pouvez pas donner un nombre négatif d'objet, veuillez inscrire un nombre positif.",
        LocaleKey::UNEXPECTED_DAMAGE_TYPE_ERROR => "<< unexpected damage type encountered >>",
        LocaleKey::UNEXPECTED_ERROR => "<< une erreur inattendue est survenue >>",
        LocaleKey::CLOSE_GAME_CONFIRM => [
            "Êtes vous sûr·e de vouloir fermer le jeu ? (y/n)",
            "Toute progression non sauvegardée sera perdue."
        ],
        LocaleKey::PRECEDENT_PAGE             => "< a) Page précédente | ",
        LocaleKey::PRECEDENT_PAGE_UNAVAILABLE => "< a) (indisponible)  | ",
        LocaleKey::NEXT_PAGE             => " |  z) Page suivante >",
        LocaleKey::NEXT_PAGE_UNAVAILABLE => " | z) (indisponible) >",
        LocaleKey::RETURN_BUTTON => " [ 0) Retour ] ",
        LocaleKey::NO_IMAGE_FOUND => "     (aucune image \"%s\" n'a été trouvée)",
        LocaleKey::LEVEL_ABBREVIATION => " Niv. ",
        LocaleKey::TIME_PLAYED => "Temps joué : ",
        LocaleKey::CARD_LEVEL => "Niveau : ",
        LocaleKey::CARD_HEALTH => "Santé : ",
        LocaleKey::CARD_STRENGTH => "Force : ",
        LocaleKey::CARD_AGILITY => "Agilité : ",
        LocaleKey::CARD_INTELLIGENCE => "Intelligence : ",
        LocaleKey::CARD_PRICE => "Prix : ",
        LocaleKey::UNSAVED_RETURN_CONFIRM => [
            "Êtes-vous sûr·e de vouloir revenir en arrière ?",
            "Les modifications effectuées ne seront pas sauvegardées."
        ],
        LocaleKey::CHARACTER_UNSAVED_RETURN_CONFIRM => [
            "Êtes-vous sûr·e de vouloir revenir en arrière ?",
            "Les personnages sélectionnés ne seront pas sauvegardés"
        ],
        LocaleKey::ASK_MONSTER_AIMED_AT => "Quel ennemi souhaitez-vous attaquer ?",
        LocaleKey::ASK_MEMBER_AIMED_AT => "Quel membre souhaitez-vous viser ?",
        LocaleKey::STATUS_INTRO => "%{#{LocaleKey::F_SUBJECT}} est un·e aventurier·ère de niveau %{#{LocaleKey::F_LEVEL}}.",
        LocaleKey::STATUS_INTRO_SELF => "Vous êtes %{#{LocaleKey::F_SUBJECT}}, un·e aventurier·ère de niveau %{#{LocaleKey::F_LEVEL}}.",
        LocaleKey::STATUS_STATS => "A %{#{LocaleKey::F_LIFE}} de vie, une force de %{#{LocaleKey::F_STRENGTH}}, une intelligence de %{#{LocaleKey::F_INTELLIGENCE}} et %{#{LocaleKey::F_AGILITY}} d'agilité.",
        LocaleKey::STATUS_STATS_SELF => "Vous avez %{#{LocaleKey::F_LIFE}} de vie, une force de %{#{LocaleKey::F_STRENGTH}}, une intelligence de %{#{LocaleKey::F_INTELLIGENCE}} et %{#{LocaleKey::F_AGILITY}} d'agilité.",
        LocaleKey::WEIGHT_MAX => "Le poids de votre armure est si grand qu'il vous rend presque immobile, vous empéchant d'esquiver ou frapper vos ennemis.",
        LocaleKey::WEIGHT_STRENGTH_REDUCED => "Le poids de votre armure est si grand que vous n'êtes plus capable de bouger correctement, vous empéchant d'esquiver vos ennemis et ralentissant vos coups.",
        LocaleKey::WEIGHT_AGI_MAX => "Le poids de votre armure est si grand que vous n'êtes plus capable de bouger correctement, vous empéchant d'esquiver vos ennemis.",
        LocaleKey::WEIGHT_THREE_QUARTER => "Le poids de votre armure vous ralenti grandement, réduisant votre aptitude à esquiver vos ennemis ou à rester discret.",
        LocaleKey::WEIGHT_HALF => "Vous pouvez ressentir le poids de votre armure sur vous, vous génant lorsque vous tentez d'esquiver vos ennemis ou de rester discret.",
        LocaleKey::WEIGHT_QUARTER => "Votre armure vous gène légèrement lorsque vous tentez de vous cacher ou d'esquiver vos ennemis.",
        LocaleKey::WEIGHT_SMALL => "Vous ne sentez pratiquement pas le poids de votre armure, ne génant qu'a peine votre abilité à rester discret et à esquiver les attaques de vos ennemis.",
        LocaleKey::WEIGHT_NONE => "Vous ne sentez même pas le poids de votre armure, qui vous laisse bouger librement sans gène.",
        LocaleKey::NO_ARMOR => "Vous ne portez pas d'armure.",
        LocaleKey::MONSTER_DESCRIPTION => "%s avec ",
        LocaleKey::BODYPART_DESCRIPTION => "%s ayant ",
        LocaleKey::HEALTH_DESCRIPTOR => "%s points de vies",
        LocaleKey::DAMAGE_DESCRIPTOR => "%s dégats",
        LocaleKey::INTELLIGENCE_DESCRIPTOR => "%s d'intelligence",
        LocaleKey::MONSTER_STRIKE => "frappe %s.",
        LocaleKey::MONSTER_SPELL => "lance un sort.",
        LocaleKey::MONSTER_HEAL => "lance une aura de soin.",
        LocaleKey::MONSTER_ESCAPE => "Trop effrayé, %s s'échappe.",
        LocaleKey::MONSTER_BODIES => "les cadavres des monstres que vous avez précédemment battus",
        LocaleKey::MONSTER_BODY => "le cadavre du monstre que vous avez précédemment battu",
        LocaleKey::MONSTER_ADDED => "%s rejoint le combat.",
        LocaleKey::THE_MONSTERS => "les monstres",
        LocaleKey::ASK_EQUIPPED_ARMOR => "Quel pièce d'armure souhaitez-vous équiper ?",
        LocaleKey::ASK_REMOVED_ARMOR => "Quel pièce d'armure souhaitez-vous retirer ?",
        LocaleKey::NO_ARMOR_EQUIPPED => "Pas d'armure équipé pour %s",
        LocaleKey::ASK_ITEM_IN_STACK => "Quelle version choisissez vous ?",
        LocaleKey::ASK_ITEM_TO_USE => "Quel objet souhaitez-vous utiliser ?",
        LocaleKey::USAGE_EQUIP => "Equiper",
        LocaleKey::USAGE_USE => "Utiliser",
        LocaleKey::ASK_ITEM_TARGET => "Sur qui utiliser %s ?",
        LocaleKey::ASK_GIFT_TARGET => "A qui donner %s ?",
        LocaleKey::ASK_ITEM_TO_SELL => "Quel objet souhaitez-vous vendre ?",
        LocaleKey::ASK_ITEM_TO_UPGRADE => "Quelle armure souhaitez-vous améliorer ? (%s ¤)",
        LocaleKey::ASK_ITEM_TO_SHOW => "Quel objet souhaitez-vous montrer au goblin ?",
        LocaleKey::ASK_CONFIRMATION_GIVING_GOBLIN => "Êtes-vous sûr·e de vouloir donner %s à la garde gobline ?",
        LocaleKey::GOBLIN_NOT_INTERESTED => "La garde gobline ne semble pas intéressée par ce que vous lui montrez.",
        LocaleKey::GOBLIN_ACCEPT_GIFT => [
            "La gobline observe avec attention l'objet que vous lui tendez, sa posture semblant se détendre légèrement. Elle fait signe aux goblins se tenant près de la porte de venir chercher votre offrande.",
            "Alors que ceux-ci s'exécutent, elle vous fait signe que vous pourrez dorénavent visiter le village comme bon vous semble, prête à ne pas vous considérer comme une menace malgré sa méfiance."
        ],
        LocaleKey::LOOT_GOBLIN_GIFT => ["Vous voyez le cadeau que vous aviez offert au goblins au milieu de leurs corps gisants."],
        LocaleKey::BRIBE_UNNECESSARY => "Vous ayant déjà permit d'entrer, la garde gobline ne semble pas interessée par vos possessions.",
        LocaleKey::ASK_PLAYER_REMOVED => "Quel membre de l'équipe supprimer ?",
        LocaleKey::CONFIRM_DELETE_CHARACTER => "Êtes-vous sûr de vouloir supprimer %s ?\nLe personnage n'a pas été sauvegardé et sera définitevement perdu.",
        LocaleKey::ASK_SHORTCUT_ACTION => [
            "Que souhaitez-vous faire ?",
            "    0) Retour...",
            "    1) Créer un raccourci...",
            "    2) Supprimer un raccourci..."
        ],
        LocaleKey::NO_SHORTCUTS_TO_DELETE => "Il n'y a aucun raccourci à supprimer.",
        LocaleKey::ASK_SHORTCUT_TO_DELETE => "Quel raccourci souhaiterais-vous supprimer ?",
        LocaleKey::CONFIRM_DELETE_SHORTCUT => "Êtes-vous sûr·e de vouloir supprimer ce raccourci ?",
        LocaleKey::ASK_ITEM_FOR_SHORTCUT => "Pour quel objet souhaitez-vous un raccourci ?",
        LocaleKey::ASK_SHORTCUT_KEY => "Quelle touche souhaitez-vous assigner à %s ? ('0' pour abandonner)",
        LocaleKey::ASK_SHORTCUT_KEY_RECOMMENDATION => "Il est préférable d'entrer uniquement une lettre, et aucun numéro.",
        LocaleKey::SHORTCUT_OPTION => "Raccourcis",
        LocaleKey::NO_ITEM_TO_SHORTCUT => "Aucun objet pour lequel créer un raccourci.",
        LocaleKey::SHORTCUT_CREATED => "Raccourci \"%s\" créé.",
        LocaleKey::SHORTCUT_DELETED => "Raccourci supprimé.",
        LocaleKey::NO_ITEM_TO_USE => "Vous n'avez pas %s à utiliser.",
        LocaleKey::SHORTCUT_ALREADY_USED => "Le raccourci est déjà utilisé.",
        LocaleKey::KEY_UNAVAILABLE => "Ce caractère est déjà réservé pour d'autres actions.",
        LocaleKey::PARRIED => " paré",
        LocaleKey::ASK_HEAL_TARGET => "Qui souhaitez-vous soigner ?",
        LocaleKey::ASK_STATUS => "De qui voulez-vous voir le statut ?",
        LocaleKey::ASK_DESTINATION => "Où souhaitez-vous aller ?",
        LocaleKey::ASK_ROOM_TO_MARK => "Sur quelle porte voulez-vous écrire ?",
        LocaleKey::ASK_TEXT_WRITTEN => "Qu'écrivez-vous sur la porte ?",
        LocaleKey::ASK_ITEM_TAKEN => "Quels objets voulez-vous prendre ?",
        LocaleKey::ASK_CORPULENCE => "Quelle corpulence souhaitez-vous ?",
        LocaleKey::ASK_EARS => "Quelles oreilles souhaitez-vous ?",
        LocaleKey::ASK_NOSE => "Quel nez souhaitez-vous ?",
        LocaleKey::ASK_EYEBROWS => "Quelle forme de sourcil souhaitez-vous ?",
        LocaleKey::ASK_MOUSTACHE => "Quelle moustache souhaitez-vous ?",
        LocaleKey::ASK_BEARD => "Quelle barbe souhaitez-vous sur le menton ?",
        LocaleKey::ASK_SIDEBURNS => "Quelle pattes souhaitez-vous ?",
        LocaleKey::ASK_HAIRCUT => "Quelle coupe souhaitez-vous ?",
        LocaleKey::ASK_FEATURE => "Quel trait souhaitez-vous ?",
        LocaleKey::ASK_COLOR => "Quelle couleur ?",
        LocaleKey::KEEP_CORPULENCE => "Conserver la corpulence",
        LocaleKey::KEEP_EARS => "Conserver les oreilles",
        LocaleKey::KEEP_NOSE => "Conserver le nez",
        LocaleKey::KEEP_EYEBROWS => "Conserver les sourcils",
        LocaleKey::KEEP_MOUSTACHE => "Conserver la moustache",
        LocaleKey::KEEP_BEARD => "Conserver la barbe",
        LocaleKey::KEEP_SIDEBURNS => "Conserver les pattes",
        LocaleKey::KEEP_HAIRSTYLE => "Conserver la coupe",
        LocaleKey::KEEP_FEATURE => "Conserver le trait",
        LocaleKey::KEEP_COLOR => "Conserver la couleur",
        LocaleKey::STAY_IN => "rester dans %s",
        LocaleKey::MERCHANT_THANK => "Merci grandement pour votre achat.",
        LocaleKey::MERCHANT_FUND_INSUFFICIENT => "Navré, mais %s pièces d'or ne seront pas suffisantes...",
        LocaleKey::MERCHANT_COIN_INSUFFICIENT => "Navré, mais une pièce d'or ne sera pas suffisante...",
        LocaleKey::MERCHANT_NO_MONEY => "Mes excuses, mais sans argent vous ne pourrez pas acheter quoi que ce soit dans ce magasin.",
        LocaleKey::MERCHANT_PURCHASE => "Un plaisir de faire affaire avec vous.",
        LocaleKey::ALCHEMIST_THANK => "Merci, en espérant que cela vous serve.",
        LocaleKey::ALCHEMIST_FUND_INSUFFICIENT => "Désolée, mais %s pièces d'or ne suffiront pas...",
        LocaleKey::ALCHEMIST_COIN_INSUFFICIENT => "Désolée, mais une pièce d'or ne suffit pas...",
        LocaleKey::ALCHEMIST_NO_MONEY => "Désolée, mais je n'ai rien gratuitement.",
        LocaleKey::ALCHEMIST_PURCHASE => "Merci bien.",
        LocaleKey::BLACKSMITH_THANK => "...",
        LocaleKey::BLACKSMITH_FUND_INSUFFICIENT => "Pas assez... Non.",
        LocaleKey::BLACKSMITH_COIN_INSUFFICIENT => "Pas assez... Non.",
        LocaleKey::BLACKSMITH_NO_MONEY => "Non, il faut des pièces.",
        LocaleKey::BLACKSMITH_PURCHASE => "...",
        LocaleKey::GOBLIN_BLACKSMITH_THANK => "Kadä sö Kö Köpoega Degäerk tö sodottöter #{Locale::PLAYER_NAME}.",
        LocaleKey::GOBLIN_BLACKSMITH_FUND_INSUFFICIENT => "Toderköpo kö aüro dëkaobu.\nTöterpo kö aüro kobuköpa köpogur sö sodottöter.",
        LocaleKey::ASK_SHOP_ACTION => "Que souhaitez-vous faire ? (%s ¤)",
        LocaleKey::SHOP_OPTIONS_FIRST => [
            "",
            "0) Sortir du magasin",
            "1) Acheter...",
        ],
        LocaleKey::SHOP_OPTIONS_LAST => [
            "3) Consulter l'inventaire",
            "4) Parler au tenancier"
        ],
        LocaleKey::SELL_OPTION => "Vendre",
        LocaleKey::UPGRADE_LABEL => "Améliorer",
        LocaleKey::ASK_CONFIRMATION_SELLING => "Êtes-vous sûr·e de vouloir vendre %{#{LocaleKey::F_ITEM}} pour %{#{LocaleKey::F_VALUE}} pièces ?",
        LocaleKey::ASK_CONFIRMATION_UPGRADING => "Êtes-vous sûr·e de vouloir améliorer %{#{LocaleKey::F_ITEM}} pour %{#{LocaleKey::F_VALUE}} pièces ?",
        LocaleKey::ASK_ITEM_BOUGHT => "Quel objet souhaitez-vous acheter ? (%s ¤)",
        LocaleKey::ASK_CONFIRM_PURCHASE => "Êtes-vous sûr·e de vouloir acheter %{#{LocaleKey::F_ITEM}} pour %{#{LocaleKey::F_VALUE}} pièces ?",
        LocaleKey::ARMORS_PLURAL => "des armures",
        LocaleKey::BLACK_LEATHER_GAUNTLETS_NAME => "gants en cuir noir",
        LocaleKey::BLACK_LEATHER_GAUNTLETS_DESC => "de fins gants en une sorte de cuir noir souple extrêmement léger mais pourtant surprenamment durable",
        LocaleKey::BLACK_LEATHER_GREAVES_NAME => "jambières de cuir noir",
        LocaleKey::BLACK_LEATHER_GREAVES_DESC => "de fines jambières en une sorte de cuir noir souple étant extrêmement léger mais pourtant incroyablement solide",
        LocaleKey::BLACK_LEATHER_HELM_NAME => "casque en cuir noir",
        LocaleKey::BLACK_LEATHER_HELM_DESC => "un casque pointu avec de larges plaques protégeant les côtés du visage fabriqué en une sorte de cuir noir incroyablement léger et durable",
        LocaleKey::BLACK_LEATHER_PLASTRON_NAME => "plastron en cuir noir",
        LocaleKey::BLACK_LEATHER_PLASTRON_DESC => "un long plastron fait en une sorte de cuir noir extrêmement léger et solide couvert par un large tissus sombre",
        LocaleKey::DRESS_GAUNTLET_NAME => "brassières discrètes",
        LocaleKey::DRESS_GAUNTLET_DESC => "des gants en cuir raffinés protégeant décemment les mains de leurs porteur",
        LocaleKey::DRESS_GREAVES_NAME => "chopines nobles",
        LocaleKey::DRESS_GREAVES_DESC => "de grandes chaussures servant à faire paraître le porteur plus grand. Peu pratique en combat mais très à la mode actuellement",
        LocaleKey::DRESS_HELM_NAME => "chapeau cornu",
        LocaleKey::DRESS_HELM_DESC => "un chapeau voilé raffiné ne protégeant que peu mais étant très en vogue chez la noblesse",
        LocaleKey::DRESS_PLASTRON_NAME => "robe noble",
        LocaleKey::DRESS_PLASTRON_DESC => "longue robe dont le col en cuir est orné de gemmes. Un habit à la mode actuellement pour ceux pouvant se l'offrir",
        LocaleKey::HEAVY_GAUNTLET_NAME => "gants renforcés",
        LocaleKey::HEAVY_GAUNTLET_DESC => "des gants en cuirs renforcés par des plaques de métal offrant une bonne protection malgré leur poids",
        LocaleKey::HEAVY_GREAVES_NAME => "bottes renforcées",
        LocaleKey::HEAVY_GREAVES_DESC => "des bottes en cuirs couvertes par de larges plaques métalliques les alourdissant considérablement",
        LocaleKey::HEAVY_HELM_NAME => "casque et cervelière",
        LocaleKey::HEAVY_HELM_DESC => "un casque pointu en fer couvrant une coiffe de maille. Offre une excellente protection à la tête bien que pesant relativement lourd",
        LocaleKey::HEAVY_PLASTRON_NAME => "haubert à manches courtes",
        LocaleKey::HEAVY_PLASTRON_DESC => "cotte de maille aux manches courtes recouverte par un fin surcot en tissus",
        LocaleKey::IRON_GAUNTLETS_NAME => "brassières de fer",
        LocaleKey::IRON_GAUNTLETS_DESC => "de fins gants en cuir souple auquel s'attachent de fine plaques de fer et offrant une bonne protection pour son poids",
        LocaleKey::IRON_GREAVES_NAME => "jambières de fer",
        LocaleKey::IRON_GREAVES_DESC => "de fines jambières de fer protégeant les tibias du porteur",
        LocaleKey::IRON_HELM_NAME => "casque en fer",
        LocaleKey::IRON_HELM_DESC => "un casque pointu en fer avec de courtes oreillettes protégeant les côtés du visage. Offre une protection décente pour son poids",
        LocaleKey::IRON_PLASTRON_NAME => "plastron en fer",
        LocaleKey::IRON_PLASTRON_DESC => "un plastron court protégeant les organes les plus vitaux. Offre une bonne protection bien qu'étant incomplet",
        LocaleKey::LEATHER_GAUNTLETS_NAME => "brassières en cuir",
        LocaleKey::LEATHER_GAUNTLETS_DESC => "de simples brassières en cuir protégeant l'avant bras de son porteur",
        LocaleKey::LEATHER_GREAVES_NAME => "chaussures en cuir",
        LocaleKey::LEATHER_GREAVES_DESC => "de simples chaussures en cuir ne protégeant que contre la rugosité du sol",
        LocaleKey::LEATHER_HELM_NAME => "coiffe en cuir",
        LocaleKey::LEATHER_HELM_DESC => "un simple chapeau de cuir protégeant rudimentairement la tête de son porteur",
        LocaleKey::LEATHER_PLASTRON_NAME => "plastron en cuir",
        LocaleKey::LEATHER_PLASTRON_DESC => "un plastron en cuir durci rudimentaire protégeant décemment pour son poids",
        LocaleKey::NOBLE_GAUNTLETS_NAME => "gants nobles",
        LocaleKey::NOBLE_GAUNTLETS_DESC => "des gants en cuir raffinés protégeant décemment les mains de leurs porteur",
        LocaleKey::NOBLE_GREAVES_NAME => "poulaines nobles",
        LocaleKey::NOBLE_GREAVES_DESC => "de longues chaussures noires. Très à la mode actuellemnt",
        LocaleKey::NOBLE_HELM_NAME => "chapeau en cuir",
        LocaleKey::NOBLE_HELM_DESC => "un chapeau de cuir raffiné ne protégeant que peu mais étant plutôt en vogue chez la noblesse",
        LocaleKey::NOBLE_PLASTRON_NAME => "houpelande noble",
        LocaleKey::NOBLE_PLASTRON_DESC => "long costume arrivant jusqu'au genou du porteur dont les manches particulièrement longues. Un habit à la mode actuellement pour ceux pouvant se l'offrir",
        LocaleKey::STARTER_GAUNTLETS_NAME => "gants d'ancien soldat",
        LocaleKey::STARTER_GAUNTLETS_DESC => "le cuir durci les composants est clairement detérioré par le temps",
        LocaleKey::STARTER_GREAVES_NAME => "bottes d'ancien soldat",
        LocaleKey::STARTER_GREAVES_DESC => "de simples bottes protégées par de courtes plaques en métal rouillé ne couvrant que les chevilles",
        LocaleKey::STARTER_HELM_NAME => "casque d'ancien soldat",
        LocaleKey::STARTER_HELM_DESC => "un casque rond en métal ne protégeant que des attaques les plus basiques",
        LocaleKey::STARTER_PLASTRON_NAME => "jaque d'ancien soldat",
        LocaleKey::STARTER_PLASTRON_DESC => "un simple gilet moletonné semblant dater d'un autre siècle. Protégé par une simple plaque en métal attachée sur le torse",
        LocaleKey::H30_GAUNTLETS_NAME => "gantelets de garde",
        LocaleKey::H30_GAUNTLETS_DESC => "une paire de gants en cuir avec de larges plaques de métal protégeant l'avant-bras et les coudes. Généralement portés par des gardes n'ayant pas besoin de beaucoup de mobilité.",
        LocaleKey::H30_GREAVES_NAME => "bottes de garde",
        LocaleKey::H30_GREAVES_DESC => "une paide de lourdes bottes en cuir avec des large renforts en métal protégeant les jambes. Généralement portées par des gardes n'ayant pas besoin de beaucoup de mobilité.",
        LocaleKey::H30_HELM_NAME => "casque de garde",
        LocaleKey::H30_HELM_DESC => "un casque cylindrique large offrant une grande protection à la tête. Généralement porté par des gardes n'ayant pas besoin de beaucoup de mobilité.",
        LocaleKey::H30_PLASTRON_NAME => "robe de maille de garde",
        LocaleKey::H30_PLASTRON_DESC => "une robe à manche longue en maille déscendant jusqu'au genou recouvert d'un fin surcôt, protégeant tout le corps contre d'éventuelles attaques.",
        LocaleKey::H40_GAUNTLETS_NAME => "canons de soldat lourds",
        LocaleKey::H40_GAUNTLETS_DESC => "une paire de canons de bras lourds protégeant l'entièreté des bras et des mains, ne laissant que très peu d'ouvertures aux ennemis.",
        LocaleKey::H40_GREAVES_NAME => "bottes de soldats lourdes",
        LocaleKey::H40_GREAVES_DESC => "une paire de bottes métalliques lourdes protégeant l'entièreté de la jambe jusqu'au genou.",
        LocaleKey::H40_HELM_NAME => "salade de soldat lourde",
        LocaleKey::H40_HELM_DESC => "une salade lourde protégeant l'entièreté du visage, doublée d'une large bavière protégeant la gorge, offre une protection idéale à la tête en dépit de soit poids.",
        LocaleKey::H40_PLASTRON_NAME => "cuirasse de soldat lourde",
        LocaleKey::H40_PLASTRON_DESC => "une cuirasse particulièrement large protégeant l'entièreté du corps avec des épaulières larges et une cotte de maille longue pour le haut des jambes.",
        LocaleKey::H50_GAUNTLETS_NAME => "canons de joute",
        LocaleKey::H50_GAUNTLETS_DESC => "une paire de canons de bras lourds aux cubitières ridiculement larges protégeant les coudes. Prévus pour supporter les plus lourdes frappes à la lance.",
        LocaleKey::H50_GREAVES_NAME => "jambières de joute",
        LocaleKey::H50_GREAVES_DESC => "une paire de longues jambières encombrantes protégeant l'entièreté des jambes contre toutes blessures.",
        LocaleKey::H50_HELM_NAME => "casque de joute",
        LocaleKey::H50_HELM_DESC => "un casque en métal épais protégeant l'entièreté de la tête. Prévu pour supporter les plus lourdes frappes à la lance.",
        LocaleKey::H50_PLASTRON_NAME => "cuirasse de joute",
        LocaleKey::H50_PLASTRON_DESC => "une cuirasse complète large protégeant l'entièreté du torse. En plus de ces épaulières larges, cette armure possède un très large renforcement couvrant l'entièreté du côté droit, ressemblant à une sorte de cape d'épaule métallique.",
        LocaleKey::H60_GAUNTLETS_NAME => "gantlets de garde goblin lourd",
        LocaleKey::H60_GAUNTLETS_DESC => "une paire de gantelets excessivement large et lourds, jumelés de larges cubitières. Originellement fabriqué pour des goblins et ensuite adaptés aux proportions humaines, ces gantelets n'ont que trois larges emplacement pour les doigts, forçant deux doigts par emplacement.",
        LocaleKey::H60_GREAVES_NAME => "bottes de garde goblin lourd",
        LocaleKey::H60_GREAVES_DESC => "une paire de bottes lourdes et épaisses montant jusqu'au genoux. Initialement faite pour les goblins, puis adaptés à des proportions humaines.",
        LocaleKey::H60_HELM_NAME => "casque de garde goblin lourd",
        LocaleKey::H60_HELM_DESC => "un long casque en forme de bec fait pour les goblins auquel des sangles de cuirs furent attachés pour tenir sur un tête humaine. Un long rideau de maille descend du casque, protégeant l'entièreté de la tête et le cou.",
        LocaleKey::H60_PLASTRON_NAME => "cuirasse de garde goblin lourd",
        LocaleKey::H60_PLASTRON_DESC => "une cuirasse solide faite pour les goblins, ajusté pour un torse humain. S'y ajoute également deux larges épaulières réctangulaire qui servent également de protection pour l'avant-bras.",
        LocaleKey::M30_GAUNTLETS_NAME => "canons de bras simples",
        LocaleKey::M30_GAUNTLETS_DESC => "de simples gantelets en cuir renforcés par des tubes métalliques afin d'offrir une protection décente à bas prix.",
        LocaleKey::M30_GREAVES_NAME => "bottes réenforcées simples",
        LocaleKey::M30_GREAVES_DESC => "une paire de bottes en cuir simples renforcées par des tubes métalliques pour offrir une protection décente à bas prix.",
        LocaleKey::M30_HELM_NAME => "bassinet simple et maille",
        LocaleKey::M30_HELM_DESC => "un casque simple doublé d'une capuche de maille offrant une protection décente à bas prix.",
        LocaleKey::M30_PLASTRON_NAME => "robe de maille simple",
        LocaleKey::M30_PLASTRON_DESC => "une robe de maille à manche longue simple protégeant l'entièreté du corps jusqu'au genou, tenue par une simple ceinture. Offrant une protection décente à bas prix.",
        LocaleKey::M40_GAUNTLETS_NAME => "canons de bras modestes",
        LocaleKey::M40_GAUNTLETS_DESC => "une paire de canons de bras simples offrant une protection décente à bas prix.",
        LocaleKey::M40_GREAVES_NAME => "bottes modestes",
        LocaleKey::M40_GREAVES_DESC => "une paire simple de bottes en cuir renforcées par des pièces métalliques, équipées de genouillères pour une protection supplémentaire au genou.",
        LocaleKey::M40_HELM_NAME => "salade et bavière",
        LocaleKey::M40_HELM_DESC => "un casque salade simple doublé par une large bavière pour protéger la majorité du visage.",
        LocaleKey::M40_PLASTRON_NAME => "cuirasse et maille modestes",
        LocaleKey::M40_PLASTRON_DESC => "une robe de maille à manche longue simple protégeant l'entièreté du corps, couvertes par un surcôt neutre et une cuirasse modeste.",
        LocaleKey::M50_GAUNTLETS_NAME => "canons neutres",
        LocaleKey::M50_GAUNTLETS_DESC => "une paire de longue canons de bras protégeant l'entièreté du bras.",
        LocaleKey::M50_GREAVES_NAME => "jambières longues",
        LocaleKey::M50_GREAVES_DESC => "une paire de longues jambières fines protégeant l'entièreté des jambes tout en évitant tout poids superflux.",
        LocaleKey::M50_HELM_NAME => "casque armet",
        LocaleKey::M50_HELM_DESC => "un casque armet bien conçu pour offrir une protection au visage entier sans pour autant ajouter de poids superflux.",
        LocaleKey::M50_PLASTRON_NAME => "cuirasse longue",
        LocaleKey::M50_PLASTRON_DESC => "une cuirasse simple appairée avec deux épaulières fines et de flancarts particulièrement longs.",
        LocaleKey::M60_GAUNTLETS_NAME => "gantelets de garde goblin",
        LocaleKey::M60_GAUNTLETS_DESC => "des gantelets larges montant jusqu'au coude, servant ainsi également de cubitère. Originellement fabriqué pour des goblins et ensuite adaptés aux proportions humaines, ces gantelets n'ont que trois larges emplacement pour les doigts, forçant deux doigts par emplacement.",
        LocaleKey::M60_GREAVES_NAME => "bottes de garde goblin",
        LocaleKey::M60_GREAVES_DESC => "de large bottes montant jusqu'aux genoux, servant également de genouillière. Originellement faite pour les goblins, elle a été adapté à des proportions humaines.",
        LocaleKey::M60_HELM_NAME => "casque de garde goblin",
        LocaleKey::M60_HELM_DESC => "un casque goblin ayant été renforcé avec des plaques de métal pour offrir une protection additionelle pour un visage humain.",
        LocaleKey::M60_PLASTRON_NAME => "cuirasse de garde goblin",
        LocaleKey::M60_PLASTRON_DESC => "une large cuirasse gobline, faite pour les goblins puis adaptés à des proportions humaines.",
        LocaleKey::L30_GAUNTLETS_NAME => "cannons à bras fin",
        LocaleKey::L30_GAUNTLETS_DESC => "de simples tubes en métal fin fabriqué pour offrir une bonne protection sans pour autant ajouter de poids superflux.",
        LocaleKey::L30_GREAVES_NAME => "bottes renforcées fines",
        LocaleKey::L30_GREAVES_DESC => "bottes de cuirs pointues renforcées par de fines plaques métalliques afin d'offrir une bonne protection aux pieds sans pour autant ajouter de poids superflux.",
        LocaleKey::L30_HELM_NAME => "bassinet fin",
        LocaleKey::L30_HELM_DESC => "un casque fin fait pour protéger l'entièreté du crane sans pour autant peser sur la tête de son porteur.",
        LocaleKey::L30_PLASTRON_NAME => "plastron fin et jaque",
        LocaleKey::L30_PLASTRON_DESC => "une tunique rembourrée portée avec un plastron métallique fin, permettant d'obtenir une bonne protection sans pour autant ajouter de poids superflux.",
        LocaleKey::L40_GAUNTLETS_NAME => "gantlets de cuir discrets",
        LocaleKey::L40_GAUNTLETS_DESC => "une paire de gantlets en cuir renforcés offrant une bonne protection sans pour autant se faire remarquer.",
        LocaleKey::L40_GREAVES_NAME => "bottes en cuir discrètes",
        LocaleKey::L40_GREAVES_DESC => "bottes en cuir renforcé avec un peu de métal, offrant une bonne protection au bas des jambes sans pour autant ajouter de poids superflux.",
        LocaleKey::L40_HELM_NAME => "capuche de maille longue",
        LocaleKey::L40_HELM_DESC => "une capuche longue protégeant l'entièreté de l'a tête et du torse, faite d'une maille fine et permettant ainsi de protéger sans ajouter de poids superflux.",
        LocaleKey::L40_PLASTRON_NAME => "robe de maille longue",
        LocaleKey::L40_PLASTRON_DESC => "une robe de maille à manche longue protégeant jusqu'aux chevilles, faite d'une maille fine permettant de protéger sans ajouter de poids superflux.",
        LocaleKey::L50_GAUNTLETS_NAME => "canons du conquérant",
        LocaleKey::L50_GAUNTLETS_DESC => "des canons à bras fines appairées de cubitières anguleuses sur les coudes.",
        LocaleKey::L50_GREAVES_NAME => "jambières du conquérant",
        LocaleKey::L50_GREAVES_DESC => "des jambières fines et anguleuses offrant une bonne protection sans ajouter de poids remarquable, parfait pour de longs voyages.",
        LocaleKey::L50_HELM_NAME => "chapeau du conquérant et bavière",
        LocaleKey::L50_HELM_DESC => "un chapeau pointu métallique appairé d'une longue bavière, protégeant la tête et le village contre les éléments et les attaques ennemies tout en minimisant le poids.",
        LocaleKey::L50_PLASTRON_NAME => "cuirasse du conquérant",
        LocaleKey::L50_PLASTRON_DESC => "une cuirasse fine et anguleuse offrant une grande protection sans pour autant restreindre les gestes de son porteur, appairé de larges épaulières et flancarts pointus.",
        LocaleKey::L60_GAUNTLETS_NAME => "canons à bras commissionnés",
        LocaleKey::L60_GAUNTLETS_DESC => "des canons à bras fin protégeant l'entièreté du bras, simple et léger mais pourtant surprenament durables. Bien que leur design soit uniquement goblin, elles sont faites sur-mesure pour des proportions humaines.",
        LocaleKey::L60_GREAVES_NAME => "bottes commissionnées",
        LocaleKey::L60_GREAVES_DESC => "Des bottes larges mais légères montant jusqu'au genoux, servant ainsi de genouillière également. Faite sur-mesure pour des proportions humaines en un alliage spécial fait pour être à la fois léger et durable.",
        LocaleKey::L60_HELM_NAME => "casque commissionné",
        LocaleKey::L60_HELM_DESC => "un casque ouvert similaire à ceux des gardes goblins, mais ayant des oreillères allongées pour correspondre à des proportions humaines en offrant une bonne protection à un poids raisonnable.",
        LocaleKey::L60_PLASTRON_NAME => "plastron commissionnés",
        LocaleKey::L60_PLASTRON_DESC => "un plastron léger et durable fait sur-mesure pour correspondre à des proportions humaines. Placé sur une jaque légère faite de fin filament métalliques et de coton cousus ensembles.",
        LocaleKey::THE_ARMS => "les bras",
        LocaleKey::THE_LEGS => "les jambes",
        LocaleKey::THE_HEAD => "la tête",
        LocaleKey::THE_BODY => "le corps",
        LocaleKey::A_PAIR_OF => "une paire de",
        LocaleKey::A_M_SPACELESS => "un",
        LocaleKey::DISMAL_CELL => "cellule lugubre",
        LocaleKey::DISMAL_CELL_DESCRIPTION => [
            "Vous êtes au milieu d'une geôle sombre, des chaines brisées jonchent le sol."
        ],
        LocaleKey::CATACOMBS_DESCRIPTION => [
            "Vous êtes dans des catacombes remplies de tombes et ossements arrangés de façon plus ou moins élaboré.",
            "Cet endroit est bien plus sec que l'entrée du donjon et l'obscurité y est plus grande que jamais.",
            "L'air stagnant et la poussière vous assèchent la gorge."
        ],
        LocaleKey::CATACOMBS_LOOT_BANDAGE => ["Vous remarquez des linceuls encore propres que vous pouvez utiliser comme bandages."],
        LocaleKey::CATACOMBS_LOOT_COINS => [
            "Vous remarquez qu'une des urnes possèdes quelques pièce en son fond",
            "Vous voyez quelques pièces posées en offrande sur une des dépouilles entreposée en ce lieu"
        ],
        LocaleKey::CATACOMBS_TRANSITION_PRISON => [
            "Alors que vous vous enfonciez désespérément dans les catacombes,",
            "Vous remarquez enfin un creux dans le mur similaire à celui par lequel vous êtes entré·e.",
            "Lorsque vous vous y engouffrez, vous êtes accueilli·e par des grands murs de pierres",
            "qui ne sont pas sans rappeler ceux de l'entrée.",
            "",
            "En revanche, quelque chose à propos de ce lieu semble être bien plus ancien que le reste du donjon."
        ],
        LocaleKey::CATACOMBS_TRANSITION_DEEPER => [
            "Alors que vous vous enfonciez toujours plus loin dans les catacombes,",
            "Vous remarquez une porte se dérobant dans l'obscurité.",
            "En vous approchant, vous voyez un escalier se dérobant encore plus profondément sous terre. Aucune torche n'est placée pour en illuminer les tréfonds.",
            "",
            "Vous prenez une des torches placée sur le mur près de l'entrée, et vous enfoncez dans l'obscurité."
        ],
        LocaleKey::DEEP_CATACOMBS_DESCRIPTION => [
            "Vous êtes plongé·e dans l'obscurité, votre torche vascillante servant d'unique source de lumière en ces lieux étroits.",
            "L'air est frais, et une certaine humidité commence à s'immiscer au travers de la terre sous vos pieds.",
            "Cet endroit semble également dédié aux morts, tel les catacombes, mais ici la moisissure a rongée la majorité des traces du passage des hommes en ce lieu."
        ],
        LocaleKey::DEEP_CATACOMBS_LOOT_BANDAGE => ["Tout ce que vous trouvez n'ayant pas complètement moisit est un vieux linceul humide pouvant servir de bandage."],
        LocaleKey::DEEP_CATACOMBS_TRANSITION_CAVES => [
            "Après ce qui semble être une éternité dans les cryptes, vous remarquez une portion de mur écroulé.",
            "En vous approchant, vous voyez que la cavité s'ouvre vers une grotte naturelle.",
            "",
            "Vous vous enfoncez dans la grotte, heureux de quitter ce lieu maudit."
        ],
        LocaleKey::ENTRANCE_DESCRIPTION => [
            "Vous êtes entouré·e d'épais murs de pierres.",
            "L'air est humide et l'obscurité règne au sein de l'ancienne forteresse,",
            "Mais les courants d'air atteignant votre dos sont un rappel de votre proximité avec la surface."
        ],
        LocaleKey::ENTRANCE_HOLE_DESCRIPTION => [
            "Vous êtes toujours à l'entrée du donjon.",
            "En revanche, le sol semble s'être effondré dans cette salle.",
            "L'énorme trou béant au millieu de cette large salle vous donne un vertige."
        ],
        LocaleKey::ENTRANCE_LOOT_BANDAGE => ["Vous remarquez des draperies que vous pouvez déchirer afin de créer des bandages."],
        LocaleKey::ENTRANCE_LOOT_COINS => [
            "Vous trouvez quelques pièces posées sur une table",
            "Vous voyez une petite bourse posée sur une étagère"
        ],
        LocaleKey::ENTRANCE_LOOT_HEALTH_POTION => [
            "Vous voyez une potion de soin posée sur une table.",
            "Vous trouvez une potion de soin rangée dans une commode."
        ],
        LocaleKey::ENTRANCE_TRANSITION_CATACOMBS => [
            "Alors que vous avancez à travers le donjon, vous arrivez vers des couloirs plus restreints descendant plus profondément dans la terre.",
            "Vous vous engouffrez dans ce qui semble être un lieu de repos pour les anciens habitants de ce donjon depuis longtemps disparus."
        ],
        LocaleKey::PRISON_DESCRIPTION => [
            "Vous êtes dans ce qui semble être une ancienne prison.",
            "Bien que cet endroit soit un peu plus accueillant que les catacombes, il ne l'est pas de beaucoup.",
            "Vous êtes ainsi pris d'un sentiment de mal-aise dans ce lieu semblant porter le poids d'une histoire sombre."
        ],
        LocaleKey::PRISON_LOOT_HEALTH_POTION => [
            "Vous voyez une potion de soin posée sur une table au côté d'outils divers.",
            "Vous trouvez une potion de soin rangée dans un meuble.",
            "Vous remarquez une potion de soin oubliée au sol au coin de la pièce."
        ],
        LocaleKey::PRISON_LOOT_BANDAGE => ["Vous remarquez des haillons que vous pouvez déchirer afin de créer des bandages."],
        LocaleKey::PRISON_LOOT_KEY => ["Vous remarquez une clef accrochée à un des murs."],
        LocaleKey::PRISON_TRANSITION_CELL => [
            "Vous arrivez devant une grande porte métallique.",
            "Malgré son grand âge et la rouille apparente, elle semble encore trop solide pour être forcée.",
            "",
            "En écoutant attentivement, vous pouvez entendre une respiration faiblarde transperçant subtilement la grande paroi metallique."
        ],
        LocaleKey::KNIGHT_NAME => "chevalier perdu",
        LocaleKey::KNIGHT_HEAD => "tête du chevalier perdu",
        LocaleKey::KNIGHT_RIGHT_ARM => "bras droit du chevalier perdu",
        LocaleKey::KNIGHT_LEFT_ARM => "bras gauche du chevalier perdu",
        LocaleKey::KNIGHT_LEFT_ATTACK => "met un coup de coude à %s.",
        LocaleKey::KNIGHT_RIGHT_ATTACK => "assène un coup d'épée à %s.",
        LocaleKey::KNIGHT_LOOT_COINS => ["Sur la dépouille du chevalier vous trouvez une large bourse accorchée sur sa ceinture."],
        LocaleKey::KNIGHT_LOOT_NOTE => ["Dans un pli de son plastron vous remarquez également une note dépassant."],
        LocaleKey::GOBLIN_ELDER_BOSS_NAME => "gobline ancienne",
        LocaleKey::GOBLIN_ELDER_HEAD => "tête de la gobline ancienne",
        LocaleKey::GOBLIN_ELDER_RIGHT_ARM => "bras droit de la gobline ancienne",
        LocaleKey::GOBLIN_ELDER_LEFT_ARM => "bras gauche de la gobline ancienne",
        LocaleKey::GOBLIN_ELDER_RIGHT_ATTACK => "griffe %s.",
        LocaleKey::GOBLIN_ELDER_LEFT_ATTACK => "griffe %s.",
        LocaleKey::GOBLIN_ELDER_BITE_ATTACK => "mords %s.",
        LocaleKey::GOBLIN_LOOT_BADGE => ["Vous voyez un collier brillant attaché autour du cou de la vieille gobline."],
        LocaleKey::CAVE_DESCRIPTION => [
            "Vous êtes dans une grotte.",
            "Bien que ce n'est pas le lieu le plus accueillant qui puisse être, et malgré l'obscurité ambiante, cet endroit est bien plus appaisant que les cryptes.",
            "En regardant bien, vous remarquez que ce que vous pensiez être le reflet des parroies humides venait en fait de cristaux encastrés dans la roche."
        ],
        LocaleKey::CAVES_LOOT_AMETHYST => [
            "Vous remarquez un cristal partièlement délogé de son lit rocheux.",
            "Vous trouvez un cristal ayant déjà été détaché de la roche auparavant.",
            "Vous voyez un morceau de cristal ayant été brisé, restant assez grand pour être pris."
        ],
        LocaleKey::CAVES_LOOT_ROPE => ["En fouillant la grande salle, vous remarquez une corde délaissée dans les friches."],
        LocaleKey::CAVES_TRANSITION_FOREST => [
            "Alors que vous avanciez dans la grotte, vous remarquez une lumière émergeant doucement au bout du tunnel.",
            "Malgré votre surprise, votre curiosité est piquée et vous quittez les tréfonds.",
            "Enfin l'obscurité est derrière vous."
        ],
        LocaleKey::OPEN_CAVE => "grande salle ouverte",
        LocaleKey::VILLAGE_ENTRANCE_DESCRIPTION => [
            "Vous êtes dans ce qui semble être une forêt souterraine.",
            "Un grand mur de bois vous fait fasse, une lourde porte en scellant son centre.",
            "Une sorte de village goblin semble habiter cette grotte."
        ],
        LocaleKey::VILLAGE_HUB => "place du village",
        LocaleKey::VILLAGE_HUB_DESCRIPTION => [
            "Vous êtes dans une placette de village, constituée simplement d'un puit entouré par de petites maisons en bois.",
            "A votre gauche se trouve une maison dont l'envergure dépasse largement le reste des bâtiments de ce lieu, et à votre droite semble se trouver une forge.",
            "Les larges murs encerclant le village vous donnent un sentiment de sécurité."
        ],
        LocaleKey::VILLAGE_HUT => "hutte",
        LocaleKey::VILLAGE_HOME_DESCRIPTION => [
            "Vous êtes dans une petite habitation faite de bois et d'argile, forcé·e de courber votre dos pour ne pas heurter votre tête contre son plafond.",
            "Une petite ouverture au sommet de la hutte laisse la douce lumière naturelle de la cave pénétrer la pièce, bien que l'endroit reste sombre pour des yeux humains.",
            "L'air ici est plus sec que dans le reste de la grotte, et la température plus douce. Les tissus doux jonchant le sol offrent un peu de repos pour vos pieds endoloris par le voyage."
        ],
        LocaleKey::VILLAGE_ROAD_DESCRIPTION => [
            "Vous êtes dans un petit village, entouré·e de petites huttes éparpillées partout autour.",
            "Le village est étonnamment petit et calme comparé aux endroits lugubres qu'il vous a fallu traverser pour arriver ici.",
            "L'air frais de la cave se mélange aux odeurs de terre battue humide sous vos pieds, sans doute compactée par des millier de pattes goblines durant des siècles avant votre passage."
        ],
        LocaleKey::GOBLIN_ROAD_TRANSITION_HOME => [
            "Vous approchez une des petites habitations, courbant votre stature disproportionelle afin de passer votre tête sous l'encadrement de la porte.",
            "Celle-ci est dépourvue de serrure ou autre mécanisme pouvant la maintenir fermée, sa poignée statique ne servant qu'à offrir une prise plus accéssible lorsqu'on la tire vers sois.",
            "Vous la poussez donc simplement avant d'entrer dans la hutte."
        ],
        LocaleKey::OPEN_CAVE_DESCRIPTION => [
            "À votre surprise, cette portion de la grotte semble reçevoir la lumière de la surface.",
            "En relevant votre regard, vous remarquez un gouffre béant s'ouvrant dans le plafond.",
            "Les décombres jonchant le sol semblent indiquer que ce dernier s'est effondré à un étage supérieur."
        ],
        LocaleKey::FOREST_DESCRIPTION => [
            "Vous êtes dans ce qui semble être une forêt souterraine.",
            "Bien que vous soyez dans une cavité rocheuse gigantesque dépourvue de soleil, un microcosme riche semble avoir tout de même pu naître ici.",
            "Vous appercevez de nombreux cristaux logés dans le haut plafond de la grotte, sintillant comme un ciel étoilé."
        ],
        LocaleKey::FOREST_LOOT_ROPE => [
            "Vous remarquez quelques lianes pendouillant des arbres pouvant servir de corde."
        ],
        LocaleKey::FOREST_LOOT_AMETHYST => [
            "Vous remarquez un petit cristal simplement posé sur le sol, au milieu de l'herbe.",
            "Vous remarquez un petit cristal simplement posé sur le sol, au milieu de l'herbe.",
            "Vous remarquez un petit cristal simplement posé sur le sol, au milieu de l'herbe.",
            "Vous remarquez un petit cristal simplement posé sur le sol, au milieu de l'herbe.",
            "Vous remarquez un petit cristal simplement posé sur le sol, au milieu de l'herbe.",
            "Alors que vous fouillez les environs, un objet lourd vous frappe soudainement le crâne. Après quelques secondes d'abasourdissement, vous regardez au sol et remarquez qu'un cristal semble vous être tombé dessus."
        ],
        LocaleKey::FOREST_TRANSITION_SWAMP => [
            "Alors que vous vous enfoncez plus profondément dans la forêt, vous sentez que le sol se gorge d'eau.",
            "L'irrégularité du terrain semble retenir de plus en plus d'eau stagnante, et alors que la terre laisse place à la boue la végétation se rarifie.",
            "Vous venez de pénétrer un marais."
        ],
        LocaleKey::SWAMP_DESCRIPTION => [
            "La boue dans laquelle vous vous tenez monte jusqu'à vos genoux, et les rares flaques d'eau claire tournent au marron lorsque vos pas en remuent le fond.",
            "Alors que vos pieds s'enfoncent dans la terre et que l'eau résiste à tout vos pas, marcher s'avère difficile.",
            "La froideur de la mélasse vous mord les jambes et l'odeur d'oeuf pourris est étouffante."
        ],
        LocaleKey::PLACEHOLDER_ARRAY => [],
        LocaleKey::SHOPKEEPER_NAME => "Tenancier",
        LocaleKey::SHOPKEEPER_INTRO_DIALOG => "Bonjour voyageur.\nJe vous prie, n'hésitez pas à observer mes marchandises et me dire si quoi que ce soit attise votre curiosité.",
        LocaleKey::SHOPKEEPER_IDLE_DIALOGS => [
            "Alors, quelque chose vous interesse dans mon étalage ?",
            "Dites-moi si vous avez besoin de quoi que ce soit."
        ],
        LocaleKey::SHOPKEEPER_CONVERSATION_STARTER => [
            "Puis-je faire quoi que ce soit pour vous ?",
            "Mh ?",
            "Une question à me poser ?"
        ],
        LocaleKey::SHOPKEEPER_CONVERSATION_KEEPER => [
            "Quoi que ce soit d'autre que vous vouliez savoir ?",
            "Vouliez-vous demander quelque chose d'autre ?",
            "Puis-je aider avec autre chose ?",
            "Est-ce que c'était tout ?",
            "...",
            "D'autres questions ?"
        ],
        LocaleKey::SHOPKEEPER_UNKNOWN_DIALOGS => [
            "Mes excuses, mais je ne suis pas sûr d'avoir compris...",
            "Huh ?",
            "Pardon, mais je ne comprends pas ce que vous voulez dire par là.",
            "Je ne suis pas sûr de comprendre."
        ],
        LocaleKey::ALCHEMIST_NAME => "Alchimiste",
        LocaleKey::ALCHEMIST_INTRO_DIALOG => "Salutation #{Locale::PLAYER_NAME}.\nTout ce qu'est à vendre est sur les étagères, et si vous avez une question, n'hésitez pas, je suis là pour ça.",
        LocaleKey::ALCHEMIST_IDLE_DIALOGS => [
            "Besoin de quelque chose ?",
            "Des questions ?",
            "Hésitez pas si quelque chose vous attire l'oeuil.",
            "Tout ce passe bien ?"
        ],
        LocaleKey::ALCHEMIST_CONVERSATION_STARTER => [
            "Vous souhaitiez me demander quelque chose ?",
            "Oui ?",
            "Puis-je vous aider ?"
        ],
        LocaleKey::ALCHEMIST_CONVERSATION_KEEPER => [
            "D'autres questions ?",
            "C'était tout ce que vous souhaitiez demander ?",
            "Autre choses ?",
            "Et sinon vous faut-il autre chose ?",
            "N'hésitez pas si vous avez d'autres questions."
        ],
        LocaleKey::ALCHEMIST_UNKNOWN_DIALOGS => [
            "Pardon, mais je n'ai pas compris.",
            "Pourriez vous répéter ça ?",
            "Je ne suis pas sûre de comprendre...",
            "Mes excuses, mais je n'ai pas saisie votre question.",
            "Hein ?"
        ],
        LocaleKey::ALCHEMIST_NICKNAME => "l'ami",
        LocaleKey::BLACKSMITH_NAME => "Forgeron",
        LocaleKey::BLACKSMITH_INTRO_DIALOG => "...",
        LocaleKey::BLACKSMITH_IDLE_DIALOGS => [
            "...",
            "...",
            "...",
            "Mh...",
            "...",
            "...",
            "...",
            "Mh mmh..."
        ],
        LocaleKey::BLACKSMITH_CONVERSATION_STARTER => [
            "Mh?",
            "Mh?",
            "...",
            "...",
            "...",
            "...",
            "...",
            "Mh..."
        ],
        LocaleKey::BLACKSMITH_CONVERSATION_KEEPER => [
            "Mh?",
            "Mh?",
            "...",
            "...",
            "...",
            "...",
            "...",
            "Mh..."
        ],
        LocaleKey::BLACKSMITH_UNKNOWN_DIALOGS => [
            "..."
        ],
        LocaleKey::BLACKSMITH_NICKNAME => "aventurier",
        LocaleKey::GOBLIN_BLACKSMITH_NAME => "goblin blacksmith",
        LocaleKey::GOBLIN_BLACKSMITH_INTRO_DIALOG => "Pöko sö Kö Köpoega Degäerk sö #{Locale::PLAYER_NAME}. Koptöter sö Kö Köpoega Degäerk kö dëkaos köpoduk köpogur kö degaerköpo tarkorbakö.",
        LocaleKey::GOBLIN_BLACKSMITH_IDLE_DIALOGS => [
            "Tödoer sö köpoduk kö aüro. Tödoer sö köpoduk kö degaerköpo.\nToderköpo sö köpoduk kö abadurä. Tödoer sö köpoduk kö sëopedar ktötar toderköporaegaobu.\nTöter sö köpoduk kö dëkaos köpogur kö degaerköpo.",
            "Todkobukör kör sö  köpoduk sö #{Locale::PLAYER_NAME}.\nKobukör sodottöter sö köpoduk.",
            "Tödoer kö dëkaos ?",
            "Kobukör sodottöter sö köpoduk.",
            "Kobukör töter sö Kö Köpoega Degäerk kö dëkaos köpoduk köpogur kö degaerköpo #{Locale::PLAYER_NAME}."
        ],
        LocaleKey::GOBLIN_BLACKSMITH_CONVERSATION_STARTER => ["Pöko sö Kö Köpoega Degäerk sö #{Locale::PLAYER_NAME}. Koptöter sö Kö Köpoega Degäerk kö dëkaos köpoduk köpogur kö degaerköpo tarkorbakö."],
        LocaleKey::GOBLIN_BLACKSMITH_CONVERSATION_KEEPER => [
            "Tödoer sö köpoduk kö aüro. Tödoer sö köpoduk kö degaerköpo.\nToderköpo sö köpoduk kö abadurä. Tödoer sö köpoduk kö sëopedar ktötar toderköporaegaobu.\nTöter sö köpoduk kö dëkaos köpogur kö degaerköpo.",
            "Todkobukör kör sö  köpoduk sö #{Locale::PLAYER_NAME}.\nKobukör sodottöter sö köpoduk.",
            "Tödoer kö dëkaos ?",
            "Kobukör sodottöter sö köpoduk.",
            "Kobukör töter sö Kö Köpoega Degäerk kö dëkaos köpoduk köpogur kö degaerköpo #{Locale::PLAYER_NAME}."
        ],
        LocaleKey::GOBLIN_BLACKSMITH_UNKNOWN_DIALOGS => [
            "..."
        ],
        LocaleKey::GOBLIN_BLACKSMITH_NICKNAME => "tarkorbakö",
        LocaleKey::GOBLIN_GUARD_NAME => "une garde gobline",
        LocaleKey::GOBLIN_GUARD_INTRO_DIALOG => "Kör kobakëto ! Körkubagedo !\nTö bëdèsoe sö todutrëd dök köpoduk.",
        LocaleKey::GOBLIN_GUARD_IDLE_DIALOGS => [
            "..."
        ],
        LocaleKey::GOBLIN_GUARD_CONVERSATION_STARTER => [
            "Kör kobakëto ! Körkubagedo !\nTö bëdèsoe sö todutrëd dök köpoduk."
        ],
        LocaleKey::GOBLIN_GUARD_CONVERSATION_KEEPER => [
            "Dëkabogu sö dëkaos ?",
            "Dëkabogu sö dëkaos tödoer #{Locale::PLAYER_NAME}.",
            "Kör sö këtogubu köpogur sö dëkaos ? Pöko."
        ],
        LocaleKey::GOBLIN_GUARD_UNKNOWN_DIALOGS => [
            "Erkosä sö Kö Rakröt Bëdès sö pöko kös tarkorbakö söd korkö pöko sö #{Locale::PLAYER_NAME} sö Kö Rakröt Bëdès.",
            "Kosäpor sö Kö Rakröt Bëdès sö pöko köpoduk söd."
        ],
        LocaleKey::GOBLIN_GUARD_NICKNAME => "bëdèsoe",
        LocaleKey::GOBLIN_GUARD_AGGRESSIVE => "Après que vous l'ayez attaqué, la garde gobline refuse maintenant de vous parler.",
        LocaleKey::GOBLIN_GUARD_ALREADY_AUTHORISED => "La garde gobline est trop occupée pour vous parler plus, vous faisant simplement geste de passer à travers le portail du village comme bon vous semble.",
        LocaleKey::GOBLIN_GUARD_BRIBE => "Montrer un objet...",
        LocaleKey::GOBLIN_GUARD_SHOW_BADGE => [
            "Lorsque vous montrez le petit pendentif métallique à la gobline, sa posture se relaxe soudainement, la surprise se lisant dans son regard.",
            "    \"Ö... Sö bëdèsoe sö tarkorbakö köpo köpoduk. Kobukör korkëtogubagedo sö dök köpoduk.",
            "",
            "D'après sa posture, vous pouvez deviner que vous pouvez dorénavent aller librement dans le village."
        ],
        LocaleKey::GOBLIN_GUARD_SHOW_BADGE_BLOODY => [
            "Vous présentez le petit pendentif à la gobline, elle semble être un peu surprise puis ses yeux s'écarquillent, visiblement incrédule.",
            "Elle reste fixée quelques instant sur le petit objet métallique rouge, avant de se tourner vers vous avec rage.",
            "",
            "    \"Sö bëdèsoe... Erkodotrëkobupo sö köpoduk korkö erkokör.",
            "     Erkodotrëkobupo tö köpoduk dök.",
            "     Todpör kadä sö toderbrä regoburëkobu köpoduk körko kör sö dök ?! Sö bëdèsoe totrëkobu !",
            "     ...",
            "     Regoburëkoburpo.",
            "",
            "La gobline se jette sur vous."
        ],
        LocaleKey::GUARD_NPC_DESCRIPTION => "En haut des portes du village, vous voyez un goblin lourdement armé vous surplombant. Semblant vous surveiller intensément.",
        LocaleKey::GOBLIN_ELDER_NAME => "une gobline ancienne",
        LocaleKey::GOBLIN_ELDER_INTRO_DIALOG => "Pöko sö köpodubugurku sö #{Locale::PLAYER_NAME}.\nKör sö köpodubugurku köpogur sö dëkaos ?",
        LocaleKey::GOBLIN_ELDER_IDLE_DIALOGS => [
            "..."
        ],
        LocaleKey::GOBLIN_ELDER_CONVERSATION_STARTER => [
            "Pöko sö köpodubugurku sö #{Locale::PLAYER_NAME}.\nKör sö köpodubugurku köpogur sö dëkaos ?"
        ],
        LocaleKey::GOBLIN_ELDER_CONVERSATION_KEEPER => [
            "Pöko sö köpodubugurku köpogur sö tödoer #{Locale::PLAYER_NAME}.",
            "Säpogu sö köpodubugurku kö pöko #{Locale::PLAYER_NAME}.",
            "Pöko sö köpodubugurku"
        ],
        LocaleKey::GOBLIN_ELDER_UNKNOWN_DIALOGS => [
            "Kös sö köpodubugurku sö pöko #{Locale::PLAYER_NAME}. Körrarko sö köpodubugurku.",
            "Körrarko sö köpodubugurku tötresèop kös sö pöko #{Locale::PLAYER_NAME}.",
            "Erkopöko sö dëkaos ?"
        ],
        LocaleKey::GOBLIN_ELDER_NICKNAME => "tarkorbakö",
        LocaleKey::GOBLIN_ELDER_NPC_DESCRIPTION => "Devant vous se trouve une vieille gobline, couverte de larges tissus la tenant au chaud.",
        LocaleKey::GOBLIN_ELDER_GIVE_BADGE => [
            "Après son monologue, la gobline se tourne vers un de ses aidant, lui faisant signe de chercher quelque chose.",
            "Le petit goblin aquiesce et se dirige vers l'arrière de la hute, fouillant un peu avant de se diriger vers vous avec un petit pendentif.",
            "Il vous le donne précautionneusement. La lumière bleutée tombant du plafond se reflétant doucement dans les formes dorées et argentées du bijou."
        ],
        LocaleKey::GOBLIN_BLACKSMITH_NO_TALK => "Bien qu'il accepte de faire commerce avec vous, le forgeron semble trop occupé pour discuter.",
        LocaleKey::GOBLIN_ADVISOR_NAME => "un des aidants de la vieille gobline",
        LocaleKey::GOBLIN_ADVISOR_INTRO_DIALOG => "...",
        LocaleKey::GOBLIN_ADVISOR_IDLE_DIALOGS => ["..."],
        LocaleKey::GOBLIN_ADVISOR_CONVERSATION_STARTER => ["..."],
        LocaleKey::GOBLIN_ADVISOR_CONVERSATION_KEEPER => ["..."],
        LocaleKey::GOBLIN_ADVISOR_UNKNOWN_DIALOGS => ["..."],
        LocaleKey::GOBLIN_ADVISOR_NICKNAME => "tarkorbakö",
        LocaleKey::GOBLIN_ADVISOR_NO_TALK => "Lorsque vous essayez d'adresser directement le petit goblin, il redirige simplement son regard sur l'ancienne gobline. Semblant préférer se référer à ce qu'elle répond.",
        LocaleKey::DIAL_GOBLIN_ADVISOR_REPEAT => "",
        LocaleKey::GOBLIN_TRANSLATOR_NAME => "un goblin",
        LocaleKey::GOBLIN_TRANSLATOR_INTRO_DIALOG => "Kö Pöko Tarkö peux vous aider à traduire tout mots d'un parole gobline à un parole humaine, et d'un parole humaine à un parole gobline si vous souhaite.\nOu, Kö Pöko Tarkö peux aussi expliquer la grammaire et comment faire des phrases dans un parole gobline... Dites juste à Kö Pöko Tarkö ce qu'il vous faut!",
        LocaleKey::GOBLIN_TRANSLATOR_IDLE_DIALOGS => [
            "..."
        ],
        LocaleKey::GOBLIN_TRANSLATOR_CONVERSATION_STARTER => [
            "Kö Pöko Tarkö peux vous aider à traduire tout mots d'un parole gobline à un parole humaine, et d'un parole humaine à un parole gobline si vous souhaite.\nOu, Kö Pöko Tarkö peux aussi expliquer la grammaire et comment faire des phrases dans un parole gobline... Dites juste à Kö Pöko Tarkö ce qu'il vous faut!"
        ],
        LocaleKey::GOBLIN_TRANSLATOR_CONVERSATION_KEEPER => [
            "'Avez un question à posée?",
            "Dites juste à Kö Pöko Tarkö un mot et Kö Pöko Tarkö traduira un mot pour vous!",
            "Voulez que Kö Pöko Tarkö traduise un truc pour vous?",
            "Un question?"
        ],
        LocaleKey::GOBLIN_TRANSLATOR_UNKNOWN_DIALOGS => [
            "Kö Pöko Tarkö s'excuse, mais Kö Pöko ignore un signification de ce que vous avez dit...",
            "Kö Pöko Tarkö s'excuse, mais Kö Pöko ignore un signification de ce que vous avez dit...",
            "Kö Pöko Tarkö craint que Kö Pöko Tarkö ai mal compris...",
            "Kö Pöko Tarkö ignore malheuresement comment traduire ce que vous venez de dire..."
        ],
        LocaleKey::GOBLIN_TRANSLATOR_NICKNAME => "toi",
        LocaleKey::TRANSLATOR_WHAT_HAVE_YOU_DONE => [
            "Vous entrez une fois de plus dans la maison du goblin, mais au lieu de vous accueillir celui-ci se fige soudainement, un air choqué.",
            "    \"Dëk-... Que... Vous... Un sang goblin sur vos mains... Pourquoi vous avez tué des goblins?!",
            "    Kö Pöko Tarkö vous a enseigné un parole gobline... Vous devez seulement parler aux goblins pour leur aide... Les goblins sont paisibles!",
            "    Votre but est-il seul de tuer?...\"",
            "",
            "Que faites-vous ?",
            "    a) S'excuser.",
            "    b) Tuer."
        ],
        LocaleKey::TRANSLATOR_APOLOGY => [
            "Vous vous expliquez au goblin, assurant vos que intentions sont paisibles.",
            "Le goblin semble se détendre un peu, bien qu'encore sous le choc il vous donne le bénéfice du doute, prêt à continuer de vous enseigner le goblin.",
            "",
            "Vous n'êtes pas sûr·e de si cette seconde chance est dûe à une croyance sincère en vos bonnes intentions, ou si le goblin craint simplement d'être tué à son tour dans le cas où il vous contre-dirait."
        ],
        LocaleKey::TRANSLATOR_BEGGING => [
            "Vous pénétrez dans une des habitations. Du sang goblin entache la petite porte en bois lorsque votre main la pousse, votre tête s'avachissant pour passer sous la petite toîture.",
            "A votre surprise, lorsque vous entrez dans la petite hutte un goblin se met à vous parler avec un accent fort, se recroquevillant en vous voyant entrer.",
            "",
            "    \"Eer- Eh- Erköpo! Erk- Ah- Attendez !",
            "    Vous! Ko- Je- Je m'appelle Kö Pöko Tarkö !",
            "    Kö Pöko Tarkö peux vous apprendre la parole gobline... Epargnez Kö Pöko Tarkö ! Les goblins sont pacifique !\"",
            "",
            "Que faites-vous ?",
            "    a) Epargner le goblin.",
            "    b) Attaquer le goblin."
        ],
        LocaleKey::TRANSLATOR_SPARING => [
            "Vous assurez le goblin que vous ne comptez pas le tuer.",
            "Kö Pöko Tarkö semble se détendre quelque-peu, une touche de reconnaissance dans sa voix.",
            "",
            "    \"Avec du sang goblin sur vos mains, tout les goblins vous attaquerons à vue dans le village...",
            "    Mais, un mal passera, et quand vous apprendrez la parole gobline vous pourrez convaincre un garde de vous laisser passer pacifiquement quand vous reviendrez.\"",
        ],
        LocaleKey::TRANSLATOR_GREETING => [
            "Vous entrez dans une petite habitation, abaissant votre tête sous le plafond pour ne pas vous y cogner.",
            "Lorsqu'il vous voit devant lui, le goblin occupant les lieux vous observe avec une expression abasourdie, se figeant quelques instant avant de vous accueillir dans un accent étrange avec enthousiasme.",
            "",
            "    \"Bonjour, vous ! Je m'appelle Kö Pöko Tarkö.",
            "    Kö Pöko Tarkö connait un parole humaine, et peux apprendre un parole gobline à vous !",
            "    Quand vous connaitrez un parole gobline, vous pourriez convaincre un garde de vous laisser rentrer plus facilement un prochaine fois. Et vous pourrez aussi comprendre les histoires de Köpodubugurku.\""
        ],
        LocaleKey::BOSS_CELL_REQ_QUESTION => "Essayer la clef de la prison sur la serrure ?",
        LocaleKey::BOSS_CELL_REQ_ENTRY => [
            "Vous utilisez la clef de la prison afin d'ouvrir la grande porte.",
            "Vous poussez sur la porte, ses gonds rouillés vous donnant du retors.",
            "En y mettant toutes vos forces, vous parvenez néanmoins à forcer la porte ouverte.",
            "",
            "Lorsque vous pénétrez dans ce qui semble être une cellule de prison,",
            "Vous pouvez voir au fond de la salle obscure un chevalier à l'armure endommagée par les batailles et l'âge",
            "A peine couverte par les fins lambeaux de ce qui devait être un noble surcot."
        ],
        LocaleKey::BOSS_CELL_REQ_REFUSE => [
            "Vous décidez qu'il ne vaut probablement mieux ne pas prendre le risque d'ouvrir la porte",
            "Et décidez donc de revenir sur vos pas."
        ],
        LocaleKey::BOSS_CELL_REQ_CANT => [
            "Lorsque vous tentez de l'ouvrir celle-ci résiste, semblant être fermée à clef.",
            "",
            "Vous retournez sur vos pas."
        ],
        LocaleKey::ARMOR_DESCRIPTION => ", protège de %{#{LocaleKey::F_DEFENSE}} dégats et pèse %{#{LocaleKey::F_WEIGHT}} Kg",
        LocaleKey::ARMOR_CARD_DESCRIPTION => "%{#{LocaleKey::F_DEFENSE}}\n%{#{LocaleKey::F_WEIGHT}} Kg",
        LocaleKey::BANDAGES_NAME => "des bandages",
        LocaleKey::BANDAGES_DESCRIPTION => "restaure une quantité aléatoire de vos points de vies manquants",
        LocaleKey::BANDAGES_PLURAL => "des bandages",
        LocaleKey::COINS_NAME => "une pièce d'or",
        LocaleKey::COINS_DESCRIPTION => "monnaie actuelle employée dans les contrées principales composant la Grande Alliance",
        LocaleKey::COINS_PLURAL => "des pièces d'or",
        LocaleKey::COIN_HEAD => "face",
        LocaleKey::COIN_TAIL => "pile",
        LocaleKey::CHALK_NAME => "un paquet de craies",
        LocaleKey::CHALK_PLURAL => "des paquets de craies",
        LocaleKey::CHALK_DESCRIPTION => "permet d'écrire sur les portes, si jamais ça vous aide à vous orienter...",
        LocaleKey::CHALK_USE => "Vous écrivez sur la porte.",
        LocaleKey::AMETHYST_NAME => "une améthyste",
        LocaleKey::AMETHYST_DESCRIPTION => "doit pouvoir se vendre pour quelques pièces",
        LocaleKey::AMETHYST_PLURAL => "des améthystes",
        LocaleKey::ROPE_NAME => "une corde",
        LocaleKey::ROPE_DESCRIPTION => "longue et robuste, doit pouvoir soutenir de lourdes charges",
        LocaleKey::ROPE_PLURAL => "des cordes",
        LocaleKey::DEVNOTE_NAME => "note d'au revoir",
        LocaleKey::DEVNOTE_DESCRIPTION => "merci d'avoir joué",
        LocaleKey::HEALTH_POTION_NAME => "une potion de soin",
        LocaleKey::HEALTH_POTION_DESCRIPTION => "restaure %s points de vie",
        LocaleKey::HEALTH_POTION_PLURAL => "des potions de soin",
        LocaleKey::HEALTH_STONE_NAME => "une pastille de soin",
        LocaleKey::HEALTH_STONE_DESCRIPTION => "restaure %{#{LocaleKey::F_LIFE}} points de vie chaque tour, pendant %{#{LocaleKey::F_AMOUNT}} tours",
        LocaleKey::HEALTH_STONE_PLURAL => "des pastilles de soin",
        LocaleKey::POISON_POTION_NAME => "une fiole de poison",
        LocaleKey::POISON_POTION_PLURAL => "fioles de poison",
        LocaleKey::POISON_POTION_DESCRIPTION => "enduit votre arme de poison, permettant à votre prochaine attaque physique d'infliger du poison",
        LocaleKey::POISON_POTION_USE => "%s enduit son arme de poison.",
        LocaleKey::PRISON_KEY_NAME => "une clef",
        LocaleKey::PRISON_KEY_DESCRIPTION => "doit pouvoir ouvrir une porte quelque part",
        LocaleKey::PRISON_KEY_PLURAL => "des clefs",
        LocaleKey::TELEPORTER_NAME => "un télé-cristal",
        LocaleKey::TELEPORTER_DESCRIPTION => "un cristal très rare dont une magie puissante émane, canalisée via un instrument magique le rendant capable de transporter son possesseur à la sortie du donjon ou auprès de ses alliés.",
        LocaleKey::TELEPORTER_PLURAL => "des télé-cristaux",
        LocaleKey::CATALYST_NAME => "un catalyseur",
        LocaleKey::CATALYST_PLURAL => "des catalyseurs",
        LocaleKey::CATALYST_DESCRIPTION => "petit mécanisme focalisant la magie. Permet à son utilisateur de concentrer ses sorts sur des cibles précises au lieu de disperser son énergie sur tout les ennemis.",
        LocaleKey::DETOX_FRUIT_NAME => "un fruit détoxifiant",
        LocaleKey::DETOX_FRUIT_NAME_PLURAL => "des fruits détoxifiants",
        LocaleKey::DETOX_FRUIT_DESCRIPTION => "un fruit bio-luminéscent natif de la forêt souterraine, réstaure %s points de vie et a 50%% de chances de soigner l'empoisonnement.",
        LocaleKey::DETOX_FRUIT_USE_SELF => "%s mange le fruit détoxifiant.",
        LocaleKey::DETOX_FRUIT_USE_OTHER => "%{#{LocaleKey::F_SOURCE}} donne un fruit détoxifiant à %{#{LocaleKey::F_TARGET}}...",
        LocaleKey::DETOX_FRUIT_NO_EFFECT => "Vous ne sentez aucun effets.",
        LocaleKey::DETOX_JUICE_NAME => "un jus de fruit détoxifiant",
        LocaleKey::DETOX_JUICE_NAME_PLURAL => "des bouteilles de jus de fruit détoxifiant",
        LocaleKey::DETOX_JUICE_DESCRIPTION => "une petite bouteille de jus de fruit concentré émettant une douce lueur jaunâtre, restaure %s points de vie et soigne du poison.",
        LocaleKey::DETOX_JUICE_USE_SELF => "%s vois le jus détoxifiant.",
        LocaleKey::DETOX_JUICE_USE_OTHER => "%{#{LocaleKey::F_SOURCE}} donne du jus détoxifiant à %{#{LocaleKey::F_TARGET}}...",
        LocaleKey::DETOX_DETOX => "Vous vous sentez soulagé·e alors que le poison quitte votre corps.",
        LocaleKey::GOBLIN_BADGE_NAME => "un petit collier",
        LocaleKey::GOBLIN_BADGE_PLURAL => "petits colliers",
        LocaleKey::GOBLIN_BADGE_DESCRIPTION => "représente une main humaine et une patte gobline argentées tenant chaques extrêmités d'un disque doré. Le niveau de détail est surprenant pour un si petit bijou.",
        LocaleKey::GOBLIN_BADGE_NAME_BLOODY => "un petit collier rouge",
        LocaleKey::GOBLIN_BADGE_PLURAL_BLOODY => "petits colliers rouges",
        LocaleKey::GOBLIN_BADGE_DESCRIPTION_BLOODY => "petit mais lourd, teinté de sang goblin.",
        LocaleKey::SHOW_GOBLIN_BADGE => "Vous brandissez fiérement le petit pendentif métallique.",
        LocaleKey::PACIFY_GOBLIN => "%s s'appaise.",
        LocaleKey::GOBLINS_NOT_FORGIVING => "Les goblins refusent de pardonner votre attaque.",
        LocaleKey::GOBLINS_NOT_TRUSTING => "Lorsqu'ils voyent le sang innocent sur votre main tâcher le précieux pendentif, les goblins refusent de vous faire confience.",
        LocaleKey::GOBLIN_LOOT_COINS => ["En fouillant le corps du gobelin vous remarquez une petite bourse accrochée à sa ceinture."],
        LocaleKey::GOBLIN_LOOT_FRUITS => ["Lorsque vous regardez dans le sac du gobelin, vous y trouvez quelques fruits."],
        LocaleKey::GOBLIN_LOOT_HEALTH_POTION => ["Vous trouvez une potion de soin à la ceinture d'un garde goblin."],
        LocaleKey::POISON_SPIDER_LOOT_POISON => ["En examinant le cadabre de l'araignée, vous parevenez à extraire le venin de ses crocs encore intact."],
        LocaleKey::THE_EXIT => "la sortie",
        LocaleKey::A_HOLE => "un trou",
        LocaleKey::ASK_USE_ROPE_HOLE => "Souhaitez-vous utiliser une corde pour descendre ?",
        LocaleKey::STUCK_DOWN_HOLE => "Vous observez le trou duquel une douce lumière chute dans la grotte, mais ne voyez aucun moyen de remonter.",
        LocaleKey::ATTACH_ROPE => "Vous attachez la corde à un pillier proche du trou semblant assez solide.",
        LocaleKey::CLIMB_ROPE_DOWN => "Vous entamez votre descente lente le long du trou",
        LocaleKey::CLIMB_ROPE_UP => "Vous remontez tant bien que mal la longue corde jusqu'à la surface",
        LocaleKey::PREPARE_JUMP => "Vous approchez le trou et observez ses tréfonds. Vous ne voyez rien d'autre que l'obscurité, n'ayant aucune idée de sa profondeur.",
        LocaleKey::ASK_JUMP => "Sauter dans le gouffre ?",
        LocaleKey::JUMP_HOLE => "%s s'élance dans le trou, s'apprétant à l'impact.",
        LocaleKey::NEVERMIND_HOLE => "Ne souhaitant pas vous blesser, vous évitez le trou.",
        LocaleKey::VILLAGE_ENTRANCE => "les portes du village",
        LocaleKey::ASK_SNEAK_VILLAGE_ENTRANCE => "Souhaitez vous entrer discrètement dans le village ? (%i%% chances de succès)",
        LocaleKey::GOBLIN_ATTACK => "Vous voyant prendre d'attaque leur village, les goblins se jettent sur vous.",
        LocaleKey::VILLAGE_FORGE => "une petite forge",
        LocaleKey::FORGE_EMPTY => [
            "Lors de votre arrivée dans la petite forge, vous remarquez que celle-ci fût entièrement vidée avant votre arrivée, ne vous laissant que des cendres chaudes comme trésor à prendre.",
            "Ce lieu n'ayant rien pour vous, vous rebroussez chemin vers le reste du village."
        ],
        LocaleKey::ASK_SAVE => "Quelle sauvegarde charger ?",
        LocaleKey::OPEN_SETTINGS_OPTION => "0) Options | 6) Status",
        LocaleKey::DIALOG_QUESTION => "Ecrivez ce que vous souhaitez dire : (dites au-revoir pour finir la conversation)",
        LocaleKey::DIALOG_END_KEYWORDS => ["bye", "à plus", "à la prochaine", "au revoir", "à la revoyure", "a la revoyure", "à bientôt", "0"],
        LocaleKey::DIAL_SHOPKEEPER_REPEAT => "Comme je l'ai dit, ",
        LocaleKey::DIAL_SHOPKEEPER_KEY_NOT_FROM_HERE => ["pas|autre|ailleur", "ici|coin|là|région|venez"],
        LocaleKey::DIAL_SHOPKEEPER_TXT_NOT_FROM_HERE => ["Non je ne viens effectivement pas d'ici.\nJe suis originaire de l'Est."],
        LocaleKey::DIAL_SHOPKEEPER_KEY_ORIGIN => ["ton|ta|tu|t|vous", "où|né|pays|origine|histoire|viens"],
        LocaleKey::DIAL_SHOPKEEPER_TXT_ORIGIN => [
            "Je suis né dans la partie Est de l'Empire Saint. J'y ai passé mes plus jeunes années, mais a vite commencé à voyager à travers tout le continent plus large.",
            "Le voyage a toujours été un avantage crucial pour mon magasin, grâce aux taxes minimales sur le transport de marchandise entre chaque royaume j'ai pu vendre les plus grandes raretés au prix les plus compétitifs.",
            "Le seul problème avec les trajets c'est le temps et les bandits, honnêtement."
        ],
        LocaleKey::DIAL_SHOPKEEPER_KEY_ALLIANCE => ["quoi|grande|pourquoi|quand|comment|dire|parler", "alliance|allience"],
        LocaleKey::DIAL_SHOPKEEPER_TXT_ALLIANCE => [
            "",
            "La grande alliance est une coalition entre la plupart des pays dans ce continent, en plus de quelques nations côtières dans le continent plus au Sud, de l'autre côté de la mer.",
            "C'est un traité nous assemblant tous sous une même monnaie et qui s'assure de la paix dans le continent en plus d'aider aux échanges globaux.",
            "C'est la raison même pour laquelle je peux saisir une opportunité comme celle-là."
        ],
        LocaleKey::DIAL_SHOPKEEPER_INTRO_ALLIANCE => "Vous ne connaissez pas ça ?\nLes gens ici manquent cruellement d'éducation sur leur propre politique. Mais j'imagine que tout le monde n'a pas besoin de s'y connaitre.",
        LocaleKey::DIAL_SHOPKEEPER_KEY_BLACK_LEATHER => ["noir|sombre", "cuir"],
        LocaleKey::DIAL_SHOPKEEPER_TXT_BLACK_LEATHER => [
            "Le cuir noir est un matériau rare provenant d'une bête spécifique avant d'être soumis à un grand nombre de traitements le raffinant en une matière à la fois souple et robuste permettant de faire les armures de la meilleure qualité.",
            "En revanche, je ne suis pas tanneur moi-même donc là s'arrête l'étendue de mes connaissances à ce sujet."
        ],
        LocaleKey::DIAL_SHOPKEEPER_KEY_HEALTH_POTION => ["soin|vie|soins|vies", "potion|potions"],
        LocaleKey::DIAL_SHOPKEEPER_TXT_HEALTH_POTION => ["Mes potions de soins sont d'une grande qualité, et c'est un moyen bien plus fiable de se soigner dans des situations d'urgences que vos bandages faits maisons."],
        LocaleKey::DIAL_SHOPKEEPER_KEY_LOST_KNIGHT => ["perdu|perdue", "chevalier|chevalière|chevaliere"],
        LocaleKey::DIAL_SHOPKEEPER_TXT_LOST_KNIGHT => ["Je n'ai aucune idée de qui vous parlez. Désolé."],
        LocaleKey::DIAL_SHOPKEEPER_KEY_GOBLINS => ["gobelins|gobelin|goblins|goblin"],
        LocaleKey::DIAL_SHOPKEEPER_TXT_GOBLINS => [
            "Ces petites pestes sont très rares honnêtement. Je n'en ai jamais vu moi-même, mais j'ai entendu de nombreux récits à propos de leurs assauts sur quiconque s'aventurerais trop profond dans les forêts.\nDe ce que j'ai entendu ils sont bien plus communs dans la tour apparemment. Peut-être qu'eux aussi apprécient les trésors du donjon.",
            "En cela ils ressemblent aux aventuriers de plus d'une manière."
        ],
        LocaleKey::DIAL_SHOPKEEPER_KEY_SLIME => ["slimes|slime"],
        LocaleKey::DIAL_SHOPKEEPER_TXT_SLIME => [
            "Des créatures assez communes, les slimes peuvent être trouvés dans n'importe quel endroit pour autant que la température est douce et l'humidité haute.",
            "La seule chose étrange à propos de ceux dans le donjon est leur aggréssivité, mais dans tout les cas j'ai entendu dire qu'ils n'étaient pas une grande menace de toute façon."
        ],
        LocaleKey::DIAL_SHOPKEEPER_KEY_UNDEAD => ["zombie|zombies|squelette|squelettes|vivant|vivants", "zombie|zombies|squelette|squelettes|mort|morts"],
        LocaleKey::DIAL_SHOPKEEPER_TXT_UNDEAD => [
            "Beaucoup d'aventuriers prétendent être revenus à la vie dans les donjon, tandis que d'autres affirment avoir vu des morts-vivants hostiles errer dans les couloirs du donjon...",
            "Rien de tout ça fait sens pour moi, pourquoi certains reviendraient sans problème et d'autres non ? A moins que ces morts-vivants ne soient pas des aventuriers, mais je vois pas qui ils seraient et pourquoi ils seraient différent des aventuriers réssussités."
        ],
        LocaleKey::DIAL_SHOPKEEPER_KEY_RESUSCITATE => ["revenu|entre|je|j|aventuriers|aventurier", "morts|mort|tué|tuée|tuées|tués|ressuscité|ressucité|ressucite|ressuscite|resurrecté|resurrecte"],
        LocaleKey::DIAL_SHOPKEEPER_TXT_RESUSCITATE => [
            "Vous n'êtes pas le seul à dire être revenu d'entre les morts, la plupart de ceux qui ont explorés le donjon sont mort à un moment d'après eux.\nEn tout cas, s'ils ne se sont pas échappé dès qu'ils ont vu le premier monstre évidemment.",
            "En revanche, d'après vos dires la mort vous ramène au moment où vous êtes entré dans le donjon, donc à part des souvenirs brumeux vous n'en n'avez pas de preuves concrètes... J'en pense donc que ce sont en fait des hallucinations.",
            "J'veux dire, réfléchissez-y. Peut-être que la tour joue des tours sur votre esprit, ou que quelque chose dans l'air vous fait délirer. Beaucoup de gens ayant été sous l'influence d'hallucinogènes ont des visions morbides de leurs propres morts, ou même de l'après. Ce qui pour moi est bien plus probable."
        ],
        LocaleKey::DIAL_SHOPKEEPER_KEY_DUNGEON_INSIDE => ["catacombes|catacombe|crypte|cryptes|entrée|intérieur|intérieure|intérieurs|dans|dedans|prison|prisons"],
        LocaleKey::DIAL_SHOPKEEPER_TXT_DUNGEON_INSIDE => ["Je ne sais rien de l'intérieur du donjon à part les rumeurs qui en circulent. Désolé."],
        LocaleKey::DIAL_SHOPKEEPER_INTRO_DUNGEON_INSIDE => "Je n'ai jamais été moi-même dans le donjon, donc ",
        LocaleKey::DIAL_SHOPKEEPER_KEY_DUNGEON => ["donjon|tour|donjons"],
        LocaleKey::DIAL_SHOPKEEPER_TXT_DUNGEON => [
            "On ne sait pour l'instant que très peu sur ce donjon, et à mon avis beaucoup de choses qu'on en dit semblent être des fabulations.",
            "D'après les locaux, cette tour serait juste soudainement apparue du jour au lendemain sans que qui que ce soit sache qui l'a mis là.",
            "Je pense que c'est de la folie d'entretenir de telles histoires, mais faut dire que les gens d'ici n'avaient clairement pas les moyens de mettre ça là avec tant de trésors à y trouver.",
            "La quantitée de monstres l'habitant est inquiétante également, certains sortis tout droits de contes sans aucune autre preuve de leur existence vu ailleur jusque-là.",
            "En tout cas. Même si je suis sceptique de tout ça, ce qu'est sûr c'est que cet évènement est unique en son genre, et c'est pas surprenant de voir tant de gens s'empresser de venir le voir."
        ],
        LocaleKey::DIAL_SHOPKEEPER_KEY_HOLY_EMPIRE => ["ton|saint|sain|ta|tes|t|votre", "empire|natif|natal|maison|lieu|pays|royaume"],
        LocaleKey::DIAL_SHOPKEEPER_TXT_HOLY_EMPIRE => [
            "C'est un royaume bien loin d'ici, à l'Est, mais plus ou moins égal en taille.",
            "Les jours semblent toujours passer bien plus vite là-bas, et il y fait bien plus froid.",
            "Néanmoins, bien que vos hivers soient plus doux, et que vous profitiez de meilleures cultures, vos étés eux sont bien pire que les nôtres.",
            "Pour ce que ça vaut j'suis bien heureux d'être là en Automne. Comme ça je peux profiter des paysages et du climat tempéré sans risquer le coup de chaud."
        ],
        LocaleKey::DIAL_SHOPKEEPER_INTRO_HOLY_EMPIRE => "Oui, j'aime énormément cet endroit. ",
        LocaleKey::DIAL_SHOPKEEPER_KEY_NAME => ["ton|appelle-tu|appelez-vous|ta|t|votre|tu|vous", "appelle|appelez|appelle-tu|appelez-vous|nomme|nommez|prénom|prenom|nom"],
        LocaleKey::DIAL_SHOPKEEPER_TXT_NAME => ["Mon nom est Márton Orbán."],
        LocaleKey::DIAL_SHOPKEEPER_KEY_AGE => ["ton|ta|t|votre|tu|vous", "age|âge|vieux|jeune"],
        LocaleKey::DIAL_SHOPKEEPER_TXT_AGE => ["j'ai 37 ans."],
        LocaleKey::DIAL_SHOPKEEPER_INTRO_AGE => "Je ne vois pas en quoi ça vous concerne, mais si vous êtes si curieux ",
        LocaleKey::DIAL_SHOPKEEPER_KEY_ARMOR_WEIGHT => ["armure|armures|casque|haume|plastron|jambières|bottes|chaussures|chausses|gants|gantlets", "poid|poids|lourd|lourde|lourdes|medium|moyen|moyenne|moyennes|léger|légère|legere|légères|legeres|leger|kg"],
        LocaleKey::DIAL_SHOPKEEPER_TXT_ARMOR_WEIGHT => [
            "Le poids d'une armure affectera majoritairement votre agilité.\nIl sera bien plus dûr de bouger avec un armure particulièrement lourde, et dans des cas extrêmes il peut même s'avérer difficile de frapper vos ennemis avec une armure qu'est trop lourde pour vous.",
            "Toutes les armures ne sont pas à poids égal en revanche, les armures les moins cher seront très lourde pour la protection qu'elles offrent, tandi que les plus chères emploies des méthodes de manufactures avancées avec des matériaux de haute qualité permettant une très bonne protection pour leur poids."
        ],
        LocaleKey::DIAL_SHOPKEEPER_KEY_ARMOR_PROTECTION => ["armure|armures|casque|haume|plastron|jambières|bottes|chaussures|chausses|gants|gantlets", "protection|protège|protege|protectrice|force|defense|défense"],
        LocaleKey::DIAL_SHOPKEEPER_TXT_ARMOR_PROTECTION => [
            "La protection d'une armure est un moyen bien plus fiable d'éviter les blessures que d'essayer d'esquiver tous les coups envoyés vers vous.\nUne bonne armure peut vous rendre invincible, et pourra au moins augmenter vos chances de survies dans le donjon lorsqu'elle vous va bien."
        ],
        LocaleKey::DIAL_SHOPKEEPER_KEY_AGILITY => ["agilité|agilite|agilitée|agilitee|agile|discretion|discrétion|discret|discrète|discrete|furtivité|furtivite|furtive|furtif"],
        LocaleKey::DIAL_SHOPKEEPER_TXT_AGILITY => [
            "l'agilité peut être un talent utile dans un endroit aussi dangereux que ce donjon. Pouvoir passer inaperçu et éviter les coups ennemis pourrait bien sauver votre vie.",
            "Aussi, si c'est votre style, l'armure légère sera votre meilleur choix, vous protégeant sans bloquer vos mouvements."
        ],
        LocaleKey::DIAL_SHOPKEEPER_INTRO_AGILITY => "Je ne vois pas pourquoi vous me demandez ça, mais ",
        LocaleKey::DIAL_SHOPKEEPER_KEY_HEALTH => ["santé|sante|santee|santée|vie"],
        LocaleKey::DIAL_SHOPKEEPER_TXT_HEALTH => [
            "une bonne santée est crucialle pour tout aventurier. Si vous veniez à être griévement blessé·e vous auriez tout à perdre. Donc, assurez-vous d'être dans votre meilleure forme lorsque vous vous aventurez plus profondément dans le donjon."
        ],
        LocaleKey::DIAL_SHOPKEEPER_INTRO_HEALTH => "Je ne devrais pas avoir besoin de vous le dire, mais ",
        LocaleKey::DIAL_SHOPKEEPER_KEY_STRENGTH => ["force|fort|muscles|muscle|musculature"],
        LocaleKey::DIAL_SHOPKEEPER_TXT_STRENGTH => [
            "la force est un moyen sûr d'écraser vos ennemis, mais la force brute ne peut pas aller bien loin si vous finissez assailli sans une bonne défense pour aller avec.",
            "Je ne peux que trop peu vous conseiller d'investir dans une bonne armure pour couvrir ces biceps, préférablement de l'armure moyenne voire légère qui ne restreindra pas vos mouvements."
        ],
        LocaleKey::DIAL_SHOPKEEPER_INTRO_STRENGTH => "A mon humble opinion, ",
        LocaleKey::DIAL_SHOPKEEPER_KEY_INTELLIGENCE => ["intelligence|intelligent|intelligente|malin|magie"],
        LocaleKey::DIAL_SHOPKEEPER_TXT_INTELLIGENCE => [
            "Si vous êtes plus du genre malin vous feriez peut-être bien d'employer de la magie dans les donjons. Bien qu'elle n'est pas toujours fiable c'est aussi un outil puissant pouvant écraser de larges groupes d'ennemis et vous soigner vous et vos alliers"
        ],
        LocaleKey::DIAL_SHOPKEEPER_KEY_ADVICES => ["conseil|astuce|conseils|astuces|aide|aides|conseiller|aider"],
        LocaleKey::DIAL_SHOPKEEPER_TXT_ADVICES => [
            "si vous voulez mon avis, vous feriez mieux de ne pas vous aventurer trop profondément sans de bonnes préparations.",
            "Bien que beaucoup disent pouvoir revenir à la vie dans le donjon, il est clair que beaucoup sont entrés dans le donjon sans jamais être revus.\nEt pour ceux qui reviennent, peu ont gardés toute leur têtes.",
            "Donc, si vous avez déjà trouvé un peu d'or là-bas, mieux vaut remonter et garder ce trésor en sécurité à la surface.\nEt puis, tant que vous y êtes, vous pourriez toujours en profiter pour dépenser quelques pièces ici."
        ],
        LocaleKey::DIAL_SHOPKEEPER_INTRO_ADVICES => "Je ne suis pas un aventurier, mais ",
        LocaleKey::DIAL_SHOPKEEPER_KEY_DISCOUNTS => ["gratuit|ristourne|ristournes|gratuits|promo|promos|cadeau|cadeaux|offrir|donner"],
        LocaleKey::DIAL_SHOPKEEPER_TXT_DISCOUNTS => ["c'est pas une oeuvre de charité ici.\nJe ne peux pas faire de profits si je passe mon temps à donner des ristournes au premier qui demande."],
        LocaleKey::DIAL_SHOPKEEPER_INTRO_DISCOUNTS => "Désolé, mais ",
        LocaleKey::DIAL_SHOPKEEPER_KEY_TOO_EXPENSIVE => ["ici|là|toi|tes|t|tu|vous|vos|votre|ce|si|trop|haut|inabordable", "prix|tarif|tarifs|haut|cher|haut|inabordable|arnaque|arnaqueur|arnaqueuse|douille"],
        LocaleKey::DIAL_SHOPKEEPER_TXT_TOO_EXPENSIVE => ["Pour ma part mes prix me semblent bien dans leurs valeurs marchandes.", "Mais, je m'excuse tout de même si mes marchandises dépassent votre budget."],
        LocaleKey::DIAL_SHOPKEEPER_INTRO_TOO_EXPENSIVE => "Ah bon ?\n",
        LocaleKey::DIAL_SHOPKEEPER_KEY_HAVE_YOU => ["avez|avez-vous|a-tu|a|vend|vendez|possède|détient|possede|detient|vendrais|vendriez|possedez|possèderiez|possederiez|auriez|vends", "tu|t|vous"],
        LocaleKey::DIAL_SHOPKEEPER_TXT_HAVE_YOU => ["Tout ce que je vends est sur les étagères, regardez par vous-même.", "Je m'excuse d'avance si quoi que ce soit que vous cherchez manque."],
        LocaleKey::DIAL_SHOPKEEPER_KEY_FUCK_YOU => ["nique|baise|foutre|niquer|baiser|enculer|enculé|encule|niquez|enculez|baisez", "mère|toi|faire|vous|votre|mere|pere|père|parent|parents|vos"],
        LocaleKey::DIAL_SHOPKEEPER_TXT_FUCK_YOU => ["Les aventuriers ici n'ont décidémment aucune manière.\nEst-ce que l'aura de la tour vous monte à la tête ou vous n'avez juste jamais été éduqué ?"],
        LocaleKey::DIAL_SHOPKEEPER_INTRO_FUCK_YOU => "Quelle impolitesse.\n",
        LocaleKey::DIAL_SHOPKEEPER_KEY_GET_LOST => ["va|brule|brûle|part|allez|aller|partez|brulez|brûlez", "enfer|perdu|perdre|crever|creuver|crevez|creuvez|brulez|brûlez|bruler|brûler"],
        LocaleKey::DIAL_SHOPKEEPER_TXT_GET_LOST => ["je vous en souhaite tout autant.", "Maintenant, si on pouvait se concentrer sur les achats, s'il vous plaît.\nVous êtes dans un magasin après tout."],
        LocaleKey::DIAL_SHOPKEEPER_INTRO_GET_LOST => "Oui, oui, ",
        LocaleKey::DIAL_SHOPKEEPER_KEY_THREAT => ["tuer|assassiner|tué|assassiné|blesser|frapper|buter|buté|blessé|frappé|mal", "te|t|vous"],
        LocaleKey::DIAL_SHOPKEEPER_TXT_THREAT => ["vous n'êtes plus dans le donjon, là. Les actions ont des conséquences ici."],
        LocaleKey::DIAL_SHOPKEEPER_INTRO_THREAT => "Oh, donc vous tentez de me menacer, hein ?\nPermettez-moi de vous rappeler que ",
        LocaleKey::DIAL_SHOPKEEPER_KEY_HOW_YOU_DOIN => ["comment|ça|tu|vous|t", "va|bien|sent|allez|sentez"],
        LocaleKey::DIAL_SHOPKEEPER_TXT_HOW_YOU_DOIN => ["je vais bien. Merci de demander."],
        LocaleKey::DIAL_SHOPKEEPER_INTRO_HOW_YOU_DOIN => "Et bah, ",
        LocaleKey::DIAL_SHOPKEEPER_KEY_HELLO => ["salut|yo|bonjour|salutations|salutation"],
        LocaleKey::DIAL_SHOPKEEPER_TXT_HELLO => ["Bonjour. Encore."],
        LocaleKey::DIAL_SHOPKEEPER_INTRO_HELLO => "Oh... Euh... ",
        LocaleKey::DIAL_SHOPKEEPER_KEY_MERCHANT_NAME => ["márton|marton|orban|orbán"],
        LocaleKey::DIAL_SHOPKEEPER_TXT_MERCHANT_NAME => ["Oui, c'est mon nom."],
        LocaleKey::DIAL_SHOPKEEPER_KEY_VILLAGE => ["village|ici|ville|villageois|villageoi|habitant|habitants|endroit|coin|région|region|où"],
        LocaleKey::DIAL_SHOPKEEPER_TXT_VILLAGE => [
            "C'est un village de campagne plutôt standard ici, il se passerait pas grand chose si c'était pas pour l'apparition de cette tour.",
            "En revanche, même avec toutes les nouvelles échoppes s'installant dans le coin, l'odeur déplaisante du bétail reste.\nD'ailleurs, le prenez pas mal, mais on peut en dire tout autant de vos camarades aventuriers. Beaucoup passent leur temps à faire des allers retours dans la tour sans prendre de bain entre chaque, et rien que de se tenir près d'eux s'avère difficile."
        ],
        LocaleKey::DIAL_SHOPKEEPER_KEY_YEAR => ['quelle|quand|est|somme', 'quand|année|moment'],
        LocaleKey::DIAL_SHOPKEEPER_TXT_YEAR => ["nous sommes en l'an 1414."],
        LocaleKey::DIAL_SHOPKEEPER_INTRO_YEAR => "Hein? Vous voullez dire, vous avez oublié en quelle année on est ?... J'veux dire, bien sûr, ",
        LocaleKey::DIAL_SHOPKEEPER_KEY_NOT_HELPING => ["pas|non|aucune|aucunnement", "utile|aide|aides|utilité|utilitée|utilités|utilitées"],
        LocaleKey::DIAL_SHOPKEEPER_TXT_NOT_HELPING => ["Je suis navré d'apprendre ça."],
        LocaleKey::DIAL_SHOPKEEPER_KEY_OLD_SOLDIER => ["vieux|vieil|vieille|vieilles|ancien|ancienne|anciens|anciennes", "soldat|soldats|soldate|soldates|armure|armures|casque|casques|plastron|plastrons|protection|protections"],
        LocaleKey::DIAL_SHOPKEEPER_TXT_OLD_SOLDIER => [
            "cette armure était employée par les soldats il y'a bien longtemps. Mais ce modèle a été réutilisé et réparé pour lui offrir une seconde vie dans nôtre monde moderne.",
            "Comme vous pouvez le deviner de par son prix, ce n'est pas l'armure à la conception la plus élaborée. Mais, vous ne trouverez pas meilleure protection pour un prix ci bas.\nDonc, elle peut être un excellent choix si votre budget est limité."
        ],
        LocaleKey::DIAL_SHOPKEEPER_INTRO_OLD_SOLDIER => "Ah oui, ",
        LocaleKey::DIAL_SHOPKEEPER_KEY_POULAINES => ["poulaines|poulaine"],
        LocaleKey::DIAL_SHOPKEEPER_TXT_POULAINES => ["très à la mode en ce moment.\nUn choix étonnant pour un aventurier, aucun doute là-dessus, mais si vous vous souciez plus du style que de la protection, elle sont faites pour vous."],
        LocaleKey::DIAL_SHOPKEEPER_INTRO_POULAINES => "Ah ça, ",
        LocaleKey::DIAL_SHOPKEEPER_KEY_CHOPINES => ["chopines|chopine"],
        LocaleKey::DIAL_SHOPKEEPER_TXT_CHOPINES => ["Un choix parfait pour les dames. Vous faisant paraître plus grand tout en ayant une touche feminine, ces chausses font toutes la rages dans les grandes courts.\nEn revanche, pour ce qui serait des donjons ça serait un coup à vous briser une cheville ou deux."],
        LocaleKey::DIAL_SHOPKEEPER_KEY_GAMBESON => ["jaque|jaques"],
        LocaleKey::DIAL_SHOPKEEPER_TXT_GAMBESON => [
            "Une jaque est un bon moyen de vous protéger de manière abordable, et malgré son poids celle-ci est plutôt confortable.\nSa fabrication est simple, uniquement composée de nombreuses couches de tissus et de rembourrage amortissant les chocs.",
            "Mais, celle-ci est un peu plus lourde que la moyenne, ayant une plaque métallique offrant une protection supplémentaire au torse, au coût d'un poids additionnel sur vos épaules."
        ],
        LocaleKey::DIAL_SHOPKEEPER_KEY_HOUPPELANDE => ["houpelande|houpelandes|houppelande|houppelandes"],
        LocaleKey::DIAL_SHOPKEEPER_TXT_HOUPPELANDE => [
            "L'houppelande est un très beau costume à manches longues qui met formidablement bien en valeur la forme masculine.",
            "Bien sûr, prendre un vêtement aussi beau dans les dangereux et sales couloirs du donjon n'est pas vraimment recomandé, mais je ne vous arrêterai pas si vous vous souciez de votre apparence tant que ça."
        ],
        LocaleKey::DIAL_SHOPKEEPER_INTRO_HOUPPELANDE => "Ah tout à fait, un très bon choix. ",
        LocaleKey::DIAL_SHOPKEEPER_KEY_ESCOFFION => ["chapeau|chapeaux|escoffion|escofion|escoffions|escofions", "cornu|cornus|cornue|cornues|escoffion|escofion|escoffions|escofions"],
        LocaleKey::DIAL_SHOPKEEPER_TXT_ESCOFFION => [
            "L'escoffion est la nouvelle coupe chic dans ce pays, et si vous voulez prendre part au mouvement ce chapeau est juste ce qu'il vous faut.",
            "Je n'vais pas mentir sur le fait que personnellement je trouve cette mode un peu ridicule, mais, j'imagine que c'est dû à l'âge.\nEt puis, je ne viens pas du coin donc j'doit simplement pas être au fait de la culture locale."
        ],
        LocaleKey::DIAL_SHOPKEEPER_INTRO_ESCOFFION => "Ah oui, le chapeau cornu.",
        LocaleKey::DIAL_SHOPKEEPER_KEY_HAUBERK => ["haubert|hauberts|hauber|haubers"],
        LocaleKey::DIAL_SHOPKEEPER_TXT_HAUBERK => [
            "L'haubert est une robe de maille qui offre une grande protection, et nôtre modèle viens avec un surcot complementaire pour une couverture additionnelle.",
            "C'est l'une de nos pièces les plus chères, mais, vous ne trouverez pas de pièce plus protectrice dans cette humble échoppe."
        ],
        LocaleKey::DIAL_SHOPKEEPER_KEY_CERVELIERE => ["lourd|lourde|cervelière|cerveliere|cervelieres|cervelières", "cervelière|cerveliere|cervelieres|cervelières|casque|casques"],
        LocaleKey::DIAL_SHOPKEEPER_TXT_CERVELIERE => [
            "Protéger le crâne est primordiale dans les dangereux couloirs du donjon.\nLa combinaison du casque lourd avec une cervelière est parfaite pour cela, offrant à votre cranium deux couches de protections épaisses, vous assurant d'éviter les commotions."
        ],
        LocaleKey::DIAL_SHOPKEEPER_KEY_TELECRYSTAL => ["telecristal|tele|telecristaux|télécristal|télé|télécristaux|telecrystal|télécrystal|telecrystaux|télécrystaux", "telecristal|cristal|telecristaux|cristaux|télécristal|télécristaux|telecrystal|télécrystal|telecrystaux|télécrystaux|crystal|crystaux"],
        LocaleKey::DIAL_SHOPKEEPER_TXT_TELECRYSTAL => [
            "",
            "C'est un artéfact magique puissant pouvant s'avérer très utile durant vos avantures. Que ça soit pour vous ramener à la sortie du donjon ou pour rejoindre un de vos alliers, ce cristal vous permettra de faire cela instantanément.",
            "De plus, grâce au pouvoir incroyable de ce cristal, et à sa confection robuste, cet artéfact sera indéfiniment utilisable."
        ],
        LocaleKey::DIAL_SHOPKEEPER_INTRO_TELECRYSTAL => "Ah oui, le télé-cristal. Mon article le plus précieux.",
        LocaleKey::DIAL_SHOPKEEPER_KEY_WHERE_DUNGEON => ["où|chemin|route|vers", "donjon|tour|donjons"],
        LocaleKey::DIAL_SHOPKEEPER_TXT_WHERE_DUNGEON => ["Le donjon est juste en bas de la petite route, sur la droite en quittant le magasin.\nVous devriez pas le rater, des pannaux l'indiquant ont récemment été ajoutés."],
        LocaleKey::DIAL_SHOPKEEPER_KEY_GENDER => ["vous|tu|t|etes|est|es", "garçon|garcon|homme|mec|fille|femme|dame|meuf"],
        LocaleKey::DIAL_SHOPKEEPER_TXT_GENDER => ["Je suis un homme."],
        LocaleKey::DIAL_SHOPKEEPER_INTRO_GENDER => "N'est-ce pas évident ?... ",
        LocaleKey::DIAL_SHOPKEEPER_KEY_SUPPLIER => ["stocks|stock|fournisseur|cargaisons|cargaison|livraisons|livraison|livre|fourni|fournis|livre|livré|fournir|livrer|marchandise|marchandises", "où|d|de|qui"],
        LocaleKey::DIAL_SHOPKEEPER_TXT_SUPPLIER => ["Je fait mes stocks moi-même, puis-ce que je voyage de pays en pays, j'achète ce que chaque offre pour le vendre à ceux à qui ça manque."],
        LocaleKey::DIAL_SHOPKEEPER_KEY_WEATHER => ["météo|meteo|dehors|soleil|pluie|beau|pluvieux|pluvieu|nuageux|pluies|ensolleilé|ensoleillé|ensoleillement"],
        LocaleKey::DIAL_SHOPKEEPER_TXT_WEATHER => ["il fait pas trop froid.", "J'apprécie pouvoir encore profiter d'un peu d'ensoleillement en rentrant du travail."],
        LocaleKey::DIAL_SHOPKEEPER_INTRO_WEATHER => "On a déjà vu mieux, mais ",
        LocaleKey::DIAL_SHOPKEEPER_KEY_SEASON => ["quelle", "saison|saisons"],
        LocaleKey::DIAL_SHOPKEEPER_TXT_SEASON => ["nous sommes actuellement en automne.\n N'avez-vous pas vu que les arbres sont tous oranges ?"],
        LocaleKey::DIAL_SHOPKEEPER_INTRO_SEASON => "Hum, ",
        LocaleKey::DIAL_SHOPKEEPER_KEY_ADVENTURER => ["aventurier|aventuriers|explorateur|explorateurs|nous"],
        LocaleKey::DIAL_SHOPKEEPER_TXT_ADVENTURER => [
            "les aventuriers représentent la majorité de ma clientèle, il serait donc bête de ne pas apprécier leur présence.",
            "Mais j'admets qu'ils ne se valent pas tous, et beaucoup sont particulièrement mal éduqués.",
            "Je les comprends en revanche, sincèrement.\nC'est dur de garder de bonnes manières quand nos vies sont toujours menacées et que les batailles et le travail manuel nous endurcissent.",
            "Même moi, je me vois devenir victime de cette mentalité alors que j'accumule les voyages, donc je ne peux qu'avoir de l'empathie pour ces aventuriers."
        ],
        LocaleKey::DIAL_SHOPKEEPER_INTRO_ADVENTURER => "Et bien, ",
        LocaleKey::DIAL_SHOPKEEPER_KEY_STUPID => ["tu|t|est", "stupide|idiot|bête|abbruti|abruti|idiote|abbrutie"],
        LocaleKey::DIAL_SHOPKEEPER_TXT_STUPID => [
            "si ça vous fait plaisir.",
            "Ça n'est pas un aventurier qui va me complexer sur mon intelligence."
        ],
        LocaleKey::DIAL_SHOPKEEPER_INTRO_STUPID => "Mais bien sûr, ",
        LocaleKey::DIAL_SHOPKEEPER_KEY_GOD => ["croi|crois|croie|existe|pratique|venere|venère|ton|tes|a|détient|tu|t", "religion|dieu|dieux|divinité|divinitée|divinités|divinitées|divin"],
        LocaleKey::DIAL_SHOPKEEPER_TXT_GOD => [
            "Ai-je l'air d'un profane pour vous ?",
            "Je ne crois qu'au Dieu seul et unique vénéré dans ce continent saint."
        ],
        LocaleKey::DIAL_SHOPKEEPER_INTRO_GOD => "Quel genre de questions est-ce là ? ",
        LocaleKey::DIAL_SHOPKEEPER_KEY_OTHER_GOD => ["autre|plusieurs|nombreux|plusieur|multiple|autres", "religion|dieu|dieux|divinité|divinitée|divinités|divinitées|divin"],
        LocaleKey::DIAL_SHOPKEEPER_TXT_OTHER_GOD => ["De tels blasphèmes ne m'amusent guère.\nDe par sa définition même, un seul Dieu ne peut exister."],
        LocaleKey::DIAL_SHOPKEEPER_KEY_GOLD => ["or|ors|piece|pieces|pièce|pièces|argent|argents|monaie|monaies|monnaie|monnaies"],
        LocaleKey::DIAL_SHOPKEEPER_TXT_GOLD => [
            "votre meilleure option est d'aller dans le donjon et d'y chercher tout trésor pouvant être ramené.",
            "Et, si vous avez quoi que ce soit de bon, je pourrait même vous les racheter moi-même ici."
        ],
        LocaleKey::DIAL_SHOPKEEPER_INTRO_GOLD => "Et bien, depuis que cette tour est arrivée, je pense que ",
        LocaleKey::DIAL_SHOPKEEPER_KEY_RECOMMENDATION => ["recommandation|recommendation|recommandations|recommendations|recommande|recommende|recommandez|recommandriez"],
        LocaleKey::DIAL_SHOPKEEPER_TXT_RECOMMENDATION => [
            "J'ai un large panel d'outils qui peuvent tous s'avérer utiles lors de vos aventures.",
            "Tout d'abord, les potions de soins sont un moyen fiable de guérir vos blessures, si jamais vous vous retrouvez dans une situation complexe.",
            "Ensuite, mon large catalogue d'armures peut répondre à tout les budgets et types de combattants.\nPour ceux ayant besoin d'une bonne protection pas cher, l'armure lourde est parfaite, mais elle risque de gêner vos mouvements. Pour ce qu'est des armures moyennes voir légère, celle-ci vous permettrons de bouger plus librement tout en offrant une bonne protection à un coût plus élevé."
        ],
        LocaleKey::DIAL_SHOPKEEPER_INTRO_RECOMMENDATION => "Et bien, ",
        LocaleKey::DIAL_SHOPKEEPER_KEY_QUEST => ["quete|quetes|quête|quêtes"],
        LocaleKey::DIAL_SHOPKEEPER_TXT_QUEST => [
            "si c'est la gloire et l'or que vous cherchez, j'imagine que partir aussi profondément que possible dans la tour là-bas vaut n'importe quelle autre quête à faire pour vous.",
            "Mais, à votre place je préférerais bien mieux rester chez moi que visiter ce lieu maudit.\nMais j'imaginque que c'est pour ça que vous êtes les aventuriers et moi je suis le marchant hein?"
        ],
        LocaleKey::DIAL_SHOPKEEPER_INTRO_QUEST => "Une quête ? Je ne suis pas tavernier vous savez.\nMais ",
        LocaleKey::DIAL_ALCHEMIST_REPEAT => "Comme j'le disait, ",
        LocaleKey::DIAL_ALCHEMIST_KEY_NOT_FROM_HERE => ["pas|autre|ailleur", "ici|coin|là|région|venez"],
        LocaleKey::DIAL_ALCHEMIST_TXT_NOT_FROM_HERE => ["je suis née au nord du pays."],
        LocaleKey::DIAL_ALCHEMIST_INTRO_NOT_FROM_HERE => "Bah je viens pas de bien loin non plus, ",
        LocaleKey::DIAL_ALCHEMIST_KEY_ORIGIN => ["ton|ta|tu|t|vous", "où|né|pays|origine|histoire|viens"],
        LocaleKey::DIAL_ALCHEMIST_TXT_ORIGIN => [
            "Je suis née au nord du pays, à la capitale de Mourre.",
            "Mon père y travaillait déjà comme alchimiste, à la cour du roi.\nEt c'est là que j'ai pu obtenir mon éducation sur l'alchimie et autres arts occultes."
        ],
        LocaleKey::DIAL_ALCHEMIST_KEY_ALLIANCE => ["quoi|grande|pourquoi|quand|comment|dire|parler", "alliance|allience"],
        LocaleKey::DIAL_ALCHEMIST_TXT_ALLIANCE => [
            "la \"Grande Alliance\" est un traité signé originellement dans les royaumes nordiques, en 1340.",
            "C'était initialement un traité à vocation militaire, mais a mené ensuite à des échanges, devenant également un accord commercial qui s'est consécutivement élargi vers d'autres nations majeures dans le continent durant les années 50.\nCela jusqu'en 1385, où nôtre cher pay le Royaume du Livrou les a rejoin.",
            "Cet accord à part la suite été renouvelé en 1402, officialisant le nom de \"Grande Alliance\". Lorsqu'il fut renouvelé, l'accord inclua également un grand nombre de pays dans le continent, et quelques pays mitoyen à nôtre continent dans le Sud.\nC'est aussi depuis ce renouvellement que la pièce d'or standard à commencée à remplacer les monnaies locales, toujours pour simplifier les échanges internationaux."
        ],
        LocaleKey::DIAL_ALCHEMIST_INTRO_ALLIANCE => "De mémoire, ",
        LocaleKey::DIAL_ALCHEMIST_KEY_HEALTH_POTION => ["soin|vie|soins|vies", "potion|potions"],
        LocaleKey::DIAL_ALCHEMIST_TXT_HEALTH_POTION => ["Je fais ces potions de soin moi-même. Pures et efficaces, vous trouverez pas plus puissant ailleur.\n... Encore moins ici en tout cas, vu le peu de concurrence dans le coin."],
        LocaleKey::DIAL_ALCHEMIST_KEY_LOST_KNIGHT => ["perdu|perdue", "chevalier|chevalière|chevaliere"],
        LocaleKey::DIAL_ALCHEMIST_TXT_LOST_KNIGHT => ["Je ne connais rien des habitants du donjon, désolée."],
        LocaleKey::DIAL_ALCHEMIST_KEY_GOBLINS => ["goblins|goblin|gobelins|gobelin"],
        LocaleKey::DIAL_ALCHEMIST_TXT_GOBLINS => [
            "",
            "Je n'en ai jamais vu par moi-même, et il serait certainement dangereux pour moi d'aller mettre le nez dans leurs affaires.\nMais d'après ce que j'ai lu, ils ne s'attaqueraient en vérité qu'à ceux qui envahissent et semblent menacer leur territoire.",
            "Territoires, qui, généralement, sont bien enfouis loin de là où nous avons nos propres affaires. Evidemment, lorsqu'un vent expensionniste nous pique ils deviennent donc une nuisance à nos travaux, mais je pense qu'il est injuste de leurs en vouloir pour simplement défendre leurs habitat.",
            "De plus, certaines études semblent pointer vers une intéligence bien plus avancée que ce que les stéréotypes laisseraient présager. Ayant des systèmes sociaux complexes, des technologie et outils à la fabrication avancée et des méthodes agriculturale discrète mais efficace pour leurs besoins."
        ],
        LocaleKey::DIAL_ALCHEMIST_INTRO_GOBLINS => "Ah, les gobelins. Ces petites créatures sont généralement haïes par la majorité des gens, ce qui peut ce comprendre...\nMais, il faut dire que ce sont aussi des êtres assez mal compris.",
        LocaleKey::DIAL_ALCHEMIST_KEY_SLIME => ["slimes|slime"],
        LocaleKey::DIAL_ALCHEMIST_TXT_SLIME => [
            "Les slimes sont des créatures simples et généralement inoffensives, pour autant qu'on ne s'amuse pas à aller les toucher à main nues.",
            "De manière assez intéressante, c'est un être assez difficile à classer, semblant plus proche du champignon que de l'animal malgré sa relative rapidité."
        ],
        LocaleKey::DIAL_ALCHEMIST_KEY_UNDEAD => ["zombie|zombies|squelette|squelettes|vivant|vivants", "zombie|zombies|squelette|squelettes|mort|morts"],
        LocaleKey::DIAL_ALCHEMIST_TXT_UNDEAD => ["Les récits de morts vivants dans le donjon semblent très unique, jusque-là ce genre de nécromancie ne semblait qu'apparaître dans des légendes. Les implications de l'existence d'une telle créature pourrait être massive pour l'avancée des sciences occultes contemporaines."],
        LocaleKey::DIAL_ALCHEMIST_KEY_RESUSCITATE => ["revenu|entre|je|j|aventuriers|aventurier", "morts|mort|tué|tuée|tuées|tués|ressuscité|ressuscite|ressucité|ressucite|resurrecté|resurrecte"],
        LocaleKey::DIAL_ALCHEMIST_TXT_RESUSCITATE => [
            "La plus-part des aventuriers ici ont vécu une expérience similaire.\nIl est difficile d'exactement comprendre le phénomène qui mène à cela, mais il est certain que ça ne laisse personne indifférent peu importe la force qui vous ramène à la vie dans la tour.",
            "Les observations faites via différents objets sensible au temps semblent démontrer une forme de phénomène temporel, ramenant les aventuriers et leur posséssions à l'état exact où ils se trouvaient lorsqu'ils sont rentrés dans le donjon suite à leur mort, bien que le reste du monde continue à avancer sans être impacté par ce phénomène.",
            "Il est pour l'instant impossible de définir pourquoi ni même comment une telle chose est possible, ni si il y a des conséquences sur le long terme pour les aventuriers impactés.",
            "N'hésitez pas à vous ménager surtout. Une telle expérience ne laisse pas indémne, et je ne peux que conseiller de prendre soin de vous dans le donjon. Tant que rien n'est certain, mieux vaut être prudent."
        ],
        LocaleKey::DIAL_ALCHEMIST_KEY_DUNGEON_INSIDE => ["catacombes|catacombe|crypte|cryptes|entrée|intérieur|intérieure|intérieurs|dans|dedans|prison|prisons"],
        LocaleKey::DIAL_ALCHEMIST_TXT_DUNGEON_INSIDE => ["Vous seriez certainement mieux servi en parlant de ce sujet à d'autres aventuriers ayant pu visiter le donjon."],
        LocaleKey::DIAL_ALCHEMIST_INTRO_DUNGEON_INSIDE => "Je n'ai pas d'expertises sur les spécificités interne au donjon, n'y ayant jamais été.\n",
        LocaleKey::DIAL_ALCHEMIST_KEY_DUNGEON => ["donjon|tour|donjons"],
        LocaleKey::DIAL_ALCHEMIST_TXT_DUNGEON => [
            "Mon travail au sein de la guilde me cantonne à mon poste de marchande, et je n'ai de toute façon pas les capacités pour m'aventurer dans la tour moi-même.\nMais, je reste profondément intriguée par ce bâtiment étrange.",
            "Si ce que disent les locaux est factuel, alors tout porte à croire que cette tour est dûe à un phénomène magique, et serait donc certainement un acte intentionnel.",
            "La question ainsi devient, qui a souhaité la placer là, et quel en est le but ?\nPour l'instant rien ne semble démontrer une réelle utilité au lieu pour une personne qui la posséderait, mais le donjon semble être le terrain de jeux idéal pour un aventurier. Se pourrait-il donc qu'il soit une création ayant été faite dans le seul but d'entretenir de telles activités ? Un lieu conçu pour être pillé et sacagé éternellement ?",
            "Et si tel est le cas, est-ce que cette tour a été faite pour que son créateur même puisse en profiter, ou est-ce qu'elle a été faite pour permettre d'atirer des aventuriers vers elle ?",
            "Tellement de questions... Et si peu d'informations pour en tirer des conclusions fiables... Je ne peux que difficilement contenir mon empressement de pouvoir en apprendre plus via les récits des aventuriers rentrant de leurs explorations."
        ],
        LocaleKey::DIAL_ALCHEMIST_INTRO_DUNGEON => "Un lieu facinant. ",
        LocaleKey::DIAL_ALCHEMIST_KEY_HOLY_EMPIRE => ["saint|sain", "empire|pays|royaume"],
        LocaleKey::DIAL_ALCHEMIST_TXT_HOLY_EMPIRE => [
            "L'empire saint est probablement un des plus grands empires du continent, dépassant largement le Royaume du Livrou, mais est de fait moins uni.",
            "Ce dernier à rejoint la Grande Alliance plus ou moins en même temps que nous, et entretient des liens commerciaux forts avec la plupart des pays de l'alliance, et tout particulièrement le nôtre."
        ],
        LocaleKey::DIAL_ALCHEMIST_KEY_NAME => ["ton|ta|t|votre|tu|vous", "appelle|appelez|nomme|nommez|prénom|prenom|nom"],
        LocaleKey::DIAL_ALCHEMIST_TXT_NAME => ["Je m'appelle Nicolette, fille de Musa al-Bakir."],
        LocaleKey::DIAL_ALCHEMIST_TXT_ASK_NAME => ["Je m'appelle Nicolette, fille de Musa al-Bakir.", "Et vous, quel est votre nom?"],
        LocaleKey::DIAL_ALCHEMIST_KEY_AGE => ["ton|ta|t|votre|tu|vous", "age|âge|vieille|vieux|jeune"],
        LocaleKey::DIAL_ALCHEMIST_TXT_AGE => ["j'ai 28 ans."],
        LocaleKey::DIAL_ALCHEMIST_INTRO_AGE => "Vous savez, il n'est pas poli de demander l'âge d'une dame, heh? Mais, si ça vous intéresse tant, ",
        LocaleKey::DIAL_ALCHEMIST_KEY_INTELLIGENCE => ["intelligence|intelligent|intelligente|malin|magie"],
        LocaleKey::DIAL_ALCHEMIST_TXT_INTELLIGENCE => [
            "La magie est un domaine très large, étant intimement lié à la science. Mais, de manière grossière, c'est tout ce qui concerne la canalisation de l'énergie présente à la fois dans l'ame des sorciers et de leurs environemment afin d'établir des résultats désirables."
        ],
        LocaleKey::DIAL_ALCHEMIST_KEY_ADVICES => ["conseil|astuce|conseils|astuces|aide|aides|conseiller|aider"],
        LocaleKey::DIAL_ALCHEMIST_TXT_ADVICES => [
            "Tout ce que je peux vous dire avec mon expertise, c'est de ne rien boire dans un laboratoire, et de se méfier de tout objet magique si vous ne savez pas ce qu'ils font.",
            "À moins d'être un alchimiste comme moi, évidemment, moi je bois ce que je veux dans mon labo.\n\n\n\n... Mais j'évite quand même généralement, presque tout y est toxique."
        ],
        LocaleKey::DIAL_ALCHEMIST_INTRO_ADVICES => "Je ne suis pas une combattante, et, si vous êtes arrivés jusqu'ici, vous êtes probablement bien plus capables que moi pour survivre dans le donjon.\n",
        LocaleKey::DIAL_ALCHEMIST_KEY_DISCOUNTS => ["gratuit|ristourne|ristournes|gratuits|promo|promos|cadeau|cadeaux|offrir|donner|remises|remise"],
        LocaleKey::DIAL_ALCHEMIST_TXT_DISCOUNTS => ["le prix est le prix. Sinon ça serait injuste pour les autres avanturiers qui n'ont pas de remises."],
        LocaleKey::DIAL_ALCHEMIST_INTRO_DISCOUNTS => "Je suis désolée, mais ",
        LocaleKey::DIAL_ALCHEMIST_KEY_TOO_EXPENSIVE => ["ici|là|toi|tes|t|tu|vous|vos|votre|ce|si|trop|haut|inabordable", "prix|tarif|tarifs|haut|cher|haut|inabordable|arnaque|arnaqueur|arnaqueuse|douille"],
        LocaleKey::DIAL_ALCHEMIST_TXT_TOO_EXPENSIVE => ["si vous êtes à court je suis sûre que vous trouverez de quoi vous remplir les poches dans la tour."],
        LocaleKey::DIAL_ALCHEMIST_INTRO_TOO_EXPENSIVE => "Ah, je suis navré d'entendre ça...\nMais, ",
        LocaleKey::DIAL_ALCHEMIST_KEY_HAVE_YOU => ["avez|avez-vous|a-tu|a|vend|vendez|possède|détient|possede|detient|vendrais|vendriez|possedez|possèderiez|possederiez|auriez|vends", "tu|t|vous"],
        LocaleKey::DIAL_ALCHEMIST_TXT_HAVE_YOU => [
            "Tout mes articles à vendre sont exposés sur les étagères, mais si vous cherchez d'autres types d'équipements n'hésitez pas à rendre visite à mon collègue d'en face, le forgeron.",
            "Peut-être que lui aura ce que vous cherchez."
        ],
        LocaleKey::DIAL_ALCHEMIST_KEY_FUCK_YOU => ["nique|baise|foutre|niquer|baiser|enculer|enculé|encule|niquez|enculez|baisez", "mère|toi|faire|vous|votre|mere|pere|père|parent|parents|vos"],
        LocaleKey::DIAL_ALCHEMIST_TXT_FUCK_YOU => ["On est dans un lieu convivial ici, et je ne vois pas ce qui justifie une telle hostilité dans tout les cas."],
        LocaleKey::DIAL_ALCHEMIST_INTRO_FUCK_YOU => "Woah, détente l'ami.\n",
        LocaleKey::DIAL_ALCHEMIST_KEY_GET_LOST => ["va|brule|brûle|part|allez|aller|partez|brulez|brûlez", "enfer|perdu|perdre|crever|creuver|crevez|creuvez|brulez|brûlez|bruler|brûler"],
        LocaleKey::DIAL_ALCHEMIST_TXT_GET_LOST => ["", "Je ne fais qu'essayer d'aider."],
        LocaleKey::DIAL_ALCHEMIST_INTRO_GET_LOST => "Pourquoi ? ",
        LocaleKey::DIAL_ALCHEMIST_KEY_THREAT => ["tuer|assassiner|tué|assassiné|blesser|frapper|buter|buté|blessé|frappé|mal", "te|t|vous"],
        LocaleKey::DIAL_ALCHEMIST_TXT_THREAT => ["je vous déconseille fortement la violence dans une salle remplie de guerriers aguerris."],
        LocaleKey::DIAL_ALCHEMIST_INTRO_THREAT => "Peu importe votre raison pour dire une telle chose, ",
        LocaleKey::DIAL_ALCHEMIST_KEY_HOW_YOU_DOIN => ["comment|ça|tu|vous|t", "va|bien|sent|allez|sentez"],
        LocaleKey::DIAL_ALCHEMIST_TXT_HOW_YOU_DOIN => ["Je me porte bien, merci, qu'en est-il de vous, l'ami ?"],
        LocaleKey::DIAL_ALCHEMIST_KEY_HELLO => ["salut|yo|bonjour|salutations|salutation"],
        LocaleKey::DIAL_ALCHEMIST_TXT_HELLO => ["Re-bonjour."],
        LocaleKey::DIAL_ALCHEMIST_KEY_MERCHANT_NAME => ["nicolette|nicolet|nikolette|nikolet|nicole|nikole"],
        LocaleKey::DIAL_ALCHEMIST_TXT_MERCHANT_NAME => ["C'est moi, oui."],
        LocaleKey::DIAL_ALCHEMIST_KEY_VILLAGE => ["village|ici|ville|villageois|villageoi|habitant|habitants|endroit|coin|région|region|où"],
        LocaleKey::DIAL_ALCHEMIST_TXT_VILLAGE => [
            "Le coin n'est pas aussi vivant qu'en ville, mais, avec cette guilde on a quand même du beau monde à voir donc je ne m'ennuie pas trop.",
            "Pour ce qu'est des locaux en revanche, on sent que les mentalités sont plus fermées.\nNotre arrivée était mal vue dès que la guilde s'est installée.",
            "Et puis, je sais pas si c'est mon apparence ou mes recherches, mais j'ai parfois l'impression qu'ils me regardent tout particulièrement mal..."
        ],
        LocaleKey::DIAL_ALCHEMIST_KEY_YEAR => ['quelle|quand|est|somme', 'quand|année|moment'],
        LocaleKey::DIAL_ALCHEMIST_TXT_YEAR => ["Nous sommes l'automne 1414, 10ème cycle lunaire de l'année."],
        LocaleKey::DIAL_ALCHEMIST_KEY_NOT_HELPING => ["pas|non|aucune|aucunnement", "utile|aide|aides|utilité|utilitée|utilités|utilitées"],
        LocaleKey::DIAL_ALCHEMIST_TXT_NOT_HELPING => ["Désolée si mes renseignements ne satisfaissent pas votre curiosité."],
        LocaleKey::DIAL_ALCHEMIST_KEY_ESCOFFION => ["chapeau|chapeaux|escoffion|escofion|escoffions|escofions", "votre|vous|ton|ta|tu|t|cornu|cornus|cornue|cornues|escoffion|escofion|escoffions|escofions"],
        LocaleKey::DIAL_ALCHEMIST_TXT_ESCOFFION => [
            "Je trouve que ça donne une sillouhette plus interessante que les couvres-chefs classiques, ça fait moins plat."
        ],
        LocaleKey::DIAL_ALCHEMIST_INTRO_ESCOFFION => "Chouette coiffure, hein ?\n",
        LocaleKey::DIAL_ALCHEMIST_KEY_TELECRYSTAL => ["telecristal|tele|telecristaux|télécristal|télé|télécristaux|telecrystal|télécrystal|telecrystaux|télécrystaux", "telecristal|cristal|telecristaux|cristaux|télécristal|télécristaux|telecrystal|télécrystal|telecrystaux|télécrystaux"],
        LocaleKey::DIAL_ALCHEMIST_TXT_TELECRYSTAL => [
            "",
            "Ils fonctionnent en trouvant des \"noeuds\" dans la fabrique de notre monde, et nous transporte à travers eux.",
            "En revanche, cet outil était jusque là plutôt niche, puisqu'il ne permet d'aller qu'à certains endroits précis possédant ces lieux.",
            "Mais les choses ont changées avec cette tour. Vraisemblablement, la porte d'entrée du donjon est en elle-même un noeud dimensionnel massif, et de même, le simple fait de se tenir dans ce donjon génère des noeuds tout autour de soi.",
            "Ainsi, le télé-crystal est capable de transporter les aventuriers à la sortie ou vers les uns-les autres lorsqu'ils visitent la tour. Ce qui a ainsi grandement popularisé cet outil auprès d'eux."
        ],
        LocaleKey::DIAL_ALCHEMIST_INTRO_TELECRYSTAL => "Oh oui, ces bidules sont super intéressant.",
        LocaleKey::DIAL_ALCHEMIST_KEY_GENDER => ["vous|tu|t|etes|est|es", "fille|femme|dame|meuf"],
        LocaleKey::DIAL_ALCHEMIST_TXT_GENDER => ["Cela n'a que peu d'importance"],
        LocaleKey::DIAL_ALCHEMIST_INTRO_GENDER => "Qu'est-ce que ça peut vous faire ? ",
        LocaleKey::DIAL_ALCHEMIST_KEY_SUPPLIER => ["stocks|stock|fournisseur|cargaisons|cargaison|livraisons|livraison|livre|fourni|fournis|livre|livré|fournir|livrer|marchandise|marchandises", "où|d|de|qui"],
        LocaleKey::DIAL_ALCHEMIST_TXT_SUPPLIER => ["Toutes mes marchandises sont élaborées par mes soins, et les matières premières me sont fournies via le réseau de la guilde."],
        LocaleKey::DIAL_ALCHEMIST_KEY_WEATHER => ["météo|meteo|dehors|soleil|pluie|beau|pluvieux|pluvieu|nuageux|pluies|ensolleilé|ensoleillé|ensoleillement"],
        LocaleKey::DIAL_ALCHEMIST_TXT_WEATHER => ["Pour l'instant le temps se tien encore, il fait plus chaud ici qu'au nord du pays en tout cas."],
        LocaleKey::DIAL_ALCHEMIST_KEY_SEASON => ["quelle", "saison|saisons"],
        LocaleKey::DIAL_ALCHEMIST_TXT_SEASON => ["Nous sommes en automne, bien qu'le temps est encore chaud dans cette région, on peut voir que les arbres commencent à perdre leurs feuilles."],
        LocaleKey::DIAL_ALCHEMIST_INTRO_SEASON => "Hum, ",
        LocaleKey::DIAL_ALCHEMIST_KEY_ADVENTURER => ["mercenaire|mercenaria|aventurier|aventuriers|explorateur|explorateurs|nous"],
        LocaleKey::DIAL_ALCHEMIST_TXT_ADVENTURER => [
            "Bien qu'étant membre de la guilde des aventuriers, je ne suis pas une aventurière moi-même. Ce que vous pouvez probablement deviner rien qu'en regardant comment j'm'habille d'ailleurs.",
            "Mais, mon travail ici m'amène a régulièrement intéragir avec toutes sortes de gens comme vous.\nCe qu'est clair, c'est que la majorité d'eux se retrouvent dans ce milieu par nécessité. Quand on est sans le sou, il est dur de gagner assez pour vivre avec les métiers traditionnels, et donc le brigantisme et le mercenaria font parti des seules voies disponibles pour survivre quand on sait se battre, notemment pour ceux au passé criminel qui ne peuvent donc que difficilement se ré-insérer.\nEt, de part ce postula, le mercenaria est probablement la meilleure option des deux.",
            "Honnêtement j'espère que cette tour permettra à certains de trouver des conditions de vies plus stables, en offrant nombre de trésors dans un environnement qui semble relativement controlé.\nMais, sur ce point là je ne serais pas étonnées si la cour du Roi venait à essayer de prendre le contrôle de ce lieu pour s'en accaparer les gains."
        ],
        LocaleKey::DIAL_ALCHEMIST_KEY_STUPID => ["tu|t|est", "stupide|idiot|bête|abbruti|abruti|idiote|abbrutie"],
        LocaleKey::DIAL_ALCHEMIST_TXT_STUPID => [
            "Je ne vois pas pourquoi vous dites une chose pareille."
        ],
        LocaleKey::DIAL_ALCHEMIST_KEY_GOD => ["croi|crois|croie|existe|pratique|venere|venère|ton|tes|a|détient|tu|t", "religion|dieu|dieux|divinité|divinitée|divinités|divinitées|divin"],
        LocaleKey::DIAL_ALCHEMIST_TXT_GOD => [
            "Je préfère éviter des discussions clivantes sur la religion.",
            "Si vous ne croyez pas en dieu, c'est votre affaire, moi je suis juste là pour vendre des potions."
        ],
        LocaleKey::DIAL_ALCHEMIST_INTRO_GOD => "Mh... ",
        LocaleKey::DIAL_ALCHEMIST_KEY_OTHER_GOD => ["autre|plusieurs|nombreux|plusieur|multiple|autres", "religion|dieu|dieux|divinité|divinitée|divinités|divinitées|divin"],
        LocaleKey::DIAL_ALCHEMIST_TXT_OTHER_GOD => [
            "Et bien, en regardant les civilisations qui ont donné naissance à la notre, un grand nombre étaient actuellement polythéiste.",
            "Ce genre d'opinion pourrait me faire incinérer, mais je pense qu'il n'est pas non plus absurde d'émettre la possibilité que plusieurs entités gouverneraient les loi de notre univers"
        ],
        LocaleKey::DIAL_ALCHEMIST_KEY_GOLD => ["or|ors|piece|pieces|pièce|pièces|argent|argents|monaie|monaies|monnaie|monnaies"],
        LocaleKey::DIAL_ALCHEMIST_TXT_GOLD => [
            "peut-être que vendre quelques-uns des objets que vous n'utilisez pas pourrait vous aider à subvenirs à vos besoins.",
            "Outre l'alchimie, mon second rôle est d'estimer la valeur des trouvailles des aventuriers pour les racheter au nom de la guilde."
        ],
        LocaleKey::DIAL_ALCHEMIST_INTRO_GOLD => "Si vous êtes à sec pour votre or, ",
        LocaleKey::DIAL_ALCHEMIST_KEY_RECOMMENDATION => ["recommandation|recommendation|recommandations|recommendations|recommande|recommende|recommandez|recommandriez|recommanderiez"],
        LocaleKey::DIAL_ALCHEMIST_TXT_RECOMMENDATION => [
            "Tout dépend de vos besoins, si vous avez accès à des sorts de soin puissant mes potions de soin auront certainement un avantage limité, mais elles peuvent toujours servir dans des situations ou vous ne pouvez pas risquer de laisser vos soins au hasard.",
            "Pour ce qu'est des pastilles de soins, celles-ci peuvent être particulièrement utiles pour les aventuriers solitaires qui ont besoin d'être soignés continuellement tout en attaquant leurs ennemis."
        ],
        LocaleKey::DIAL_ALCHEMIST_TXT_AQUINTENCE => ["heureuse de faire votre rencontre, #{Locale::PLAYER_NAME}."],
        LocaleKey::DIAL_ALCHEMIST_INTRO_AQUINTENCE => "Et bien, ",
        LocaleKey::DIAL_ALCHEMIST_KEY_JOKE => ["aucassin|ocassin|aucassins"],
        LocaleKey::DIAL_ALCHEMIST_TXT_JOKE => ["Ha. Ha. Tellement drôle. On me l'avais jamais faite celle-là."],
        LocaleKey::DIAL_ALCHEMIST_TXT_WRONG_NAME => ["Je serais étonnée si c'était votre nom..."],
        LocaleKey::DIAL_ALCHEMIST_INTRO_WRONG_NAME => "Mmh, ",
        LocaleKey::DIAL_ALCHEMIST_KEY_GUILD => ["guilde|guildes"],
        LocaleKey::DIAL_ALCHEMIST_TXT_GUILD => [
            "La Guilde des Aventuriers permet de soutenir les mercenaires indépendants dans leurs affaires, que ça soit pour le logis, le couvert, de l'équipement ou trouver des opportunités et ce créer un réseau auprès des autres aventuriers.",
            "Cela fait quelques années que je travaille avec eux en tant qu'Alchimiste et coursière.\nC'est un métier plaisant, même si la paie est bien moindre que ce que je pourrait gagner ailleurs."
        ],
        LocaleKey::DIAL_ALCHEMIST_INTRO_GUILD => "Pratique, hein ?\n",
        LocaleKey::DIAL_ALCHEMIST_KEY_CAT_EARS => ["chat|chats|chaton|chatons|minou|minoux|félin|felin|félins|felins|vôtre|votre|ton", "oreilles|bandeaux|serre-tête|tête|tete|serre-tete|oreille|chapeaux|chapeau|ressemble|style|couvre-chef|couvre-chefs"],
        LocaleKey::DIAL_ALCHEMIST_TXT_CAT_EARS => ["c'était pas intentionnel."],
        LocaleKey::DIAL_ALCHEMIST_INTRO_CAT_EARS => "Oh, vous voulez dire mon escoffion? C'est juste pour tenir mes cheuveux en place... Mais maintenant que vous le dites j'admet que ça ressemble un peu à une tête de chat.\nMais ",
        LocaleKey::DIAL_ALCHEMIST_KEY_AMETHYST => ["amethyste|améthyste|améthystes|amethystes|amethiste|amethistes|améthiste|améthistes|amétyste|ametyste|amétystes|ametystes|amétiste|ametiste|ametistes|amétistes|améthyst|amesthyst|améthysts|amethysts"],
        LocaleKey::DIAL_ALCHEMIST_TXT_AMETHYST => [
            "j'ai étudiée avec attention les échantillons d'améthystes ramenés par les aventuriers, et j'ai remarquée quelque chose d'intéressant.",
            "Tout à propos de ces améthystes semble parfaitement normal. Même densité, même couleur, même clarté et même les réactions aux hautes températures sont identiques, laissant peu de doutes sur le fait qu'il s'agit de vraies améthystes...",
            "Mais, un aspect est étrange; la structure.",
            "Chaque cristal naturel a sa propre structure interne qui défini la forme qu'ils prendra. Certains cristaux ont des formes cubiques, d'autres prennent des formes plus complexes... Mais ils ont chacun une structure commune à toutes leurs formations.\nEt, pour ceux-là ça semblerait être également le cas, puisqu'ils ont la forme générale d'une améthyste normale.",
            "Sauf que, en y regardant de plus près, ils ne suivent pas du tout le schéma des améthystes naturelles à petite échelle. Ils ne sont pas parfaitement lisse non plus, donc ils n'ont probablement pas été polis, et semblent à la place suivre un motif triangulaire, mais ça n'est pas ce que la micro-structure des améthystes est supposé être.\nC'est comme... Si quelqu'un venait à très précisément tailler des améthystes pour leur donner la forme d'améthyste naturelle... Et je ne vois pas pourquoi ça serait le cas."
        ],
        LocaleKey::DIAL_ALCHEMIST_INTRO_AMETHYST => "Ah bah c'est marrant que vous me demandiez ça, ",
        LocaleKey::DIAL_ALCHEMIST_KEY_MARTON => ["marton|márton|orban|orbán|autre|dehors", "marton|márton|orban|orbán|marchand|marchan|mec|gars|magasin|échoppe|échope|echoppe|echope"],
        LocaleKey::DIAL_ALCHEMIST_TXT_MARTON => ["Je ne sais pas grand chose de lui, je n'ai jamais eu l'occasion de parler avec lui honnêtement."],
        LocaleKey::DIAL_ALCHEMIST_INTRO_MARTON => "Euh... C'est le marchant ambulant qui s'est installé un peu avant la guilde non ?\n",
        LocaleKey::DIAL_ALCHEMIST_KEY_BLACKSMITH => ["forgeron|forgerons|forge|forges|coté|côté|cote|autre|bout|guilde", "forgeron|forgerons|gars|mec|forge|forges|marchand"],
        LocaleKey::DIAL_ALCHEMIST_TXT_BLACKSMITH => [
            "Le forgeron de l'autre coté de la guilde est là depuis un bon moment, il a travaillé pour la guilde depuis bien avant que je ne la rejoigne.",
            "Il ne parle pas, donc les gens le pense parfois rustre ou intimidant, mais quand on apprend à le connaître il s'avère être un chic type finalement.\nComme on dit, les actions parlent plus que les mots.",
            "Et, en ce qui vous concerne, c'est un sacrément bon forgeron. S'il vous faut quoique-ce soit lié aux armures, c'est vôtre homme."
        ],
        LocaleKey::DIAL_ALCHEMIST_KEY_KING => ["roi|rois|siarl|cour"],
        LocaleKey::DIAL_ALCHEMIST_TXT_KING => [
            "Le roi du Livrou est le Roi Siarl VII, \"l'austère\".",
            "Ayant pris le trône en 1393 après avoir renversé son propre père à seulement dix-sept ans, il a mené nombre de victoires d'une poigne de fer.\nJ'imagine que la menace de devenir illégitime alors qu'il n'était qu'un jeune adulte au profits de relations étrangères l'a vite endurci, faisant de lui un dirigeant bien plus dur que son père ne l'était. Mais, c'est également un dirigeant bien plus mesuré.",
            "D'ailleurs mon père l'a vu grandir depuis qu'il était petit. Il le décrivait comme étant un enfant reservé, mais qui s'est rapidement avéré brillant au combat et sur les champs de batailles."
        ],
        LocaleKey::DIAL_ALCHEMIST_KEY_MOURRE => ["votre|vous|vôtre|native|natif|mourre|moure|capitale|capitales|la|nôtre|notre|ton|toi|tu|t", "ville|mourre|moure|capitale|capitales"],
        LocaleKey::DIAL_ALCHEMIST_TXT_MOURRE => [
            "La capitale de nôtre pays s'appelle Mourre.\nUne grande ville dans le nord, placée dans une immense île au coeur d'un grand fleuve.",
            "C'est très beau là-bas, je recommande chaudement d'aller la visiter durant l'été.\nEt, bien que la vie y coûte plus cher, c'était parfait pour mon domaine, entre l'académie de la Cour du Roi et les nombreuses bibliothèques."
        ],
        LocaleKey::DIAL_ALCHEMIST_KEY_LIVROU => ["ça|ca|ce|ton|toi|notre|nôtre|toi|ton|t|vôtre|votre|vous|moi|mon|où|name|livrou|dans|quelle|quoi", "sommes|royaumme|royaummes|royaume|royaumes|pays|pay|livrou"],
        LocaleKey::DIAL_ALCHEMIST_TXT_LIVROU => [
            "Nous sommes au Royaumme du Livrou.",
            "C'est une des grandes nations de la Grande Allience.",
            "Actuellement, nous nous dirigeons possiblement vers une période sombre pour notre royaume, l'instabilité semblant atteindre la cour et les seigneurs devenant agités.\nMais, pour l'instant, nous sommes le deuxième plus grand royaume du continent, derrière l'Empire Saint."
        ],
        LocaleKey::DIAL_ALCHEMIST_KEY_FATHER => ["vous|vôtre|votre|toi|ton|t|mussa|musa|al-bakir|albakir|bakir", "fille|enfant|père|pere|pères|peres|parent|parents|mussa|al-bakir|albakir|bakir"],
        LocaleKey::DIAL_ALCHEMIST_TXT_FATHER => [
            "Mussa al-Bakir est mon père.",
            "Il est un alchimiste de renom travaillant pour le Roi du Livrou lui-même.\nIl était en grande partie responsable pour mon éducation dans aux arts occultes, bien que j'ai également suivie deux doctorats à Mourre en plus de ces leçons privées.",
            "J'ose espérer qu'il a fait de moi une brillante savante, mais il n'approuve pas de me voir \"gâcher\" mon temps à travailler pour les pauvres au lieu de me faire connaître auprès des nobles.\nMais j'apprécie bien plus mon temps avec vous tous que la companie de ces idiots pensant avoir tout compris sans jamais quitter leurs petites cours.",
            "Les nombreuses histoires que j'ai entendue, et les paysages que j'ai traversée ont bien plus à m'apprendre que la capitale, maintenant que mon éducation est terminée."
        ],
        LocaleKey::DIAL_ALCHEMIST_INTRO_FATHER => "Oui, ",
        LocaleKey::DIAL_ALCHEMIST_KEY_QUEST => ["quête|quêtes|quete|quetes|mission|missions"],
        LocaleKey::DIAL_ALCHEMIST_TXT_QUEST => [
            "il n'y a que des aventuriers et les villageois qui passent par ici, et que ces derniers préféreraient autant qu'on les laisse tranquille.",
            "Mais si c'est de l'or qu'il vous faut, allez simplement fouiller cette tour pour tout objet de valeur à revendre."
        ],
        LocaleKey::DIAL_ALCHEMIST_INTRO_QUEST => "Ah, désolée mais nous n'avons reçu aucune quête dans les environs, puisqu'",
        LocaleKey::DIAL_ALCHEMIST_KEY_BAD => ["mal|mauvais|mauvaise|pas|horrible|pire|terrible|horriblement|dur|non|moyen|bof|coussi|coussa"],
        LocaleKey::DIAL_ALCHEMIST_TXT_BAD => ["désolée d'entendre ça."],
        LocaleKey::DIAL_ALCHEMIST_INTRO_BAD => "Oh, ",
        LocaleKey::DIAL_ALCHEMIST_KEY_GOOD => ["bien|va|super|ok|correct|parfait|mieux|meilleur|meilleure|correcte|tranquille|oui|impeccable|nickel|génial|cool"],
        LocaleKey::DIAL_ALCHEMIST_TXT_GOOD => ["Contente d'entendre ça."],
        LocaleKey::DIAL_ALCHEMIST_INTRO_GOOD => "",
        LocaleKey::DIAL_ALCHEMIST_KEY_NEUTRAL => ["ça|ce|jour|jours|encore|pareil|toujours|habitude|routine"],
        LocaleKey::DIAL_ALCHEMIST_TXT_NEUTRAL => ["c'est pas toujours facile eh."],
        LocaleKey::DIAL_ALCHEMIST_INTRO_NEUTRAL => "Ouais je vous comprends, ",
        LocaleKey::DIAL_ALCHEMIST_KEY_HEALTH_PELLET => ["pastille|pastilles"],
        LocaleKey::DIAL_ALCHEMIST_TXT_HEALTH_PELLET => [
            "C'est un remède de ma propre fabrication.",
            "J'ai découvert qu'en distillant des potions de soins en un sirop concentré, et ensuite en le solidifiant avec du sucre en une sorte de bonbon, je peux créer des pastilles qui soignent progressivement pendant qu'elles fondent.",
            "En revanche, évitez de les croquer pour maximiser les résultats, et prenez garde de ne pas vous étouffer en plein combat."
        ],
        LocaleKey::DIAL_ALCHEMIST_INTRO_HEALTH_PELLET => "Ah oui, je suis très fière de celui-là.\n",
        LocaleKey::DIAL_BLACKSMITH_REPEAT => "",
        LocaleKey::DIAL_GOBLIN_BLACKSMITH_REPEAT => "",
        LocaleKey::DIAL_GOBLIN_GUARD_REPEAT => "Dëkabogu sö Kö Rakröt Bëdès, ",
        LocaleKey::DIAL_GOBLIN_GUARD_KEY_ASK_NAME => ["pöko|poko", "#{Locale::PLAYER_NAME}", "köpodugus|kopodugus"],
        LocaleKey::DIAL_GOBLIN_GUARD_KEY_ASK_NAME_NICKNAME => ["pöko|poko", "bëdèsoe|bëdesoe|bedèsoe|bedesoe|tarkorbakö|tarkorbako", "köpodugus|kopodugus"],
        LocaleKey::DIAL_GOBLIN_GUARD_TXT_ASK_NAME_HEAR_OUT => ["Kosäpor sö Kö Rakröt Bëdès."],
        LocaleKey::DIAL_GOBLIN_GUARD_TXT_ASK_NAME => ["Kosäpor sö Kö Rakröt Bëdès. Todkörragosaborkus sö Kö Rakröt Bëdès kosäpor sö pöko köpoduk."],
        LocaleKey::DIAL_GOBLIN_GUARD_KEY_PEACE => ["kobakëtodutregobu|kobaketodutregobu|toderkoburëkobu|toderkoburekobu|koptoderkoburëkobu|koptoderkoburekobu|toduderkoburëkobu|toduderkoburekobu|koptoduderkoburëkobu|koptoduderkoburëkobu"],
        LocaleKey::DIAL_GOBLIN_GUARD_TXT_PEACE_HEAR_OUT => [
            "Kös sö Kö Rakröt Bëdès sö köpogur #{Locale::PLAYER_NAME}. Erkorakröt sö Kö Rakröt Bëdès tö tarkorbakö...",
            "Todkusaborköspo kobukör kö tarkorbakö sö kobukörkada sö #{Locale::PLAYER_NAME} sö Kö Rakröt Bëdès.",
            "Kopkobakëtogeopra tö köpoduk korkö erköpo sö dök köpoduk. Todkadä këtogubu #{Locale::PLAYER_NAME} sö Kö Rakröt Bëdès."
        ],
        LocaleKey::DIAL_GOBLIN_GUARD_TXT_PEACE => [
            "Kosäpor sö #{Locale::PLAYER_NAME} sö pöko köpoduk ? Kosäpor kö tarkorbakö sö pöko köpoduk sö pör söedso.",
            "Korkëtogubu sö #{Locale::PLAYER_NAME} sö dök köpogur sö dëkaos ? Dëkaos sö bëdèsoe todök sö dök ?"
        ],
        LocaleKey::DIAL_GOBLIN_GUARD_KEY_HELP => ["toderköpo|toderkopo"],
        LocaleKey::DIAL_GOBLIN_GUARD_TXT_HELP => [
            "Kobukör toderköpo sö köpoduk sö #{Locale::PLAYER_NAME}.",
            "Koptöter kobakëtodutrëgobu tö köpoduk todök sö dök köpoduk. Kobukör totrëkobu sö Kö Rakröt Bëdès tö bëdèsoe korkö popör kö bëdèsoe sö dök köpoduk."
        ],
        LocaleKey::DIAL_GOBLIN_GUARD_KEY_TRADE => ["sodottöter|sodottoter|kopsodottöter|kopsodottoter|töter|toter|koptöter|koptoter"],
        LocaleKey::DIAL_GOBLIN_GUARD_TXT_TRADE => [
            "Erkosodottöter dëkaos sö köpoduk kö tarkorbakö korkö sö erkö sö erkö… Kobukör erköpo sö dök köpoduk.",
            "Koptöter kobakëtodutregobu tö köpoduk todök sö dök köpoduk."
        ],
        LocaleKey::DIAL_GOBLIN_GUARD_KEY_LEARN => ["kopogur|köpogur", "tosedorerksäpor|tosedorerksapor|koptosedorerksäpor|koptosedorerksapor|kosäpor|kosapor|kopkosäpor|kopkosapor", "köpoduk|kopoduk|pöko|poko"],
        LocaleKey::DIAL_GOBLIN_GUARD_TXT_LEARN => [
            "Sö Kö Rakröt Bëdès sö körragosaborkus tötresèop tödoer sö tarkorbakö kö kosäpor köpoduk. Erkö sö Kö Pöko Tarkö sö dasdöter kosäpor korkö erkokosaborkös erkö sö Kö Pöko Tarkö sö dasdöter kobakëtogospor sö köpoduk.",
            "Kobukör korkëtogubagedo sö #{Locale::PLAYER_NAME} sö dök köpoduk. Koptöter kobakëtodutregobu tö köpoduk todök sö dök köpoduk."
        ],
        LocaleKey::DIAL_GOBLIN_GUARD_KEY_REPEATED => ["sod|söd", "tosedorerksäpor|tosedorerksapor|koptosedorerksäpor|koptosedorerksapor|kosäpor|kosapor|kopkosäpor|kopkosapor", "köpoduk|kopoduk|pöko|poko"],
        LocaleKey::DIAL_GOBLIN_GUARD_TXT_REPEATED => [
            "Dëkabogu sö dëkaos pöko Kö Rakröt Bëdès söd. Körkubagedo söd."
        ],
        LocaleKey::DIAL_GOBLIN_GUARD_KEY_KNOW_GOBLIN => ["poko|pöko", "tosedorerksäpor|tosedorerksapor|koptosedorerksäpor|koptosedorerksapor|kosäpor|kosapor|kopkosäpor|kopkosapor", "köpoduk|kopoduk|pöko|poko"],
        LocaleKey::DIAL_GOBLIN_GUARD_INTRO_KNOW_GOBLIN => "Kosäpor sö pöko köpoduk? ",
        LocaleKey::DIAL_GOBLIN_GUARD_TXT_KNOW_GOBLIN => ["Kobukörkada. Dëkabogu sö dëkaos tödoer köpogur."],
        LocaleKey::DIAL_GOBLIN_GUARD_KEY_ELDER => ["pöko|poko|koppöko|koppoko|kopöko|kopoko|pör|por|koppör|koppor|kopör|kopor|kör|kor|kopkör|kopkor", "köpodubugurku|kopodubugurku"],
        LocaleKey::DIAL_GOBLIN_GUARD_TXT_ELDER => [
            "Pöko sö köpodubugurku ?...",
            "Rakröt sö Kö Rakröt Bëdès tö popör bëdèsoe korkö kör kö bëdèsoe sö köpodubugurku… Kopkosäpor sö bëdèsoe toderkoburëkobu sö köpoduk sö köpodubugurku. Tö köpoduk sö koprëkor todök sö köpoduk.",
            "Kör sö kobakëto."
        ],
        LocaleKey::DIAL_GOBLIN_GUARD_KEY_ASK_ENTER => ["bëdèsoe|bëdesoe|bedèsoe|bedesoe|tarkorbakö|tarkorbako", "korkëtogubagedo|korketogubagedo|todök|todok|kopkorkëtogubagedo|kopkorketogubagedo|koptodök|koptodok"],
        LocaleKey::DIAL_GOBLIN_GUARD_KEY_ASK_ENTER_LEARN_NAME => ["#{Locale::PLAYER_NAME}", "korkëtogubagedo|korketogubagedo|todök|todok|kopkorkëtogubagedo|kopkorketogubagedo|koptodök|koptodok"],
        LocaleKey::DIAL_GOBLIN_GUARD_TXT_ASK_ENTER_HEAR_OUT => [
            "Tödoer sö #{Locale::PLAYER_NAME} korkëtogubagedo sö dök köpoduk köpogur sö köpogugus ?",
            "Totrëkobu tö bëdèsoe kö köpoduk. Dëkaobu tö bëdèsoe kö dök köpoduk. Tordöter tö bëdèsoe kö dëkaos tökobu.\nSö körraega tötresèop sö dëkaos ?"
        ],
        LocaleKey::DIAL_GOBLIN_GUARD_TXT_ASK_ENTER => [
            "Korkëtogubagedo tö köpoduk söd sö dök köpoduk. Kopkorkëtogubagedo tö tarkorbakö sö dök köpoduk köpogur totrëkobu. Kopkorkëtogubagedo tö tarkorbakö sö dok köpoduk köpogur tordöter.\nToderkoburëkobu kö köpoduk sö dök köpoduk tötresèop todutrëd kö tarkorbakö sö dök köpoduk.",
            "Körkubagedo kobakëto dök köpoduk tötresèop sö todutrëd."
        ],
        LocaleKey::DIAL_GOBLIN_GUARD_KEY_THREAT => ["koptotrëkobu|koptotrekobu|totrëkobu|totrekobu|koppopör|koppopor|koppopor"],
        LocaleKey::DIAL_GOBLIN_GUARD_TXT_THREAT => [
            "Pöko sö #{Locale::PLAYER_NAME} sö kobakëtodugusabor. Sö todutrëd dök köpoduk. Sö todutrëd köpoduk.",
            "Koptoderkoburëkobu sö Kö Rakröt Bëdès sö dök köpoduk. Koptoderkoburëkobu tö köpoduk sö dök köpoduk."
        ],
        LocaleKey::DIAL_GOBLIN_GUARD_KEY_HELLO => ["poko|pöko", "bëdèsoe|bëdesoe|bedèsoe|bedesoe|tarkorbakö|tarkorbako"],
        LocaleKey::DIAL_GOBLIN_GUARD_KEY_HELLO_LEARN_NAME => ["poko|pöko", "#{Locale::PLAYER_NAME}"],
        LocaleKey::DIAL_GOBLIN_GUARD_TXT_HELLO_HEAR_OUT => ["Säpogu sö Kö Rakröt Bëdès sö #{Locale::PLAYER_NAME}."],
        LocaleKey::DIAL_GOBLIN_GUARD_TXT_HELLO => ["Säpogu sö Kö Rakröt Bëdès sö #{Locale::PLAYER_NAME}"],
        LocaleKey::DIAL_GOBLIN_GUARD_INTRO_HELLO => "Kosäpor sö pöko köpoduk... ",
        LocaleKey::DIAL_GOBLIN_GUARD_KEY_WHAT => ["sö|so|kö|ko|tö|to"],
        LocaleKey::DIAL_GOBLIN_GUARD_TXT_WHAT => ["Erkosä sö Kö Rakröt Bëdès sö kös korkö pöko sö #{Locale::PLAYER_NAME} sö Kö Rakröt Bëdès."],
        LocaleKey::DIAL_KEY_PLAYER_NAME => ["#{Locale::PLAYER_NAME}"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GRAMMAR => ["grammaire|phrase|phrases"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_REPEAT => "Kö Pöko Tarkö disait, ",
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GRAMMAR => [
            "Un parole gobline s'ordonne différemment d'un parole humaine.\nLà où les humains disent en premier un sujet, puis un action et un objet, les goblins disent en premier un action puis un sujet et un objet.",
            "Un sujet et un objet seront tout deux précédé par un article. Soit \"Sö\" pour un nom singulier, \"Kö\" pour un nom pluriel ou \"Tö\" pour un entièreté d'un groupe.",
            "Donc, un exemple est \"Certains humans savent un langue gobline\" dans votre language, deviens \"Savoir certains humains un langue goblin\".\nCela donnant en langue gobline \"Kosäpor kö tarkorbakö sö pöko köpoduk\".",
            "Pour ce qu'est des verbes, pour dire qu'un action est ponctuelle au lieu de continue, les goblins utilisent un suffixe \"Po\" ou \"Bo\". Et pour préciser qu'un action est rapide les goblins utilisent un suffixe \"Rpo\".",
            "Un exemple est \"Aimer\" se traduit en \"Kadätodu\", là où \"Avoir aimé\" se traduit en \"Kadätodubo\" et \"Avoir aimé rapidement\" est \"Kadätodurpo\".\nUn autre exemple est \"Manger\" se traduisant en \"Krördar\", \"Avoir mangé\" se traduisant \"Krördarpo\" et \"Avoir mangé rapidement\" se traduisant également en \"Krördarpo\", puisque krördar fini déjà avec un \"r\".",
            "Les verbes peuvent également être conjugé avec un passé et un future, via un prefix \"Erk\" ou \"Erko\" pour un passé et \"Kop\", \"Kob\" ou \"Kobo\" pour un future.\nPour un exemple \"Aider\" est \"Toderköpo\", \"Aidait\" est \"Erkododerköpo\" et \"Aidera\" est \"Koptoderköpo\".",
            "Quelle version d'un préfix est utilisé dépend d'un verbe... Mais Kö Pöko Tarkö dira juste à un #{Locale::PLAYER_NAME} comment chaque verbe se conjuge quand Kö Pöko Tarkö les traduira pour rendre un apprentissage facile.",
            "Aussi, parfois dans un phrase un sujet peut manquer, ou même un sujet et un objet.\nSi un sujet manque, on présume qu'un sujet est \"Vous\", et si un sujet et un objet manque également on présume un objet comme étant \"moi\".",
            "De même, quand un verbe est absent on présume qu'un verbe est \"Être\".",
            "Pour un exemple, \"Kadä sö köpoduk tö ktöpago\" signifie \"Un goblin aime les arbres\"\n\"Kadä tö ktöpago\" signifie \"Vous aime les arbres\",\nEt \"Kadä\" signifie \"Vous aime moi\".\nUn autre exemple étant \"Sö tarkorbakö\" signifiant \"Vous est un humain\".",
            "Enfin, tout les mots dans un phrase peuvent avoir tout les fonctions.\nUn exemple est que \"Kerortarsëop\" en début signifie \"Boir\", mais en tant que sujet ou objet \"Sö kerortarsëop\" signifie \"un boisson\", et ajouté après un mot en tant qu'un adjectif signifie \"Buvable\".\nDonc, un exemple est \"Kerortarsëop sö kerortarsëop kerortarsëop\" signifie \"Vous bois un boisson buvable\".",
            "Là où un parole humaine requier de changer un mot pour changer sa fonction, pour un parole gobline changer un position d'un mot suffit.",
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ARTICLES => ["article|articles|sö|so|kö|ko|tö|to|article|articles|so|so|ko|ko|to|to"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ARTICLES => [
            "Les sujets et les objets dans un phrase sont précédé par un article en parole gobline, soit \"Sö\" pour les noms singuliers, \"Kö\" pour les noms pluriels et \"Tö\" pour un totalité d'un groupe.\nAussi, parfois, si vous voyez \"sö Kö ...\", cela introduit généralement un nom goblin."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_CONJUGAISON => ["conjugaison|conjugaisons|conjugue"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_CONJUGAISON => [
            "Vous peux préciser qu'un verbe est fait à un moment ponctuel, au lieu d'être un action continue, avec un suffixe \"Po\", ou également qu'un action est rapide avec \"Rpo\".\nDe plus, un préfix \"Erk\" ou \"Erko\" peut être utilisé pour marquer un action fait dans un passé, et un préfix \"Kob\", \"Kobo\" ou \"Kop\" pour marquer un action dans un future.",
            "Un prefix utilisé dépend du début d'un verbe, donc pour vous faciliter un tâche Kö Pöko Tarkö vous donnera tout les conjugaisons d'un verbe quand Kö Pöko Tarkö vous traduira.",
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_KNOW_ENGLISH => ["sait|savez|appris|apprit|connaît|connaissez|humains|humain|français|parole|parlez|parle|connait|francais", "bien|bon"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_KNOW_ENGLISH => [
            "c'est un mission de Kö Pöko Tarkö d'apprendre un parole humaine. Merci de remarquer.",
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_INTRO_KNOW_ENGLISH => "Oh?... Et bien, ",
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_LEARNED_HOW => ["comment|quand", "humain|français|parole|parle|parlez|parler|francais"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_LEARNED_HOW => [
            "Un parole humaine a été enseignée à Kö Pöko Tarkö\nDepuis des générations un portion de notre tribu à gardée cette tradition depuis qu'un passé est passé.\n\nKö Pöko Tarkö à simplement continué cette tradition.",
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_KO_RAKROT => ["rakröt|rakrot", "bedes|bëdès|bedès"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_KO_RAKROT => [
            "Un goblin est nommé Kö Rakröt bëdès car Kö Rakröt Bëdès est un goblin faisant fuir les aventuriers approchant notre village.",
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_INTRO_KO_RAKROT => "Un garde au portes hein?\n",
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_KO_POKO_TARKO => ["pöko|poko", "tarkö|tarko"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_KO_POKO_TARKO => [
            "C'est avec qui vous parlez!\nKö Pöko Tarkö est nommé ainsi car Kö Pöko Tarkö travaille à connaître un parole humaine.",
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_KO_KOPOEGA_DEGAERK => ["degäerk|degaerk"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_KO_KOPOEGA_DEGAERK => [
            "Kö Köpoega Degäerk est un forgeron de notre tribu, un bon forgeron. Visite Kö Köpoega si vous souhaite quelques échanges, Kö Köpoega Degäerk peut échanger contre des ors rares et utiles.",
        ],
        LocaleKey::DIAL_GOBLIN_ELDER_REPEAT => "Erkoëkabogu sö köpodubugurku, ",
        LocaleKey::DIAL_GOBLIN_ELDER_KEY_ADVICES => ["totrdëkobu|toderköpo|totrdëkobubo|toderköpobo|totrdëkoburpo|toderköporpo|koptotrdëkobu|koptoderköpo|totrdekobu|toderkopo|koptotrdekobu|koptoderkopo"],
        LocaleKey::DIAL_GOBLIN_ELDER_TXT_ADVICES => [
            "Totrdëkobu sö köpodubugurku sö #{Locale::PLAYER_NAME} körkubagedorpo sö #{Locale::PLAYER_NAME} sö këtogubu. ",
            "Krördar sö këtogubu tö köpodukubagedo. Todök toderkoburëkobu sö köpoduk sö këtogubu tötresèop erkö sö köpoduk kö regodarkör këtogubu.",
            "Kobokrördarpo sö këtogubu sö korkö kopregoburëkobu #{Locale::PLAYER_NAME} tötresèop erkogorkëtogubagedopo sö #{Locale::PLAYER_NAME} sö këtogubu.\nTrë sö këtogubu tö köpodukubagedo.",
            "Tötresèop kös tö tarkorbakö tö totrdëkobu köpoduk, kosaborkös sö köpodubugurku kopkëtogur kobakëto todök sö #{Locale::PLAYER_NAME} sö këtogubu totrëkobu.",
            "Köpogur toderköpo këtogur sö tarkorbakö sö këto tödoer, kopkobakëtodutregobu tö köpoduk sö #{Locale::PLAYER_NAME}.",
            "Todpör sö boëdea köpogur totrköpo tö popör köpoduk.",
        ],
        LocaleKey::DIAL_GOBLIN_ELDER_KEY_OUTSIDER => ["köpodukubagedo|kopodukubagedo"],
        LocaleKey::DIAL_GOBLIN_ELDER_TXT_OUTSIDER => [
            "Tö köpodukubagedo tö rëkobu erkogorkëtogubagedopo këtogubu. Toderbrä sö këtogubu tö köpodukubagedo. Köpoega trë sö toderbrä tö köpodukubagedo.",
        ],
        LocaleKey::DIAL_GOBLIN_ELDER_KEY_HERE_FOOD => ["këtogubu|ketogubu", "trë|todkrördar|krördar|koptrë|koptodkrördar|kopkrördar|krördarpo|todkrördarpo|tre|todkrordar|krordar|koptre|koptodkrordar|kopkrordar|krordarpo|todkrordarpo"],
        LocaleKey::DIAL_GOBLIN_ELDER_TXT_HERE_FOOD => [
            "Todkrördar tö erkö köpodukubagedo sö këtogubu korkö regoburëkobupo kö köpodukubagedo todök sö këtogubu. Todkrördar tö kosäpor köpodukubagedo sö këtogubu. Todkrördar tö korkö köpodukubagedo sö këtogubu.\nTodkrördar sö rëkopsud köpodukubagedo sö këtogubu.",
        ],
        LocaleKey::DIAL_GOBLIN_ELDER_KEY_ORIGIN => ["pogurko|koppogurko|pogurkö|koppogurkö|korko|kopogugus|korkö|köpogugus", "pogurko|koppogurko|pogurkö|koppogurkö|korkëtogubu|erkokorkëtogubu|këtogubu|korketogubu|erkokorketogubu|ketogubu"],
        LocaleKey::DIAL_GOBLIN_ELDER_TXT_ORIGIN => [
            "Erkogorkëtogubagedopo sö köpoduk erkö sö këtogubu köpogur totoderkoburëkobu korkö erkö sö erkö sö erkö. Erkö sö këtogubu sö kobukörkada köpogur sö rëkobu köpoduk erkö.",
            "Erkoköpoega kö köpoduk erkö kö regodarkör erkö. Erkododkubuegaredarkör kö regodarkör erkö sö këtogubu. Erkokobukörra kö regodarkör erkö sö köpoduk. Erkotodökpo sö köpoduk sö këtogubu.",
            "Erkokobukörrarko sö köpoduk erkö. Erkorëkobu pökodu sö köpoduk erkö.\nErkokobukörrarko köpa sö köpoduk erkö.\nErkorëkobu korköerkubu sö köpoduk erkö tötresèop erkö sö köpoduk sö trë këtogubu.",
            "Erkododotrëkobugubu sö köpoduk erkö körkubagedo sö këtogubu. Erkokörpo sö köpoduk erkö sö kobakëto köpogur erkosegoburëkobu. Erkododök sö regodarkör köpoduk erkö sö këtogubu köpogur erkorëkobu.",
            "Erkö tö köpodukubagedo kö trë. Erkododuderkoburëkobu tö regodarkör köpodukubagedo. Trë sö korkëtogubagedo këtogubu söd tö dëkaos rëkobu.",
        ],
        LocaleKey::DIAL_GOBLIN_ELDER_KEY_ATTACKED_ADVENTURERS => ["bedes|bedesoe|tarkorbako|#{Locale::PLAYER_NAME}|bëdès|bëdèsoe|tarkorbakö", "popör|erkobopör|koppopör|popörpo|erkobopörpo|koppopörpo|popor|erkobopor|koppopor|poporpo|erkoboporpo|koppoporpo"],
        LocaleKey::DIAL_GOBLIN_ELDER_TXT_ATTACKED_ADVENTURERS => [
            "Körrarko sö köpoduk sö #{Locale::PLAYER_NAME}. Erkotoderkoburëkobu söd sö köpoduk tö köpoduk tötresèop totrëkobu tö bëdèsoe kö köpoduk.\nTordöterpo sö boëdea köpogur toduderkoburëkobu korkö koppopör kö köpoduk korkö todpör sö boëdea köpoduk.",
        ],
        LocaleKey::DIAL_GOBLIN_ELDER_KEY_ADVENTURER => ["bëdès|bëdèsoe|bedes|bedesoe"],
        LocaleKey::DIAL_GOBLIN_ELDER_TXT_ADVENTURER => [
            "Totutrëkopu sö köpo kö bëdèsoe.",
            "Totrëkobu tö bëdèsoe kö köpoduk. Dëkaobu tö bëdèsoe kö dök köpoduk. Tordöter tö bëdèsoe kö dëkaos tökopuduk köpogur toderköpo sö söd tö dëkaos.\nSö körraeka söd tarkorbakö.",
        ],
        LocaleKey::DIAL_GOBLIN_ELDER_KEY_GOD => ["tökubu|tokubu"],
        LocaleKey::DIAL_GOBLIN_ELDER_TXT_GOD => [
            "Kosaborkös sö köpoduk tö dëkaos sö kobugurtö. Kosaborkös sö köpoduk erkoköpoega sö këtogubu söd sö këtogubu.\nKosaborkös sö köpo tarkorbakö söd erkoköpoega sö köpodugus kobukör tökobu kosäpor tökobu sö këtogubu.",
            "Sö këtogubu söd sö tökobu köpoduk.",
        ],
        LocaleKey::DIAL_GOBLIN_ELDER_KEY_GOLD => ["aüro|auro"],
        LocaleKey::DIAL_GOBLIN_ELDER_TXT_GOLD => [
            "Sö aüro sö dëka dëkagobugubu. Sö aüro sö dëka poregadä. Tordöter tö tarkorbakö kö aüro köpogur toderköpo kö tarkorbakö tö dëkaos. Töter tö köpoduk tö dëkaos köpogur toderköpo tö köpoduk tö dëkaos.",
        ],
        LocaleKey::DIAL_GOBLIN_ELDER_KEY_INTELLIGENCE => ["pökodu|pokodu"],
        LocaleKey::DIAL_GOBLIN_ELDER_TXT_INTELLIGENCE => [
            "Todköpoega tö pökodu sö tökobu. Toderköpo sö këtogubu kö tökobu köpa sö kobakëto.",
            "Kö köpodubugurku söd sö tökobu todök sö köpoduk. Toderköpo kö dasoregotrë tö erköpagedogur köpoduk.\nToderköpo tö tökobu kö tarkorbakö söd. Toderköpo tö tökobu kö totrëkobugubu söd.",
        ],
        LocaleKey::DIAL_GOBLIN_ELDER_KEY_OTHER_GOD => ["kö|tökubu|ko|tokubu"],
        LocaleKey::DIAL_GOBLIN_ELDER_TXT_OTHER_GOD => [
            "Sö tökobu tö dëkaos.",
            "Tö dëkaos sö söd. Tö dëkaos sö söd söd tötresèop todök tö dëkaos sö tökobu. Sö tökobu sö söd.",
        ],
        LocaleKey::DIAL_GOBLIN_ELDER_KEY_RESUSCITATE => ["rekobu|koprekobu|regoburekobu|erkoregoburekobu|rëkobu|koprëkobu|regoburëkobu|erkoregoburëkobu", "#{Locale::PLAYER_NAME}|bëdèsoe|tarkorbakö|bedesoe|tarkorbako"],
        LocaleKey::DIAL_GOBLIN_ELDER_TXT_RESUSCITATE => [
            "Kosaborkös tö bëdèsoe rëkobu kö köpodugus regoburëkobu korkö erkosegoburëkobupo todök sö këtogubu. Kosaborkös tö bëdèsoe sö kobakëtogospor.",
            "Krördar sö këtogubu tö regoburëkobu bëdèsoe. Kobakëtodu sö köpodugus regoburëkobu sö rëkopsud korkö kobakëtodu sö köpodugus regoburëkobu sö regoburëkobu.",
            "Sö kobakëtodu sö tordöter tötresèop. Totërkobu sö këtogubu sö regoburëkobu köpogur krördar tö regoburëkobu.",
        ],
        LocaleKey::DIAL_GOBLIN_ELDER_KEY_SLIMES => ["sëoperègobu|seoperegobu"],
        LocaleKey::DIAL_GOBLIN_ELDER_TXT_SLIMES => [
            "Kö sëoperègobu sö kobuköpa todök sö kedogeboktösdop. Kö sëoperègobu kedogeboktösdop sö köpa.\nKobukörrapo tö sëoperègobu köpa sö köpo sëoperègobu korkö toduttödodpo. Kobukörra kö köpo sëoperègobu tö sëoperègobu köpa korkö köpo.",
        ],
        LocaleKey::DIAL_GOBLIN_ELDER_KEY_FRUIT => ["ktötar|ktotar"],
        LocaleKey::DIAL_GOBLIN_ELDER_TXT_FRUIT => [
            "Tö ktötar poburbör ktöpago sö toderköporaegaobu. Toderköporaegaobu kö ktötar poburbör tö erdëkaobugeror tarkörseagobueka kedogeboktösdop.",
        ],
        LocaleKey::DIAL_GOBLIN_ELDER_KEY_UNDEAD => ["rëkobu|koprëkobu|regoburëkobu|erkoregoburëkobu|rekobu|koprekobu|regoburekobu|erkoregoburekobu", "dasosegotrëregobu|erkodasosegotrëregobu|dasosegotreregobu|erkodasosegotreregobu"],
        LocaleKey::DIAL_GOBLIN_ELDER_TXT_UNDEAD => [
            "Tö dasosegotrëregobu rëkobu kö sëakobuegaobudugus. Sëakobuegaobudugus tö dasosegotrëregobu rëkobu kö dasosegotrëregobu bëdèsoe. Tö dasosegotrëregobu rëkobu kö sdäske këtogubu.",
        ],
        LocaleKey::DIAL_GOBLIN_ELDER_KEY_VILLAGE => ["dök|dok"],
        LocaleKey::DIAL_GOBLIN_ELDER_TXT_VILLAGE => [
            "Erkoköpoegapo sö köpoduk sö dök. Toderkoburëkobu sö köpoduk sö dök köpoduk.",
            "Sö köpodukubagedo söd. Koptöter kobakëtodutregobu sö dök köpoduk.",
            "Pöko sö köpodubugurku sö #{Locale::PLAYER_NAME}.\nKör sö köpodubugurku köpogur sö dëkaos ?",
        ],
        LocaleKey::DIAL_GOBLIN_ELDER_KEY_DUNGEON => ["këtogubu|ketogubu"],
        LocaleKey::DIAL_GOBLIN_ELDER_TXT_DUNGEON => [
            "Sö këtogubu sö dök köpoduk. Töter trë sö këtogubu tö köpoduk. Töter toderkoburëkobu sö këtogubu tö köpoduk. Sö këtogubu sö tökobu köpoduk.",
        ],
        LocaleKey::DIAL_GOBLIN_ELDER_KEY_NAME => ["pöko|poko", "köpodugus|kopodugus"],
        LocaleKey::DIAL_GOBLIN_ELDER_KEY_NAME_LEARN => ["pöko|poko", "köpodugus|kopodugus", "#{Locale::PLAYER_NAME}"],
        LocaleKey::DIAL_GOBLIN_ELDER_TXT_NAME => [
            "Pöko sö köpodubugurku.",
        ],
        LocaleKey::DIAL_GOBLIN_ELDER_KEY_HELLO => ["pöko|poko", "bëdèsoe|bedesoe|tarkorbakö|tarkorbako"],
        LocaleKey::DIAL_GOBLIN_ELDER_KEY_HELLO_LEARN => ["pöko|poko", "#{Locale::PLAYER_NAME}"],
        LocaleKey::DIAL_GOBLIN_ELDER_TXT_HELLO => [
            "Säpogu sö köpodubugurku sö #{Locale::PLAYER_NAME}.",
            "Pöko sö köpoduk. Pöko köpoduk sö köpodubugurku sö #{Locale::PLAYER_NAME}.",
        ],
        LocaleKey::DIAL_GOBLIN_ELDER_KEY_GENDER => ["köpodugurku|köpodugeobu|kopodugurku|kopodugeobu"],
        LocaleKey::DIAL_GOBLIN_ELDER_TXT_GENDER => [
            "Sö köpodubugurku sö köpodugurku. Pöko köpogur köpogugus ?",
        ],
        LocaleKey::DIAL_GOBLIN_ELDER_KEY_GOBLINS => ["köpoduk|kopoduk"],
        LocaleKey::DIAL_GOBLIN_ELDER_TXT_GOBLINS => [
            "Sö köpo sö tökobu köpoduk. Toderkoburëkobu sö köpo tö köpoduk. Töter trë sö köpo tö köpoduk.\nSö köpo sö köpoduk.",
            "Tödoer sö köpoduk sö köpagogu. Tödoer sö köpoduk sö kobakëtodutregobu.",
            "Kosaborkös tö tarkorbakö tö köpoduk kö sgëkosabor. Kosaborkös tö tarkorbakö tö köpoduk kö todutrëd. Kös tö tarkorbakö tö kosäpor köpoduk.\nPör dëka tö tarkorbakö tö dëkaos. Pör tökobu tö köpoduk tö dëkaos.",
        ],
        # Autogenerated via DialogGenerator
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_NOTHING => ["aucun", "verb"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_NOTHING => [
            "Un phrase sans verbe signifie \"Être\".",
            "Il peut également apparaître comme \"Erkö\" ou \"Köpo\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_VERB_NOTHING => ["être|etre"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_VERB_NOTHING => [
            "\"Être\" peut se dire \"Aucun verb\" en parole gobline, ou avec \"Erkaucun verb\" au passé ou \"Kobaucun verb\" au futur."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_ARMOR => ["abadurä|abadura|erkabadurä|erkabadura|kobabadurä|kobabadura|abadurärpo|abaduräbo|abadurarpo|abadurapo|erkabadurärpo|erkabaduräbo|erkabadurarpo|erkabadurapo|kobabadurärpo|kobabaduräbo|kobabadurarpo|kobabadurapo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_ARMOR => [
            "\"Abadurä\" signifie un armure, ou signifie aussi \"Equiper\" comme verbe.",
            "Quand \"Abadurä\" est un verbe, il peut également apparaître comme \"Erkabadurä\" ou \"Kobabadurä\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_ARMOR => ["armure"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_ARMOR => [
            "\"Armure\" peut se dire \"Abadurä\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_VERB_ARMOR => ["equiper"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_VERB_ARMOR => [
            "\"Equiper\" peut se dire \"Abadurä\" en parole gobline, ou avec \"Erkabadurä\" au passé ou \"Kobabadurä\" au futur."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_GOLD => ["aüro|auro|erkaüro|erkauro|kopaüro|kopauro|aürorpo|aüropo|aurorpo|auropo|erkaürorpo|erkaüropo|erkaurorpo|erkauropo|kopaürorpo|kopaüropo|kopaurorpo|kopauropo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_GOLD => [
            "\"Aüro\" signifie un or, ou peut aussi signifier \"Ajouter de l'or à quelque chose\" comme verbe.",
            "Quand \"Aüro\" est un verbe, il peut également apparaître comme \"Erkaüro\" ou \"Kopaüro\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_GOLD => ["or"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_GOLD => [
            "\"Or\" peut se dire \"Aüro\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_SOLDIER => ["bëdès|bedes|erkoëdès|erkoedes|kopbëdès|kopbedes|bëdèsrpo|bëdèspo|bedesrpo|bedespo|erkoëdèsrpo|erkoëdèspo|erkoedesrpo|erkoedespo|kopbëdèsrpo|kopbëdèspo|kopbedesrpo|kopbedespo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_SOLDIER => [
            "\"Bëdès\" signifie un soldat, ou \"Être un soldat\" comme verbe.",
            "Quand \"Bëdès\" est un verbe, il peut également apparaître comme \"Erkoëdès\" ou \"Kopbëdès\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_SOLDIER => ["soldat"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_SOLDIER => [
            "\"Soldat\" peut se dire \"Bëdès\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_ADVENTURER => ["bëdèsoe|bedesoe|erkoëdèsoe|erkoedesoe|kopbëdèsoe|kopbedesoe|bëdèsoerpo|bëdèsoepo|bedesoerpo|bedesoepo|erkoëdèsoerpo|erkoëdèsoepo|erkoedesoerpo|erkoedesoepo|kopbëdèsoerpo|kopbëdèsoepo|kopbedesoerpo|kopbedesoepo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_ADVENTURER => [
            "\"Bëdèsoe\" signifie un aventurier, ou \"Aventurer\" comme verbe.",
            "Quand \"Bëdèsoe\" est un verbe, il peut également apparaître comme \"Erkoëdèsoe\" ou \"Kopbëdèsoe\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_ADVENTURER => ["aventurier"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_ADVENTURER => [
            "\"Aventurier\" peut se dire \"Bëdèsoe\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_VERB_ADVENTURER => ["aventurer"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_VERB_ADVENTURER => [
            "\"Aventurer\" peut se dire \"Bëdèsoe\" en parole gobline, ou avec \"Erkoëdèsoe\" au passé ou \"Kopbëdèsoe\" au futur."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_NECKLACE => ["boëdea|boedea|erkoboëdea|erkoboedea|kopboëdea|kopboedea|boëdearpo|boëdeapo|boedearpo|boedeapo|erkoboëdearpo|erkoboëdeapo|erkoboedearpo|erkoboedeapo|kopboëdearpo|kopboëdeapo|kopboedearpo|kopboedeapo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_NECKLACE => [
            "\"Boëdea\" signifie un collier, ou peux aussi signifier \"Porter un collier\" comme verbe.",
            "Quand \"Boëdea\" est un verbe, il peut également apparaître comme \"Erkoboëdea\" ou \"Kopboëdea\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_NECKLACE => ["collier"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_NECKLACE => [
            "\"Collier\" peut se dire \"Boëdea\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_GOLD_OLD_NAME => ["buburkrörtrakror|buburkrortrakror|erkobuburkrörtrakror|erkobuburkrortrakror|kopbuburkrörtrakror|kopbuburkrortrakror|buburkrörtrakrorpo|buburkrörtrakrorpo|buburkrortrakrorpo|buburkrortrakrorpo|erkobuburkrörtrakrorpo|erkobuburkrörtrakrorpo|erkobuburkrortrakrorpo|erkobuburkrortrakrorpo|kopbuburkrörtrakrorpo|kopbuburkrörtrakrorpo|kopbuburkrortrakrorpo|kopbuburkrortrakrorpo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_GOLD_OLD_NAME => [
            "\"Buburkrörtrakror\" est un terme ancient pour un or, mais maintenant nous utilisons plutôt \"Aüro\"."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_GREASE_FAT_SLIPPERY => ["där|dar|erkoär|erkoar|kopdär|kopdar|därpo|därpo|darpo|darpo|erkoärpo|erkoärpo|erkoarpo|erkoarpo|kopdärpo|kopdärpo|kopdarpo|kopdarpo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_GREASE_FAT_SLIPPERY => [
            "\"Där\" signifie un graisse, ou \"Graisser\" comme verbe.",
            "Quand \"Där\" est un verbe, il peut également apparaître comme \"Erkoär\" ou \"Kopdär\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_GREASE_FAT_SLIPPERY => ["graisse/glissant"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_GREASE_FAT_SLIPPERY => [
            "\"Graisse\" ou tout chose glissante peut se dire \"Där\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_VERB_GREASE_FAT_SLIPPERY => ["graisser"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_VERB_GREASE_FAT_SLIPPERY => [
            "\"Graisser\" peut se dire \"Där\" en parole gobline, ou avec \"Erkoär\" au passé ou \"Kopdär\" au futur."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_RELAXING => ["däs|das|erkoäs|erkoas|kopdäs|kopdas|däsrpo|däspo|dasrpo|daspo|erkoäsrpo|erkoäspo|erkoasrpo|erkoaspo|kopdäsrpo|kopdäspo|kopdasrpo|kopdaspo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_RELAXING => [
            "\"Däs\" signifie un relaxé, ou peux aussi signifier \"Relaxer\" comme verbe.",
            "Quand \"Däs\" est un verbe, il peut également apparaître comme \"Erkoäs\" ou \"Kopdäs\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_RELAXING => ["relaxé|relaxe|relax"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_RELAXING => [
            "\"Relaxé\" peut se dire \"Däs\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_VERB_RELAXING => ["relaxer"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_VERB_RELAXING => [
            "\"Relaxer\" peut se dire \"Däs\" en parole gobline, ou avec \"Erkoäs\" au passé ou \"Kopdäs\" au futur."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_FULL => ["dasdöter|dasdoter|erkoasdöter|erkoasdoter|kopdasdöter|kopdasdoter|dasdöterpo|dasdöterpo|dasdoterpo|dasdoterpo|erkoasdöterpo|erkoasdöterpo|erkoasdoterpo|erkoasdoterpo|kopdasdöterpo|kopdasdöterpo|kopdasdoterpo|kopdasdoterpo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_FULL => [
            "\"Dasdöter\" signifie un plein, ou \"Remplir\" comme verbe.",
            "Quand \"Dasdöter\" est un verbe, il peut également apparaître comme \"Erkoasdöter\" ou \"Kopdasdöter\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_FULL => ["plein"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_FULL => [
            "\"Plein\" peut se dire \"Dasdöter\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_VERB_FULL => ["remplir"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_VERB_FULL => [
            "\"Remplir\" peut se dire \"Dasdöter\" en parole gobline, ou avec \"Erkoasdöter\" au passé ou \"Kopdasdöter\" au futur."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_SIT => ["däsgegobukre|dasgegobukre|erkoäsgegobukre|erkoasgegobukre|kopdäsgegobukre|kopdasgegobukre|däsgegobukrerpo|däsgegobukrepo|dasgegobukrerpo|dasgegobukrepo|erkoäsgegobukrerpo|erkoäsgegobukrepo|erkoasgegobukrerpo|erkoasgegobukrepo|kopdäsgegobukrerpo|kopdäsgegobukrepo|kopdasgegobukrerpo|kopdasgegobukrepo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_SIT => [
            "\"Däsgegobukre\" signifie un assise, ou donc \"Assoir\" comme verbe.",
            "Quand \"Däsgegobukre\" est un verbe, il peut également apparaître comme \"Erkoäsgegobukre\" ou \"Kopdäsgegobukre\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_SIT => ["assise"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_SIT => [
            "\"Assise\" peut se dire \"Däsgegobukre\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_VERB_SIT => ["assoir"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_VERB_SIT => [
            "\"Assoir\" peut se dire \"Däsgegobukre\" en parole gobline, ou avec \"Erkoäsgegobukre\" au passé ou \"Kopdäsgegobukre\" au futur."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_SLEEP => ["däsgobubor|dasgobubor|erkoäsgobubor|erkoasgobubor|kopdäsgobubor|kopdasgobubor|däsgobuborpo|däsgobuborpo|dasgobuborpo|dasgobuborpo|erkoäsgobuborpo|erkoäsgobuborpo|erkoasgobuborpo|erkoasgobuborpo|kopdäsgobuborpo|kopdäsgobuborpo|kopdasgobuborpo|kopdasgobuborpo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_SLEEP => [
            "\"Däsgobubor\" signifie un sommeil, ou \"Dormir\" comme verbe.",
            "Quand \"Däsgobubor\" est un verbe, il peut également apparaître comme \"Erkoäsgobubor\" ou \"Kopdäsgobubor\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_SLEEP => ["sommeil"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_SLEEP => [
            "\"Sommeil\" peut se dire \"Däsgobubor\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_VERB_SLEEP => ["dormir"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_VERB_SLEEP => [
            "\"Dormir\" peut se dire \"Däsgobubor\" en parole gobline, ou avec \"Erkoäsgobubor\" au passé ou \"Kopdäsgobubor\" au futur."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_REST => ["dasoregodarkör|dasoregodarkor|erkoasoregodarkör|erkoasoregodarkor|kopdasoregodarkör|kopdasoregodarkor|dasoregodarkörpo|dasoregodarkörpo|dasoregodarkorpo|dasoregodarkorpo|erkoasoregodarkörpo|erkoasoregodarkörpo|erkoasoregodarkorpo|erkoasoregodarkorpo|kopdasoregodarkörpo|kopdasoregodarkörpo|kopdasoregodarkorpo|kopdasoregodarkorpo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_REST => [
            "\"Dasoregodarkör\" signifie un repos, ou \"Se coucher\" comme verbe.",
            "Quand \"Dasoregodarkör\" est un verbe, il peut également apparaître comme \"Erkoasoregodarkör\" ou \"Kopdasoregodarkör\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_REST => ["repos"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_REST => [
            "\"Repos\" peut se dire \"Dasoregodarkör\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_VERB_REST => ["coucher"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_VERB_REST => [
            "\"Se coucher\" peut se dire \"Dasoregodarkör\" en parole gobline, ou avec \"Erkoasoregodarkör\" au passé ou \"Kopdasoregodarkör\" au futur."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_BODY => ["dasoregotrë|dasoregotre|erkoasoregotrë|erkoasoregotre|kopdasoregotrë|kopdasoregotre|dasoregotrërpo|dasoregotrëbo|dasoregotrerpo|dasoregotrepo|erkoasoregotrërpo|erkoasoregotrëbo|erkoasoregotrerpo|erkoasoregotrepo|kopdasoregotrërpo|kopdasoregotrëbo|kopdasoregotrerpo|kopdasoregotrepo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_BODY => [
            "\"Dasoregotrë\" signifie un corps, ou peux aussi signifier \"Donner un corps à\" comme verbe.",
            "Quand \"Dasoregotrë\" est un verbe, il peut également apparaître comme \"Erkoasoregotrë\" ou \"Kopdasoregotrë\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_BODY => ["corps"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_BODY => [
            "\"Corps\" peut se dire \"Dasoregotrë\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_CORPSE => ["dasosegotrëregobu|dasosegotreregobu|erkoasosegotrëregobu|erkoasosegotreregobu|kopdasosegotrëregobu|kopdasosegotreregobu|dasosegotrëregoburpo|dasosegotrëregobupo|dasosegotreregoburpo|dasosegotreregobupo|erkoasosegotrëregoburpo|erkoasosegotrëregobupo|erkoasosegotreregoburpo|erkoasosegotreregobupo|kopdasosegotrëregoburpo|kopdasosegotrëregobupo|kopdasosegotreregoburpo|kopdasosegotreregobupo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_CORPSE => [
            "\"Dasosegotrëregobu\" signifie un cadavre, ou peux aussi être un expression pour \"Tuer\" quand utilisé comme verbe.",
            "Quand \"Dasosegotrëregobu\" est un verbe, il peut également apparaître comme \"Erkoasosegotrëregobu\" ou \"Kopdasosegotrëregobu\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_CORPSE => ["cadavre"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_CORPSE => [
            "\"Cadavre\" peut se dire \"Dasosegotrëregobu\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_FEATHER => ["degadarköpago|degadarkopago|erkoegadarköpago|erkoegadarkopago|kopdegadarköpago|kopdegadarkopago|degadarköpagorpo|degadarköpagopo|degadarkopagorpo|degadarkopagopo|erkoegadarköpagorpo|erkoegadarköpagopo|erkoegadarkopagorpo|erkoegadarkopagopo|kopdegadarköpagorpo|kopdegadarköpagopo|kopdegadarkopagorpo|kopdegadarkopagopo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_FEATHER => [
            "\"Degadarköpago\" signifie un plume, ou peux aussi signifier \"Uttliser un plume ou chatouiller\" comme verbe.",
            "Quand \"Degadarköpago\" est un verbe, il peut également apparaître comme \"Erkoegadarköpago\" ou \"Kopdegadarköpago\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_FEATHER => ["plume"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_FEATHER => [
            "\"Plume\" peut se dire \"Degadarköpago\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_VERB_FEATHER => ["chatouiller"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_VERB_FEATHER => [
            "\"Uttliser un plume\" ou \"Chatouiller\" peut se dire \"Degadarköpago\" en parole gobline, ou avec \"Erkoegadarköpago\" au passé ou \"Kopdegadarköpago\" au futur."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_METAL => ["degaerköpo|degaerkopo|erkoegaerköpo|erkoegaerkopo|kopdegaerköpo|kopdegaerkopo|degaerköporpo|degaerköpopo|degaerkoporpo|degaerkopopo|erkoegaerköporpo|erkoegaerköpopo|erkoegaerkoporpo|erkoegaerkopopo|kopdegaerköporpo|kopdegaerköpopo|kopdegaerkoporpo|kopdegaerkopopo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_METAL => [
            "\"Degaerköpo\" signifie un métal, ou peux aussi signifier \"Ajouter du metal à\" comme verbe.",
            "Quand \"Degaerköpo\" est un verbe, il peut également apparaître comme \"Erkoegaerköpo\" ou \"Kopdegaerköpo\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_METAL => ["métal|metal"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_METAL => [
            "\"Métal\" peut se dire \"Degaerköpo\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_LEAF => ["degaktöpago|degaktopago|erkoegaktöpago|erkoegaktopago|kopdegaktöpago|kopdegaktopago|degaktöpagorpo|degaktöpagopo|degaktopagorpo|degaktopagopo|erkoegaktöpagorpo|erkoegaktöpagopo|erkoegaktopagorpo|erkoegaktopagopo|kopdegaktöpagorpo|kopdegaktöpagopo|kopdegaktopagorpo|kopdegaktopagopo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_LEAF => [
            "\"Degaktöpago\" signifie un feuille, ou peux aussi signifier \"Ajouter des feuilles à\" comme verbe.",
            "Quand \"Degaktöpago\" est un verbe, il peut également apparaître comme \"Erkoegaktöpago\" ou \"Kopdegaktöpago\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_LEAF => ["feuille"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_LEAF => [
            "\"Feuille\" peut se dire \"Degaktöpago\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_BIT_PART_THAT_SMALL => ["dëka|deka|erkoëka|erkoeka|kopdëka|kopdeka|dëkarpo|dëkapo|dekarpo|dekapo|erkoëkarpo|erkoëkapo|erkoekarpo|erkoekapo|kopdëkarpo|kopdëkapo|kopdekarpo|kopdekapo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_BIT_PART_THAT_SMALL => [
            "\"Dëka\" signifie un morceau ou un petit, ou \"Rendre petit\" comme verbe.",
            "Quand \"Dëka\" est un verbe, il peut également apparaître comme \"Erkoëka\" ou \"Kopdëka\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_BIT_PART_THAT_SMALL => ["morceau|petit"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_BIT_PART_THAT_SMALL => [
            "\"Morceau\" et \"petit\" peuvent se dire \"Dëka\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_VERB_BIT_PART_THAT_SMALL => ["rendre|etre|rapetir", "rapetir|petit"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_VERB_BIT_PART_THAT_SMALL => [
            "\"Rendre petit\" peut se dire \"Dëka\" en parole gobline, ou avec \"Erkoëka\" au passé ou \"Kopdëka\" au futur."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_DECLARATION => ["dëkabogu|dekabogu|erkoëkabogu|erkoekabogu|kopdëkabogu|kopdekabogu|dëkabogurpo|dëkabogupo|dekabogurpo|dekabogupo|erkoëkabogurpo|erkoëkabogupo|erkoekabogurpo|erkoekabogupo|kopdëkabogurpo|kopdëkabogupo|kopdekabogurpo|kopdekabogupo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_DECLARATION => [
            "\"Dëkabogu\" signifie un déclaration, ou peux aussi signifier \"Dire\" comme verbe.",
            "Quand \"Dëkabogu\" est un verbe, il peut également apparaître comme \"Erkoëkabogu\" ou \"Kopdëkabogu\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_DECLARATION => ["déclaration|declaration"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_DECLARATION => [
            "\"Déclaration\" peut se dire \"Dëkabogu\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_VERB_DECLARATION => ["dire"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_VERB_DECLARATION => [
            "\"Dire\" peut se dire \"Dëkabogu\" en parole gobline, ou avec \"Erkoëkabogu\" au passé ou \"Kopdëkabogu\" au futur."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_POWDER => ["dekaëka|dekaeka|erkoekaëka|erkoekaeka|kopdekaëka|kopdekaeka|dekaëkarpo|dekaëkapo|dekaekarpo|dekaekapo|erkoekaëkarpo|erkoekaëkapo|erkoekaekarpo|erkoekaekapo|kopdekaëkarpo|kopdekaëkapo|kopdekaekarpo|kopdekaekapo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_POWDER => [
            "\"Dekaëka\" signifie un poudre, ou peux aussi signifier \"Réduire en poudre\" comme verbe.",
            "Quand \"Dekaëka\" est un verbe, il peut également apparaître comme \"Erkoekaëka\" ou \"Kopdekaëka\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_POWDER => ["poudre"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_POWDER => [
            "\"Poudre\" peut se dire \"Dekaëka\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_FRAGILE => ["dëkagobugubu|dekagobugubu|erkoëkagobugubu|erkoekagobugubu|kopdëkagobugubu|kopdekagobugubu|dëkagobuguburpo|dëkagobugubupo|dekagobuguburpo|dekagobugubupo|erkoëkagobuguburpo|erkoëkagobugubupo|erkoekagobuguburpo|erkoekagobugubupo|kopdëkagobuguburpo|kopdëkagobugubupo|kopdekagobuguburpo|kopdekagobugubupo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_FRAGILE => [
            "\"Dëkagobugubu\" signifie un fragile, ou peux aussi signifier \"Fragiliser\" comme verbe.",
            "Quand \"Dëkagobugubu\" est un verbe, il peut également apparaître comme \"Erkoëkagobugubu\" ou \"Kopdëkagobugubu\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_FRAGILE => ["fragile"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_FRAGILE => [
            "\"Fragile\" peut se dire \"Dëkagobugubu\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_VERB_FRAGILE => ["fragiliser"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_VERB_FRAGILE => [
            "\"Fragiliser\" peut se dire \"Dëkagobugubu\" en parole gobline, ou avec \"Erkoëkagobugubu\" au passé ou \"Kopdëkagobugubu\" au futur."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_BROKEN_FEW => ["dëkaobu|dekaobu|erkoëkaobu|erkoekaobu|kopdëkaobu|kopdekaobu|dëkaoburpo|dëkaobupo|dekaoburpo|dekaobupo|erkoëkaoburpo|erkoëkaobupo|erkoekaoburpo|erkoekaobupo|kopdëkaoburpo|kopdëkaobupo|kopdekaoburpo|kopdekaobupo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_BROKEN_FEW => [
            "\"Dëkaobu\" signifie un briser, ou \"Peu\", ou peux aussi signifier \"Casser\" ou \"Réduire\" comme verbe.",
            "Quand \"Dëkaobu\" est un verbe, il peut également apparaître comme \"Erkoëkaobu\" ou \"Kopdëkaobu\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_BROKEN_FEW => ["briser|peu"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_BROKEN_FEW => [
            "\"Briser\" et \"Peu\" peuvent se dire \"Dëkaobu\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_VERB_BROKEN_FEW => ["casser|réduire|casser|reduire"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_VERB_BROKEN_FEW => [
            "\"Casser\" ou \"Réduire\" peuvent se dire \"Dëkaobu\" en parole gobline, ou avec \"Erkoëkaobu\" au passé ou \"Kopdëkaobu\" au futur."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_BRICKS => ["dëkaok|dekaok|erkoëkaok|erkoekaok|kopdëkaok|kopdekaok|dëkaokrpo|dëkaokpo|dekaokrpo|dekaokpo|erkoëkaokrpo|erkoëkaokpo|erkoekaokrpo|erkoekaokpo|kopdëkaokrpo|kopdëkaokpo|kopdekaokrpo|kopdekaokpo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_BRICKS => [
            "\"Dëkaok\" signifie un briques, ou peux aussi signifier \"Ajouter des briques à\" comme verbe.",
            "Quand \"Dëkaok\" est un verbe, il peut également apparaître comme \"Erkoëkaok\" ou \"Kopdëkaok\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_BRICKS => ["briques"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_BRICKS => [
            "\"Briques\" peut se dire \"Dëkaok\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_WHAT_SOMETHING_THING => ["dëkaos|dekaos|erkoëkaos|erkoekaos|kopdëkaos|kopdekaos|dëkaosrpo|dëkaospo|dekaosrpo|dekaospo|erkoëkaosrpo|erkoëkaospo|erkoekaosrpo|erkoekaospo|kopdëkaosrpo|kopdëkaospo|kopdekaosrpo|kopdekaospo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_WHAT_SOMETHING_THING => [
            "\"Dëkaos\" signifie \"Quelquechose\", ou \"Faire quelque chose\" comme verbe, mais il peut aussi équivaloir à \"Quoi\" ou \"Faire quoi\" dans un question.",
            "Quand \"Dëkaos\" est un verbe, il peut également apparaître comme \"Erkoëkaos\" ou \"Kopdëkaos\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_WHAT_SOMETHING_THING => ["quoi|quelquechose"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_WHAT_SOMETHING_THING => [
            "\"Quoi ?\" et \"Quelquechose\" peuvent se dire \"Dëkaos\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_HOME => ["dök|dok|erkodök|erkodok|kopdök|kopdok|dökrpo|dökpo|dokrpo|dokpo|erkodökrpo|erkodökpo|erkodokrpo|erkodokpo|kopdökrpo|kopdökpo|kopdokrpo|kopdokpo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_HOME => [
            "\"Dök\" signifie un village ou maison, ou \"S'installer\" comme verbe.",
            "Quand \"Dök\" est un verbe, il peut également apparaître comme \"Erkodök\" ou \"Kopdök\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_HOME => ["maison"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_HOME => [
            "\"Maison\" ou \"Village\" peuvent se dire \"Dök\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_VERB_HOME => ["installer"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_VERB_HOME => [
            "\"S'installer\" peut se dire \"Dök\" en parole gobline, ou avec \"Erkodök\" au passé ou \"Kopdök\" au futur."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_COWARD => ["erdë|erde|erkerdë|erkerde|koberdë|koberde|erdërpo|erdëbo|erderpo|erdepo|erkerdërpo|erkerdëbo|erkerderpo|erkerdepo|koberdërpo|koberdëbo|koberderpo|koberdepo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_COWARD => [
            "\"Erdë\" signifie un peureu, ou peux aussi signifier \"Faire attention\" comme verbe.",
            "Quand \"Erdë\" est un verbe, il peut également apparaître comme \"Erkerdë\" ou \"Koberdë\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_COWARD => ["peureu"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_COWARD => [
            "\"Peureu\" peut se dire \"Erdë\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_VERB_COWARD => ["attention"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_VERB_COWARD => [
            "\"Faire attention\" peut se dire \"Erdë\" en parole gobline, ou avec \"Erkerdë\" au passé ou \"Koberdë\" au futur."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_PAIN => ["erdëkaobu|erdekaobu|erkerdëkaobu|erkerdekaobu|koberdëkaobu|koberdekaobu|erdëkaoburpo|erdëkaobupo|erdekaoburpo|erdekaobupo|erkerdëkaoburpo|erkerdëkaobupo|erkerdekaoburpo|erkerdekaobupo|koberdëkaoburpo|koberdëkaobupo|koberdekaoburpo|koberdekaobupo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_PAIN => [
            "\"Erdëkaobu\" signifie un douleur, ou peux aussi signifier \"Heurter\" comme verbe.",
            "Quand \"Erdëkaobu\" est un verbe, il peut également apparaître comme \"Erkerdëkaobu\" ou \"Koberdëkaobu\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_PAIN => ["douleur"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_PAIN => [
            "\"Douleur\" peut se dire \"Erdëkaobu\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_VERB_PAIN => ["souffrir"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_VERB_PAIN => [
            "\"Heurter\" peut se dire \"Erdëkaobu\" en parole gobline, ou avec \"Erkerdëkaobu\" au passé ou \"Koberdëkaobu\" au futur."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_VENOM => ["erdëkaobugeror|erdekaobugeror|erkerdëkaobugeror|erkerdekaobugeror|koberdëkaobugeror|koberdekaobugeror|erdëkaobugerorpo|erdëkaobugerorpo|erdekaobugerorpo|erdekaobugerorpo|erkerdëkaobugerorpo|erkerdëkaobugerorpo|erkerdekaobugerorpo|erkerdekaobugerorpo|koberdëkaobugerorpo|koberdëkaobugerorpo|koberdekaobugerorpo|koberdekaobugerorpo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_VENOM => [
            "\"Erdëkaobugeror\" signifie un venin, ou peux aussi signifier \"Envenimer\" comme verbe.",
            "Quand \"Erdëkaobugeror\" est un verbe, il peut également apparaître comme \"Erkerdëkaobugeror\" ou \"Koberdëkaobugeror\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_VENOM => ["venin"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_VENOM => [
            "\"Venin\" peut se dire \"Erdëkaobugeror\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_VERB_VENOM => ["envenimer"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_VERB_VENOM => [
            "\"Envenimer\" peut se dire \"Erdëkaobugeror\" en parole gobline, ou avec \"Erkerdëkaobugeror\" au passé ou \"Koberdëkaobugeror\" au futur."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_POISON => ["erdëkaobugesoredar|erdekaobugesoredar|erkerdëkaobugesoredar|erkerdekaobugesoredar|koberdëkaobugesoredar|koberdekaobugesoredar|erdëkaobugesoredarpo|erdëkaobugesoredarpo|erdekaobugesoredarpo|erdekaobugesoredarpo|erkerdëkaobugesoredarpo|erkerdëkaobugesoredarpo|erkerdekaobugesoredarpo|erkerdekaobugesoredarpo|koberdëkaobugesoredarpo|koberdëkaobugesoredarpo|koberdekaobugesoredarpo|koberdekaobugesoredarpo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_POISON => [
            "\"Erdëkaobugesoredar\" signifie un poison, ou peux aussi signifier \"Empoisonner\" comme verbe.",
            "Quand \"Erdëkaobugesoredar\" est un verbe, il peut également apparaître comme \"Erkerdëkaobugesoredar\" ou \"Koberdëkaobugesoredar\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_POISON => ["poison"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_POISON => [
            "\"Poison\" peut se dire \"Erdëkaobugesoredar\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_VERB_POISON => ["empoisonner"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_VERB_POISON => [
            "\"Empoisonner\" peut se dire \"Erdëkaobugesoredar\" en parole gobline, ou avec \"Erkerdëkaobugesoredar\" au passé ou \"Koberdëkaobugesoredar\" au futur."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_SICK => ["erdëkaopududuk|erdekaopududuk|erkerdëkaopududuk|erkerdekaopududuk|koberdëkaopududuk|koberdekaopududuk|erdëkaopududukrpo|erdëkaopududukpo|erdekaopududukrpo|erdekaopududukpo|erkerdëkaopududukrpo|erkerdëkaopududukpo|erkerdekaopududukrpo|erkerdekaopududukpo|koberdëkaopududukrpo|koberdëkaopududukpo|koberdekaopududukrpo|koberdekaopududukpo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_SICK => [
            "\"Erdëkaopududuk\" signifie un malade, ou peux aussi signifier \"Être malade\" comme verbe.",
            "Quand \"Erdëkaopududuk\" est un verbe, il peut également apparaître comme \"Erkerdëkaopududuk\" ou \"Koberdëkaopududuk\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_SICK => ["malade"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_SICK => [
            "\"Malade\" peut se dire \"Erdëkaopududuk\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_VERB_SICK => ["être|etre", "malade"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_VERB_SICK => [
            "\"Être malade\" peut se dire \"Erdëkaopududuk\" en parole gobline, ou avec \"Erkerdëkaopududuk\" au passé ou \"Koberdëkaopududuk\" au futur."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_PAST_OLD => ["erkö|erko|erkerkö|erkerko|koberkö|koberko|erkörpo|erköbo|erkorpo|erkopo|erkerkörpo|erkerköbo|erkerkorpo|erkerkopo|koberkörpo|koberköbo|koberkorpo|koberkopo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_PAST_OLD => [
            "\"Erkö\" signifie un passé, ou peux aussi signifier \"Etait\" comme verbe, étant le passé d'\"Être\".",
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_PAST_OLD => ["passé|passe|vieux|vieu"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_PAST_OLD => [
            "\"Passé\" ou \"Vieux\" peut se dire \"Erkö\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_VERB_PAST_OLD => ["etait"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_VERB_PAST_OLD => [
            "\"Etait\" peut se dire \"Erkö\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_CLOSE_PAST => ["erkökedogubu|erkokedogubu|erkerkökedogubu|erkerkokedogubu|koberkökedogubu|koberkokedogubu|erkökedoguburpo|erkökedogubupo|erkokedoguburpo|erkokedogubupo|erkerkökedoguburpo|erkerkökedogubupo|erkerkokedoguburpo|erkerkokedogubupo|koberkökedoguburpo|koberkökedogubupo|koberkokedoguburpo|koberkokedogubupo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_CLOSE_PAST => [
            "\"Erkökedogubu\" signifie un passé proche, \"la dernière fois\" ou peux aussi signifier \"Avoir été récemment\" comme verbe.",
            "Quand \"Erkökedogubu\" est un verbe, il peut également apparaître comme \"Erkerkökedogubu\" ou \"Koberkökedogubu\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_CLOSE_PAST => ["passé|proche|passe|proche"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_CLOSE_PAST => [
            "\"Passé proche\" peut se dire \"Erkökedogubu\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_EGG_ROUND => ["erköopur|erkoopur|erkerköopur|erkerkoopur|koberköopur|koberkoopur|erköopurpo|erköopurpo|erkoopurpo|erkoopurpo|erkerköopurpo|erkerköopurpo|erkerkoopurpo|erkerkoopurpo|koberköopurpo|koberköopurpo|koberkoopurpo|koberkoopurpo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_EGG_ROUND => [
            "\"Erköopur\" signifie un oeuf, ou un rond, ou peux aussi signifier \"Arrondir\" comme verbe.",
            "Quand \"Erköopur\" est un verbe, il peut également apparaître comme \"Erkerköopur\" ou \"Koberköopur\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_EGG_ROUND => ["oeuf|rond"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_EGG_ROUND => [
            "\"Oeuf\" et \"Rond\" peuvent se dire \"Erköopur\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_VERB_EGG_ROUND => ["arrondir"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_VERB_EGG_ROUND => [
            "\"Rendre rond\" peut se dire \"Erköopur\" en parole gobline, ou avec \"Erkerköopur\" au passé ou \"Koberköopur\" au futur."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_MOUNTAIN => ["erköpa|erkopa|erkerköpa|erkerkopa|koberköpa|koberkopa|erköparpo|erköpapo|erkoparpo|erkopapo|erkerköparpo|erkerköpapo|erkerkoparpo|erkerkopapo|koberköparpo|koberköpapo|koberkoparpo|koberkopapo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_MOUNTAIN => [
            "\"Erköpa\" signifie un montagne, ou peux aussi signifier \"Être dans un montagne\" comme verbe.",
            "Quand \"Erköpa\" est un verbe, il peut également apparaître comme \"Erkerköpa\" ou \"Koberköpa\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_MOUNTAIN => ["montagne"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_MOUNTAIN => [
            "\"Montagne\" peut se dire \"Erköpa\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_PROBLEM => ["erköpagedogur|erkopagedogur|erkerköpagedogur|erkerkopagedogur|koberköpagedogur|koberkopagedogur|erköpagedogurpo|erköpagedogurpo|erkopagedogurpo|erkopagedogurpo|erkerköpagedogurpo|erkerköpagedogurpo|erkerkopagedogurpo|erkerkopagedogurpo|koberköpagedogurpo|koberköpagedogurpo|koberkopagedogurpo|koberkopagedogurpo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_PROBLEM => [
            "\"Erköpagedogur\" signifie un problème, ou peux aussi signifier \"Causer un problème à\" comme verbe.",
            "Quand \"Erköpagedogur\" est un verbe, il peut également apparaître comme \"Erkerköpagedogur\" ou \"Koberköpagedogur\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_PROBLEM => ["problème|probleme"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_PROBLEM => [
            "\"Problème\" peut se dire \"Erköpagedogur\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_END_ROCK_STONE => ["erköpo|erkopo|erkerköpo|erkerkopo|koberköpo|koberkopo|erköporpo|erköpopo|erkoporpo|erkopopo|erkerköporpo|erkerköpopo|erkerkoporpo|erkerkopopo|koberköporpo|koberköpopo|koberkoporpo|koberkopopo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_END_ROCK_STONE => [
            "\"Erköpo\" signifie un fin ou un pierre, et peux aussi signifier \"Finnir\", \"Se tenir debout\", ou même \"Caillasser\" comme verbe.",
            "Quand \"Erköpo\" est un verbe, il peut également apparaître comme \"Erkerköpo\" ou \"Koberköpo\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_END_ROCK_STONE => ["fin|pierre"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_END_ROCK_STONE => [
            "\"Fin\" et \"Pierre\" peuvent se dire \"Erköpo\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_VERB_END_ROCK_STONE => ["finnir|debout|caillasser"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_VERB_END_ROCK_STONE => [
            "\"Finnir\", \"Se tenir debout\" et même \"Caillasser\" peuvent se dire \"Erköpo\" en parole gobline, ou avec \"Erkerköpo\" au passé ou \"Koberköpo\" au futur."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_MALACHITE => ["erköpoburebago|erkopoburebago|erkerköpoburebago|erkerkopoburebago|koberköpoburebago|koberkopoburebago|erköpoburebagorpo|erköpoburebagopo|erkopoburebagorpo|erkopoburebagopo|erkerköpoburebagorpo|erkerköpoburebagopo|erkerkopoburebagorpo|erkerkopoburebagopo|koberköpoburebagorpo|koberköpoburebagopo|koberkopoburebagorpo|koberkopoburebagopo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_MALACHITE => [
            "\"Erköpoburebago\" signifie un malachite, ou peux aussi signifier \"Ajouter de la malachite à\" comme verbe.",
            "Quand \"Erköpoburebago\" est un verbe, il peut également apparaître comme \"Erkerköpoburebago\" ou \"Koberköpoburebago\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_MALACHITE => ["malachite"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_MALACHITE => [
            "\"Malachite\" peut se dire \"Erköpoburebago\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_VEGETABLE => ["erköpogesodar|erkopogesodar|erkerköpogesodar|erkerkopogesodar|koberköpogesodar|koberkopogesodar|erköpogesodarpo|erköpogesodarpo|erkopogesodarpo|erkopogesodarpo|erkerköpogesodarpo|erkerköpogesodarpo|erkerkopogesodarpo|erkerkopogesodarpo|koberköpogesodarpo|koberköpogesodarpo|koberkopogesodarpo|koberkopogesodarpo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_VEGETABLE => [
            "\"Erköpogesodar\" signifie un légume, ou peux aussi signifier \"Planter des légumes\" comme verbe.",
            "Quand \"Erköpogesodar\" est un verbe, il peut également apparaître comme \"Erkerköpogesodar\" ou \"Koberköpogesodar\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_VEGETABLE => ["légume|legume"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_VEGETABLE => [
            "\"Légume\" peut se dire \"Erköpogesodar\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_IRON => ["erköporegedo|erkoporegedo|erkerköporegedo|erkerkoporegedo|koberköporegedo|koberkoporegedo|erköporegedorpo|erköporegedopo|erkoporegedorpo|erkoporegedopo|erkerköporegedorpo|erkerköporegedopo|erkerkoporegedorpo|erkerkoporegedopo|koberköporegedorpo|koberköporegedopo|koberkoporegedorpo|koberkoporegedopo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_IRON => [
            "\"Erköporegedo\" signifie un fer, ou peux aussi signifier \"Ajouter du fer à\" comme verbe.",
            "Quand \"Erköporegedo\" est un verbe, il peut également apparaître comme \"Erkerköporegedo\" ou \"Koberköporegedo\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_IRON => ["fer"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_IRON => [
            "\"Fer\" peut se dire \"Erköporegedo\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_TOOTH => ["erköposugedar|erkoposugedar|erkerköposugedar|erkerkoposugedar|koberköposugedar|koberkoposugedar|erköposugedarpo|erköposugedarpo|erkoposugedarpo|erkoposugedarpo|erkerköposugedarpo|erkerköposugedarpo|erkerkoposugedarpo|erkerkoposugedarpo|koberköposugedarpo|koberköposugedarpo|koberkoposugedarpo|koberkoposugedarpo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_TOOTH => [
            "\"Erköposugedar\" signifie un dent, ou peux aussi signifier \"Mordiller\" comme verbe.",
            "Quand \"Erköposugedar\" est un verbe, il peut également apparaître comme \"Erkerköposugedar\" ou \"Koberköposugedar\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_TOOTH => ["dent"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_TOOTH => [
            "\"Dent\" peut se dire \"Erköposugedar\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_VERB_TOOTH => ["mordiller"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_VERB_TOOTH => [
            "\"Mordiller\" peut se dire \"Erköposugedar\" en parole gobline, ou avec \"Erkerköposugedar\" au passé ou \"Koberköposugedar\" au futur."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_WIND => ["erkör|erkor|erkerkör|erkerkor|koberkör|koberkor|erkörpo|erkörpo|erkorpo|erkorpo|erkerkörpo|erkerkörpo|erkerkorpo|erkerkorpo|koberkörpo|koberkörpo|koberkorpo|koberkorpo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_WIND => [
            "\"Erkör\" signifie un vent, ou peux aussi signifier \"Souffler\" comme verbe.",
            "Quand \"Erkör\" est un verbe, il peut également apparaître comme \"Erkerkör\" ou \"Koberkör\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_WIND => ["vent"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_WIND => [
            "\"Vent\" peut se dire \"Erkör\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_VERB_WIND => ["souffler"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_VERB_WIND => [
            "\"Souffler\" peut se dire \"Erkör\" en parole gobline, ou avec \"Erkerkör\" au passé ou \"Koberkör\" au futur."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_TONGUE => ["erkötaresogedar|erkotaresogedar|erkerkötaresogedar|erkerkotaresogedar|koberkötaresogedar|koberkotaresogedar|erkötaresogedarpo|erkötaresogedarpo|erkotaresogedarpo|erkotaresogedarpo|erkerkötaresogedarpo|erkerkötaresogedarpo|erkerkotaresogedarpo|erkerkotaresogedarpo|koberkötaresogedarpo|koberkötaresogedarpo|koberkotaresogedarpo|koberkotaresogedarpo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_TONGUE => [
            "\"Erkötaresogedar\" signifie un langue, ou peux aussi signifier \"Toucher avec un langue\" comme verbe.",
            "Quand \"Erkötaresogedar\" est un verbe, il peut également apparaître comme \"Erkerkötaresogedar\" ou \"Koberkötaresogedar\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_TONGUE => ["langue"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_TONGUE => [
            "\"Langue\" peut se dire \"Erkötaresogedar\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_HAPPY => ["kadä|kada|erkokadä|erkokada|kopkadä|kopkada|kadärpo|kadäbo|kadarpo|kadapo|erkokadärpo|erkokadäbo|erkokadarpo|erkokadapo|kopkadärpo|kopkadäbo|kopkadarpo|kopkadapo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_HAPPY => [
            "\"Kadä\" signifie un joie, ou \"Apprécier\" comme verbe.",
            "Quand \"Kadä\" est un verbe, il peut également apparaître comme \"Erkokadä\" ou \"Kopkadä\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_HAPPY => ["joie"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_HAPPY => [
            "\"Joie\" peut se dire \"Kadä\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_VERB_HAPPY => ["apprécier|apprecier"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_VERB_HAPPY => [
            "\"Apprécier\" peut se dire \"Kadä\" en parole gobline, ou avec \"Erkokadä\" au passé ou \"Kopkadä\" au futur."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_LOVE_ANY => ["kadätodu|kadatodu|erkokadätodu|erkokadatodu|kopkadätodu|kopkadatodu|kadätodurpo|kadätodupo|kadatodurpo|kadatodupo|erkokadätodurpo|erkokadätodupo|erkokadatodurpo|erkokadatodupo|kopkadätodurpo|kopkadätodupo|kopkadatodurpo|kopkadatodupo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_LOVE_ANY => [
            "\"Kadätodu\" signifie un amour, ou peux aussi signifier \"Aimer\" de n'importe quelle façon comme verbe.",
            "Quand \"Kadätodu\" est un verbe, il peut également apparaître comme \"Erkokadätodu\" ou \"Kopkadätodu\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_LOVE_ANY => ["amour|général|amour|general"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_LOVE_ANY => [
            "\"Amour\" en général peut se dire \"Kadätodu\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_VERB_LOVE_ANY => ["aimer"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_VERB_LOVE_ANY => [
            "\"Aimer\" en général peut se dire \"Kadätodu\" en parole gobline, ou avec \"Erkokadätodu\" au passé ou \"Kopkadätodu\" au futur."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_LOVE_FRIENDLY => ["kadätogubu|kadatogubu|erkokadätogubu|erkokadatogubu|kopkadätogubu|kopkadatogubu|kadätoguburpo|kadätogubupo|kadatoguburpo|kadatogubupo|erkokadätoguburpo|erkokadätogubupo|erkokadatoguburpo|erkokadatogubupo|kopkadätoguburpo|kopkadätogubupo|kopkadatoguburpo|kopkadatogubupo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_LOVE_FRIENDLY => [
            "\"Kadätogubu\" signifie un amour amical, ou peux aussi signifier \"Aimer amicalement\" comme verbe.",
            "Quand \"Kadätogubu\" est un verbe, il peut également apparaître comme \"Erkokadätogubu\" ou \"Kopkadätogubu\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_LOVE_FRIENDLY => ["amour", "amical"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_LOVE_FRIENDLY => [
            "\"Amour amical\" peut se dire \"Kadätogubu\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_VERB_LOVE_FRIENDLY => ["aimer", "amicalement"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_VERB_LOVE_FRIENDLY => [
            "\"Aimer amicalement\" peut se dire \"Kadätogubu\" en parole gobline, ou avec \"Erkokadätogubu\" au passé ou \"Kopkadätogubu\" au futur."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_LOVE_ROMANTIC => ["kadätosud|kadatosud|erkokadätosud|erkokadatosud|kopkadätosud|kopkadatosud|kadätosudrpo|kadätosudpo|kadatosudrpo|kadatosudpo|erkokadätosudrpo|erkokadätosudpo|erkokadatosudrpo|erkokadatosudpo|kopkadätosudrpo|kopkadätosudpo|kopkadatosudrpo|kopkadatosudpo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_LOVE_ROMANTIC => [
            "\"Kadätosud\" signifie un amour romantique, ou peux aussi signifier \"Aimer romantiquement\" comme verbe.",
            "Quand \"Kadätosud\" est un verbe, il peut également apparaître comme \"Erkokadätosud\" ou \"Kopkadätosud\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_LOVE_ROMANTIC => ["amour", "romantique"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_LOVE_ROMANTIC => [
            "\"Amour romantique\" peut se dire \"Kadätosud\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_VERB_LOVE_ROMANTIC => ["aimer", "romantiquement"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_VERB_LOVE_ROMANTIC => [
            "\"Aimer romantiquement\" peut se dire \"Kadätosud\" en parole gobline, ou avec \"Erkokadätosud\" au passé ou \"Kopkadätosud\" au futur."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_PLAINS => ["kebogedoktö|kebogedokto|erkokebogedoktö|erkokebogedokto|kopkebogedoktö|kopkebogedokto|kebogedoktörpo|kebogedoktöbo|kebogedoktorpo|kebogedoktopo|erkokebogedoktörpo|erkokebogedoktöbo|erkokebogedoktorpo|erkokebogedoktopo|kopkebogedoktörpo|kopkebogedoktöbo|kopkebogedoktorpo|kopkebogedoktopo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_PLAINS => [
            "\"Kebogedoktö\" signifie un plaine, ou peux aussi signifier \"Mettre ou être dans un plaine\" comme verbe.",
            "Quand \"Kebogedoktö\" est un verbe, il peut également apparaître comme \"Erkokebogedoktö\" ou \"Kopkebogedoktö\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_PLAINS => ["plaine"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_PLAINS => [
            "\"Plaine\" peut se dire \"Kebogedoktö\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_EARTH_DIRT => ["keboktö|kebokto|erkokeboktö|erkokebokto|kopkeboktö|kopkebokto|keboktörpo|keboktöbo|keboktorpo|keboktopo|erkokeboktörpo|erkokeboktöbo|erkokeboktorpo|erkokeboktopo|kopkeboktörpo|kopkeboktöbo|kopkeboktorpo|kopkeboktopo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_EARTH_DIRT => [
            "\"Keboktö\" signifie un terre ou un sol, ou peux aussi signifier \"Enterrer\" ou \"Ajouter un terre à\" comme verbe.",
            "Quand \"Keboktö\" est un verbe, il peut également apparaître comme \"Erkokeboktö\" ou \"Kopkeboktö\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_EARTH_DIRT => ["terre|sol"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_EARTH_DIRT => [
            "\"Terre\" et \"Sol\" peuvent se dire \"Keboktö\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_VERB_EARTH_DIRT => ["enterrer"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_VERB_EARTH_DIRT => [
            "\"Enterrer\" peut se dire \"Keboktö\" en parole gobline, ou avec \"Erkokeboktö\" au passé ou \"Kopkeboktö\" au futur."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_MUD => ["keboktösdop|keboktosdop|erkokeboktösdop|erkokeboktosdop|kopkeboktösdop|kopkeboktosdop|keboktösdoprpo|keboktösdoppo|keboktosdoprpo|keboktosdoppo|erkokeboktösdoprpo|erkokeboktösdoppo|erkokeboktosdoprpo|erkokeboktosdoppo|kopkeboktösdoprpo|kopkeboktösdoppo|kopkeboktosdoprpo|kopkeboktosdoppo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_MUD => [
            "\"Keboktösdop\" signifie un boue, ou peux aussi signifier \"Ajouter de la boue à\" comme verbe.",
            "Quand \"Keboktösdop\" est un verbe, il peut également apparaître comme \"Erkokeboktösdop\" ou \"Kopkeboktösdop\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_MUD => ["boue"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_MUD => [
            "\"Boue\" peut se dire \"Keboktösdop\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_ABRICOT => ["kedoarkrör|kedoarkror|erkokedoarkrör|erkokedoarkror|kopkedoarkrör|kopkedoarkror|kedoarkrörpo|kedoarkrörpo|kedoarkrorpo|kedoarkrorpo|erkokedoarkrörpo|erkokedoarkrörpo|erkokedoarkrorpo|erkokedoarkrorpo|kopkedoarkrörpo|kopkedoarkrörpo|kopkedoarkrorpo|kopkedoarkrorpo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_ABRICOT => [
            "\"Kedoarkrör\" signifie un abricot, ou peux aussi signifier \"Manger des abricots\" comme verbe.",
            "Quand \"Kedoarkrör\" est un verbe, il peut également apparaître comme \"Erkokedoarkrör\" ou \"Kopkedoarkrör\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_ABRICOT => ["abricot"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_ABRICOT => [
            "\"Abricot\" peut se dire \"Kedoarkrör\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_SWAMP => ["kedogeboktösdop|kedogeboktosdop|erkokedogeboktösdop|erkokedogeboktosdop|kopkedogeboktösdop|kopkedogeboktosdop|kedogeboktösdoprpo|kedogeboktösdoppo|kedogeboktosdoprpo|kedogeboktosdoppo|erkokedogeboktösdoprpo|erkokedogeboktösdoppo|erkokedogeboktosdoprpo|erkokedogeboktosdoppo|kopkedogeboktösdoprpo|kopkedogeboktösdoppo|kopkedogeboktosdoprpo|kopkedogeboktosdoppo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_SWAMP => [
            "\"Kedogeboktösdop\" signifie un marécage, ou peux aussi signifier \"Mettre ou être dans un marécage\" comme verbe.",
            "Quand \"Kedogeboktösdop\" est un verbe, il peut également apparaître comme \"Erkokedogeboktösdop\" ou \"Kopkedogeboktösdop\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_SWAMP => ["marécage|marecage"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_SWAMP => [
            "\"Marécage\" peut se dire \"Kedogeboktösdop\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_WARM => ["kedogubukröt|kedogubukrot|erkokedogubukröt|erkokedogubukrot|kopkedogubukröt|kopkedogubukrot|kedogubukrötrpo|kedogubukrötpo|kedogubukrotrpo|kedogubukrotpo|erkokedogubukrötrpo|erkokedogubukrötpo|erkokedogubukrotrpo|erkokedogubukrotpo|kopkedogubukrötrpo|kopkedogubukrötpo|kopkedogubukrotrpo|kopkedogubukrotpo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_WARM => [
            "\"Kedogubukröt\" signifie un chaleur, ou \"Chauffer\" comme verbe.",
            "Quand \"Kedogubukröt\" est un verbe, il peut également apparaître comme \"Erkokedogubukröt\" ou \"Kopkedogubukröt\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_WARM => ["chaleur"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_WARM => [
            "\"Chaleur\" peut se dire \"Kedogubukröt\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_VERB_WARM => ["chauffer"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_VERB_WARM => [
            "\"Chauffer\" peut se dire \"Kedogubukröt\" en parole gobline, ou avec \"Erkokedogubukröt\" au passé ou \"Kopkedogubukröt\" au futur."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_FINGER => ["këegopra|keegopra|erkokëegopra|erkokeegopra|kopkëegopra|kopkeegopra|këegoprarpo|këegoprapo|keegoprarpo|keegoprapo|erkokëegoprarpo|erkokëegoprapo|erkokeegoprarpo|erkokeegoprapo|kopkëegoprarpo|kopkëegoprapo|kopkeegoprarpo|kopkeegoprapo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_FINGER => [
            "\"Këegopra\" signifie un doigt, ou peux aussi signifier \"Toucher avec son doigt\" comme verbe.",
            "Quand \"Këegopra\" est un verbe, il peut également apparaître comme \"Erkokëegopra\" ou \"Kopkëegopra\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_FINGER => ["doigt"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_FINGER => [
            "\"Doigt\" peut se dire \"Këegopra\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_ROOT => ["kegobugeboktö|kegobugebokto|erkokegobugeboktö|erkokegobugebokto|kopkegobugeboktö|kopkegobugebokto|kegobugeboktörpo|kegobugeboktöbo|kegobugeboktorpo|kegobugeboktopo|erkokegobugeboktörpo|erkokegobugeboktöbo|erkokegobugeboktorpo|erkokegobugeboktopo|kopkegobugeboktörpo|kopkegobugeboktöbo|kopkegobugeboktorpo|kopkegobugeboktopo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_ROOT => [
            "\"Kegobugeboktö\" signifie un racine, ou peux aussi signifier \"Prendre racine\" comme verbe.",
            "Quand \"Kegobugeboktö\" est un verbe, il peut également apparaître comme \"Erkokegobugeboktö\" ou \"Kopkegobugeboktö\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_ROOT => ["racine"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_ROOT => [
            "\"Racine\" peut se dire \"Kegobugeboktö\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_VERB_ROOT => ["prendre", "racine"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_VERB_ROOT => [
            "\"Prendre racine\" peut se dire \"Kegobugeboktö\" en parole gobline, ou avec \"Erkokegobugeboktö\" au passé ou \"Kopkegobugeboktö\" au futur."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_NECK => ["kegobugodarkör|kegobugodarkor|erkokegobugodarkör|erkokegobugodarkor|kopkegobugodarkör|kopkegobugodarkor|kegobugodarkörpo|kegobugodarkörpo|kegobugodarkorpo|kegobugodarkorpo|erkokegobugodarkörpo|erkokegobugodarkörpo|erkokegobugodarkorpo|erkokegobugodarkorpo|kopkegobugodarkörpo|kopkegobugodarkörpo|kopkegobugodarkorpo|kopkegobugodarkorpo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_NECK => [
            "\"Kegobugodarkör\" signifie un cou, ou peux aussi signifier \"Mettre son cou sur\" comme verbe.",
            "Quand \"Kegobugodarkör\" est un verbe, il peut également apparaître comme \"Erkokegobugodarkör\" ou \"Kopkegobugodarkör\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_NECK => ["cou"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_NECK => [
            "\"Cou\" peut se dire \"Kegobugodarkör\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_TORCH => ["kegobukröt|kegobukrot|erkokegobukröt|erkokegobukrot|kopkegobukröt|kopkegobukrot|kegobukrötrpo|kegobukrötpo|kegobukrotrpo|kegobukrotpo|erkokegobukrötrpo|erkokegobukrötpo|erkokegobukrotrpo|erkokegobukrotpo|kopkegobukrötrpo|kopkegobukrötpo|kopkegobukrotrpo|kopkegobukrotpo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_TORCH => [
            "\"Kegobukröt\" signifie un torche, ou peux aussi signifier \"Brûler\" ou \"Illuminer\" avec un torche comme verbe.",
            "Quand \"Kegobukröt\" est un verbe, il peut également apparaître comme \"Erkokegobukröt\" ou \"Kopkegobukröt\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_TORCH => ["torche"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_TORCH => [
            "\"Torche\" peut se dire \"Kegobukröt\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_VERB_TORCH => ["brûler|illuminer|bruler", "torche"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_VERB_TORCH => [
            "\"Brûler\" ou \"Illuminer\" avec un torche\" peut se dire \"Kegobukröt\" en parole gobline, ou avec \"Erkokegobukröt\" au passé ou \"Kopkegobukröt\" au futur."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_NOSE => ["kegoburë|kegobure|erkokegoburë|erkokegobure|kopkegoburë|kopkegobure|kegoburërpo|kegoburëbo|kegoburerpo|kegoburepo|erkokegoburërpo|erkokegoburëbo|erkokegoburerpo|erkokegoburepo|kopkegoburërpo|kopkegoburëbo|kopkegoburerpo|kopkegoburepo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_NOSE => [
            "\"Kegoburë\" signifie un nez, ou peux aussi signifier \"Toucher avec un nez\" comme verbe, ou un expression pour \"Reniffler\".",
            "Quand \"Kegoburë\" est un verbe, il peut également apparaître comme \"Erkokegoburë\" ou \"Kopkegoburë\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_NOSE => ["nez"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_NOSE => [
            "\"Nez\" peut se dire \"Kegoburë\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_VERB_NOSE => ["sniffer|reniffler|renifler"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_VERB_NOSE => [
            "\"Reniffler\" peut se dire \"Kegoburë\" en parole gobline, ou avec \"Erkokegoburë\" au passé ou \"Kopkegoburë\" au futur."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_SKULL => ["kegoburkör|kegoburkor|erkokegoburkör|erkokegoburkor|kopkegoburkör|kopkegoburkor|kegoburkörpo|kegoburkörpo|kegoburkorpo|kegoburkorpo|erkokegoburkörpo|erkokegoburkörpo|erkokegoburkorpo|erkokegoburkorpo|kopkegoburkörpo|kopkegoburkörpo|kopkegoburkorpo|kopkegoburkorpo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_SKULL => [
            "\"Kegoburkör\" signifie un crâne, ou peux aussi signifier \"Ajouter des crânes à\" comme verbe.",
            "Quand \"Kegoburkör\" est un verbe, il peut également apparaître comme \"Erkokegoburkör\" ou \"Kopkegoburkör\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_SKULL => ["crâne|crane"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_SKULL => [
            "\"Crâne\" peut se dire \"Kegoburkör\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_RABBIT => ["kegobusäpago|kegobusapago|erkokegobusäpago|erkokegobusapago|kopkegobusäpago|kopkegobusapago|kegobusäpagorpo|kegobusäpagopo|kegobusapagorpo|kegobusapagopo|erkokegobusäpagorpo|erkokegobusäpagopo|erkokegobusapagorpo|erkokegobusapagopo|kopkegobusäpagorpo|kopkegobusäpagopo|kopkegobusapagorpo|kopkegobusapagopo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_RABBIT => [
            "\"Kegobusäpago\" signifie un lapin, ou peux aussi signifier \"Agir comme un lapin\" comme verbe.",
            "Quand \"Kegobusäpago\" est un verbe, il peut également apparaître comme \"Erkokegobusäpago\" ou \"Kopkegobusäpago\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_RABBIT => ["lapin"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_RABBIT => [
            "\"Lapin\" peut se dire \"Kegobusäpago\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_USE => ["kegoprä|kegopra|erkokegoprä|erkokegopra|kopkegoprä|kopkegopra|kegoprärpo|kegopräbo|kegoprarpo|kegoprapo|erkokegoprärpo|erkokegopräbo|erkokegoprarpo|erkokegoprapo|kopkegoprärpo|kopkegopräbo|kopkegoprarpo|kopkegoprapo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_USE => [
            "\"Kegoprä\" signifie un utiliser, ou \"Utiliser\" comme verbe.",
            "Quand \"Kegoprä\" est un verbe, il peut également apparaître comme \"Erkokegoprä\" ou \"Kopkegoprä\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_USE => ["utiliser"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_USE => [
            "\"Utiliser\" peut se dire \"Kegoprä\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_VERB_USE => ["utiliser"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_VERB_USE => [
            "\"Utiliser\" peut se dire \"Kegoprä\" en parole gobline, ou avec \"Erkokegoprä\" au passé ou \"Kopkegoprä\" au futur."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_SNAKE => ["kegopsë|kegopse|erkokegopsë|erkokegopse|kopkegopsë|kopkegopse|kegopsërpo|kegopsëbo|kegopserpo|kegopsepo|erkokegopsërpo|erkokegopsëbo|erkokegopserpo|erkokegopsepo|kopkegopsërpo|kopkegopsëbo|kopkegopserpo|kopkegopsepo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_SNAKE => [
            "\"Kegopsë\" signifie un serpent, ou peux aussi signifier \"Agit comme un serpent\" comme verbe.",
            "Quand \"Kegopsë\" est un verbe, il peut également apparaître comme \"Erkokegopsë\" ou \"Kopkegopsë\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_SNAKE => ["serpent"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_SNAKE => [
            "\"Serpent\" peut se dire \"Kegopsë\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_LEG => ["kegopukör|kegopukor|erkokegopukör|erkokegopukor|kopkegopukör|kopkegopukor|kegopukörpo|kegopukörpo|kegopukorpo|kegopukorpo|erkokegopukörpo|erkokegopukörpo|erkokegopukorpo|erkokegopukorpo|kopkegopukörpo|kopkegopukörpo|kopkegopukorpo|kopkegopukorpo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_LEG => [
            "\"Kegopukör\" signifie un jambe, ou peux aussi signifier \"Donner un coup de pieds\" comme verbe.",
            "Quand \"Kegopukör\" est un verbe, il peut également apparaître comme \"Erkokegopukör\" ou \"Kopkegopukör\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_LEG => ["jambe"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_LEG => [
            "\"Jambe\" peut se dire \"Kegopukör\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_VERB_LEG => ["coup|coups", "pieds"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_VERB_LEG => [
            "\"Donner un coup de pieds\" peut se dire \"Kegopukör\" en parole gobline, ou avec \"Erkokegopukör\" au passé ou \"Kopkegopukör\" au futur."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_STICK_THIN_NARROW => ["këkobu|kekobu|erkokëkobu|erkokekobu|kopkëkobu|kopkekobu|këkoburpo|këkobupo|kekoburpo|kekobupo|erkokëkoburpo|erkokëkobupo|erkokekoburpo|erkokekobupo|kopkëkoburpo|kopkëkobupo|kopkekoburpo|kopkekobupo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_STICK_THIN_NARROW => [
            "\"Këkobu\" signifie un baton, fin ou étroit, ou peux aussi signifier \"Ammincir\" comme verbe.",
            "Quand \"Këkobu\" est un verbe, il peut également apparaître comme \"Erkokëkobu\" ou \"Kopkëkobu\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_STICK_THIN_NARROW => ["baton|fin|étroit|baton|fin|etroit"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_STICK_THIN_NARROW => [
            "\"Baton\", \"Fin\" ou \"Etroit\" se disent \"Këkobu\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_VERB_STICK_THIN_NARROW => ["ammincir"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_VERB_STICK_THIN_NARROW => [
            "\"Ammincir\" peut se dire \"Këkobu\" en parole gobline, ou avec \"Erkokëkobu\" au passé ou \"Kopkëkobu\" au futur."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_ARM => ["këkobubur|kekobubur|erkokëkobubur|erkokekobubur|kopkëkobubur|kopkekobubur|këkobuburpo|këkobuburpo|kekobuburpo|kekobuburpo|erkokëkobuburpo|erkokëkobuburpo|erkokekobuburpo|erkokekobuburpo|kopkëkobuburpo|kopkëkobuburpo|kopkekobuburpo|kopkekobuburpo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_ARM => [
            "\"Këkobubur\" signifie un bras, ou peux aussi signifier \"Utiliser ses bras sur\" comme verbe.",
            "Quand \"Këkobubur\" est un verbe, il peut également apparaître comme \"Erkokëkobubur\" ou \"Kopkëkobubur\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_ARM => ["bras"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_ARM => [
            "\"Bras\" peut se dire \"Këkobubur\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_BONE => ["këkoburegodar|kekoburegodar|erkokëkoburegodar|erkokekoburegodar|kopkëkoburegodar|kopkekoburegodar|këkoburegodarpo|këkoburegodarpo|kekoburegodarpo|kekoburegodarpo|erkokëkoburegodarpo|erkokëkoburegodarpo|erkokekoburegodarpo|erkokekoburegodarpo|kopkëkoburegodarpo|kopkëkoburegodarpo|kopkekoburegodarpo|kopkekoburegodarpo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_BONE => [
            "\"Këkoburegodar\" signifie un os, ou peux aussi signifier \"Ajouter un os à\" comme verbe.",
            "Quand \"Këkoburegodar\" est un verbe, il peut également apparaître comme \"Erkokëkoburegodar\" ou \"Kopkëkoburegodar\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_BONE => ["os"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_BONE => [
            "\"Os\" peut se dire \"Këkoburegodar\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_VERB_BONE => ["ajouter", "os"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_VERB_BONE => [
            "\"Ajouter des os à\" peut se dire \"Këkoburegodar\" en parole gobline, ou \"Erkokëkoburegodar\" pour un passé et \"Kopkëkoburegodar\" pour un futur."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_EAR => ["keobusä|keobusa|erkokeobusä|erkokeobusa|kopkeobusä|kopkeobusa|keobusärpo|keobusäbo|keobusarpo|keobusapo|erkokeobusärpo|erkokeobusäbo|erkokeobusarpo|erkokeobusapo|kopkeobusärpo|kopkeobusäbo|kopkeobusarpo|kopkeobusapo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_EAR => [
            "\"Keobusä\" signifie un oreille, ou peux aussi être un expression pour \"Ecouter\" comme verbe.",
            "Quand \"Keobusä\" est un verbe, il peut également apparaître comme \"Erkokeobusä\" ou \"Kopkeobusä\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_EAR => ["oreille"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_EAR => [
            "\"Oreille\" peut se dire \"Keobusä\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_HAND => ["keoprä|keopra|erkokeoprä|erkokeopra|kopkeoprä|kopkeopra|keoprärpo|keopräbo|keoprarpo|keoprapo|erkokeoprärpo|erkokeopräbo|erkokeoprarpo|erkokeoprapo|kopkeoprärpo|kopkeopräbo|kopkeoprarpo|kopkeoprapo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_HAND => [
            "\"Keoprä\" signifie un main, ou \"Toucher\" comme verbe.",
            "Quand \"Keoprä\" est un verbe, il peut également apparaître comme \"Erkokeoprä\" ou \"Kopkeoprä\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_HAND => ["main"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_HAND => [
            "\"Main\" peut se dire \"Keoprä\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_VERB_HAND => ["toucher"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_VERB_HAND => [
            "\"Toucher\" peut se dire \"Keoprä\" en parole gobline, ou avec \"Erkokeoprä\" au passé ou \"Kopkeoprä\" au futur."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_BOTTOM_DOWN => ["këpo|kepo|erkokëpo|erkokepo|kopkëpo|kopkepo|këporpo|këpopo|keporpo|kepopo|erkokëporpo|erkokëpopo|erkokeporpo|erkokepopo|kopkëporpo|kopkëpopo|kopkeporpo|kopkepopo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_BOTTOM_DOWN => [
            "\"Këpo\" signifie un fond, bas, ou \"Baisser\" comme verbe.",
            "Quand \"Këpo\" est un verbe, il peut également apparaître comme \"Erkokëpo\" ou \"Kopkëpo\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_BOTTOM_DOWN => ["bas|fond"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_BOTTOM_DOWN => [
            "\"Bas\" et \"Fond\" peuvent se dire \"Këpo\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_VERB_BOTTOM_DOWN => ["baisser"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_VERB_BOTTOM_DOWN => [
            "\"Baisser\" peut se dire \"Këpo\" en parole gobline, ou avec \"Erkokëpo\" au passé ou \"Kopkëpo\" au futur."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_FOOT => ["këpogur|kepogur|erkokëpogur|erkokepogur|kopkëpogur|kopkepogur|këpogurpo|këpogurpo|kepogurpo|kepogurpo|erkokëpogurpo|erkokëpogurpo|erkokepogurpo|erkokepogurpo|kopkëpogurpo|kopkëpogurpo|kopkepogurpo|kopkepogurpo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_FOOT => [
            "\"Këpogur\" signifie un pied, ou peux aussi signifier \"Ecraser du pied\" comme verbe.",
            "Quand \"Këpogur\" est un verbe, il peut également apparaître comme \"Erkokëpogur\" ou \"Kopkëpogur\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_FOOT => ["pied"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_FOOT => [
            "\"Pied\" peut se dire \"Këpogur\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_VERB_FOOT => ["ecraser"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_VERB_FOOT => [
            "\"Ecraser du pied\" peut se dire \"Këpogur\" en parole gobline, ou avec \"Erkokëpogur\" au passé ou \"Kopkëpogur\" au futur."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_DRINK => ["kerortarsëop|kerortarseop|erkokerortarsëop|erkokerortarseop|kopkerortarsëop|kopkerortarseop|kerortarsëoprpo|kerortarsëoppo|kerortarseoprpo|kerortarseoppo|erkokerortarsëoprpo|erkokerortarsëoppo|erkokerortarseoprpo|erkokerortarseoppo|kopkerortarsëoprpo|kopkerortarsëoppo|kopkerortarseoprpo|kopkerortarseoppo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_DRINK => [
            "\"Kerortarsëop\" signifie un boisson, ou peux aussi signifier \"Boire\" comme verbe.",
            "Quand \"Kerortarsëop\" est un verbe, il peut également apparaître comme \"Erkokerortarsëop\" ou \"Kopkerortarsëop\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_DRINK => ["boisson"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_DRINK => [
            "\"Boisson\" peut se dire \"Kerortarsëop\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_VERB_DRINK => ["boire"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_VERB_DRINK => [
            "\"Boire\" peut se dire \"Kerortarsëop\" en parole gobline, ou avec \"Erkokerortarsëop\" au passé ou \"Kopkerortarsëop\" au futur."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_PLACE => ["këto|keto|erkokëto|erkoketo|kopkëto|kopketo|këtorpo|këtopo|ketorpo|ketopo|erkokëtorpo|erkokëtopo|erkoketorpo|erkoketopo|kopkëtorpo|kopkëtopo|kopketorpo|kopketopo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_PLACE => [
            "\"Këto\" signifie un endroit, ou peux aussi signifier \"Être quelque part\" comme verbe.",
            "Quand \"Këto\" est un verbe, il peut également apparaître comme \"Erkokëto\" ou \"Kopkëto\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_PLACE => ["endroit"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_PLACE => [
            "\"Endroit\" peut se dire \"Këto\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_CLOSE_HERE => ["këtogubu|ketogubu|erkokëtogubu|erkoketogubu|kopkëtogubu|kopketogubu|këtoguburpo|këtogubupo|ketoguburpo|ketogubupo|erkokëtoguburpo|erkokëtogubupo|erkoketoguburpo|erkoketogubupo|kopkëtoguburpo|kopkëtogubupo|kopketoguburpo|kopketogubupo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_CLOSE_HERE => [
            "\"Këtogubu\" signifie un proche, ici, ou peux aussi signifier \"Approcher\" comme verbe.",
            "Quand \"Këtogubu\" est un verbe, il peut également apparaître comme \"Erkokëtogubu\" ou \"Kopkëtogubu\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_CLOSE_HERE => ["proche|ici|tour|donjon"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_CLOSE_HERE => [
            "\"Proche\" et \"Ici\" peuvent se dire \"Këtogubu\" en parole gobline. \"Këtogubu\" est aussi un mot pour \"Tour\" ou \"Donjon\", puisque un tour est notre ici depuis qu'un passé est passé."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_VERB_CLOSE_HERE => ["approcher"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_VERB_CLOSE_HERE => [
            "\"Approcher\" peut se dire \"Këtogubu\" en parole gobline, ou avec \"Erkokëtogubu\" au passé ou \"Kopkëtogubu\" au futur."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_WITH_ACCOMPANIED_OF => ["këtogugu|ketogugu|erkokëtogugu|erkoketogugu|kopkëtogugu|kopketogugu|këtogugurpo|këtogugupo|ketogugurpo|ketogugupo|erkokëtogugurpo|erkokëtogugupo|erkoketogugurpo|erkoketogugupo|kopkëtogugurpo|kopkëtogugupo|kopketogugurpo|kopketogugupo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_WITH_ACCOMPANIED_OF => [
            "\"Këtogugu\" signifie un avec, ou peux aussi signifier \"Être accompagné de\" comme verbe.",
            "Quand \"Këtogugu\" est un verbe, il peut également apparaître comme \"Erkokëtogugu\" ou \"Kopkëtogugu\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_WITH_ACCOMPANIED_OF => ["avec"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_WITH_ACCOMPANIED_OF => [
            "\"Avec\" peut se dire \"Këtogugu\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_VERB_WITH_ACCOMPANIED_OF => ["accompagné|accompagne"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_VERB_WITH_ACCOMPANIED_OF => [
            "\"Être accompagné de\" peut se dire \"Këtogugu\" en parole gobline, ou avec \"Erkokëtogugu\" au passé ou \"Kopkëtogugu\" au futur."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_PATH => ["këtogur|ketogur|erkokëtogur|erkoketogur|kopkëtogur|kopketogur|këtogurpo|këtogurpo|ketogurpo|ketogurpo|erkokëtogurpo|erkokëtogurpo|erkoketogurpo|erkoketogurpo|kopkëtogurpo|kopkëtogurpo|kopketogurpo|kopketogurpo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_PATH => [
            "\"Këtogur\" signifie un chemin, ou peux aussi signifier \"Aller à\" comme verbe.",
            "Quand \"Këtogur\" est un verbe, il peut également apparaître comme \"Erkokëtogur\" ou \"Kopkëtogur\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_PATH => ["chemin"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_PATH => [
            "\"Chemin\" peut se dire \"Këtogur\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_VERB_PATH => ["aller|aller"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_VERB_PATH => [
            "\"Aller à\" peut se dire \"Këtogur\" en parole gobline, ou avec \"Erkokëtogur\" au passé ou \"Kopkëtogur\" au futur."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_WHERE_SOMEWHERE => ["këtogus|ketogus|erkokëtogus|erkoketogus|kopkëtogus|kopketogus|këtogusrpo|këtoguspo|ketogusrpo|ketoguspo|erkokëtogusrpo|erkokëtoguspo|erkoketogusrpo|erkoketoguspo|kopkëtogusrpo|kopkëtoguspo|kopketogusrpo|kopketoguspo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_WHERE_SOMEWHERE => [
            "\"Këtogus\" signifie un quelquepart, ou peux aussi signifier \"Être perdu\" comme verbe, dans un question il signifie également \"Où\".",
            "Quand \"Këtogus\" est un verbe, il peut également apparaître comme \"Erkokëtogus\" ou \"Kopkëtogus\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_WHERE_SOMEWHERE => ["où|quelquepart|ou|quelquepart"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_WHERE_SOMEWHERE => [
            "\"Où\" et \"Quelquepart\" peuvent se dire \"Këtogus\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_VERB_WHERE_SOMEWHERE => ["être|etre", "perdu"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_VERB_WHERE_SOMEWHERE => [
            "\"Être perdu\" peut se dire \"Këtogus\" en parole gobline, ou avec \"Erkokëtogus\" au passé ou \"Kopkëtogus\" au futur."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_FAR_AWAY => ["kobakëto|kobaketo|erkogobakëto|erkogobaketo|kopkobakëto|kopkobaketo|kobakëtorpo|kobakëtopo|kobaketorpo|kobaketopo|erkogobakëtorpo|erkogobakëtopo|erkogobaketorpo|erkogobaketopo|kopkobakëtorpo|kopkobakëtopo|kopkobaketorpo|kopkobaketopo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_FAR_AWAY => [
            "\"Kobakëto\" signifie un loin, ou peux aussi signifier \"Aller loin\" comme verbe.",
            "Quand \"Kobakëto\" est un verbe, il peut également apparaître comme \"Erkogobakëto\" ou \"Kopkobakëto\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_FAR_AWAY => ["loin"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_FAR_AWAY => [
            "\"Loin\" peut se dire \"Kobakëto\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_VERB_FAR_AWAY => ["aller", "loin"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_VERB_FAR_AWAY => [
            "\"Aller loin\" peut se dire \"Kobakëto\" en parole gobline, ou avec \"Erkogobakëto\" au passé ou \"Kopkobakëto\" au futur."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_LOST => ["kobakëtodu|kobaketodu|erkogobakëtodu|erkogobaketodu|kopkobakëtodu|kopkobaketodu|kobakëtodurpo|kobakëtodupo|kobaketodurpo|kobaketodupo|erkogobakëtodurpo|erkogobakëtodupo|erkogobaketodurpo|erkogobaketodupo|kopkobakëtodurpo|kopkobakëtodupo|kopkobaketodurpo|kopkobaketodupo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_LOST => [
            "\"Kobakëtodu\" signifie un perdu, ou peux aussi signifier \"Perdre quelque chose\" comme verbe.",
            "Quand \"Kobakëtodu\" est un verbe, il peut également apparaître comme \"Erkogobakëtodu\" ou \"Kopkobakëtodu\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_LOST => ["perdu"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_LOST => [
            "\"Perdu\" peut se dire \"Kobakëtodu\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_VERB_LOST => ["perdre"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_VERB_LOST => [
            "\"Perdre quelque chose\" peut se dire \"Kobakëtodu\" en parole gobline, ou avec \"Erkogobakëtodu\" au passé ou \"Kopkobakëtodu\" au futur."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_MADNESS => ["kobakëtodugusabor|kobaketodugusabor|erkogobakëtodugusabor|erkogobaketodugusabor|kopkobakëtodugusabor|kopkobaketodugusabor|kobakëtodugusaborpo|kobakëtodugusaborpo|kobaketodugusaborpo|kobaketodugusaborpo|erkogobakëtodugusaborpo|erkogobakëtodugusaborpo|erkogobaketodugusaborpo|erkogobaketodugusaborpo|kopkobakëtodugusaborpo|kopkobakëtodugusaborpo|kopkobaketodugusaborpo|kopkobaketodugusaborpo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_MADNESS => [
            "\"Kobakëtodugusabor\" signifie un folie, ou peux aussi signifier \"Être fou\" comme verbe.",
            "Quand \"Kobakëtodugusabor\" est un verbe, il peut également apparaître comme \"Erkogobakëtodugusabor\" ou \"Kopkobakëtodugusabor\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_MADNESS => ["folie"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_MADNESS => [
            "\"Folie\" peut se dire \"Kobakëtodugusabor\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_VERB_MADNESS => ["fou"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_VERB_MADNESS => [
            "\"Être fou\" peut se dire \"Kobakëtodugusabor\" en parole gobline, ou avec \"Erkogobakëtodugusabor\" au passé ou \"Kopkobakëtodugusabor\" au futur."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_PEACE => ["kobakëtodutregobu|kobaketodutregobu|erkogobakëtodutregobu|erkogobaketodutregobu|kopkobakëtodutregobu|kopkobaketodutregobu|kobakëtodutregoburpo|kobakëtodutregobupo|kobaketodutregoburpo|kobaketodutregobupo|erkogobakëtodutregoburpo|erkogobakëtodutregobupo|erkogobaketodutregoburpo|erkogobaketodutregobupo|kopkobakëtodutregoburpo|kopkobakëtodutregobupo|kopkobaketodutregoburpo|kopkobaketodutregobupo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_PEACE => [
            "\"Kobakëtodutregobu\" signifie un paix, ou peux aussi signifier \"Faire la paix\" comme verbe.",
            "Quand \"Kobakëtodutregobu\" est un verbe, il peut également apparaître comme \"Erkogobakëtodutregobu\" ou \"Kopkobakëtodutregobu\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_PEACE => ["paix"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_PEACE => [
            "\"Paix\" peut se dire \"Kobakëtodutregobu\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_VERB_PEACE => ["faire", "paix"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_VERB_PEACE => [
            "\"Faire la paix\" peut se dire \"Kobakëtodutregobu\" en parole gobline, ou avec \"Erkogobakëtodutregobu\" au passé ou \"Kopkobakëtodutregobu\" au futur."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_RESPECT => ["kobakëtogeopra|kobaketogeopra|erkogobakëtogeopra|erkogobaketogeopra|kopkobakëtogeopra|kopkobaketogeopra|kobakëtogeoprarpo|kobakëtogeoprapo|kobaketogeoprarpo|kobaketogeoprapo|erkogobakëtogeoprarpo|erkogobakëtogeoprapo|erkogobaketogeoprarpo|erkogobaketogeoprapo|kopkobakëtogeoprarpo|kopkobakëtogeoprapo|kopkobaketogeoprarpo|kopkobaketogeoprapo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_RESPECT => [
            "\"Kobakëtogeopra\" signifie un respect, ou peux aussi signifier \"Respecter\" ou \"Garder ses mains pour soi\" comme verbe.",
            "Quand \"Kobakëtogeopra\" est un verbe, il peut également apparaître comme \"Erkogobakëtogeopra\" ou \"Kopkobakëtogeopra\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_RESPECT => ["respect"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_RESPECT => [
            "\"Respect\" peut se dire \"Kobakëtogeopra\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_VERB_RESPECT => ["respecter"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_VERB_RESPECT => [
            "\"Respecter\" peut se dire \"Kobakëtogeopra\" en parole gobline, ou avec \"Erkogobakëtogeopra\" au passé ou \"Kopkobakëtogeopra\" au futur."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_WRONG_FAKE_BELIEF_MISTAKE => ["kobakëtogospor|kobaketogospor|erkogobakëtogospor|erkogobaketogospor|kopkobakëtogospor|kopkobaketogospor|kobakëtogosporpo|kobakëtogosporpo|kobaketogosporpo|kobaketogosporpo|erkogobakëtogosporpo|erkogobakëtogosporpo|erkogobaketogosporpo|erkogobaketogosporpo|kopkobakëtogosporpo|kopkobakëtogosporpo|kopkobaketogosporpo|kopkobaketogosporpo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_WRONG_FAKE_BELIEF_MISTAKE => [
            "\"Kobakëtogospor\" signifie un erreur, faux, ou peux aussi signifier \"Se tromper\" comme verbe.",
            "Quand \"Kobakëtogospor\" est un verbe, il peut également apparaître comme \"Erkogobakëtogospor\" ou \"Kopkobakëtogospor\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_WRONG_FAKE_BELIEF_MISTAKE => ["faux|erreur"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_WRONG_FAKE_BELIEF_MISTAKE => [
            "\"Faux\" et \"Erreur\" peuvent se dire \"Kobakëtogospor\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_VERB_WRONG_FAKE_BELIEF_MISTAKE => ["se", "tromper"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_VERB_WRONG_FAKE_BELIEF_MISTAKE => [
            "\"Se tromper\" peut se dire \"Kobakëtogospor\" en parole gobline, ou avec \"Erkogobakëtogospor\" au passé ou \"Kopkobakëtogospor\" au futur."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_MATE_BIRTH => ["kobuegaredarkör|kobuegaredarkor|erkogobuegaredarkör|erkogobuegaredarkor|kopkobuegaredarkör|kopkobuegaredarkor|kobuegaredarkörpo|kobuegaredarkörpo|kobuegaredarkorpo|kobuegaredarkorpo|erkogobuegaredarkörpo|erkogobuegaredarkörpo|erkogobuegaredarkorpo|erkogobuegaredarkorpo|kopkobuegaredarkörpo|kopkobuegaredarkörpo|kopkobuegaredarkorpo|kopkobuegaredarkorpo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_MATE_BIRTH => [
            "\"Kobuegaredarkör\" signifie un naissance, ou peux aussi signifier \"S'accoupler\" comme verbe.",
            "Quand \"Kobuegaredarkör\" est un verbe, il peut également apparaître comme \"Erkogobuegaredarkör\" ou \"Kopkobuegaredarkör\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_MATE_BIRTH => ["accouplement|naissance"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_MATE_BIRTH => [
            "\"Accouplement\" ou \"Naissance\" peuvent se dire \"Kobuegaredarkör\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_VERB_MATE_BIRTH => ["accoupler"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_VERB_MATE_BIRTH => [
            "\"S'accoupler\" peut se dire \"Kobuegaredarkör\" en parole gobline, ou avec \"Erkogobuegaredarkör\" au passé ou \"Kopkobuegaredarkör\" au futur."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_GROWN_GOODS => ["kobuegatrë|kobuegatre|erkogobuegatrë|erkogobuegatre|kopkobuegatrë|kopkobuegatre|kobuegatrërpo|kobuegatrëbo|kobuegatrerpo|kobuegatrepo|erkogobuegatrërpo|erkogobuegatrëbo|erkogobuegatrerpo|erkogobuegatrepo|kopkobuegatrërpo|kopkobuegatrëbo|kopkobuegatrerpo|kopkobuegatrepo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_GROWN_GOODS => [
            "\"Kobuegatrë\" signifie un produit aggricole, ou peux aussi signifier \"Cultiver\" comme verbe.",
            "Quand \"Kobuegatrë\" est un verbe, il peut également apparaître comme \"Erkogobuegatrë\" ou \"Kopkobuegatrë\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_GROWN_GOODS => ["produits", "aggricoles"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_GROWN_GOODS => [
            "\"Produits aggricoles\" peut se dire \"Kobuegatrë\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_VERB_GROWN_GOODS => ["cultiver"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_VERB_GROWN_GOODS => [
            "\"Cultiver\" peut se dire \"Kobuegatrë\" en parole gobline, ou avec \"Erkogobuegatrë\" au passé ou \"Kopkobuegatrë\" au futur."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_EDUCATOR => ["kobuekaöpo|kobuekaopo|erkogobuekaöpo|erkogobuekaopo|kopkobuekaöpo|kopkobuekaopo|kobuekaöporpo|kobuekaöpopo|kobuekaoporpo|kobuekaopopo|erkogobuekaöporpo|erkogobuekaöpopo|erkogobuekaoporpo|erkogobuekaopopo|kopkobuekaöporpo|kopkobuekaöpopo|kopkobuekaoporpo|kopkobuekaopopo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_EDUCATOR => [
            "\"Kobuekaöpo\" signifie un éducateur, ou peux aussi signifier \"Éduquer\" comme verbe.",
            "Quand \"Kobuekaöpo\" est un verbe, il peut également apparaître comme \"Erkogobuekaöpo\" ou \"Kopkobuekaöpo\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_EDUCATOR => ["éducateur|educateur"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_EDUCATOR => [
            "\"Éducateur\" peut se dire \"Kobuekaöpo\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_VERB_EDUCATOR => ["éduquer|eduquer"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_VERB_EDUCATOR => [
            "\"Éduquer\" peut se dire \"Kobuekaöpo\" en parole gobline, ou avec \"Erkogobuekaöpo\" au passé ou \"Kopkobuekaöpo\" au futur."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_SACRED_HOLY => ["kobugurttö|kobugurtto|erkogobugurttö|erkogobugurtto|kopkobugurttö|kopkobugurtto|kobugurttörpo|kobugurttöbo|kobugurttorpo|kobugurttopo|erkogobugurttörpo|erkogobugurttöbo|erkogobugurttorpo|erkogobugurttopo|kopkobugurttörpo|kopkobugurttöbo|kopkobugurttorpo|kopkobugurttopo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_SACRED_HOLY => [
            "\"Kobugurttö\" signifie un sacré, saint, ou peux aussi signifier \"Rendre sacré\" comme verbe.",
            "Quand \"Kobugurttö\" est un verbe, il peut également apparaître comme \"Erkogobugurttö\" ou \"Kopkobugurttö\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_SACRED_HOLY => ["sacré|saint|sacre|saint"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_SACRED_HOLY => [
            "\"Sacré\" et \"Saint\" peuvent se dire \"Kobugurttö\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_VERB_SACRED_HOLY => ["sacrer"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_VERB_SACRED_HOLY => [
            "\"Rendre sacré\" peut se dire \"Kobugurttö\" en parole gobline, ou avec \"Erkogobugurttö\" au passé ou \"Kopkobugurttö\" au futur."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_MANY_NUMEROUS_A_LOT => ["kobuköpa|kobukopa|erkogobuköpa|erkogobukopa|kopkobuköpa|kopkobukopa|kobuköparpo|kobuköpapo|kobukoparpo|kobukopapo|erkogobuköparpo|erkogobuköpapo|erkogobukoparpo|erkogobukopapo|kopkobuköparpo|kopkobuköpapo|kopkobukoparpo|kopkobukopapo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_MANY_NUMEROUS_A_LOT => [
            "\"Kobuköpa\" signifie un nombreux, beaucoup, ou peux aussi signifier \"Rendre nombreux\" comme verbe.",
            "Quand \"Kobuköpa\" est un verbe, il peut également apparaître comme \"Erkogobuköpa\" ou \"Kopkobuköpa\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_MANY_NUMEROUS_A_LOT => ["nombreux|beaucoup"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_MANY_NUMEROUS_A_LOT => [
            "\"Nombreux\", \"Beaucoup\" peut se dire \"Kobuköpa\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_VERB_MANY_NUMEROUS_A_LOT => ["multiplier"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_VERB_MANY_NUMEROUS_A_LOT => [
            "\"Rendre nombreux\" peut se dire \"Kobuköpa\" en parole gobline, ou avec \"Erkogobuköpa\" au passé ou \"Kopkobuköpa\" au futur."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_CAN_ABLE => ["kobukör|kobukor|erkogobukör|erkogobukor|kopkobukör|kopkobukor|kobukörpo|kobukörpo|kobukorpo|kobukorpo|erkogobukörpo|erkogobukörpo|erkogobukorpo|erkogobukorpo|kopkobukörpo|kopkobukörpo|kopkobukorpo|kopkobukorpo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_CAN_ABLE => [
            "\"Kobukör\" signifie un capable, ou \"Pouvoir\" comme verbe.",
            "Quand \"Kobukör\" est un verbe, il peut également apparaître comme \"Erkogobukör\" ou \"Kopkobukör\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_CAN_ABLE => ["capable"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_CAN_ABLE => [
            "\"Capable\" peut se dire \"Kobukör\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_VERB_CAN_ABLE => ["pouvoir"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_VERB_CAN_ABLE => [
            "\"Pouvoir\" peut se dire \"Kobukör\" en parole gobline, ou avec \"Erkogobukör\" au passé ou \"Kopkobukör\" au futur."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_GOOD => ["kobukörkada|kobukorkada|erkogobukörkada|erkogobukorkada|kopkobukörkada|kopkobukorkada|kobukörkadarpo|kobukörkadapo|kobukorkadarpo|kobukorkadapo|erkogobukörkadarpo|erkogobukörkadapo|erkogobukorkadarpo|erkogobukorkadapo|kopkobukörkadarpo|kopkobukörkadapo|kopkobukorkadarpo|kopkobukorkadapo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_GOOD => [
            "\"Kobukörkada\" signifie un bon, ou \"Bonifier\" comme verbe.",
            "Quand \"Kobukörkada\" est un verbe, il peut également apparaître comme \"Erkogobukörkada\" ou \"Kopkobukörkada\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_GOOD => ["bon"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_GOOD => [
            "\"Bon\" peut se dire \"Kobukörkada\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_VERB_GOOD => ["bonifier"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_VERB_GOOD => [
            "\"Bonifier\" peut se dire \"Kobukörkada\" en parole gobline, ou avec \"Erkogobukörkada\" au passé ou \"Kopkobukörkada\" au futur."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_NEW_STATE => ["kobukörra|kobukorra|erkogobukörra|erkogobukorra|kopkobukörra|kopkobukorra|kobukörrarpo|kobukörrapo|kobukorrarpo|kobukorrapo|erkogobukörrarpo|erkogobukörrapo|erkogobukorrarpo|erkogobukorrapo|kopkobukörrarpo|kopkobukörrapo|kopkobukorrarpo|kopkobukorrapo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_NEW_STATE => [
            "\"Kobukörra\" signifie un changement, ou peux aussi signifier \"Devenir\" comme verbe.",
            "Quand \"Kobukörra\" est un verbe, il peut également apparaître comme \"Erkogobukörra\" ou \"Kopkobukörra\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_NEW_STATE => ["changement"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_NEW_STATE => [
            "\"Changement\" peut se dire \"Kobukörra\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_VERB_NEW_STATE => ["devenir"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_VERB_NEW_STATE => [
            "\"Devenir\" peut se dire \"Kobukörra\" en parole gobline, ou avec \"Erkogobukörra\" au passé ou \"Kopkobukörra\" au futur."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_AGE => ["kobukörrarko|kobukorrarko|erkogobukörrarko|erkogobukorrarko|kopkobukörrarko|kopkobukorrarko|kobukörrarkorpo|kobukörrarkopo|kobukorrarkorpo|kobukorrarkopo|erkogobukörrarkorpo|erkogobukörrarkopo|erkogobukorrarkorpo|erkogobukorrarkopo|kopkobukörrarkorpo|kopkobukörrarkopo|kopkobukorrarkorpo|kopkobukorrarkopo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_AGE => [
            "\"Kobukörrarko\" signifie un age, ou \"Vieillir\" comme verbe.",
            "Quand \"Kobukörrarko\" est un verbe, il peut également apparaître comme \"Erkogobukörrarko\" ou \"Kopkobukörrarko\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_AGE => ["age"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_AGE => [
            "\"Age\" peut se dire \"Kobukörrarko\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_VERB_AGE => ["vieillir"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_VERB_AGE => [
            "\"Vieillir\" peut se dire \"Kobukörrarko\" en parole gobline, ou avec \"Erkogobukörrarko\" au passé ou \"Kopkobukörrarko\" au futur."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_WOLF => ["kobukrör|kobukror|erkogobukrör|erkogobukror|kopkobukrör|kopkobukror|kobukrörpo|kobukrörpo|kobukrorpo|kobukrorpo|erkogobukrörpo|erkogobukrörpo|erkogobukrorpo|erkogobukrorpo|kopkobukrörpo|kopkobukrörpo|kopkobukrorpo|kopkobukrorpo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_WOLF => [
            "\"Kobukrör\" signifie un loup, ou peux aussi signifier \"Agir comme un loup\" comme verbe.",
            "Quand \"Kobukrör\" est un verbe, il peut également apparaître comme \"Erkogobukrör\" ou \"Kopkobukrör\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_WOLF => ["loup"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_WOLF => [
            "\"Loup\" peut se dire \"Kobukrör\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_AMBER_COAL_ASHES_DRY => ["kobukröt|kobukrot|erkogobukröt|erkogobukrot|kopkobukröt|kopkobukrot|kobukrötrpo|kobukrötpo|kobukrotrpo|kobukrotpo|erkogobukrötrpo|erkogobukrötpo|erkogobukrotrpo|erkogobukrotpo|kopkobukrötrpo|kopkobukrötpo|kopkobukrotrpo|kopkobukrotpo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_AMBER_COAL_ASHES_DRY => [
            "\"Kobukröt\" signifie un reste de feu, comme un braises, un charbon, un cendres ou sec, ou peux aussi signifier \"Sécher\" comme verbe.",
            "Quand \"Kobukröt\" est un verbe, il peut également apparaître comme \"Erkogobukröt\" ou \"Kopkobukröt\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_AMBER_COAL_ASHES_DRY => ["braises|charbon|cendres|sec"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_AMBER_COAL_ASHES_DRY => [
            "\"Braises\", \"Charbon\", \"Cendres\" ou \"sec\" peuvent tous se dire \"Kobukröt\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_VERB_AMBER_COAL_ASHES_DRY => ["sécher|secher"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_VERB_AMBER_COAL_ASHES_DRY => [
            "\"Sécher\" peut se dire \"Kobukröt\" en parole gobline, ou avec \"Erkogobukröt\" au passé ou \"Kopkobukröt\" au futur."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_CHARTREUSE_GREEN => ["kobuktö|kobukto|erkogobuktö|erkogobukto|kopkobuktö|kopkobukto|kobuktörpo|kobuktöbo|kobuktorpo|kobuktopo|erkogobuktörpo|erkogobuktöbo|erkogobuktorpo|erkogobuktopo|kopkobuktörpo|kopkobuktöbo|kopkobuktorpo|kopkobuktopo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_CHARTREUSE_GREEN => [
            "\"Kobuktö\" signifie un vert chartreuse, ou peux aussi signifier \"Rendre chartreuse\" ou \"Être vert chartreuse\" comme verbe.",
            "Quand \"Kobuktö\" est un verbe, il peut également apparaître comme \"Erkogobuktö\" ou \"Kopkobuktö\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_CHARTREUSE_GREEN => ["vert|chartreuse"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_CHARTREUSE_GREEN => [
            "\"Vert chartreuse\" peut se dire \"Kobuktö\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_FOREST => ["kobuktöpago|kobuktopago|erkogobuktöpago|erkogobuktopago|kopkobuktöpago|kopkobuktopago|kobuktöpagorpo|kobuktöpagopo|kobuktopagorpo|kobuktopagopo|erkogobuktöpagorpo|erkogobuktöpagopo|erkogobuktopagorpo|erkogobuktopagopo|kopkobuktöpagorpo|kopkobuktöpagopo|kopkobuktopagorpo|kopkobuktopagopo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_FOREST => [
            "\"Kobuktöpago\" signifie un forêt, ou peux aussi signifier \"Être en forêt\" comme verbe.",
            "Quand \"Kobuktöpago\" est un verbe, il peut également apparaître comme \"Erkogobuktöpago\" ou \"Kopkobuktöpago\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_FOREST => ["forêt|foret"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_FOREST => [
            "\"Forêt\" peut se dire \"Kobuktöpago\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_HUNT => ["kodurdöter|kodurdoter|erkogodurdöter|erkogodurdoter|kopkodurdöter|kopkodurdoter|kodurdöterpo|kodurdöterpo|kodurdoterpo|kodurdoterpo|erkogodurdöterpo|erkogodurdöterpo|erkogodurdoterpo|erkogodurdoterpo|kopkodurdöterpo|kopkodurdöterpo|kopkodurdoterpo|kopkodurdoterpo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_HUNT => [
            "\"Kodurdöter\" signifie un chasse, ou peux aussi signifier \"Chasser\" ou \"Récolter\" comme verbe.",
            "Quand \"Kodurdöter\" est un verbe, il peut également apparaître comme \"Erkogodurdöter\" ou \"Kopkodurdöter\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_HUNT => ["chasse"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_HUNT => [
            "\"Chasse\" peut se dire \"Kodurdöter\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_VERB_HUNT => ["chasser|récolter|chasser|recolter"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_VERB_HUNT => [
            "\"Chasser\" et \"Récolter\" peut se dire \"Kodurdöter\" en parole gobline, ou avec \"Erkogodurdöter\" au passé ou \"Kopkodurdöter\" au futur."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_MOON => ["kogububurbör|kogububurbor|erkogogububurbör|erkogogububurbor|kopkogububurbör|kopkogububurbor|kogububurbörpo|kogububurbörpo|kogububurborpo|kogububurborpo|erkogogububurbörpo|erkogogububurbörpo|erkogogububurborpo|erkogogububurborpo|kopkogububurbörpo|kopkogububurbörpo|kopkogububurborpo|kopkogububurborpo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_MOON => [
            "\"Kogububurbör\" signifie un lune, ou \"Briller\" comme verbe.",
            "Quand \"Kogububurbör\" est un verbe, il peut également apparaître comme \"Erkogogububurbör\" ou \"Kopkogububurbör\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_MOON => ["lune"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_MOON => [
            "\"Lune\" peut se dire \"Kogububurbör\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_VERB_MOON => ["briller"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_VERB_MOON => [
            "\"Rien\" peut se dire \"Kogububurbör\" en parole gobline, ou avec \"Erkogogububurbör\" au passé ou \"Kopkogububurbör\" au futur."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_LARGE_THING => ["köpa|kopa|erkoköpa|erkokopa|kopköpa|kopkopa|köparpo|köpapo|koparpo|kopapo|erkoköparpo|erkoköpapo|erkokoparpo|erkokopapo|kopköparpo|kopköpapo|kopkoparpo|kopkopapo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_LARGE_THING => [
            "\"Köpa\" signifie un chose large, ou peux aussi signifier \"Enlargir\" comme verbe.",
            "Quand \"Köpa\" est un verbe, il peut également apparaître comme \"Erkoköpa\" ou \"Kopköpa\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_LARGE_THING => ["large"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_LARGE_THING => [
            "\"Large\" peut se dire \"Köpa\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_VERB_LARGE_THING => ["enlargir"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_VERB_LARGE_THING => [
            "\"Enlargir\" peut se dire \"Köpa\" en parole gobline, ou avec \"Erkoköpa\" au passé ou \"Kopköpa\" au futur."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_ALONE_WITHOUT => ["köpagogu|kopagogu|erkoköpagogu|erkokopagogu|kopköpagogu|kopkopagogu|köpagogurpo|köpagogupo|kopagogurpo|kopagogupo|erkoköpagogurpo|erkoköpagogupo|erkokopagogurpo|erkokopagogupo|kopköpagogurpo|kopköpagogupo|kopkopagogurpo|kopkopagogupo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_ALONE_WITHOUT => [
            "\"Köpagogu\" signifie un seul, sans, dépourvu, ou peux aussi signifier \"Éviter les gens\" ou \"se débarasser de\" comme verbe.",
            "Quand \"Köpagogu\" est un verbe, il peut également apparaître comme \"Erkoköpagogu\" ou \"Kopköpagogu\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_ALONE_WITHOUT => ["seul|sans|dépourvu|seul|sans|depourvu"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_ALONE_WITHOUT => [
            "\"Seul\" \"Sans\" et \"Dépourvu\" peuvent se dire \"Köpagogu\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_VERB_ALONE_WITHOUT => ["éviter|débarasser|eviter|debarasser"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_VERB_ALONE_WITHOUT => [
            "\"Éviter les gens\" et \"Se débarasser de\" peuvent se dire \"Köpagogu\" en parole gobline, ou avec \"Erkoköpagogu\" au passé ou \"Kopköpagogu\" au futur."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_FUTURE_GROUP_MULTIPLE => ["köpo|kopo|erkoköpo|erkokopo|kopköpo|kopkopo|köporpo|köpopo|koporpo|kopopo|erkoköporpo|erkoköpopo|erkokoporpo|erkokopopo|kopköporpo|kopköpopo|kopkoporpo|kopkopopo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_FUTURE_GROUP_MULTIPLE => [
            "\"Köpo\" signifie un futur, groupe, plusieur, et généralement est utilisé comme verbe pour un future d'\"Être\" ou pour \"grouper\".",
            "Quand \"Köpo\" est \"Grouper\", il peut également apparaître comme \"Erkoköpo\" ou \"Kopköpo\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_FUTURE_GROUP_MULTIPLE => ["futur|groupe|plusieur"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_FUTURE_GROUP_MULTIPLE => [
            "\"Futur\", \"groupe\" \"plusieur\" peut se dire \"Köpo\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_VERB_FUTURE_GROUP_MULTIPLE => ["futur|grouper", "être|etre|grouper"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_VERB_FUTURE_GROUP_MULTIPLE => [
            "Le future d'\"Être\" est \"Köpo\", qui peux également signifier \"Grouper\", pouvant apparaître comme \"Erkoköpo\" au passé ou \"Kopköpo\" au futur."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_SUNSET => ["köpoburebogur|kopoburebogur|erkoköpoburebogur|erkokopoburebogur|kopköpoburebogur|kopkopoburebogur|köpoburebogurpo|köpoburebogurpo|kopoburebogurpo|kopoburebogurpo|erkoköpoburebogurpo|erkoköpoburebogurpo|erkokopoburebogurpo|erkokopoburebogurpo|kopköpoburebogurpo|kopköpoburebogurpo|kopkopoburebogurpo|kopkopoburebogurpo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_SUNSET => [
            "\"Köpoburebogur\" signifie un couché de soleil, ou peux aussi être un expression pour quand quelqu'un part enfin comme verbe.",
            "Quand \"Köpoburebogur\" est un verbe, il peut également apparaître comme \"Erkoköpoburebogur\" ou \"Kopköpoburebogur\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_SUNSET => ["couché|couche", "soleil"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_SUNSET => [
            "\"Couché de soleil\" peut se dire \"Köpoburebogur\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_ELDER_CHIEF => ["köpodubugurku|kopodubugurku|erkoköpodubugurku|erkokopodubugurku|kopköpodubugurku|kopkopodubugurku|köpodubugurkurpo|köpodubugurkupo|kopodubugurkurpo|kopodubugurkupo|erkoköpodubugurkurpo|erkoköpodubugurkupo|erkokopodubugurkurpo|erkokopodubugurkupo|kopköpodubugurkurpo|kopköpodubugurkupo|kopkopodubugurkurpo|kopkopodubugurkupo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_ELDER_CHIEF => [
            "\"Köpodubugurku\" signifie un ancien, ou peux aussi signifier \"Devenir un ancien\" comme verbe.",
            "Quand \"Köpodubugurku\" est un verbe, il peut également apparaître comme \"Erkoköpodubugurku\" ou \"Kopköpodubugurku\" pour un passé et un future.",
            "Les anciens sont comme ce que un humain nommerait chef, mais ils occupent cette position pas sagesse là où un chef l'occupe par authorité.",
            "Un ancien de ici étant un seul, un nom d'un ancien est simplement \"Köpodubugurku\"."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_ELDER_CHIEF => ["ancien|chef"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_ELDER_CHIEF => [
            "\"Ancien\", ou ce que vous nommeriez \"Chef\" peut se dire \"Köpodubugurku\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_MALE_GOBLIN => ["köpodugeobu|kopodugeobu|erkoköpodugeobu|erkokopodugeobu|kopköpodugeobu|kopkopodugeobu|köpodugeoburpo|köpodugeobupo|kopodugeoburpo|kopodugeobupo|erkoköpodugeoburpo|erkoköpodugeobupo|erkokopodugeoburpo|erkokopodugeobupo|kopköpodugeoburpo|kopköpodugeobupo|kopkopodugeoburpo|kopkopodugeobupo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_MALE_GOBLIN => [
            "\"Köpodugeobu\" signifie un goblin male, ou peux aussi être un euphemisme pour l'accouplement comme verbe.",
            "Quand \"Köpodugeobu\" est un verbe, il peut également apparaître comme \"Erkoköpodugeobu\" ou \"Kopköpodugeobu\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_MALE_GOBLIN => ["goblin", "male"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_MALE_GOBLIN => [
            "\"Goblin male\" peut se dire \"Köpodugeobu\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_FEMALE_GOBLIN => ["köpodugurku|kopodugurku|erkoköpodugurku|erkokopodugurku|kopköpodugurku|kopkopodugurku|köpodugurkurpo|köpodugurkupo|kopodugurkurpo|kopodugurkupo|erkoköpodugurkurpo|erkoköpodugurkupo|erkokopodugurkurpo|erkokopodugurkupo|kopköpodugurkurpo|kopköpodugurkupo|kopkopodugurkurpo|kopkopodugurkupo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_FEMALE_GOBLIN => [
            "\"Köpodugurku\" signifie un goblin femelle, ou peux aussi signifier \"Pondre\" comme verbe.",
            "Quand \"Köpodugurku\" est un verbe, il peut également apparaître comme \"Erkoköpodugurku\" ou \"Kopköpodugurku\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_FEMALE_GOBLIN => ["goblin|femelle"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_FEMALE_GOBLIN => [
            "\"Goblin femelle\" peut se dire \"Köpodugurku\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_VERB_FEMALE_GOBLIN => ["pondre"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_VERB_FEMALE_GOBLIN => [
            "\"Pondre\" peut se dire \"Köpodugurku\" en parole gobline, ou avec \"Erkoköpodugurku\" au passé ou \"Kopköpodugurku\" au futur."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_WHO_SOMEONE => ["köpodugus|kopodugus|erkoköpodugus|erkokopodugus|kopköpodugus|kopkopodugus|köpodugusrpo|köpoduguspo|kopodugusrpo|kopoduguspo|erkoköpodugusrpo|erkoköpoduguspo|erkokopodugusrpo|erkokopoduguspo|kopköpodugusrpo|kopköpoduguspo|kopkopodugusrpo|kopkopoduguspo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_WHO_SOMEONE => [
            "\"Köpodugus\" signifie un quelqu'un, ou peux aussi signifier \"Cacher son identité\" comme verbe, et signifie \"Qui\" dans un question.",
            "Quand \"Köpodugus\" est un verbe, il peut également apparaître comme \"Erkoköpodugus\" ou \"Kopköpodugus\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_WHO_SOMEONE => ["qui|quelqu"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_WHO_SOMEONE => [
            "\"Qui\" et \"Quelqu'un\" peuvent se dire \"Köpodugus\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_GOBLIN_TRIBE => ["köpoduk|kopoduk|erkoköpoduk|erkokopoduk|kopköpoduk|kopkopoduk|köpodukrpo|köpodukpo|kopodukrpo|kopodukpo|erkoköpodukrpo|erkoköpodukpo|erkokopodukrpo|erkokopodukpo|kopköpodukrpo|kopköpodukpo|kopkopodukrpo|kopkopodukpo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_GOBLIN_TRIBE => [
            "\"Köpoduk\" signifie un goblin ou tribu, ou peux aussi signifier \"Former un tribu\" comme verbe.\nGénéralement \"sö köpoduk\" singulier sans spécifications fait référence à un tribu gobline, là où \"kö köpoduk\" et \"tö köpoduk\" pluriels signigient des goblins.",
            "Quand \"Köpoduk\" est un verbe, il peut également apparaître comme \"Erkoköpoduk\" ou \"Kopköpoduk\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_GOBLIN_TRIBE => ["goblin|tribu"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_GOBLIN_TRIBE => [
            "\"Goblin\" et \"Tribu\" peuvent se dire \"Köpoduk\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_VERB_GOBLIN_TRIBE => ["former|un|tribu"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_VERB_GOBLIN_TRIBE => [
            "\"Former un tribu\" peut se dire \"Köpoduk\" en parole gobline, ou avec \"Erkoköpoduk\" au passé ou \"Kopköpoduk\" au futur."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_OUTSIDER_GUEST => ["köpodukubagedo|kopodukubagedo|erkoköpodukubagedo|erkokopodukubagedo|kopköpodukubagedo|kopkopodukubagedo|köpodukubagedorpo|köpodukubagedopo|kopodukubagedorpo|kopodukubagedopo|erkoköpodukubagedorpo|erkoköpodukubagedopo|erkokopodukubagedorpo|erkokopodukubagedopo|kopköpodukubagedorpo|kopköpodukubagedopo|kopkopodukubagedorpo|kopkopodukubagedopo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_OUTSIDER_GUEST => [
            "\"Köpodukubagedo\" signifie un étranger, invité, ou peux aussi signifier \"Être invité à\" comme verbe.",
            "Quand \"Köpodukubagedo\" est un verbe, il peut également apparaître comme \"Erkoköpodukubagedo\" ou \"Kopköpodukubagedo\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_OUTSIDER_GUEST => ["étranger|invité|etranger|invite"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_OUTSIDER_GUEST => [
            "\"Étranger\" et \"Invité\" peuvent se dire \"Köpodukubagedo\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_VERB_OUTSIDER_GUEST => ["être|etre", "invité|invite"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_VERB_OUTSIDER_GUEST => [
            "\"Être invité\" peut se dire \"Köpodukubagedo\" en parole gobline, ou avec \"Erkoköpodukubagedo\" au passé ou \"Kopköpodukubagedo\" au futur."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_ANCESTOR => ["köpodurku|kopodurku|erkoköpodurku|erkokopodurku|kopköpodurku|kopkopodurku|köpodurkurpo|köpodurkupo|kopodurkurpo|kopodurkupo|erkoköpodurkurpo|erkoköpodurkupo|erkokopodurkurpo|erkokopodurkupo|kopköpodurkurpo|kopköpodurkupo|kopkopodurkurpo|kopkopodurkupo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_ANCESTOR => [
            "\"Köpodurku\" signifie un ancêtre, ou peux aussi signifier \"Devenir un ancêtre\" comme verbe, souvent un euphemisme pour \"Mourir\".",
            "Quand \"Köpodurku\" est un verbe, il peut également apparaître comme \"Erkoköpodurku\" ou \"Kopköpodurku\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_ANCESTOR => ["ancêtre|ancetre"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_ANCESTOR => [
            "\"Ancêtre\" peut se dire \"Köpodurku\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_SOMETHING_MADE => ["köpoega|kopoega|erkoköpoega|erkokopoega|kopköpoega|kopkopoega|köpoegarpo|köpoegapo|kopoegarpo|kopoegapo|erkoköpoegarpo|erkoköpoegapo|erkokopoegarpo|erkokopoegapo|kopköpoegarpo|kopköpoegapo|kopkopoegarpo|kopkopoegapo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_SOMETHING_MADE => [
            "\"Köpoega\" signifie un objet fabriqué, ou peux aussi signifier \"Faire\" comme verbe.",
            "Quand \"Köpoega\" est un verbe, il peut également apparaître comme \"Erkoköpoega\" ou \"Kopköpoega\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_VERB_SOMETHING_MADE => ["faire"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_VERB_SOMETHING_MADE => [
            "\"Faire\" peut se dire \"Köpoega\" en parole gobline, ou avec \"Erkoköpoega\" au passé ou \"Kopköpoega\" au futur."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_WHY_FOR_SOME_REASON => ["köpogugus|kopogugus|erkoköpogugus|erkokopogugus|kopköpogugus|kopkopogugus|köpogugusrpo|köpoguguspo|kopogugusrpo|kopoguguspo|erkoköpogugusrpo|erkoköpoguguspo|erkokopogugusrpo|erkokopoguguspo|kopköpogugusrpo|kopköpoguguspo|kopkopogugusrpo|kopkopoguguspo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_WHY_FOR_SOME_REASON => [
            "\"Köpogugus\" signifie un \"Un raison quelconque\", ou peux aussi signifier \"Agir pour un raison inconnue\" ou \"erratique\" comme verbe, ou peux correspondre à \"Pourquoi\" lorsque utilisé dans un phrase.",
            "Quand \"Köpogugus\" est un verbe, il peut également apparaître comme \"Erkoköpogugus\" ou \"Kopköpogugus\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_WHY_FOR_SOME_REASON => ["pourquoi"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_WHY_FOR_SOME_REASON => [
            "\"Pourquoi\" et \"Un raison quelconque\" peuvent se dire \"Köpogugus\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_VERB_WHY_FOR_SOME_REASON => ["erratique"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_VERB_WHY_FOR_SOME_REASON => [
            "\"Agir pour un raison inconnue\" ou \"Erratique\" peuvent se dire \"Köpogugus\" en parole gobline, ou avec \"Erkoköpogugus\" au passé ou \"Kopköpogugus\" au futur."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_RESULT_OBJECTIVE_IN_ORDER_TO => ["köpogur|kopogur|erkoköpogur|erkokopogur|kopköpogur|kopkopogur|köpogurpo|köpogurpo|kopogurpo|kopogurpo|erkoköpogurpo|erkoköpogurpo|erkokopogurpo|erkokopogurpo|kopköpogurpo|kopköpogurpo|kopkopogurpo|kopkopogurpo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_RESULT_OBJECTIVE_IN_ORDER_TO => [
            "\"Köpogur\" signifie \"Un résultat\", \"Pour\", ou peux aussi signifier \"Essayer de\" comme verbe.",
            "Quand \"Köpogur\" est un verbe, il peut également apparaître comme \"Erkoköpogur\" ou \"Kopköpogur\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_RESULT_OBJECTIVE_IN_ORDER_TO => ["résultat|afin|pour|resultat|afin|pour"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_RESULT_OBJECTIVE_IN_ORDER_TO => [
            "\"Résultat\" et \"Pour\" peuvent tout deux se dire \"Köpogur\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_VERB_RESULT_OBJECTIVE_IN_ORDER_TO => ["essayer"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_VERB_RESULT_OBJECTIVE_IN_ORDER_TO => [
            "\"Essayer de\" peut se dire \"Köpogur\" en parole gobline, ou avec \"Erkoköpogur\" au passé ou \"Kopköpogur\" au futur."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_STRENGTH_STRONG => ["koprëkor|koprekor|erkogoprëkor|erkogoprekor|kopkoprëkor|kopkoprekor|koprëkorpo|koprëkorpo|koprekorpo|koprekorpo|erkogoprëkorpo|erkogoprëkorpo|erkogoprekorpo|erkogoprekorpo|kopkoprëkorpo|kopkoprëkorpo|kopkoprekorpo|kopkoprekorpo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_STRENGTH_STRONG => [
            "\"Koprëkor\" signifie un force, ou peux aussi signifier \"Utiliser sa force pour\" comme verbe.",
            "Quand \"Koprëkor\" est un verbe, il peut également apparaître comme \"Erkogoprëkor\" ou \"Kopkoprëkor\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_STRENGTH_STRONG => ["force"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_STRENGTH_STRONG => [
            "\"Force\" peut se dire \"Koprëkor\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_MOVING_GOING_COMING => ["kör|kor|erkokör|erkokor|kopkör|kopkor|körpo|körpo|korpo|korpo|erkokörpo|erkokörpo|erkokorpo|erkokorpo|kopkörpo|kopkörpo|kopkorpo|kopkorpo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_MOVING_GOING_COMING => [
            "\"Kör\" signifie un déplacement, ou peux aussi signifier \"Aller à\" ou \"Venir\" comme verbe.",
            "Quand \"Kör\" est un verbe, il peut également apparaître comme \"Erkokör\" ou \"Kopkör\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_MOVING_GOING_COMING => ["déplacement|deplacement"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_MOVING_GOING_COMING => [
            "\"Déplacement\" peut se dire \"Kör\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_VERB_MOVING_GOING_COMING => ["venir|aller"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_VERB_MOVING_GOING_COMING => [
            "\"Aller à\" et \"Venir\" peuvent tout deux se dire \"Kör\" en parole gobline, ou avec \"Erkokör\" au passé ou \"Kopkör\" au futur."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_SOMETHING_THAT_FLY => ["körbago|korbago|erkokörbago|erkokorbago|kopkörbago|kopkorbago|körbagorpo|körbagopo|korbagorpo|korbagopo|erkokörbagorpo|erkokörbagopo|erkokorbagorpo|erkokorbagopo|kopkörbagorpo|kopkörbagopo|kopkorbagorpo|kopkorbagopo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_SOMETHING_THAT_FLY => [
            "\"Körbago\" signifie un objet volant, ou peux aussi signifier \"Voler\" comme verbe.",
            "Quand \"Körbago\" est un verbe, il peut également apparaître comme \"Erkokörbago\" ou \"Kopkörbago\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_SOMETHING_THAT_FLY => ["volant"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_SOMETHING_THAT_FLY => [
            "\"Objet volant\" peut se dire \"Körbago\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_VERB_SOMETHING_THAT_FLY => ["voler"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_VERB_SOMETHING_THAT_FLY => [
            "\"Voler\" peut se dire \"Körbago\" en parole gobline, ou avec \"Erkokörbago\" au passé ou \"Kopkörbago\" au futur."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_SWIM => ["kördaregosedop|kordaregosedop|erkokördaregosedop|erkokordaregosedop|kopkördaregosedop|kopkordaregosedop|kördaregosedoprpo|kördaregosedoppo|kordaregosedoprpo|kordaregosedoppo|erkokördaregosedoprpo|erkokördaregosedoppo|erkokordaregosedoprpo|erkokordaregosedoppo|kopkördaregosedoprpo|kopkördaregosedoppo|kopkordaregosedoprpo|kopkordaregosedoppo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_SWIM => [
            "\"Kördaregosedop\" signifie un nage, ou peux aussi signifier \"Nager\" comme verbe.",
            "Quand \"Kördaregosedop\" est un verbe, il peut également apparaître comme \"Erkokördaregosedop\" ou \"Kopkördaregosedop\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_SWIM => ["nage"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_SWIM => [
            "\"Nage\" peut se dire \"Kördaregosedop\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_VERB_SWIM => ["nager"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_VERB_SWIM => [
            "\"Nager\" peut se dire \"Kördaregosedop\" en parole gobline, ou avec \"Erkokördaregosedop\" au passé ou \"Kopkördaregosedop\" au futur."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_ARTICULATION => ["körkegopu|korkegopu|erkokörkegopu|erkokorkegopu|kopkörkegopu|kopkorkegopu|körkegopurpo|körkegopupo|korkegopurpo|korkegopupo|erkokörkegopurpo|erkokörkegopupo|erkokorkegopurpo|erkokorkegopupo|kopkörkegopurpo|kopkörkegopupo|kopkorkegopurpo|kopkorkegopupo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_ARTICULATION => [
            "\"Körkegopu\" signifie un articulation, ou peux aussi signifier \"Articuler\" comme verbe.",
            "Quand \"Körkegopu\" est un verbe, il peut également apparaître comme \"Erkokörkegopu\" ou \"Kopkörkegopu\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_ARTICULATION => ["articulation"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_ARTICULATION => [
            "\"Articulation\" peut se dire \"Körkegopu\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_VERB_ARTICULATION => ["articuler"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_VERB_ARTICULATION => [
            "\"Articuler\" peut se dire \"Körkegopu\" en parole gobline, ou avec \"Erkokörkegopu\" au passé ou \"Kopkörkegopu\" au futur."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_ENTRANCE => ["korkëtogubagedo|korketogubagedo|erkogorkëtogubagedo|erkogorketogubagedo|kopkorkëtogubagedo|kopkorketogubagedo|korkëtogubagedorpo|korkëtogubagedopo|korketogubagedorpo|korketogubagedopo|erkogorkëtogubagedorpo|erkogorkëtogubagedopo|erkogorketogubagedorpo|erkogorketogubagedopo|kopkorkëtogubagedorpo|kopkorkëtogubagedopo|kopkorketogubagedorpo|kopkorketogubagedopo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_ENTRANCE => [
            "\"Korkëtogubagedo\" signifie un entrée, ou peux aussi signifier \"Entrer\" comme verbe.",
            "Quand \"Korkëtogubagedo\" est un verbe, il peut également apparaître comme \"Erkogorkëtogubagedo\" ou \"Kopkorkëtogubagedo\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_ENTRANCE => ["entrée|entree"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_ENTRANCE => [
            "\"Entrée\" peut se dire \"Korkëtogubagedo\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_VERB_ENTRANCE => ["entrer"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_VERB_ENTRANCE => [
            "\"Entrer\" peut se dire \"Korkëtogubagedo\" en parole gobline, ou avec \"Erkogorkëtogubagedo\" au passé ou \"Kopkorkëtogubagedo\" au futur."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_FOLLOWER => ["korkëtogubu|korketogubu|erkogorkëtogubu|erkogorketogubu|kopkorkëtogubu|kopkorketogubu|korkëtoguburpo|korkëtogubupo|korketoguburpo|korketogubupo|erkogorkëtoguburpo|erkogorkëtogubupo|erkogorketoguburpo|erkogorketogubupo|kopkorkëtoguburpo|kopkorkëtogubupo|kopkorketoguburpo|kopkorketogubupo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_FOLLOWER => [
            "\"Korkëtogubu\" signifie un suiveur, ou peux aussi signifier \"Venir\" comme verbe.",
            "Quand \"Korkëtogubu\" est un verbe, il peut également apparaître comme \"Erkogorkëtogubu\" ou \"Kopkorkëtogubu\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_FOLLOWER => ["suiveur"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_FOLLOWER => [
            "\"Suiveur\" peut se dire \"Korkëtogubu\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_VERB_FOLLOWER => ["venir"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_VERB_FOLLOWER => [
            "\"Venir\" peut se dire \"Korkëtogubu\" en parole gobline, ou avec \"Erkogorkëtogubu\" au passé ou \"Kopkorkëtogubu\" au futur."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_TIME => ["korkö|korko|erkogorkö|erkogorko|kopkorkö|kopkorko|korkörpo|korköbo|korkorpo|korkopo|erkogorkörpo|erkogorköbo|erkogorkorpo|erkogorkopo|kopkorkörpo|kopkorköbo|kopkorkorpo|kopkorkopo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_TIME => [
            "\"Korkö\" signifie un temps, quand, ou peux aussi signifier \"Attendre\" comme verbe.",
            "Quand \"Korkö\" est un verbe, il peut également apparaître comme \"Erkogorkö\" ou \"Kopkorkö\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_TIME => ["temps"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_TIME => [
            "\"Temps\" et \"Quand\" peuvent se dire \"Korkö\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_VERB_TIME => ["attendre"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_VERB_TIME => [
            "\"Attendre\" peut se dire \"Korkö\" en parole gobline, ou avec \"Erkogorkö\" au passé ou \"Kopkorkö\" au futur."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_FOREVER_ETERNITY => ["korköerkubu|korkoerkubu|erkogorköerkubu|erkogorkoerkubu|kopkorköerkubu|kopkorkoerkubu|korköerkuburpo|korköerkubupo|korkoerkuburpo|korkoerkubupo|erkogorköerkuburpo|erkogorköerkubupo|erkogorkoerkuburpo|erkogorkoerkubupo|kopkorköerkuburpo|kopkorköerkubupo|kopkorkoerkuburpo|kopkorkoerkubupo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_FOREVER_ETERNITY => [
            "\"Korköerkubu\" signifie un éternité, ou peux aussi signifier \"Faire durer\" ou \"Préserver\" comme verbe.",
            "Quand \"Korköerkubu\" est un verbe, il peut également apparaître comme \"Erkogorköerkubu\" ou \"Kopkorköerkubu\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_FOREVER_ETERNITY => ["éternité|eternite"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_FOREVER_ETERNITY => [
            "\"Éternité\" peut se dire \"Korköerkubu\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_VERB_FOREVER_ETERNITY => ["faire|préserver|preserver", "durer|préserver|preserver"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_VERB_FOREVER_ETERNITY => [
            "\"Faire durer\" et \"Préserver\" peuvent se dire \"Korköerkubu\" en parole gobline, ou avec \"Erkogorköerkubu\" au passé ou \"Kopkorköerkubu\" au futur."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_DAY => ["korköpoburbu|korkopoburbu|erkogorköpoburbu|erkogorkopoburbu|kopkorköpoburbu|kopkorkopoburbu|korköpoburburpo|korköpoburbupo|korkopoburburpo|korkopoburbupo|erkogorköpoburburpo|erkogorköpoburbupo|erkogorkopoburburpo|erkogorkopoburbupo|kopkorköpoburburpo|kopkorköpoburbupo|kopkorkopoburburpo|kopkorkopoburbupo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_DAY => [
            "\"Korköpoburbu\" signifie un jour, ou peux aussi signifier \"Faire venir le jour\", un expression pour \"Illuminer\", comme verbe.",
            "Quand \"Korköpoburbu\" est un verbe, il peut également apparaître comme \"Erkogorköpoburbu\" ou \"Kopkorköpoburbu\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_DAY => ["jour"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_DAY => [
            "\"Jour\" peut se dire \"Korköpoburbu\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_VERB_DAY => ["illuminer"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_VERB_DAY => [
            "\"Faire venir le jour expression pour illuminer\" peut se dire \"Korköpoburbu\" en parole gobline, ou avec \"Erkogorköpoburbu\" au passé ou \"Kopkorköpoburbu\" au futur."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_NIGHT => ["korkötoder|korkotoder|erkogorkötoder|erkogorkotoder|kopkorkötoder|kopkorkotoder|korkötoderpo|korkötoderpo|korkotoderpo|korkotoderpo|erkogorkötoderpo|erkogorkötoderpo|erkogorkotoderpo|erkogorkotoderpo|kopkorkötoderpo|kopkorkötoderpo|kopkorkotoderpo|kopkorkotoderpo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_NIGHT => [
            "\"Korkötoder\" signifie un nuit, ou peux aussi signifier \"Faire durant la nuit\" comme verbe.",
            "Quand \"Korkötoder\" est un verbe, il peut également apparaître comme \"Erkogorkötoder\" ou \"Kopkorkötoder\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_NIGHT => ["nuit"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_NIGHT => [
            "\"Nuit\" peut se dire \"Korkötoder\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_EXIT => ["körkubagedo|korkubagedo|erkokörkubagedo|erkokorkubagedo|kopkörkubagedo|kopkorkubagedo|körkubagedorpo|körkubagedopo|korkubagedorpo|korkubagedopo|erkokörkubagedorpo|erkokörkubagedopo|erkokorkubagedorpo|erkokorkubagedopo|kopkörkubagedorpo|kopkörkubagedopo|kopkorkubagedorpo|kopkorkubagedopo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_EXIT => [
            "\"Körkubagedo\" signifie un sortie, ou peux aussi signifier \"Quitter\" comme verbe.",
            "Quand \"Körkubagedo\" est un verbe, il peut également apparaître comme \"Erkokörkubagedo\" ou \"Kopkörkubagedo\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_EXIT => ["sortie"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_EXIT => [
            "\"Sortie\" peut se dire \"Körkubagedo\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_VERB_EXIT => ["quitter"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_VERB_EXIT => [
            "\"Quitter\" peut se dire \"Körkubagedo\" en parole gobline, ou avec \"Erkokörkubagedo\" au passé ou \"Kopkörkubagedo\" au futur."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_CHANGE => ["körra|korra|erkokörra|erkokorra|kopkörra|kopkorra|körrarpo|körrapo|korrarpo|korrapo|erkokörrarpo|erkokörrapo|erkokorrarpo|erkokorrapo|kopkörrarpo|kopkörrapo|kopkorrarpo|kopkorrapo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_CHANGE => [
            "\"Körra\" signifie un changement, ou peux aussi signifier \"Changer\" comme verbe.",
            "Quand \"Körra\" est un verbe, il peut également apparaître comme \"Erkokörra\" ou \"Kopkörra\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_CHANGE => ["changement"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_CHANGE => [
            "\"Changement\" peut se dire \"Körra\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_VERB_CHANGE => ["changer"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_VERB_CHANGE => [
            "\"Changer\" peut se dire \"Körra\" en parole gobline, ou avec \"Erkokörra\" au passé ou \"Kopkörra\" au futur."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_DIFFERNCE => ["körraega|korraega|erkokörraega|erkokorraega|kopkörraega|kopkorraega|körraegarpo|körraegapo|korraegarpo|korraegapo|erkokörraegarpo|erkokörraegapo|erkokorraegarpo|erkokorraegapo|kopkörraegarpo|kopkörraegapo|kopkorraegarpo|kopkorraegapo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_DIFFERNCE => [
            "\"Körraega\" signifie un différence, ou peux aussi signifier \"Rendre différent\" comme verbe.",
            "Quand \"Körraega\" est un verbe, il peut également apparaître comme \"Erkokörraega\" ou \"Kopkörraega\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_DIFFERNCE => ["différence|difference"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_DIFFERNCE => [
            "\"Différence\" peut se dire \"Körraega\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_SURPRISED => ["körragosaborkus|korragosaborkus|erkokörragosaborkus|erkokorragosaborkus|kopkörragosaborkus|kopkorragosaborkus|körragosaborkusrpo|körragosaborkuspo|korragosaborkusrpo|korragosaborkuspo|erkokörragosaborkusrpo|erkokörragosaborkuspo|erkokorragosaborkusrpo|erkokorragosaborkuspo|kopkörragosaborkusrpo|kopkörragosaborkuspo|kopkorragosaborkusrpo|kopkorragosaborkuspo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_SURPRISED => [
            "\"Körragosaborkus\" signifie un surprise, ou peux aussi signifier \"Être surprit\" comme verbe.",
            "Quand \"Körragosaborkus\" est un verbe, il peut également apparaître comme \"Erkokörragosaborkus\" ou \"Kopkörragosaborkus\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_SURPRISED => ["surprise"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_SURPRISED => [
            "\"Surprise\" peut se dire \"Körragosaborkus\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_VERB_SURPRISED => ["être|etre", "|surprit"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_VERB_SURPRISED => [
            "\"Être surprit\" peut se dire \"Körragosaborkus\" en parole gobline, ou avec \"Erkokörragosaborkus\" au passé ou \"Kopkörragosaborkus\" au futur."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_APOLOGY => ["körrarko|korrarko|erkokörrarko|erkokorrarko|kopkörrarko|kopkorrarko|körrarkorpo|körrarkopo|korrarkorpo|korrarkopo|erkokörrarkorpo|erkokörrarkopo|erkokorrarkorpo|erkokorrarkopo|kopkörrarkorpo|kopkörrarkopo|kopkorrarkorpo|kopkorrarkopo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_APOLOGY => [
            "\"Körrarko\" signifie un excuse, ou peux aussi signifier \"S'excuser\" comme verbe.",
            "Quand \"Körrarko\" est un verbe, il peut également apparaître comme \"Erkokörrarko\" ou \"Kopkörrarko\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_APOLOGY => ["excuse"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_APOLOGY => [
            "\"Excuse\" peut se dire \"Körrarko\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_VERB_APOLOGY => ["excuser"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_VERB_APOLOGY => [
            "\"S'excuser\" peut se dire \"Körrarko\" en parole gobline, ou avec \"Erkokörrarko\" au passé ou \"Kopkörrarko\" au futur."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_UNKNOWN => ["kös|kos|erkokös|erkokos|kopkös|kopkos|kösrpo|köspo|kosrpo|kospo|erkokösrpo|erkoköspo|erkokosrpo|erkokospo|kopkösrpo|kopköspo|kopkosrpo|kopkospo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_UNKNOWN => [
            "\"Kös\" signifie un inconnu, ou peux aussi signifier \"Ignorer\" comme verbe.",
            "Quand \"Kös\" est un verbe, il peut également apparaître comme \"Erkokös\" ou \"Kopkös\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_UNKNOWN => ["inconnu"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_UNKNOWN => [
            "\"Inconnu\" peut se dire \"Kös\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_VERB_UNKNOWN => ["ignorer"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_VERB_UNKNOWN => [
            "\"Ignorer\" peut se dire \"Kös\" en parole gobline, ou avec \"Erkokös\" au passé ou \"Kopkös\" au futur."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_BELIEF => ["kosaborkös|kosaborkos|erkogosaborkös|erkogosaborkos|kopkosaborkös|kopkosaborkos|kosaborkösrpo|kosaborköspo|kosaborkosrpo|kosaborkospo|erkogosaborkösrpo|erkogosaborköspo|erkogosaborkosrpo|erkogosaborkospo|kopkosaborkösrpo|kopkosaborköspo|kopkosaborkosrpo|kopkosaborkospo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_BELIEF => [
            "\"Kosaborkös\" signifie un croyance, ou peux aussi signifier \"Croire\" comme verbe.",
            "Quand \"Kosaborkös\" est un verbe, il peut également apparaître comme \"Erkogosaborkös\" ou \"Kopkosaborkös\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_BELIEF => ["croyance"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_BELIEF => [
            "\"Croyance\" peut se dire \"Kosaborkös\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_VERB_BELIEF => ["croire"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_VERB_BELIEF => [
            "\"Croire\" peut se dire \"Kosaborkös\" en parole gobline, ou avec \"Erkogosaborkös\" au passé ou \"Kopkosaborkös\" au futur."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_KNOWLEDGE => ["kosäpor|kosapor|erkogosäpor|erkogosapor|kopkosäpor|kopkosapor|kosäporpo|kosäporpo|kosaporpo|kosaporpo|erkogosäporpo|erkogosäporpo|erkogosaporpo|erkogosaporpo|kopkosäporpo|kopkosäporpo|kopkosaporpo|kopkosaporpo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_KNOWLEDGE => [
            "\"Kosäpor\" signifie un savoir, ou peux aussi signifier \"Savoir\" comme verbe.",
            "Quand \"Kosäpor\" est un verbe, il peut également apparaître comme \"Erkogosäpor\" ou \"Kopkosäpor\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_KNOWLEDGE => ["savoir"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_KNOWLEDGE => [
            "\"Savoir\" peut se dire \"Kosäpor\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_VERB_KNOWLEDGE => ["savoir"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_VERB_KNOWLEDGE => [
            "\"Savoir\" peut se dire \"Kosäpor\" en parole gobline, ou avec \"Erkogosäpor\" au passé ou \"Kopkosäpor\" au futur."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_BITE_MARK => ["krör|kror|erkokrör|erkokror|kobokrör|kobokror|krörpo|krörpo|krorpo|krorpo|erkokrörpo|erkokrörpo|erkokrorpo|erkokrorpo|kobokrörpo|kobokrörpo|kobokrorpo|kobokrorpo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_BITE_MARK => [
            "\"Krör\" signifie un morsure, ou peux aussi signifier \"Mordre\" comme verbe.",
            "Quand \"Krör\" est un verbe, il peut également apparaître comme \"Erkokrör\" ou \"Kobokrör\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_BITE_MARK => ["morsure"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_BITE_MARK => [
            "\"Morsure\" peut se dire \"Krör\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_VERB_BITE_MARK => ["mordre"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_VERB_BITE_MARK => [
            "\"Mordre\" peut se dire \"Krör\" en parole gobline, ou avec \"Erkokrör\" au passé ou \"Kobokrör\" au futur."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_MEAL => ["krördar|krordar|erkokrördar|erkokrordar|kobokrördar|kobokrordar|krördarpo|krördarpo|krordarpo|krordarpo|erkokrördarpo|erkokrördarpo|erkokrordarpo|erkokrordarpo|kobokrördarpo|kobokrördarpo|kobokrordarpo|kobokrordarpo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_MEAL => [
            "\"Krördar\" signifie un repas, ou peux aussi signifier \"Manger\" comme verbe.",
            "Quand \"Krördar\" est un verbe, il peut également apparaître comme \"Erkokrördar\" ou \"Kobokrördar\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_MEAL => ["repas"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_MEAL => [
            "\"Repas\" peut se dire \"Krördar\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_VERB_MEAL => ["manger"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_VERB_MEAL => [
            "\"Manger\" peut se dire \"Krördar\" en parole gobline, ou avec \"Erkokrördar\" au passé ou \"Kobokrördar\" au futur."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_FIRE => ["kröt|krot|erkokröt|erkokrot|kobokröt|kobokrot|krötrpo|krötpo|krotrpo|krotpo|erkokrötrpo|erkokrötpo|erkokrotrpo|erkokrotpo|kobokrötrpo|kobokrötpo|kobokrotrpo|kobokrotpo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_FIRE => [
            "\"Kröt\" signifie un feu, ou peux aussi signifier \"Brûler\" comme verbe.",
            "Quand \"Kröt\" est un verbe, il peut également apparaître comme \"Erkokröt\" ou \"Kobokröt\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_FIRE => ["feu"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_FIRE => [
            "\"Feu\" peut se dire \"Kröt\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_VERB_FIRE => ["brûler|bruler"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_VERB_FIRE => [
            "\"Brûler\" peut se dire \"Kröt\" en parole gobline, ou avec \"Erkokröt\" au passé ou \"Kobokröt\" au futur."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_ORANGE => ["krötepra|krotepra|erkokrötepra|erkokrotepra|kobokrötepra|kobokrotepra|kröteprarpo|kröteprapo|kroteprarpo|kroteprapo|erkokröteprarpo|erkokröteprapo|erkokroteprarpo|erkokroteprapo|kobokröteprarpo|kobokröteprapo|kobokroteprarpo|kobokroteprapo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_ORANGE => [
            "\"Krötepra\" signifie un orange, ou peux aussi signifier \"Rendre ou être orange\" comme verbe.",
            "Quand \"Krötepra\" est un verbe, il peut également apparaître comme \"Erkokrötepra\" ou \"Kobokrötepra\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_ORANGE => ["orange"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_ORANGE => [
            "\"Orange\" peut se dire \"Krötepra\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_PLANT => ["ktö|kto|erkoktö|erkokto|koboktö|kobokto|ktörpo|ktöbo|ktorpo|ktopo|erkoktörpo|erkoktöbo|erkoktorpo|erkoktopo|koboktörpo|koboktöbo|koboktorpo|koboktopo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_PLANT => [
            "\"Ktö\" signifie un plante, ou peux aussi signifier \"Planter\" comme verbe.",
            "Quand \"Ktö\" est un verbe, il peut également apparaître comme \"Erkoktö\" ou \"Koboktö\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_PLANT => ["plante"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_PLANT => [
            "\"Plante\" peut se dire \"Ktö\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_VERB_PLANT => ["planter"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_VERB_PLANT => [
            "\"Planter\" peut se dire \"Ktö\" en parole gobline, ou avec \"Erkoktö\" au passé ou \"Koboktö\" au futur."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_BERRY => ["ktöeka|ktoeka|erkoktöeka|erkoktoeka|koboktöeka|koboktoeka|ktöekarpo|ktöekapo|ktoekarpo|ktoekapo|erkoktöekarpo|erkoktöekapo|erkoktoekarpo|erkoktoekapo|koboktöekarpo|koboktöekapo|koboktoekarpo|koboktoekapo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_BERRY => [
            "\"Ktöeka\" signifie un baie, ou peux aussi signifier \"Manger des baies\" comme verbe.",
            "Quand \"Ktöeka\" est un verbe, il peut également apparaître comme \"Erkoktöeka\" ou \"Koboktöeka\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_BERRY => ["baie"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_BERRY => [
            "\"Baie\" peut se dire \"Ktöeka\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_ALKEKENGI => ["ktöekaragerot|ktoekaragerot|erkoktöekaragerot|erkoktoekaragerot|koboktöekaragerot|koboktoekaragerot|ktöekaragerotrpo|ktöekaragerotpo|ktoekaragerotrpo|ktoekaragerotpo|erkoktöekaragerotrpo|erkoktöekaragerotpo|erkoktoekaragerotrpo|erkoktoekaragerotpo|koboktöekaragerotrpo|koboktöekaragerotpo|koboktoekaragerotrpo|koboktoekaragerotpo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_ALKEKENGI => [
            "\"Ktöekaragerot\" signifie un alkekengi (amour en cage), ou peux aussi signifier \"Manger des alkengis\" comme verbe.",
            "Quand \"Ktöekaragerot\" est un verbe, il peut également apparaître comme \"Erkoktöekaragerot\" ou \"Koboktöekaragerot\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_ALKEKENGI => ["alkekengi"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_ALKEKENGI => [
            "\"Alkekengi (amour en cage)\" peut se dire \"Ktöekaragerot\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_GRASS => ["ktökobu|ktokobu|erkoktökobu|erkoktokobu|koboktökobu|koboktokobu|ktökoburpo|ktökobupo|ktokoburpo|ktokobupo|erkoktökoburpo|erkoktökobupo|erkoktokoburpo|erkoktokobupo|koboktökoburpo|koboktökobupo|koboktokoburpo|koboktokobupo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_GRASS => [
            "\"Ktökobu\" signifie un herbe, ou peux aussi signifier \"Planter de l'herbe\" comme verbe.",
            "Quand \"Ktökobu\" est un verbe, il peut également apparaître comme \"Erkoktökobu\" ou \"Koboktökobu\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_GRASS => ["herbe"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_GRASS => [
            "\"Herbe\" peut se dire \"Ktökobu\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_YELLOW => ["ktökobugut|ktokobugut|erkoktökobugut|erkoktokobugut|koboktökobugut|koboktokobugut|ktökobugutrpo|ktökobugutpo|ktokobugutrpo|ktokobugutpo|erkoktökobugutrpo|erkoktökobugutpo|erkoktokobugutrpo|erkoktokobugutpo|koboktökobugutrpo|koboktökobugutpo|koboktokobugutrpo|koboktokobugutpo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_YELLOW => [
            "\"Ktökobugut\" signifie un jaune, ou peux aussi signifier \"Rendre jaune\" ou \"Être jaune\" comme verbe.",
            "Quand \"Ktökobugut\" est un verbe, il peut également apparaître comme \"Erkoktökobugut\" ou \"Koboktökobugut\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_YELLOW => ["jaune"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_YELLOW => [
            "\"Jaune\" peut se dire \"Ktökobugut\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_TREE => ["ktöpago|ktopago|erkoktöpago|erkoktopago|koboktöpago|koboktopago|ktöpagorpo|ktöpagopo|ktopagorpo|ktopagopo|erkoktöpagorpo|erkoktöpagopo|erkoktopagorpo|erkoktopagopo|koboktöpagorpo|koboktöpagopo|koboktopagorpo|koboktopagopo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_TREE => [
            "\"Ktöpago\" signifie un arbre, ou peux aussi signifier \"Aller dans un arbre\" comme verbe.",
            "Quand \"Ktöpago\" est un verbe, il peut également apparaître comme \"Erkoktöpago\" ou \"Koboktöpago\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_TREE => ["arbre"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_TREE => [
            "\"Arbre\" peut se dire \"Ktöpago\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_DEEP_GREEN => ["ktörkopu|ktorkopu|erkoktörkopu|erkoktorkopu|koboktörkopu|koboktorkopu|ktörkopurpo|ktörkopupo|ktorkopurpo|ktorkopupo|erkoktörkopurpo|erkoktörkopupo|erkoktorkopurpo|erkoktorkopupo|koboktörkopurpo|koboktörkopupo|koboktorkopurpo|koboktorkopupo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_DEEP_GREEN => [
            "\"Ktörkopu\" signifie un vert profond, ou peux aussi signifier \"Rendre vert profond\" ou \"Être vert profond\" comme verbe.",
            "Quand \"Ktörkopu\" est un verbe, il peut également apparaître comme \"Erkoktörkopu\" ou \"Koboktörkopu\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_DEEP_GREEN => ["vert|profond"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_DEEP_GREEN => [
            "\"Vert profond\" peut se dire \"Ktörkopu\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_APPLE => ["ktötagodar|ktotagodar|erkoktötagodar|erkoktotagodar|koboktötagodar|koboktotagodar|ktötagodarpo|ktötagodarpo|ktotagodarpo|ktotagodarpo|erkoktötagodarpo|erkoktötagodarpo|erkoktotagodarpo|erkoktotagodarpo|koboktötagodarpo|koboktötagodarpo|koboktotagodarpo|koboktotagodarpo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_APPLE => [
            "\"Ktötagodar\" signifie un pomme, ou peux aussi signifier \"Manger des pommes\" comme verbe.",
            "Quand \"Ktötagodar\" est un verbe, il peut également apparaître comme \"Erkoktötagodar\" ou \"Koboktötagodar\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_APPLE => ["pomme"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_APPLE => [
            "\"Pomme\" peut se dire \"Ktötagodar\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_FRUIT => ["ktötar|ktotar|erkoktötar|erkoktotar|koboktötar|koboktotar|ktötarpo|ktötarpo|ktotarpo|ktotarpo|erkoktötarpo|erkoktötarpo|erkoktotarpo|erkoktotarpo|koboktötarpo|koboktötarpo|koboktotarpo|koboktotarpo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_FRUIT => [
            "\"Ktötar\" signifie un fruit, ou peux aussi signifier \"Manger des fruits\" comme verbe.",
            "Quand \"Ktötar\" est un verbe, il peut également apparaître comme \"Erkoktötar\" ou \"Koboktötar\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_FRUIT => ["fruit"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_FRUIT => [
            "\"Fruit\" peut se dire \"Ktötar\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_COPPER => ["pagoburegotrë|pagoburegotre|erkopagoburegotrë|erkopagoburegotre|koppagoburegotrë|koppagoburegotre|pagoburegotrërpo|pagoburegotrëbo|pagoburegotrerpo|pagoburegotrepo|erkopagoburegotrërpo|erkopagoburegotrëbo|erkopagoburegotrerpo|erkopagoburegotrepo|koppagoburegotrërpo|koppagoburegotrëbo|koppagoburegotrerpo|koppagoburegotrepo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_COPPER => [
            "\"Pagoburegotrë\" signifie un cuivre, ou peux aussi signifier \"Ajouter du cuivre à\" comme verbe.",
            "Quand \"Pagoburegotrë\" est un verbe, il peut également apparaître comme \"Erkopagoburegotrë\" ou \"Koppagoburegotrë\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_COPPER => ["cuivre"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_COPPER => [
            "\"Cuivre\" peut se dire \"Pagoburegotrë\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_HEAD => ["pagodarkör|pagodarkor|erkopagodarkör|erkopagodarkor|koppagodarkör|koppagodarkor|pagodarkörpo|pagodarkörpo|pagodarkorpo|pagodarkorpo|erkopagodarkörpo|erkopagodarkörpo|erkopagodarkorpo|erkopagodarkorpo|koppagodarkörpo|koppagodarkörpo|koppagodarkorpo|koppagodarkorpo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_HEAD => [
            "\"Pagodarkör\" signifie un tête, ou peux aussi signifier \"Mettre sa tête dans\" comme verbe.",
            "Quand \"Pagodarkör\" est un verbe, il peut également apparaître comme \"Erkopagodarkör\" ou \"Koppagodarkör\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_HEAD => ["tête|tete"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_HEAD => [
            "\"Tête\" peut se dire \"Pagodarkör\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_TOP_UP_TALL => ["pakö|pako|erkopakö|erkopako|koppakö|koppako|pakörpo|paköbo|pakorpo|pakopo|erkopakörpo|erkopaköbo|erkopakorpo|erkopakopo|koppakörpo|koppaköbo|koppakorpo|koppakopo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_TOP_UP_TALL => [
            "\"Pakö\" signifie un sommet, haut, grand, ou peux aussi signifier \"Monter\" comme verbe.",
            "Quand \"Pakö\" est un verbe, il peut également apparaître comme \"Erkopakö\" ou \"Koppakö\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_TOP_UP_TALL => ["haut|grand|sommet"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_TOP_UP_TALL => [
            "\"Haut\", \"Grand\" et \"Sommet\" peuvent se dire \"Pakö\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_VERB_TOP_UP_TALL => ["monter"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_VERB_TOP_UP_TALL => [
            "\"Monter\" peut se dire \"Pakö\" en parole gobline, ou avec \"Erkopakö\" au passé ou \"Koppakö\" au futur."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_HEART => ["pobök|pobok|erkobobök|erkobobok|koppobök|koppobok|pobökrpo|pobökpo|pobokrpo|pobokpo|erkobobökrpo|erkobobökpo|erkobobokrpo|erkobobokpo|koppobökrpo|koppobökpo|koppobokrpo|koppobokpo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_HEART => [
            "\"Pobök\" signifie un coeur, ou peux aussi signifier \"Ajouter du coeur à\" comme verbe.",
            "Quand \"Pobök\" est un verbe, il peut également apparaître comme \"Erkobobök\" ou \"Koppobök\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_HEART => ["coeur"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_HEART => [
            "\"Coeur\" peut se dire \"Pobök\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_SUN => ["poburbökor|poburbokor|erkoboburbökor|erkoboburbokor|koppoburbökor|koppoburbokor|poburbökorpo|poburbökorpo|poburbokorpo|poburbokorpo|erkoboburbökorpo|erkoboburbökorpo|erkoboburbokorpo|erkoboburbokorpo|koppoburbökorpo|koppoburbökorpo|koppoburbokorpo|koppoburbokorpo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_SUN => [
            "\"Poburbökor\" signifie un soleil, ou peux aussi signifier \"Illuminer trop fort\" comme verbe.",
            "Quand \"Poburbökor\" est un verbe, il peut également apparaître comme \"Erkoboburbökor\" ou \"Koppoburbökor\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_SUN => ["soleil"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_SUN => [
            "\"Soleil\" peut se dire \"Poburbökor\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_LIGHT => ["poburbör|poburbor|erkoboburbör|erkoboburbor|koppoburbör|koppoburbor|poburbörpo|poburbörpo|poburborpo|poburborpo|erkoboburbörpo|erkoboburbörpo|erkoboburborpo|erkoboburborpo|koppoburbörpo|koppoburbörpo|koppoburborpo|koppoburborpo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_LIGHT => [
            "\"Poburbör\" signifie un lumière, ou peux aussi signifier \"Briller\" comme verbe.",
            "Quand \"Poburbör\" est un verbe, il peut également apparaître comme \"Erkoboburbör\" ou \"Koppoburbör\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_LIGHT => ["lumière|lumiere"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_LIGHT => [
            "\"Lumière\" peut se dire \"Poburbör\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_VERB_LIGHT => ["briller"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_VERB_LIGHT => [
            "\"Briller\" peut se dire \"Poburbör\" en parole gobline, ou avec \"Erkoboburbör\" au passé ou \"Koppoburbör\" au futur."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_STORY => ["pogurkö|pogurko|erkobogurkö|erkobogurko|koppogurkö|koppogurko|pogurkörpo|pogurköbo|pogurkorpo|pogurkopo|erkobogurkörpo|erkobogurköbo|erkobogurkorpo|erkobogurkopo|koppogurkörpo|koppogurköbo|koppogurkorpo|koppogurkopo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_STORY => [
            "\"Pogurkö\" signifie un histoire, ou peux aussi signifier \"Raconter\" comme verbe.",
            "Quand \"Pogurkö\" est un verbe, il peut également apparaître comme \"Erkobogurkö\" ou \"Koppogurkö\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_STORY => ["histoire"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_STORY => [
            "\"Histoire\" peut se dire \"Pogurkö\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_VERB_STORY => ["raconter"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_VERB_STORY => [
            "\"Raconter\" peut se dire \"Pogurkö\" en parole gobline, ou avec \"Erkobogurkö\" au passé ou \"Koppogurkö\" au futur."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_TALK => ["pöko|poko|erkopöko|erkopoko|koppöko|koppoko|pökorpo|pökopo|pokorpo|pokopo|erkopökorpo|erkopökopo|erkopokorpo|erkopokopo|koppökorpo|koppökopo|koppokorpo|koppokopo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_TALK => [
            "\"Pöko\" signifie un parole, ou peux aussi signifier \"Paler\" ou \"Demander\" comme verbe.\nCe mot sert également d'introduction en goblin.",
            "Pour se présenter lorsqu'ils parlent les goblins diront généralement \"Pöko sö \" et leur nom, un peu comme votre \"Bonjour je m'appelle ...\". Et le goblin en face répondra \"Pöko sö nom sö ...\", pour \"Nom parle à ...\", ou parfois les goblins répondent \"Säpogu sö ...\" pour \"... écoute\".",
            "Quand \"Pöko\" est un verbe, il peut également apparaître comme \"Erkopöko\" ou \"Koppöko\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_TALK => ["parole|salut|bonjour"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_TALK => [
            "\"Parole\" peut se dire \"Pöko\" en parole gobline.\nC'est aussi une forme de salutation, les gens s'introduisant généralement en disant \"Pöko sö \" et leur nom, l'autre répondant \"Pöko sö nom sö \" et leur propre nom. Ou \"Säpogu sö ...\" pour \"... écoute\"."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_VERB_TALK => ["paler|demander"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_VERB_TALK => [
            "\"Paler\" ou \"Demander\" peut se dire \"Pöko\" en parole gobline, ou avec \"Erkopöko\" au passé ou \"Koppöko\" au futur."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_MAGIC => ["pökodu|pokodu|erkopökodu|erkopokodu|koppökodu|koppokodu|pökodurpo|pökodupo|pokodurpo|pokodupo|erkopökodurpo|erkopökodupo|erkopokodurpo|erkopokodupo|koppökodurpo|koppökodupo|koppokodurpo|koppokodupo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_MAGIC => [
            "\"Pökodu\" signifie un magie, ou peux aussi signifier \"Utiliser la magie\" comme verbe.",
            "Quand \"Pökodu\" est un verbe, il peut également apparaître comme \"Erkopökodu\" ou \"Koppökodu\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_MAGIC => ["magie"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_MAGIC => [
            "\"Magie\" peut se dire \"Pökodu\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_VERB_MAGIC => ["utiliser", "magie"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_VERB_MAGIC => [
            "\"Utiliser la magie\" peut se dire \"Pökodu\" en parole gobline, ou avec \"Erkopökodu\" au passé ou \"Koppökodu\" au futur."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_ATTACK => ["popör|popor|erkobopör|erkobopor|koppopör|koppopor|popörpo|popörpo|poporpo|poporpo|erkobopörpo|erkobopörpo|erkoboporpo|erkoboporpo|koppopörpo|koppopörpo|koppoporpo|koppoporpo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_ATTACK => [
            "\"Popör\" signifie un attaque, ou peux aussi signifier \"Frapper\" ou \"Se battre\" comme verbe.",
            "Quand \"Popör\" est un verbe, il peut également apparaître comme \"Erkobopör\" ou \"Koppopör\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_ATTACK => ["attaque"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_ATTACK => [
            "\"Attaque\" peut se dire \"Popör\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_VERB_ATTACK => ["frapper|battre"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_VERB_ATTACK => [
            "\"Frapper\" et \"Se battre\" peuvent se dire \"Popör\" en parole gobline, ou avec \"Erkobopör\" au passé ou \"Koppopör\" au futur."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_SIGHT => ["pör|por|erkopör|erkopor|koppör|koppor|pörpo|pörpo|porpo|porpo|erkopörpo|erkopörpo|erkoporpo|erkoporpo|koppörpo|koppörpo|kopporpo|kopporpo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_SIGHT => [
            "\"Pör\" signifie un vue, ou peux aussi signifier \"Voir\" comme verbe.",
            "Quand \"Pör\" est un verbe, il peut également apparaître comme \"Erkopör\" ou \"Koppör\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_SIGHT => ["vue"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_SIGHT => [
            "\"Vue\" peut se dire \"Pör\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_VERB_SIGHT => ["voir"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_VERB_SIGHT => [
            "\"Voir\" peut se dire \"Pör\" en parole gobline, ou avec \"Erkopör\" au passé ou \"Koppör\" au futur."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_WHITE => ["porakrör|porakror|erkoborakrör|erkoborakror|kopporakrör|kopporakror|porakrörpo|porakrörpo|porakrorpo|porakrorpo|erkoborakrörpo|erkoborakrörpo|erkoborakrorpo|erkoborakrorpo|kopporakrörpo|kopporakrörpo|kopporakrorpo|kopporakrorpo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_WHITE => [
            "\"Porakrör\" signifie un blanc, ou peux aussi signifier \"Rendre ou être blanc\" comme verbe.",
            "Quand \"Porakrör\" est un verbe, il peut également apparaître comme \"Erkoborakrör\" ou \"Kopporakrör\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_WHITE => ["blanc"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_WHITE => [
            "\"Blanc\" peut se dire \"Porakrör\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_BLACK => ["porakrötegobu|porakrotegobu|erkoborakrötegobu|erkoborakrotegobu|kopporakrötegobu|kopporakrotegobu|porakrötegoburpo|porakrötegobupo|porakrotegoburpo|porakrotegobupo|erkoborakrötegoburpo|erkoborakrötegobupo|erkoborakrotegoburpo|erkoborakrotegobupo|kopporakrötegoburpo|kopporakrötegobupo|kopporakrotegoburpo|kopporakrotegobupo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_BLACK => [
            "\"Porakrötegobu\" signifie un noir, ou peux aussi signifier \"Rendre ou être noir\" comme verbe.",
            "Quand \"Porakrötegobu\" est un verbe, il peut également apparaître comme \"Erkoborakrötegobu\" ou \"Kopporakrötegobu\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_BLACK => ["noir"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_BLACK => [
            "\"Noir\" peut se dire \"Porakrötegobu\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_FLOWER => ["poraktö|porakto|erkoboraktö|erkoborakto|kopporaktö|kopporakto|poraktörpo|poraktöbo|poraktorpo|poraktopo|erkoboraktörpo|erkoboraktöbo|erkoboraktorpo|erkoboraktopo|kopporaktörpo|kopporaktöbo|kopporaktorpo|kopporaktopo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_FLOWER => [
            "\"Poraktö\" signifie un fleur, ou peux aussi signifier \"Planter ou ajouter des fleurs\" comme verbe.",
            "Quand \"Poraktö\" est un verbe, il peut également apparaître comme \"Erkoboraktö\" ou \"Kopporaktö\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_FLOWER => ["fleur"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_FLOWER => [
            "\"Fleur\" peut se dire \"Poraktö\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_BLUE => ["pörbago|porbago|erkopörbago|erkoporbago|koppörbago|kopporbago|pörbagorpo|pörbagopo|porbagorpo|porbagopo|erkopörbagorpo|erkopörbagopo|erkoporbagorpo|erkoporbagopo|koppörbagorpo|koppörbagopo|kopporbagorpo|kopporbagopo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_BLUE => [
            "\"Pörbago\" signifie un bleu, ou peux aussi signifier \"Rendre ou être bleu\" comme verbe.",
            "Quand \"Pörbago\" est un verbe, il peut également apparaître comme \"Erkopörbago\" ou \"Koppörbago\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_BLUE => ["bleu"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_BLUE => [
            "\"Bleu\" peut se dire \"Pörbago\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_BEAUTY => ["poregadä|poregada|erkoboregadä|erkoboregada|kopporegadä|kopporegada|poregadärpo|poregadäbo|poregadarpo|poregadapo|erkoboregadärpo|erkoboregadäbo|erkoboregadarpo|erkoboregadapo|kopporegadärpo|kopporegadäbo|kopporegadarpo|kopporegadapo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_BEAUTY => [
            "\"Poregadä\" signifie un beauté, ou peux aussi signifier \"Rendre beau\" comme verbe.",
            "Quand \"Poregadä\" est un verbe, il peut également apparaître comme \"Erkoboregadä\" ou \"Kopporegadä\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_BEAUTY => ["beauté|beaute"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_BEAUTY => [
            "\"Beauté\" peut se dire \"Poregadä\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_RED => ["poregotrë|poregotre|erkoboregotrë|erkoboregotre|kopporegotrë|kopporegotre|poregotrërpo|poregotrëbo|poregotrerpo|poregotrepo|erkoboregotrërpo|erkoboregotrëbo|erkoboregotrerpo|erkoboregotrepo|kopporegotrërpo|kopporegotrëbo|kopporegotrerpo|kopporegotrepo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_RED => [
            "\"Poregotrë\" signifie un rouge, ou peux aussi signifier \"Rendre ou être rouge\" comme verbe.",
            "Quand \"Poregotrë\" est un verbe, il peut également apparaître comme \"Erkoboregotrë\" ou \"Kopporegotrë\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_RED => ["rouge"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_RED => [
            "\"Rouge\" peut se dire \"Poregotrë\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_COLOR => ["prä|pra|erkoprä|erkopra|koboprä|kobopra|prärpo|präbo|prarpo|prapo|erkoprärpo|erkopräbo|erkoprarpo|erkoprapo|koboprärpo|kobopräbo|koboprarpo|koboprapo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_COLOR => [
            "\"Prä\" signifie un couleur, ou peux aussi signifier \"Colorer\" comme verbe.",
            "Quand \"Prä\" est un verbe, il peut également apparaître comme \"Erkoprä\" ou \"Koboprä\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_COLOR => ["couleur"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_COLOR => [
            "\"Couleur\" peut se dire \"Prä\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_VERB_COLOR => ["colorer"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_VERB_COLOR => [
            "\"Colorer\" peut se dire \"Prä\" en parole gobline, ou avec \"Erkoprä\" au passé ou \"Koboprä\" au futur."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_TANGIBLE => ["rä|ra|erkorä|erkora|koprä|kopra|rärpo|räbo|rarpo|rapo|erkorärpo|erkoräbo|erkorarpo|erkorapo|koprärpo|kopräbo|koprarpo|koprapo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_TANGIBLE => [
            "\"Rä\" signifie un tangible, ou peux aussi signifier \"Sentir au touché\" comme verbe.",
            "Quand \"Rä\" est un verbe, il peut également apparaître comme \"Erkorä\" ou \"Koprä\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_TANGIBLE => ["tangible"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_TANGIBLE => [
            "\"Tangible\" peut se dire \"Rä\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_VERB_TANGIBLE => ["sentir", "touché|touche"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_VERB_TANGIBLE => [
            "\"Sentir au touché\" peut se dire \"Rä\" en parole gobline, ou avec \"Erkorä\" au passé ou \"Koprä\" au futur."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_COLD => ["rakrör|rakror|erkorakrör|erkorakror|koprakrör|koprakror|rakrörpo|rakrörpo|rakrorpo|rakrorpo|erkorakrörpo|erkorakrörpo|erkorakrorpo|erkorakrorpo|koprakrörpo|koprakrörpo|koprakrorpo|koprakrorpo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_COLD => [
            "\"Rakrör\" signifie un froid, ou peux aussi signifier \"Refroidir\" comme verbe.",
            "Quand \"Rakrör\" est un verbe, il peut également apparaître comme \"Erkorakrör\" ou \"Koprakrör\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_COLD => ["froid"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_COLD => [
            "\"Froid\" peut se dire \"Rakrör\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_VERB_COLD => ["refroidir"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_VERB_COLD => [
            "\"Refroidir\" peut se dire \"Rakrör\" en parole gobline, ou avec \"Erkorakrör\" au passé ou \"Koprakrör\" au futur."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_SCARY => ["rakröt|rakrot|erkorakröt|erkorakrot|koprakröt|koprakrot|rakrötrpo|rakrötpo|rakrotrpo|rakrotpo|erkorakrötrpo|erkorakrötpo|erkorakrotrpo|erkorakrotpo|koprakrötrpo|koprakrötpo|koprakrotrpo|koprakrotpo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_SCARY => [
            "\"Rakröt\" signifie un effrayant, ou peux aussi signifier \"Craindre\" comme verbe.",
            "Quand \"Rakröt\" est un verbe, il peut également apparaître comme \"Erkorakröt\" ou \"Koprakröt\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_SCARY => ["effrayant"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_SCARY => [
            "\"Effrayant\" peut se dire \"Rakröt\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_VERB_SCARY => ["craindre"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_VERB_SCARY => [
            "\"Craindre\" peut se dire \"Rakröt\" en parole gobline, ou avec \"Erkorakröt\" au passé ou \"Koprakröt\" au futur."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_SMELL => ["rë|re|erkorë|erkore|koprë|kopre|rërpo|rëbo|rerpo|repo|erkorërpo|erkorëbo|erkorerpo|erkorepo|koprërpo|koprëbo|koprerpo|koprepo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_SMELL => [
            "\"Rë\" signifie un odeur, ou peux aussi signifier \"Sentir\" comme verbe.",
            "Quand \"Rë\" est un verbe, il peut également apparaître comme \"Erkorë\" ou \"Koprë\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_SMELL => ["odeur"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_SMELL => [
            "\"Odeur\" peut se dire \"Rë\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_VERB_SMELL => ["sentir"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_VERB_SMELL => [
            "\"Sentir\" peut se dire \"Rë\" en parole gobline, ou avec \"Erkorë\" au passé ou \"Koprë\" au futur."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_STAR => ["regèdobuburbör|regedobuburbor|erkoregèdobuburbör|erkoregedobuburbor|kopregèdobuburbör|kopregedobuburbor|regèdobuburbörpo|regèdobuburbörpo|regedobuburborpo|regedobuburborpo|erkoregèdobuburbörpo|erkoregèdobuburbörpo|erkoregedobuburborpo|erkoregedobuburborpo|kopregèdobuburbörpo|kopregèdobuburbörpo|kopregedobuburborpo|kopregedobuburborpo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_STAR => [
            "\"Regèdobuburbör\" signifie un etoiles, ou peux aussi signifier \"Étinceler\" comme verbe.",
            "Quand \"Regèdobuburbör\" est un verbe, il peut également apparaître comme \"Erkoregèdobuburbör\" ou \"Kopregèdobuburbör\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_STAR => ["etoiles"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_STAR => [
            "\"Etoiles\" peut se dire \"Regèdobuburbör\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_VERB_STAR => ["étinceler|etinceler"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_VERB_STAR => [
            "\"Étinceler\" peut se dire \"Regèdobuburbör\" en parole gobline, ou avec \"Erkoregèdobuburbör\" au passé ou \"Kopregèdobuburbör\" au futur."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_COAL => ["regobuburkröt|regobuburkrot|erkoregobuburkröt|erkoregobuburkrot|kopregobuburkröt|kopregobuburkrot|regobuburkrötrpo|regobuburkrötpo|regobuburkrotrpo|regobuburkrotpo|erkoregobuburkrötrpo|erkoregobuburkrötpo|erkoregobuburkrotrpo|erkoregobuburkrotpo|kopregobuburkrötrpo|kopregobuburkrötpo|kopregobuburkrotrpo|kopregobuburkrotpo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_COAL => [
            "\"Regobuburkröt\" signifie un charbon, ou peux aussi signifier \"Ajouter du charbon à\" comme verbe.",
            "Quand \"Regobuburkröt\" est un verbe, il peut également apparaître comme \"Erkoregobuburkröt\" ou \"Kopregobuburkröt\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_COAL => ["charbon"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_COAL => [
            "\"Charbon\" peut se dire \"Regobuburkröt\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_ARGILE => ["regobugeboktö|regobugebokto|erkoregobugeboktö|erkoregobugebokto|kopregobugeboktö|kopregobugebokto|regobugeboktörpo|regobugeboktöbo|regobugeboktorpo|regobugeboktopo|erkoregobugeboktörpo|erkoregobugeboktöbo|erkoregobugeboktorpo|erkoregobugeboktopo|kopregobugeboktörpo|kopregobugeboktöbo|kopregobugeboktorpo|kopregobugeboktopo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_ARGILE => [
            "\"Regobugeboktö\" signifie un argile, ou peux aussi signifier \"Faire en argile\" ou \"Ajouter de l'argile à\" comme verbe.",
            "Quand \"Regobugeboktö\" est un verbe, il peut également apparaître comme \"Erkoregobugeboktö\" ou \"Kopregobugeboktö\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_ARGILE => ["argile"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_ARGILE => [
            "\"Argile\" peut se dire \"Regobugeboktö\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_HEAVY => ["regobukëpo|regobukepo|erkoregobukëpo|erkoregobukepo|kopregobukëpo|kopregobukepo|regobukëporpo|regobukëpopo|regobukeporpo|regobukepopo|erkoregobukëporpo|erkoregobukëpopo|erkoregobukeporpo|erkoregobukepopo|kopregobukëporpo|kopregobukëpopo|kopregobukeporpo|kopregobukepopo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_HEAVY => [
            "\"Regobukëpo\" signifie un lourd, ou peux aussi signifier \"Alourdir\" comme verbe.",
            "Quand \"Regobukëpo\" est un verbe, il peut également apparaître comme \"Erkoregobukëpo\" ou \"Kopregobukëpo\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_HEAVY => ["lourd"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_HEAVY => [
            "\"Lourd\" peut se dire \"Regobukëpo\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_VERB_HEAVY => ["alourdir"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_VERB_HEAVY => [
            "\"Alourdir\" peut se dire \"Regobukëpo\" en parole gobline, ou avec \"Erkoregobukëpo\" au passé ou \"Kopregobukëpo\" au futur."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_DYING => ["regoburëkobu|regoburekobu|erkoregoburëkobu|erkoregoburekobu|kopregoburëkobu|kopregoburekobu|regoburëkoburpo|regoburëkobupo|regoburekoburpo|regoburekobupo|erkoregoburëkoburpo|erkoregoburëkobupo|erkoregoburekoburpo|erkoregoburekobupo|kopregoburëkoburpo|kopregoburëkobupo|kopregoburekoburpo|kopregoburekobupo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_DYING => [
            "\"Regoburëkobu\" signifie un mort ou mourant, ou peux aussi signifier \"Mourrir\" comme verbe.",
            "Quand \"Regoburëkobu\" est un verbe, il peut également apparaître comme \"Erkoregoburëkobu\" ou \"Kopregoburëkobu\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_DYING => ["mourant|mort"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_DYING => [
            "\"Mourant\" ou \"Mort\" peuvent se dire \"Regoburëkobu\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_VERB_DYING => ["mourrir"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_VERB_DYING => [
            "\"Mourrir\" peut se dire \"Regoburëkobu\" en parole gobline, ou avec \"Erkoregoburëkobu\" au passé ou \"Kopregoburëkobu\" au futur."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_BABY => ["regodarkör|regodarkor|erkoregodarkör|erkoregodarkor|kopregodarkör|kopregodarkor|regodarkörpo|regodarkörpo|regodarkorpo|regodarkorpo|erkoregodarkörpo|erkoregodarkörpo|erkoregodarkorpo|erkoregodarkorpo|kopregodarkörpo|kopregodarkörpo|kopregodarkorpo|kopregodarkorpo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_BABY => [
            "\"Regodarkör\" signifie un bébé, ou peux aussi signifier \"Agir ou traiter comme un bébé\" comme verbe.",
            "Quand \"Regodarkör\" est un verbe, il peut également apparaître comme \"Erkoregodarkör\" ou \"Kopregodarkör\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_BABY => ["bébé|bebe"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_BABY => [
            "\"Bébé\" peut se dire \"Regodarkör\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_SEED => ["regorkëto|regorketo|erkoregorkëto|erkoregorketo|kopregorkëto|kopregorketo|regorkëtorpo|regorkëtopo|regorketorpo|regorketopo|erkoregorkëtorpo|erkoregorkëtopo|erkoregorketorpo|erkoregorketopo|kopregorkëtorpo|kopregorkëtopo|kopregorketorpo|kopregorketopo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_SEED => [
            "\"Regorkëto\" signifie un graine, ou peux aussi signifier \"Planter des graines\" comme verbe.",
            "Quand \"Regorkëto\" est un verbe, il peut également apparaître comme \"Erkoregorkëto\" ou \"Kopregorkëto\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_SEED => ["graine"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_SEED => [
            "\"Graine\" peut se dire \"Regorkëto\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_MEAT_MUSCLE => ["regotrë|regotre|erkoregotrë|erkoregotre|kopregotrë|kopregotre|regotrërpo|regotrëbo|regotrerpo|regotrepo|erkoregotrërpo|erkoregotrëbo|erkoregotrerpo|erkoregotrepo|kopregotrërpo|kopregotrëbo|kopregotrerpo|kopregotrepo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_MEAT_MUSCLE => [
            "\"Regotrë\" signifie un muscle, viande, ou peux aussi signifier \"Dépecer\" comme verbe.",
            "Quand \"Regotrë\" est un verbe, il peut également apparaître comme \"Erkoregotrë\" ou \"Kopregotrë\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_MEAT_MUSCLE => ["muscle|viande"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_MEAT_MUSCLE => [
            "\"Muscle\" et \"Viande\" peuvent se dire \"Regotrë\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_VERB_MEAT_MUSCLE => ["dépecer|depecer"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_VERB_MEAT_MUSCLE => [
            "\"Dépecer\" peut se dire \"Regotrë\" en parole gobline, ou avec \"Erkoregotrë\" au passé ou \"Kopregotrë\" au futur."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_SOMETHING_ALIVE => ["rëkobu|rekobu|erkorëkobu|erkorekobu|koprëkobu|koprekobu|rëkoburpo|rëkobupo|rekoburpo|rekobupo|erkorëkoburpo|erkorëkobupo|erkorekoburpo|erkorekobupo|koprëkoburpo|koprëkobupo|koprekoburpo|koprekobupo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_SOMETHING_ALIVE => [
            "\"Rëkobu\" signifie un vivant, ou peux aussi signifier \"Vivre / réspirer\" comme verbe.",
            "Quand \"Rëkobu\" est un verbe, il peut également apparaître comme \"Erkorëkobu\" ou \"Koprëkobu\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_SOMETHING_ALIVE => ["vivant"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_SOMETHING_ALIVE => [
            "\"Vivant\" peut se dire \"Rëkobu\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_VERB_SOMETHING_ALIVE => ["vivre|réspirer|vivre|respirer"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_VERB_SOMETHING_ALIVE => [
            "\"Vivre / réspirer\" peut se dire \"Rëkobu\" en parole gobline, ou avec \"Erkorëkobu\" au passé ou \"Koprëkobu\" au futur."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_SOUL => ["rëkopsud|rekopsud|erkorëkopsud|erkorekopsud|koprëkopsud|koprekopsud|rëkopsudrpo|rëkopsudpo|rekopsudrpo|rekopsudpo|erkorëkopsudrpo|erkorëkopsudpo|erkorekopsudrpo|erkorekopsudpo|koprëkopsudrpo|koprëkopsudpo|koprekopsudrpo|koprekopsudpo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_SOUL => [
            "\"Rëkopsud\" signifie un âme, ou peux aussi signifier \"Donner un âme à\" comme verbe.",
            "Quand \"Rëkopsud\" est un verbe, il peut également apparaître comme \"Erkorëkopsud\" ou \"Koprëkopsud\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_SOUL => ["âme|ame"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_SOUL => [
            "\"Âme\" peut se dire \"Rëkopsud\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_HEARING => ["sä|sa|erkosä|erkosa|kopsä|kopsa|särpo|säbo|sarpo|sapo|erkosärpo|erkosäbo|erkosarpo|erkosapo|kopsärpo|kopsäbo|kopsarpo|kopsapo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_HEARING => [
            "\"Sä\" signifie un ouïe, ou peux aussi signifier \"Entendre\" comme verbe.",
            "Quand \"Sä\" est un verbe, il peut également apparaître comme \"Erkosä\" ou \"Kopsä\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_HEARING => ["ouïe|ouie"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_HEARING => [
            "\"Ouïe\" peut se dire \"Sä\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_VERB_HEARING => ["entendre"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_VERB_HEARING => [
            "\"Entendre\" peut se dire \"Sä\" en parole gobline, ou avec \"Erkosä\" au passé ou \"Kopsä\" au futur."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_ATTENTION => ["säpogu|sapogu|erkosäpogu|erkosapogu|kopsäpogu|kopsapogu|säpogurpo|säpogupo|sapogurpo|sapogupo|erkosäpogurpo|erkosäpogupo|erkosapogurpo|erkosapogupo|kopsäpogurpo|kopsäpogupo|kopsapogurpo|kopsapogupo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_ATTENTION => [
            "\"Säpogu\" signifie un attention, ou peux aussi signifier \"Écouter\" comme verbe.",
            "Quand \"Säpogu\" est un verbe, il peut également apparaître comme \"Erkosäpogu\" ou \"Kopsäpogu\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_ATTENTION => ["attention"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_ATTENTION => [
            "\"Attention\" peut se dire \"Säpogu\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_VERB_ATTENTION => ["écouter|ecouter"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_VERB_ATTENTION => [
            "\"Écouter\" peut se dire \"Säpogu\" en parole gobline, ou avec \"Erkosäpogu\" au passé ou \"Kopsäpogu\" au futur."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_ENVELOPE_SKIN => ["sdä|sda|erkosdä|erkosda|kopsdä|kopsda|sdärpo|sdäbo|sdarpo|sdapo|erkosdärpo|erkosdäbo|erkosdarpo|erkosdapo|kopsdärpo|kopsdäbo|kopsdarpo|kopsdapo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_ENVELOPE_SKIN => [
            "\"Sdä\" signifie un enveloppe, un peau, ou peux aussi signifier \"Envelopper\" comme verbe.",
            "Quand \"Sdä\" est un verbe, il peut également apparaître comme \"Erkosdä\" ou \"Kopsdä\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_ENVELOPE_SKIN => ["enveloppe|peau"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_ENVELOPE_SKIN => [
            "\"Enveloppe\" ou \"Peau\" peuvent se dire \"Sdä\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_VERB_ENVELOPE_SKIN => ["envelopper"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_VERB_ENVELOPE_SKIN => [
            "\"Envelopper\" peut se dire \"Sdä\" en parole gobline, ou avec \"Erkosdä\" au passé ou \"Kopsdä\" au futur."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_FRUIT_SKIN => ["sdäkedoar|sdakedoar|erkosdäkedoar|erkosdakedoar|kopsdäkedoar|kopsdakedoar|sdäkedoarpo|sdäkedoarpo|sdakedoarpo|sdakedoarpo|erkosdäkedoarpo|erkosdäkedoarpo|erkosdakedoarpo|erkosdakedoarpo|kopsdäkedoarpo|kopsdäkedoarpo|kopsdakedoarpo|kopsdakedoarpo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_FRUIT_SKIN => [
            "\"Sdäkedoar\" signifie un peau de fruit, ou peux aussi signifier \"Ajouter des peaux de fruits à\" comme verbe.",
            "Quand \"Sdäkedoar\" est un verbe, il peut également apparaître comme \"Erkosdäkedoar\" ou \"Kopsdäkedoar\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_EMPTY_SHELL_HUSK => ["sdäske|sdaske|erkosdäske|erkosdaske|kopsdäske|kopsdaske|sdäskerpo|sdäskepo|sdaskerpo|sdaskepo|erkosdäskerpo|erkosdäskepo|erkosdaskerpo|erkosdaskepo|kopsdäskerpo|kopsdäskepo|kopsdaskerpo|kopsdaskepo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_EMPTY_SHELL_HUSK => [
            "\"Sdäske\" signifie un coquille vide, ou peux aussi être un synonyme de \"Vider\" comme verbe.",
            "Quand \"Sdäske\" est un verbe, il peut également apparaître comme \"Erkosdäske\" ou \"Kopsdäske\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_EMPTY_SHELL_HUSK => ["coquille", "vide"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_EMPTY_SHELL_HUSK => [
            "\"Coquille vide\" peut se dire \"Sdäske\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_BARK => ["sdätobago|sdatobago|erkosdätobago|erkosdatobago|kopsdätobago|kopsdatobago|sdätobagorpo|sdätobagopo|sdatobagorpo|sdatobagopo|erkosdätobagorpo|erkosdätobagopo|erkosdatobagorpo|erkosdatobagopo|kopsdätobagorpo|kopsdätobagopo|kopsdatobagorpo|kopsdatobagopo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_BARK => [
            "\"Sdätobago\" signifie un écorce, ou peux aussi signifier \"Ajouter de l'écorce à\" comme verbe.",
            "Quand \"Sdätobago\" est un verbe, il peut également apparaître comme \"Erkosdätobago\" ou \"Kopsdätobago\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_BARK => ["écorce|ecorce"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_BARK => [
            "\"Écorce\" peut se dire \"Sdätobago\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_CLOTHES => ["sëagobueka|seagobueka|erkosëagobueka|erkoseagobueka|kopsëagobueka|kopseagobueka|sëagobuekarpo|sëagobuekapo|seagobuekarpo|seagobuekapo|erkosëagobuekarpo|erkosëagobuekapo|erkoseagobuekarpo|erkoseagobuekapo|kopsëagobuekarpo|kopsëagobuekapo|kopseagobuekarpo|kopseagobuekapo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_CLOTHES => [
            "\"Sëagobueka\" signifie un vêtement, ou peux aussi signifier \"Habiller\" comme verbe.",
            "Quand \"Sëagobueka\" est un verbe, il peut également apparaître comme \"Erkosëagobueka\" ou \"Kopsëagobueka\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_CLOTHES => ["vêtement|vetement"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_CLOTHES => [
            "\"Vêtement\" peut se dire \"Sëagobueka\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_VERB_CLOTHES => ["habiller"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_VERB_CLOTHES => [
            "\"Habiller\" peut se dire \"Sëagobueka\" en parole gobline, ou avec \"Erkosëagobueka\" au passé ou \"Kopsëagobueka\" au futur."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_IMITATION_COPY => ["sëakobuegaobudugus|seakobuegaobudugus|erkosëakobuegaobudugus|erkoseakobuegaobudugus|kopsëakobuegaobudugus|kopseakobuegaobudugus|sëakobuegaobudugusrpo|sëakobuegaobuduguspo|seakobuegaobudugusrpo|seakobuegaobuduguspo|erkosëakobuegaobudugusrpo|erkosëakobuegaobuduguspo|erkoseakobuegaobudugusrpo|erkoseakobuegaobuduguspo|kopsëakobuegaobudugusrpo|kopsëakobuegaobuduguspo|kopseakobuegaobudugusrpo|kopseakobuegaobuduguspo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_IMITATION_COPY => [
            "\"Sëakobuegaobudugus\" signifie un imitation, copie, ou \"Imiter\" et \"Copier\" comme verbe.",
            "Quand \"Sëakobuegaobudugus\" est un verbe, il peut également apparaître comme \"Erkosëakobuegaobudugus\" ou \"Kopsëakobuegaobudugus\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_IMITATION_COPY => ["imitation|copie"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_IMITATION_COPY => [
            "\"Imitation\" et \"Copie\" peuvent se dire \"Sëakobuegaobudugus\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_VERB_IMITATION_COPY => ["imiter|copier"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_VERB_IMITATION_COPY => [
            "\"Imiter\" \"Copier\" peuvent se dire \"Sëakobuegaobudugus\" en parole gobline, ou avec \"Erkosëakobuegaobudugus\" au passé ou \"Kopsëakobuegaobudugus\" au futur."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_LEATHER => ["sedadarkör|sedadarkor|erkosedadarkör|erkosedadarkor|kopsedadarkör|kopsedadarkor|sedadarkörpo|sedadarkörpo|sedadarkorpo|sedadarkorpo|erkosedadarkörpo|erkosedadarkörpo|erkosedadarkorpo|erkosedadarkorpo|kopsedadarkörpo|kopsedadarkörpo|kopsedadarkorpo|kopsedadarkorpo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_LEATHER => [
            "\"Sedadarkör\" signifie un cuir, ou peux aussi signifier \"Ajouter du cuir à\" comme verbe.",
            "Quand \"Sedadarkör\" est un verbe, il peut également apparaître comme \"Erkosedadarkör\" ou \"Kopsedadarkör\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_LEATHER => ["cuir"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_LEATHER => [
            "\"Cuir\" peut se dire \"Sedadarkör\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_BLOOD => ["sedopdärko|sedopdarko|erkosedopdärko|erkosedopdarko|kopsedopdärko|kopsedopdarko|sedopdärkorpo|sedopdärkopo|sedopdarkorpo|sedopdarkopo|erkosedopdärkorpo|erkosedopdärkopo|erkosedopdarkorpo|erkosedopdarkopo|kopsedopdärkorpo|kopsedopdärkopo|kopsedopdarkorpo|kopsedopdarkopo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_BLOOD => [
            "\"Sedopdärko\" signifie un sang, ou peux aussi signifier \"Ensanglanter\" comme verbe.",
            "Quand \"Sedopdärko\" est un verbe, il peut également apparaître comme \"Erkosedopdärko\" ou \"Kopsedopdärko\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_BLOOD => ["sang"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_BLOOD => [
            "\"Sang\" peut se dire \"Sedopdärko\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_VERB_BLOOD => ["ensanglanter"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_VERB_BLOOD => [
            "\"Ensanglanter\" peut se dire \"Sedopdärko\" en parole gobline, ou avec \"Erkosedopdärko\" au passé ou \"Kopsedopdärko\" au futur."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_CUT => ["sëk|sek|erkosëk|erkosek|kopsëk|kopsek|sëkrpo|sëkpo|sekrpo|sekpo|erkosëkrpo|erkosëkpo|erkosekrpo|erkosekpo|kopsëkrpo|kopsëkpo|kopsekrpo|kopsekpo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_CUT => [
            "\"Sëk\" signifie un coupure, ou peux aussi signifier \"Couper\" comme verbe.",
            "Quand \"Sëk\" est un verbe, il peut également apparaître comme \"Erkosëk\" ou \"Kopsëk\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_CUT => ["coupure"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_CUT => [
            "\"Coupure\" peut se dire \"Sëk\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_VERB_CUT => ["couper"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_VERB_CUT => [
            "\"Couper\" peut se dire \"Sëk\" en parole gobline, ou avec \"Erkosëk\" au passé ou \"Kopsëk\" au futur."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_CLAW => ["sëkegopra|sekegopra|erkosëkegopra|erkosekegopra|kopsëkegopra|kopsekegopra|sëkegoprarpo|sëkegoprapo|sekegoprarpo|sekegoprapo|erkosëkegoprarpo|erkosëkegoprapo|erkosekegoprarpo|erkosekegoprapo|kopsëkegoprarpo|kopsëkegoprapo|kopsekegoprarpo|kopsekegoprapo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_CLAW => [
            "\"Sëkegopra\" signifie un griffe, ou peux aussi signifier \"Griffer\" comme verbe.",
            "Quand \"Sëkegopra\" est un verbe, il peut également apparaître comme \"Erkosëkegopra\" ou \"Kopsëkegopra\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_CLAW => ["griffe"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_CLAW => [
            "\"Griffe\" peut se dire \"Sëkegopra\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_VERB_CLAW => ["griffer"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_VERB_CLAW => [
            "\"Griffer\" peut se dire \"Sëkegopra\" en parole gobline, ou avec \"Erkosëkegopra\" au passé ou \"Kopsëkegopra\" au futur."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_RAIN => ["seobakö|seobako|erkoseobakö|erkoseobako|kopseobakö|kopseobako|seobakörpo|seobaköbo|seobakorpo|seobakopo|erkoseobakörpo|erkoseobaköbo|erkoseobakorpo|erkoseobakopo|kopseobakörpo|kopseobaköbo|kopseobakorpo|kopseobakopo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_RAIN => [
            "\"Seobakö\" signifie un pluie, ou peux aussi signifier \"Pleuvoir\" comme verbe.",
            "Quand \"Seobakö\" est un verbe, il peut également apparaître comme \"Erkoseobakö\" ou \"Kopseobakö\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_RAIN => ["pluie"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_RAIN => [
            "\"Pluie\" peut se dire \"Seobakö\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_VERB_RAIN => ["pleuvoir"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_VERB_RAIN => [
            "\"Pleuvoir\" peut se dire \"Seobakö\" en parole gobline, ou avec \"Erkoseobakö\" au passé ou \"Kopseobakö\" au futur."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_CLOUD => ["seobaköpo|seobakopo|erkoseobaköpo|erkoseobakopo|kopseobaköpo|kopseobakopo|seobaköporpo|seobaköpopo|seobakoporpo|seobakopopo|erkoseobaköporpo|erkoseobaköpopo|erkoseobakoporpo|erkoseobakopopo|kopseobaköporpo|kopseobaköpopo|kopseobakoporpo|kopseobakopopo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_CLOUD => [
            "\"Seobaköpo\" signifie un nuage, ou peux aussi signifier \"Ajouter des nuages\" comme verbe.",
            "Quand \"Seobaköpo\" est un verbe, il peut également apparaître comme \"Erkoseobaköpo\" ou \"Kopseobaköpo\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_CLOUD => ["nuage"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_CLOUD => [
            "\"Nuage\" peut se dire \"Seobaköpo\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_SMOKE => ["seobaköpogerot|seobakopogerot|erkoseobaköpogerot|erkoseobakopogerot|kopseobaköpogerot|kopseobakopogerot|seobaköpogerotrpo|seobaköpogerotpo|seobakopogerotrpo|seobakopogerotpo|erkoseobaköpogerotrpo|erkoseobaköpogerotpo|erkoseobakopogerotrpo|erkoseobakopogerotpo|kopseobaköpogerotrpo|kopseobaköpogerotpo|kopseobakopogerotrpo|kopseobakopogerotpo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_SMOKE => [
            "\"Seobaköpogerot\" signifie un fumée, ou peux aussi signifier \"Fumer\" comme verbe.",
            "Quand \"Seobaköpogerot\" est un verbe, il peut également apparaître comme \"Erkoseobaköpogerot\" ou \"Kopseobaköpogerot\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_SMOKE => ["fumée|fumee"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_SMOKE => [
            "\"Fumée\" peut se dire \"Seobaköpogerot\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_VERB_SMOKE => ["fumer"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_VERB_SMOKE => [
            "\"Fumer\" peut se dire \"Seobaköpogerot\" en parole gobline, ou avec \"Erkoseobaköpogerot\" au passé ou \"Kopseobaköpogerot\" au futur."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_TAR => ["seodärboregèrot|seodarboregerot|erkoseodärboregèrot|erkoseodarboregerot|kopseodärboregèrot|kopseodarboregerot|seodärboregèrotrpo|seodärboregèrotpo|seodarboregerotrpo|seodarboregerotpo|erkoseodärboregèrotrpo|erkoseodärboregèrotpo|erkoseodarboregerotrpo|erkoseodarboregerotpo|kopseodärboregèrotrpo|kopseodärboregèrotpo|kopseodarboregerotrpo|kopseodarboregerotpo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_TAR => [
            "\"Seodärboregèrot\" signifie un goudron, ou peux aussi signifier \"Engoudronner\" comme verbe.",
            "Quand \"Seodärboregèrot\" est un verbe, il peut également apparaître comme \"Erkoseodärboregèrot\" ou \"Kopseodärboregèrot\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_TAR => ["goudron"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_TAR => [
            "\"Goudron\" peut se dire \"Seodärboregèrot\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_VERB_TAR => ["engoudronner"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_VERB_TAR => [
            "\"Engoudronner\" peut se dire \"Seodärboregèrot\" en parole gobline, ou avec \"Erkoseodärboregèrot\" au passé ou \"Kopseodärboregèrot\" au futur."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_WATER => ["sëop|seop|erkosëop|erkoseop|kopsëop|kopseop|sëoprpo|sëoppo|seoprpo|seoppo|erkosëoprpo|erkosëoppo|erkoseoprpo|erkoseoppo|kopsëoprpo|kopsëoppo|kopseoprpo|kopseoppo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_WATER => [
            "\"Sëop\" signifie un eau, ou peux aussi signifier \"Ajouter de l'eau à\" comme verbe.",
            "Quand \"Sëop\" est un verbe, il peut également apparaître comme \"Erkosëop\" ou \"Kopsëop\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_WATER => ["eau"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_WATER => [
            "\"Eau\" peut se dire \"Sëop\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_VERB_WATER => ["mouiller"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_VERB_WATER => [
            "\"Ajouter de l'eau à\" peut se dire \"Sëop\" en parole gobline, ou avec \"Erkosëop\" au passé ou \"Kopsëop\" au futur."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_JUICE_SAUCE => ["sëopedar|seopedar|erkosëopedar|erkoseopedar|kopsëopedar|kopseopedar|sëopedarpo|sëopedarpo|seopedarpo|seopedarpo|erkosëopedarpo|erkosëopedarpo|erkoseopedarpo|erkoseopedarpo|kopsëopedarpo|kopsëopedarpo|kopseopedarpo|kopseopedarpo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_JUICE_SAUCE => [
            "\"Sëopedar\" signifie un jus, sauce, ou peux aussi signifier \"Extraire du jus\" comme verbe.",
            "Quand \"Sëopedar\" est un verbe, il peut également apparaître comme \"Erkosëopedar\" ou \"Kopsëopedar\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_JUICE_SAUCE => ["jus|sauce"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_JUICE_SAUCE => [
            "\"Jus\" et \"Sauce\" peut se dire \"Sëopedar\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_VERB_JUICE_SAUCE => ["extraire", "jus"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_VERB_JUICE_SAUCE => [
            "\"Extraire du jus\" peut se dire \"Sëopedar\" en parole gobline, ou avec \"Erkosëopedar\" au passé ou \"Kopsëopedar\" au futur."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_SLIME => ["sëoperègobu|seoperegobu|erkosëoperègobu|erkoseoperegobu|kopsëoperègobu|kopseoperegobu|sëoperègoburpo|sëoperègobupo|seoperegoburpo|seoperegobupo|erkosëoperègoburpo|erkosëoperègobupo|erkoseoperegoburpo|erkoseoperegobupo|kopsëoperègoburpo|kopsëoperègobupo|kopseoperegoburpo|kopseoperegobupo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_SLIME => [
            "\"Sëoperègobu\" signifie un slime, ou peux aussi signifier \"Agir comme un slime\" comme verbe.",
            "Quand \"Sëoperègobu\" est un verbe, il peut également apparaître comme \"Erkosëoperègobu\" ou \"Kopsëoperègobu\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_SLIME => ["slime"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_SLIME => [
            "\"Slime\" peut se dire \"Sëoperègobu\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_LAKE => ["seopköpa|seopkopa|erkoseopköpa|erkoseopkopa|kopseopköpa|kopseopkopa|seopköparpo|seopköpapo|seopkoparpo|seopkopapo|erkoseopköparpo|erkoseopköpapo|erkoseopkoparpo|erkoseopkopapo|kopseopköparpo|kopseopköpapo|kopseopkoparpo|kopseopkopapo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_LAKE => [
            "\"Seopköpa\" signifie un lac, ou peux aussi signifier \"Mettre ou être dans un lac\" comme verbe.",
            "Quand \"Seopköpa\" est un verbe, il peut également apparaître comme \"Erkoseopköpa\" ou \"Kopseopköpa\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_LAKE => ["lac"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_LAKE => [
            "\"Lac\" peut se dire \"Seopköpa\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_RIVER => ["seopkör|seopkor|erkoseopkör|erkoseopkor|kopseopkör|kopseopkor|seopkörpo|seopkörpo|seopkorpo|seopkorpo|erkoseopkörpo|erkoseopkörpo|erkoseopkorpo|erkoseopkorpo|kopseopkörpo|kopseopkörpo|kopseopkorpo|kopseopkorpo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_RIVER => [
            "\"Seopkör\" signifie un rivière, ou peux aussi signifier \"Être ou mettre dans un rivière\" comme verbe.",
            "Quand \"Seopkör\" est un verbe, il peut également apparaître comme \"Erkoseopkör\" ou \"Kopseopkör\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_RIVER => ["rivière|riviere"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_RIVER => [
            "\"Rivière\" peut se dire \"Seopkör\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_DUMB => ["sgëkosabor|sgekosabor|erkosgëkosabor|erkosgekosabor|kopsgëkosabor|kopsgekosabor|sgëkosaborpo|sgëkosaborpo|sgekosaborpo|sgekosaborpo|erkosgëkosaborpo|erkosgëkosaborpo|erkosgekosaborpo|erkosgekosaborpo|kopsgëkosaborpo|kopsgëkosaborpo|kopsgekosaborpo|kopsgekosaborpo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_DUMB => [
            "\"Sgëkosabor\" signifie un idiot, ou peux aussi signifier \"Rendre idiot\" comme verbe.",
            "Quand \"Sgëkosabor\" est un verbe, il peut également apparaître comme \"Erkosgëkosabor\" ou \"Kopsgëkosabor\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_DUMB => ["idiot"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_DUMB => [
            "\"Idiot\" peut se dire \"Sgëkosabor\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_SOMETHING_EMPTY_HOLE => ["skë|ske|erkoskë|erkoske|kopskë|kopske|skërpo|skëbo|skerpo|skepo|erkoskërpo|erkoskëbo|erkoskerpo|erkoskepo|kopskërpo|kopskëbo|kopskerpo|kopskepo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_SOMETHING_EMPTY_HOLE => [
            "\"Skë\" signifie un vide, trou, ou \"Vider\" et \"Creuser\" comme verbe.",
            "Quand \"Skë\" est un verbe, il peut également apparaître comme \"Erkoskë\" ou \"Kopskë\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_SOMETHING_EMPTY_HOLE => ["vide|trou"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_SOMETHING_EMPTY_HOLE => [
            "\"Vide\" et \"Trou\" peuvent se dire \"Skë\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_VERB_SOMETHING_EMPTY_HOLE => ["vider|creuser"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_VERB_SOMETHING_EMPTY_HOLE => [
            "\"Vider\" et \"Creuser\" peuvent se dire \"Skë\" en parole gobline, ou avec \"Erkoskë\" au passé ou \"Kopskë\" au futur."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_ONE_ONLY => ["söd|sod|erkosöd|erkosod|kopsöd|kopsod|södrpo|södpo|sodrpo|sodpo|erkosödrpo|erkosödpo|erkosodrpo|erkosodpo|kopsödrpo|kopsödpo|kopsodrpo|kopsodpo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_ONE_ONLY => [
            "\"Söd\" signifie un seul, \"Un\", ou peux aussi signifier \"Rendre unique\" comme verbe.",
            "Quand \"Söd\" est un verbe, il peut également apparaître comme \"Erkosöd\" ou \"Kopsöd\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_ONE_ONLY => ["un|seul"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_ONE_ONLY => [
            "\"Un\" ou \"Seul\" peuvent se dire \"Söd\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_VERB_ONE_ONLY => ["unique"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_VERB_ONE_ONLY => [
            "\"Rendre unique\" peut se dire \"Söd\" en parole gobline, ou avec \"Erkosöd\" au passé ou \"Kopsöd\" au futur."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_EXCHANGE_TRADE => ["sodottöter|sodottoter|erkosodottöter|erkosodottoter|kopsodottöter|kopsodottoter|sodottöterpo|sodottöterpo|sodottoterpo|sodottoterpo|erkosodottöterpo|erkosodottöterpo|erkosodottoterpo|erkosodottoterpo|kopsodottöterpo|kopsodottöterpo|kopsodottoterpo|kopsodottoterpo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_EXCHANGE_TRADE => [
            "\"Sodottöter\" signifie un echange, ou peux aussi signifier \"Échanger\" comme verbe.",
            "Quand \"Sodottöter\" est un verbe, il peut également apparaître comme \"Erkosodottöter\" ou \"Kopsodottöter\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_EXCHANGE_TRADE => ["echange"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_EXCHANGE_TRADE => [
            "\"Echange\" peut se dire \"Sodottöter\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_VERB_EXCHANGE_TRADE => ["échanger|echanger"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_VERB_EXCHANGE_TRADE => [
            "\"Échanger\" peut se dire \"Sodottöter\" en parole gobline, ou avec \"Erkosodottöter\" au passé ou \"Kopsodottöter\" au futur."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_RARE => ["söedso|soedso|erkosöedso|erkosoedso|kopsöedso|kopsoedso|söedsorpo|söedsopo|soedsorpo|soedsopo|erkosöedsorpo|erkosöedsopo|erkosoedsorpo|erkosoedsopo|kopsöedsorpo|kopsöedsopo|kopsoedsorpo|kopsoedsopo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_RARE => [
            "\"Söedso\" signifie un rare, ou peux aussi signifier \"Rendre ou être rare\" comme verbe.",
            "Quand \"Söedso\" est un verbe, il peut également apparaître comme \"Erkosöedso\" ou \"Kopsöedso\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_RARE => ["rare"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_RARE => [
            "\"Rare\" peut se dire \"Söedso\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_MOUTH => ["sogetrë|sogetre|erkosogetrë|erkosogetre|kopsogetrë|kopsogetre|sogetrërpo|sogetrëbo|sogetrerpo|sogetrepo|erkosogetrërpo|erkosogetrëbo|erkosogetrerpo|erkosogetrepo|kopsogetrërpo|kopsogetrëbo|kopsogetrerpo|kopsogetrepo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_MOUTH => [
            "\"Sogetrë\" signifie un bouche, ou peux aussi signifier \"Mettre en bouche\" comme verbe.",
            "Quand \"Sogetrë\" est un verbe, il peut également apparaître comme \"Erkosogetrë\" ou \"Kopsogetrë\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_MOUTH => ["bouche"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_MOUTH => [
            "\"Bouche\" peut se dire \"Sogetrë\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_COOKED => ["taregèdogubukröt|taregedogubukrot|erkotaregèdogubukröt|erkotaregedogubukrot|koptaregèdogubukröt|koptaregedogubukrot|taregèdogubukrötrpo|taregèdogubukrötpo|taregedogubukrotrpo|taregedogubukrotpo|erkotaregèdogubukrötrpo|erkotaregèdogubukrötpo|erkotaregedogubukrotrpo|erkotaregedogubukrotpo|koptaregèdogubukrötrpo|koptaregèdogubukrötpo|koptaregedogubukrotrpo|koptaregedogubukrotpo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_COOKED => [
            "\"Taregèdogubukröt\" signifie un cuit, ou peux aussi signifier \"Cuir\" comme verbe.",
            "Quand \"Taregèdogubukröt\" est un verbe, il peut également apparaître comme \"Erkotaregèdogubukröt\" ou \"Koptaregèdogubukröt\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_COOKED => ["cuit"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_COOKED => [
            "\"Cuit\" peut se dire \"Taregèdogubukröt\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_VERB_COOKED => ["cuir"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_VERB_COOKED => [
            "\"Cuir\" peut se dire \"Taregèdogubukröt\" en parole gobline, ou avec \"Erkotaregèdogubukröt\" au passé ou \"Koptaregèdogubukröt\" au futur."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_BIRD => ["tarköpago|tarkopago|erkotarköpago|erkotarkopago|koptarköpago|koptarkopago|tarköpagorpo|tarköpagopo|tarkopagorpo|tarkopagopo|erkotarköpagorpo|erkotarköpagopo|erkotarkopagorpo|erkotarkopagopo|koptarköpagorpo|koptarköpagopo|koptarkopagorpo|koptarkopagopo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_BIRD => [
            "\"Tarköpago\" signifie un oiseau, ou peux aussi signifier \"Agir comme un oiseau\" comme verbe.",
            "Quand \"Tarköpago\" est un verbe, il peut également apparaître comme \"Erkotarköpago\" ou \"Koptarköpago\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_BIRD => ["oiseau"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_BIRD => [
            "\"Oiseau\" peut se dire \"Tarköpago\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_ANIMAL => ["tarkör|tarkor|erkotarkör|erkotarkor|koptarkör|koptarkor|tarkörpo|tarkörpo|tarkorpo|tarkorpo|erkotarkörpo|erkotarkörpo|erkotarkorpo|erkotarkorpo|koptarkörpo|koptarkörpo|koptarkorpo|koptarkorpo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_ANIMAL => [
            "\"Tarkör\" signifie un animal, ou peux aussi signifier \"Agir comme un animal\" comme verbe.",
            "Quand \"Tarkör\" est un verbe, il peut également apparaître comme \"Erkotarkör\" ou \"Koptarkör\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_ANIMAL => ["animal"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_ANIMAL => [
            "\"Animal\" peut se dire \"Tarkör\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_HUMAN => ["tarkorbakö|tarkorbako|erkotarkorbakö|erkotarkorbako|koptarkorbakö|koptarkorbako|tarkorbakörpo|tarkorbaköbo|tarkorbakorpo|tarkorbakopo|erkotarkorbakörpo|erkotarkorbaköbo|erkotarkorbakorpo|erkotarkorbakopo|koptarkorbakörpo|koptarkorbaköbo|koptarkorbakorpo|koptarkorbakopo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_HUMAN => [
            "\"Tarkorbakö\" signifie un humain, ou peux aussi signifier \"Agir comme un humain\" comme verbe.",
            "Quand \"Tarkorbakö\" est un verbe, il peut également apparaître comme \"Erkotarkorbakö\" ou \"Koptarkorbakö\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_HUMAN => ["humain"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_HUMAN => [
            "\"Humain\" peut se dire \"Tarkorbakö\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_SANGLIER => ["tarkörbobur|tarkorbobur|erkotarkörbobur|erkotarkorbobur|koptarkörbobur|koptarkorbobur|tarkörboburpo|tarkörboburpo|tarkorboburpo|tarkorboburpo|erkotarkörboburpo|erkotarkörboburpo|erkotarkorboburpo|erkotarkorboburpo|koptarkörboburpo|koptarkörboburpo|koptarkorboburpo|koptarkorboburpo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_SANGLIER => [
            "\"Tarkörbobur\" signifie un sanglier, ou peux aussi signifier \"Agir comme un sanglier\" comme verbe.",
            "Quand \"Tarkörbobur\" est un verbe, il peut également apparaître comme \"Erkotarkörbobur\" ou \"Koptarkörbobur\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_SANGLIER => ["sanglier"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_SANGLIER => [
            "\"Sanglier\" peut se dire \"Tarkörbobur\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_SPIDER => ["tarkörseagobueka|tarkorseagobueka|erkotarkörseagobueka|erkotarkorseagobueka|koptarkörseagobueka|koptarkorseagobueka|tarkörseagobuekarpo|tarkörseagobuekapo|tarkorseagobuekarpo|tarkorseagobuekapo|erkotarkörseagobuekarpo|erkotarkörseagobuekapo|erkotarkorseagobuekarpo|erkotarkorseagobuekapo|koptarkörseagobuekarpo|koptarkörseagobuekapo|koptarkorseagobuekarpo|koptarkorseagobuekapo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_SPIDER => [
            "\"Tarkörseagobueka\" signifie un araignée, ou peux aussi signifier \"Agir comme un araignée\" comme verbe.",
            "Quand \"Tarkörseagobueka\" est un verbe, il peut également apparaître comme \"Erkotarkörseagobueka\" ou \"Koptarkörseagobueka\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_SPIDER => ["araignée|araignee"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_SPIDER => [
            "\"Araignée\" peut se dire \"Tarkörseagobueka\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_SHEEP => ["tarkörsedobagobu|tarkorsedobagobu|erkotarkörsedobagobu|erkotarkorsedobagobu|koptarkörsedobagobu|koptarkorsedobagobu|tarkörsedobagoburpo|tarkörsedobagobupo|tarkorsedobagoburpo|tarkorsedobagobupo|erkotarkörsedobagoburpo|erkotarkörsedobagobupo|erkotarkorsedobagoburpo|erkotarkorsedobagobupo|koptarkörsedobagoburpo|koptarkörsedobagobupo|koptarkorsedobagoburpo|koptarkorsedobagobupo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_SHEEP => [
            "\"Tarkörsedobagobu\" signifie un mouton, ou peux aussi signifier \"Agir comme un mouton\" comme verbe.",
            "Quand \"Tarkörsedobagobu\" est un verbe, il peut également apparaître comme \"Erkotarkörsedobagobu\" ou \"Koptarkörsedobagobu\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_SHEEP => ["mouton"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_SHEEP => [
            "\"Mouton\" peut se dire \"Tarkörsedobagobu\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_FISH => ["tarkösdop|tarkosdop|erkotarkösdop|erkotarkosdop|koptarkösdop|koptarkosdop|tarkösdoprpo|tarkösdoppo|tarkosdoprpo|tarkosdoppo|erkotarkösdoprpo|erkotarkösdoppo|erkotarkosdoprpo|erkotarkosdoppo|koptarkösdoprpo|koptarkösdoppo|koptarkosdoprpo|koptarkosdoppo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_FISH => [
            "\"Tarkösdop\" signifie un poisson, ou peux aussi signifier \"Agir comme un poisson\" comme verbe.",
            "Quand \"Tarkösdop\" est un verbe, il peut également apparaître comme \"Erkotarkösdop\" ou \"Koptarkösdop\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_FISH => ["poisson"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_FISH => [
            "\"Poisson\" peut se dire \"Tarkösdop\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_SOUR => ["tarkrör|tarkror|erkotarkrör|erkotarkror|koptarkrör|koptarkror|tarkrörpo|tarkrörpo|tarkrorpo|tarkrorpo|erkotarkrörpo|erkotarkrörpo|erkotarkrorpo|erkotarkrorpo|koptarkrörpo|koptarkrörpo|koptarkrorpo|koptarkrorpo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_SOUR => [
            "\"Tarkrör\" signifie un gout acide, ou peux aussi signifier \"S'acidifier\" comme verbe.",
            "Quand \"Tarkrör\" est un verbe, il peut également apparaître comme \"Erkotarkrör\" ou \"Koptarkrör\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_SOUR => ["gout|acide"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_SOUR => [
            "\"Gout acide\" peut se dire \"Tarkrör\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_VERB_SOUR => ["s'acidifier"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_VERB_SOUR => [
            "\"S'acidifier\" peut se dire \"Tarkrör\" en parole gobline, ou avec \"Erkotarkrör\" au passé ou \"Koptarkrör\" au futur."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_MARK => ["toderbrä|toderbra|erkododerbrä|erkododerbra|koptoderbrä|koptoderbra|toderbrärpo|toderbräbo|toderbrarpo|toderbrapo|erkododerbrärpo|erkododerbräbo|erkododerbrarpo|erkododerbrapo|koptoderbrärpo|koptoderbräbo|koptoderbrarpo|koptoderbrapo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_MARK => [
            "\"Toderbrä\" signifie un marque, ou peux aussi signifier \"Marquer\" comme verbe.",
            "Quand \"Toderbrä\" est un verbe, il peut également apparaître comme \"Erkododerbrä\" ou \"Koptoderbrä\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_MARK => ["marque"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_MARK => [
            "\"Marque\" peut se dire \"Toderbrä\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_VERB_MARK => ["marquer"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_VERB_MARK => [
            "\"Marquer\" peut se dire \"Toderbrä\" en parole gobline, ou avec \"Erkododerbrä\" au passé ou \"Koptoderbrä\" au futur."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_GLUE => ["toderègogöpor|toderegogopor|erkododerègogöpor|erkododeregogopor|koptoderègogöpor|koptoderegogopor|toderègogöporpo|toderègogöporpo|toderegogoporpo|toderegogoporpo|erkododerègogöporpo|erkododerègogöporpo|erkododeregogoporpo|erkododeregogoporpo|koptoderègogöporpo|koptoderègogöporpo|koptoderegogoporpo|koptoderegogoporpo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_GLUE => [
            "\"Toderègogöpor\" signifie un colle, ou peux aussi signifier \"Coller\" comme verbe.",
            "Quand \"Toderègogöpor\" est un verbe, il peut également apparaître comme \"Erkododerègogöpor\" ou \"Koptoderègogöpor\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_GLUE => ["colle"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_GLUE => [
            "\"Colle\" peut se dire \"Toderègogöpor\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_VERB_GLUE => ["coller"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_VERB_GLUE => [
            "\"Coller\" peut se dire \"Toderègogöpor\" en parole gobline, ou avec \"Erkododerègogöpor\" au passé ou \"Koptoderègogöpor\" au futur."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_SAFE_PROTECTOR => ["toderkoburëkobu|toderkoburekobu|erkododerkoburëkobu|erkododerkoburekobu|koptoderkoburëkobu|koptoderkoburekobu|toderkoburëkoburpo|toderkoburëkobupo|toderkoburekoburpo|toderkoburekobupo|erkododerkoburëkoburpo|erkododerkoburëkobupo|erkododerkoburekoburpo|erkododerkoburekobupo|koptoderkoburëkoburpo|koptoderkoburëkobupo|koptoderkoburekoburpo|koptoderkoburekobupo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_SAFE_PROTECTOR => [
            "\"Toderkoburëkobu\" signifie un protecteur, sans danger, ou peux aussi signifier \"Protéger\" comme verbe.",
            "Quand \"Toderkoburëkobu\" est un verbe, il peut également apparaître comme \"Erkododerkoburëkobu\" ou \"Koptoderkoburëkobu\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_SAFE_PROTECTOR => ["protecteur|sans|danger"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_SAFE_PROTECTOR => [
            "\"Protecteur\" et \"Sans danger\" peuvent se dire \"Toderkoburëkobu\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_VERB_SAFE_PROTECTOR => ["protéger|proteger"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_VERB_SAFE_PROTECTOR => [
            "\"Protéger\" peut se dire \"Toderkoburëkobu\" en parole gobline, ou avec \"Erkododerkoburëkobu\" au passé ou \"Koptoderkoburëkobu\" au futur."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_HELP_POSSESSION => ["toderköpo|toderkopo|erkododerköpo|erkododerkopo|koptoderköpo|koptoderkopo|toderköporpo|toderköpopo|toderkoporpo|toderkopopo|erkododerköporpo|erkododerköpopo|erkododerkoporpo|erkododerkopopo|koptoderköporpo|koptoderköpopo|koptoderkoporpo|koptoderkopopo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_HELP_POSSESSION => [
            "\"Toderköpo\" signifie un aide, possession, ou peux aussi signifier \"Aider\", \"Tenir\", \"Garder\" et \"Avoir\" comme verbe.",
            "Quand \"Toderköpo\" est un verbe, il peut également apparaître comme \"Erkododerköpo\" ou \"Koptoderköpo\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_HELP_POSSESSION => ["aide|possession"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_HELP_POSSESSION => [
            "\"Aide\" et \"Possession\" peuvent se dire \"Toderköpo\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_VERB_HELP_POSSESSION => ["aider|tenir|garder|avoir"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_VERB_HELP_POSSESSION => [
            "\"Aider\", \"Tenir\", \"Garder\" ou \"Avoir\" peuvent se dire \"Toderköpo\" en parole gobline, ou avec \"Erkododerköpo\" au passé ou \"Koptoderköpo\" au futur."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_ANTIDOTE_REMEDY => ["toderköporaegaobu|toderkoporaegaobu|erkododerköporaegaobu|erkododerkoporaegaobu|koptoderköporaegaobu|koptoderkoporaegaobu|toderköporaegaoburpo|toderköporaegaobupo|toderkoporaegaoburpo|toderkoporaegaobupo|erkododerköporaegaoburpo|erkododerköporaegaobupo|erkododerkoporaegaoburpo|erkododerkoporaegaobupo|koptoderköporaegaoburpo|koptoderköporaegaobupo|koptoderkoporaegaoburpo|koptoderkoporaegaobupo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_ANTIDOTE_REMEDY => [
            "\"Toderköporaegaobu\" signifie un antidote, remède, ou peux aussi signifier \"Soigner du poison\" comme verbe.",
            "Quand \"Toderköporaegaobu\" est un verbe, il peut également apparaître comme \"Erkododerköporaegaobu\" ou \"Koptoderköporaegaobu\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_ANTIDOTE_REMEDY => ["antidote|remède|antidote|remede"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_ANTIDOTE_REMEDY => [
            "\"Antidote\" et \"Remède\" peuvent se dire \"Toderköporaegaobu\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_VERB_ANTIDOTE_REMEDY => ["soigner", "poison"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_VERB_ANTIDOTE_REMEDY => [
            "\"Soigner du poison\" peut se dire \"Toderköporaegaobu\" en parole gobline, ou avec \"Erkododerköporaegaobu\" au passé ou \"Koptoderköporaegaobu\" au futur."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_ENJOYABLE => ["todkadä|todkada|erkododkadä|erkododkada|koptodkadä|koptodkada|todkadärpo|todkadäbo|todkadarpo|todkadapo|erkododkadärpo|erkododkadäbo|erkododkadarpo|erkododkadapo|koptodkadärpo|koptodkadäbo|koptodkadarpo|koptodkadapo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_ENJOYABLE => [
            "\"Todkadä\" signifie un chose appréciable, ou peux aussi signifier \"Faire apprécier\" comme verbe.",
            "Quand \"Todkadä\" est un verbe, il peut également apparaître comme \"Erkododkadä\" ou \"Koptodkadä\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_ENJOYABLE => ["appréciable|appreciable"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_ENJOYABLE => [
            "\"Appréciable\" peut se dire \"Todkadä\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_VERB_ENJOYABLE => ["faire", "apprécier|apprecier"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_VERB_ENJOYABLE => [
            "\"Faire apprécier\" peut se dire \"Todkadä\" en parole gobline, ou avec \"Erkododkadä\" au passé ou \"Koptodkadä\" au futur."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_PRODUCT => ["todköpoega|todkopoega|erkododköpoega|erkododkopoega|koptodköpoega|koptodkopoega|todköpoegarpo|todköpoegapo|todkopoegarpo|todkopoegapo|erkododköpoegarpo|erkododköpoegapo|erkododkopoegarpo|erkododkopoegapo|koptodköpoegarpo|koptodköpoegapo|koptodkopoegarpo|koptodkopoegapo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_PRODUCT => [
            "\"Todköpoega\" signifie un produit, ou peux aussi signifier \"Être fabriqué\" comme verbe.",
            "Quand \"Todköpoega\" est un verbe, il peut également apparaître comme \"Erkododköpoega\" ou \"Koptodköpoega\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_PRODUCT => ["produit"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_PRODUCT => [
            "\"Produit\" peut se dire \"Todköpoega\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_VERB_PRODUCT => ["être|etre", "fabriqué|fabrique"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_VERB_PRODUCT => [
            "\"Être fabriqué\" peut se dire \"Todköpoega\" en parole gobline, ou avec \"Erkododköpoega\" au passé ou \"Koptodköpoega\" au futur."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_SURPRISED_THING => ["todkörragosaborkus|todkorragosaborkus|erkododkörragosaborkus|erkododkorragosaborkus|koptodkörragosaborkus|koptodkorragosaborkus|todkörragosaborkusrpo|todkörragosaborkuspo|todkorragosaborkusrpo|todkorragosaborkuspo|erkododkörragosaborkusrpo|erkododkörragosaborkuspo|erkododkorragosaborkusrpo|erkododkorragosaborkuspo|koptodkörragosaborkusrpo|koptodkörragosaborkuspo|koptodkorragosaborkusrpo|koptodkorragosaborkuspo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_SURPRISED_THING => [
            "\"Todkörragosaborkus\" signifie un surpris, ou peux aussi signifier \"Être surpris\" comme verbe.",
            "Quand \"Todkörragosaborkus\" est un verbe, il peut également apparaître comme \"Erkododkörragosaborkus\" ou \"Koptodkörragosaborkus\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_SURPRISED_THING => ["surpris"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_SURPRISED_THING => [
            "\"Surpris\" peut se dire \"Todkörragosaborkus\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_VERB_SURPRISED_THING => ["surpris"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_VERB_SURPRISED_THING => [
            "\"Être surpris\" peut se dire \"Todkörragosaborkus\" en parole gobline, ou avec \"Erkododkörragosaborkus\" au passé ou \"Koptodkörragosaborkus\" au futur."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_PREY => ["todkrördar|todkrordar|erkododkrördar|erkododkrordar|koptodkrördar|koptodkrordar|todkrördarpo|todkrördarpo|todkrordarpo|todkrordarpo|erkododkrördarpo|erkododkrördarpo|erkododkrordarpo|erkododkrordarpo|koptodkrördarpo|koptodkrördarpo|koptodkrordarpo|koptodkrordarpo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_PREY => [
            "\"Todkrördar\" signifie un proie, ou peux aussi signifier \"Être mangé\" comme verbe.",
            "Quand \"Todkrördar\" est un verbe, il peut également apparaître comme \"Erkododkrördar\" ou \"Koptodkrördar\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_PREY => ["proie"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_PREY => [
            "\"Proie\" peut se dire \"Todkrördar\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_VERB_PREY => ["être|etre", "mangé|mange"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_VERB_PREY => [
            "\"Être mangé\" peut se dire \"Todkrördar\" en parole gobline, ou avec \"Erkododkrördar\" au passé ou \"Koptodkrördar\" au futur."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_NEWBORN => ["todkupuegaredarkör|todkupuegaredarkor|erkododkupuegaredarkör|erkododkupuegaredarkor|koptodkupuegaredarkör|koptodkupuegaredarkor|todkupuegaredarkörpo|todkupuegaredarkörpo|todkupuegaredarkorpo|todkupuegaredarkorpo|erkododkupuegaredarkörpo|erkododkupuegaredarkörpo|erkododkupuegaredarkorpo|erkododkupuegaredarkorpo|koptodkupuegaredarkörpo|koptodkupuegaredarkörpo|koptodkupuegaredarkorpo|koptodkupuegaredarkorpo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_NEWBORN => [
            "\"Todkupuegaredarkör\" signifie un nouveau né, ou peux aussi signifier \"Être né\" comme verbe.",
            "Quand \"Todkupuegaredarkör\" est un verbe, il peut également apparaître comme \"Erkododkupuegaredarkör\" ou \"Koptodkupuegaredarkör\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_NEWBORN => ["nouveau-né|nouveau-ne|nouveau", "nouveau-né|nouveau-ne|né|ne"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_NEWBORN => [
            "\"Nouveau-né\" peut se dire \"Todkupuegaredarkör\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_VERB_NEWBORN => ["être", "né|ne"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_VERB_NEWBORN => [
            "\"Être né\" peut se dire \"Todkupuegaredarkör\" en parole gobline, ou avec \"Erkododkupuegaredarkör\" au passé ou \"Koptodkupuegaredarkör\" au futur."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_DESIRING_WANTING => ["tödoer|todoer|erkotödoer|erkotodoer|koptödoer|koptodoer|tödoerpo|tödoerpo|todoerpo|todoerpo|erkotödoerpo|erkotödoerpo|erkotodoerpo|erkotodoerpo|koptödoerpo|koptödoerpo|koptodoerpo|koptodoerpo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_DESIRING_WANTING => [
            "\"Tödoer\" signifie un désir, envie, et \"Désirer\" ou \"Vouloir\" comme verbe.",
            "Quand \"Tödoer\" est un verbe, il peut également apparaître comme \"Erkotödoer\" ou \"Koptödoer\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_DESIRING_WANTING => ["désir|envie|desir|envie"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_DESIRING_WANTING => [
            "\"Désir\" ou \"Envie\" peuvent se dire \"Tödoer\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_VERB_DESIRING_WANTING => ["désirer|vouloir|desirer|vouloir"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_VERB_DESIRING_WANTING => [
            "\"Désirer\" et \"Vouloir\" peuvent se dire \"Tödoer\" en parole gobline, ou avec \"Erkotödoer\" au passé ou \"Koptödoer\" au futur."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_INSIDE_INSIDE_OF_INHABIT => ["todök|todok|erkododök|erkododok|koptodök|koptodok|todökrpo|todökpo|todokrpo|todokpo|erkododökrpo|erkododökpo|erkododokrpo|erkododokpo|koptodökrpo|koptodökpo|koptodokrpo|koptodokpo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_INSIDE_INSIDE_OF_INHABIT => [
            "\"Todök\" signifie un interieur, ou peux aussi être un synonime d'\"Entrer\" comme verbe.",
            "Quand \"Todök\" est un verbe, il peut également apparaître comme \"Erkododök\" ou \"Koptodök\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_INSIDE_INSIDE_OF_INHABIT => ["interieur"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_INSIDE_INSIDE_OF_INHABIT => [
            "\"Interieur\" peut se dire \"Todök\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_PRESENTATION => ["todpör|todpor|erkododpör|erkododpor|koptodpör|koptodpor|todpörpo|todpörpo|todporpo|todporpo|erkododpörpo|erkododpörpo|erkododporpo|erkododporpo|koptodpörpo|koptodpörpo|koptodporpo|koptodporpo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_PRESENTATION => [
            "\"Todpör\" signifie un présentation, ou peux aussi signifier \"Montrer\" comme verbe.",
            "Quand \"Todpör\" est un verbe, il peut également apparaître comme \"Erkododpör\" ou \"Koptodpör\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_PRESENTATION => ["présentation|presentation"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_PRESENTATION => [
            "\"Présentation\" peut se dire \"Todpör\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_VERB_PRESENTATION => ["montrer"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_VERB_PRESENTATION => [
            "\"Montrer\" peut se dire \"Todpör\" en parole gobline, ou avec \"Erkododpör\" au passé ou \"Koptodpör\" au futur."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_PROTECTED_THING => ["toduderkoburëkobu|toduderkoburekobu|erkododuderkoburëkobu|erkododuderkoburekobu|koptoduderkoburëkobu|koptoduderkoburekobu|toduderkoburëkoburpo|toduderkoburëkobupo|toduderkoburekoburpo|toduderkoburekobupo|erkododuderkoburëkoburpo|erkododuderkoburëkobupo|erkododuderkoburekoburpo|erkododuderkoburekobupo|koptoduderkoburëkoburpo|koptoduderkoburëkobupo|koptoduderkoburekoburpo|koptoduderkoburekobupo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_PROTECTED_THING => [
            "\"Toduderkoburëkobu\" signifie un protégé, ou peux aussi signifier \"Être protégé\" comme verbe.",
            "Quand \"Toduderkoburëkobu\" est un verbe, il peut également apparaître comme \"Erkododuderkoburëkobu\" ou \"Koptoduderkoburëkobu\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_PROTECTED_THING => ["protégé|protege"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_PROTECTED_THING => [
            "\"Protégé\" peut se dire \"Toduderkoburëkobu\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_VERB_PROTECTED_THING => ["être|etre", "protégé|protege"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_VERB_PROTECTED_THING => [
            "\"Être protégé\" peut se dire \"Toduderkoburëkobu\" en parole gobline, ou avec \"Erkododuderkoburëkobu\" au passé ou \"Koptoduderkoburëkobu\" au futur."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_DANGER_WORRYING => ["todutrëd|todutred|erkododutrëd|erkododutred|koptodutrëd|koptodutred|todutrëdrpo|todutrëdpo|todutredrpo|todutredpo|erkododutrëdrpo|erkododutrëdpo|erkododutredrpo|erkododutredpo|koptodutrëdrpo|koptodutrëdpo|koptodutredrpo|koptodutredpo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_DANGER_WORRYING => [
            "\"Todutrëd\" signifie un danger, inquiétude, ou peux aussi signifier \"Mettre en danger\" ou \"Inquiéter\" comme verbe.",
            "Quand \"Todutrëd\" est un verbe, il peut également apparaître comme \"Erkododutrëd\" ou \"Koptodutrëd\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_DANGER_WORRYING => ["dangé|inquiétude|dange|inquietude"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_DANGER_WORRYING => [
            "\"Dangé\" et \"Inquiétude\" peuvent se dire \"Todutrëd\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_VERB_DANGER_WORRYING => ["mettre|en|danger|inquiéter|mettre|en|danger|inquieter"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_VERB_DANGER_WORRYING => [
            "\"Mettre en danger\" et \"Inquiéter\" peuvent se dire \"Todutrëd\" en parole gobline, ou avec \"Erkododutrëd\" au passé ou \"Koptodutrëd\" au futur."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_DIVISIVE => ["toduttödod|toduttodod|erkododuttödod|erkododuttodod|koptoduttödod|koptoduttodod|toduttödodrpo|toduttödodpo|toduttododrpo|toduttododpo|erkododuttödodrpo|erkododuttödodpo|erkododuttododrpo|erkododuttododpo|koptoduttödodrpo|koptoduttödodpo|koptoduttododrpo|koptoduttododpo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_DIVISIVE => [
            "\"Toduttödod\" signifie un divisif, ou peux aussi signifier \"Diviser\" comme verbe.",
            "Quand \"Toduttödod\" est un verbe, il peut également apparaître comme \"Erkododuttödod\" ou \"Koptoduttödod\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_DIVISIVE => ["divisif"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_DIVISIVE => [
            "\"Divisif\" peut se dire \"Toduttödod\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_VERB_DIVISIVE => ["diviser"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_VERB_DIVISIVE => [
            "\"Diviser\" peut se dire \"Toduttödod\" en parole gobline, ou avec \"Erkododuttödod\" au passé ou \"Koptoduttödod\" au futur."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_ALL => ["tökobu|tokobu|erkotökobu|erkotokobu|koptökobu|koptokobu|tökoburpo|tökobupo|tokoburpo|tokobupo|erkotökoburpo|erkotökobupo|erkotokoburpo|erkotokobupo|koptökoburpo|koptökobupo|koptokoburpo|koptokobupo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_ALL => [
            "\"Tökobu\" signifie un tout, ou peux aussi signifier \"Compléter\" comme verbe.\n\"Tökobu\" peux aussi avoir des connotation religieuses lorsqu'on parle aux humains, étant au plus proche de \"Dieu\" qu'un langue gobline ai.",
            "Quand \"Tökobu\" est un verbe, il peut également apparaître comme \"Erkotökobu\" ou \"Koptökobu\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_ALL => ["tout"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_ALL => [
            "\"Tout\" peut se dire \"Tökobu\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_VERB_ALL => ["compléter|completer"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_VERB_ALL => [
            "\"Compléter\" peut se dire \"Tökobu\" en parole gobline, ou avec \"Erkotökobu\" au passé ou \"Koptökobu\" au futur."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_EVERYONE => ["tökopuduk|tokopuduk|erkotökopuduk|erkotokopuduk|koptökopuduk|koptokopuduk|tökopudukrpo|tökopudukpo|tokopudukrpo|tokopudukpo|erkotökopudukrpo|erkotökopudukpo|erkotokopudukrpo|erkotokopudukpo|koptökopudukrpo|koptökopudukpo|koptokopudukrpo|koptokopudukpo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_EVERYONE => [
            "\"Tökopuduk\" signifie un tout le monde, ou peux aussi signifier \"Partager\" comme verbe.",
            "Quand \"Tökopuduk\" est un verbe, il peut également apparaître comme \"Erkotökopuduk\" ou \"Koptökopuduk\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_EVERYONE => ["tout", "monde"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_EVERYONE => [
            "\"Tout le monde\" peut se dire \"Tökopuduk\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_VERB_EVERYONE => ["partager"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_VERB_EVERYONE => [
            "\"Partager\" peut se dire \"Tökopuduk\" en parole gobline, ou avec \"Erkotökopuduk\" au passé ou \"Koptökopuduk\" au futur."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_ACT_OF_TAKING => ["tordöter|tordoter|erkodordöter|erkodordoter|koptordöter|koptordoter|tordöterpo|tordöterpo|tordoterpo|tordoterpo|erkodordöterpo|erkodordöterpo|erkodordoterpo|erkodordoterpo|koptordöterpo|koptordöterpo|koptordoterpo|koptordoterpo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_ACT_OF_TAKING => [
            "\"Tordöter\" signifie un prise, ou peux aussi signifier \"Prendre\" comme verbe.",
            "Quand \"Tordöter\" est un verbe, il peut également apparaître comme \"Erkodordöter\" ou \"Koptordöter\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_ACT_OF_TAKING => ["prise"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_ACT_OF_TAKING => [
            "\"prise\" peut se dire \"Tordöter\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_VERB_ACT_OF_TAKING => ["prendre"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_VERB_ACT_OF_TAKING => [
            "\"Prendre\" peut se dire \"Tordöter\" en parole gobline, ou avec \"Erkodordöter\" au passé ou \"Koptordöter\" au futur."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_LESSON => ["tosedorerksäpor|tosedorerksapor|erkodosedorerksäpor|erkodosedorerksapor|koptosedorerksäpor|koptosedorerksapor|tosedorerksäporpo|tosedorerksäporpo|tosedorerksaporpo|tosedorerksaporpo|erkodosedorerksäporpo|erkodosedorerksäporpo|erkodosedorerksaporpo|erkodosedorerksaporpo|koptosedorerksäporpo|koptosedorerksäporpo|koptosedorerksaporpo|koptosedorerksaporpo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_LESSON => [
            "\"Tosedorerksäpor\" signifie un leçon, ou peux aussi signifier \"Apprendre\" comme verbe.",
            "Quand \"Tosedorerksäpor\" est un verbe, il peut également apparaître comme \"Erkodosedorerksäpor\" ou \"Koptosedorerksäpor\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_LESSON => ["leçon|lecon"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_LESSON => [
            "\"Leçon\" peut se dire \"Tosedorerksäpor\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_VERB_LESSON => ["apprendre"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_VERB_LESSON => [
            "\"Apprendre\" peut se dire \"Tosedorerksäpor\" en parole gobline, ou avec \"Erkodosedorerksäpor\" au passé ou \"Koptosedorerksäpor\" au futur."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_GIFT => ["töter|toter|erkotöter|erkodoter|koptöter|koptoter|töterpo|töterpo|toterpo|toterpo|erkotöterpo|erkotöterpo|erkodoterpo|erkodoterpo|koptöterpo|koptöterpo|koptoterpo|koptoterpo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_GIFT => [
            "\"Töter\" signifie un cadeau ou don, ou peux aussi signifier \"Donner\" comme verbe.",
            "Quand \"Töter\" est un verbe, il peut également apparaître comme \"Erkotöter\" ou \"Koptöter\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_GIFT => ["cadeau|don"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_GIFT => [
            "\"Cadeau\" ou \"Don\" peut se dire \"Töter\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_VERB_GIFT => ["donner"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_VERB_GIFT => [
            "\"Donner\" peut se dire \"Töter\" en parole gobline, ou avec \"Erkotöter\" au passé ou \"Koptöter\" au futur."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_RESCUE => ["totërkobu|toterkobu|erkodotërkobu|erkodoterkobu|koptotërkobu|koptoterkobu|totërkoburpo|totërkobupo|toterkoburpo|toterkobupo|erkodotërkoburpo|erkodotërkobupo|erkodoterkoburpo|erkodoterkobupo|koptotërkoburpo|koptotërkobupo|koptoterkoburpo|koptoterkobupo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_RESCUE => [
            "\"Totërkobu\" signifie un secour, ou peux aussi signifier \"Secourir\" comme verbe.",
            "Quand \"Totërkobu\" est un verbe, il peut également apparaître comme \"Erkodotërkobu\" ou \"Koptotërkobu\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_RESCUE => ["secour"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_RESCUE => [
            "\"Secour\" peut se dire \"Totërkobu\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_VERB_RESCUE => ["secourir"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_VERB_RESCUE => [
            "\"Secourir\" peut se dire \"Totërkobu\" en parole gobline, ou avec \"Erkodotërkobu\" au passé ou \"Koptotërkobu\" au futur."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_WARN => ["totrdë|totrde|erkodotrdë|erkodotrde|koptotrdë|koptotrde|totrdërpo|totrdëbo|totrderpo|totrdepo|erkodotrdërpo|erkodotrdëbo|erkodotrderpo|erkodotrdepo|koptotrdërpo|koptotrdëbo|koptotrderpo|koptotrdepo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_WARN => [
            "\"Totrdë\" signifie un avertissement, ou peux aussi signifier \"Prévenir\" comme verbe.",
            "Quand \"Totrdë\" est un verbe, il peut également apparaître comme \"Erkodotrdë\" ou \"Koptotrdë\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_WARN => ["avertissement"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_WARN => [
            "\"Avertissement\" peut se dire \"Totrdë\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_VERB_WARN => ["prévenir|prevenir"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_VERB_WARN => [
            "\"Prévenir\" peut se dire \"Totrdë\" en parole gobline, ou avec \"Erkodotrdë\" au passé ou \"Koptotrdë\" au futur."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_ADVICE => ["totrdëkobu|totrdekobu|erkodotrdëkobu|erkodotrdekobu|koptotrdëkobu|koptotrdekobu|totrdëkoburpo|totrdëkobupo|totrdekoburpo|totrdekobupo|erkodotrdëkoburpo|erkodotrdëkobupo|erkodotrdekoburpo|erkodotrdekobupo|koptotrdëkoburpo|koptotrdëkobupo|koptotrdekoburpo|koptotrdekobupo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_ADVICE => [
            "\"Totrdëkobu\" signifie un conseil, ou peux aussi signifier \"Donner conseil\" comme verbe.",
            "Quand \"Totrdëkobu\" est un verbe, il peut également apparaître comme \"Erkodotrdëkobu\" ou \"Koptotrdëkobu\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_ADVICE => ["conseil"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_ADVICE => [
            "\"Conseil\" peut se dire \"Totrdëkobu\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_VERB_ADVICE => ["donner", "conseil"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_VERB_ADVICE => [
            "\"Donner conseil\" peut se dire \"Totrdëkobu\" en parole gobline, ou avec \"Erkodotrdëkobu\" au passé ou \"Koptotrdëkobu\" au futur."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_REPLACE => ["tötredor|totredor|erkotötredor|erkototredor|koptötredor|koptotredor|tötredorpo|tötredorpo|totredorpo|totredorpo|erkotötredorpo|erkotötredorpo|erkototredorpo|erkototredorpo|koptötredorpo|koptötredorpo|koptotredorpo|koptotredorpo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_REPLACE => [
            "\"Tötredor\" signifie un remplacement, ou peux aussi signifier \"Remplacer\" comme verbe.",
            "Quand \"Tötredor\" est un verbe, il peut également apparaître comme \"Erkotötredor\" ou \"Koptötredor\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_REPLACE => ["remplacement"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_REPLACE => [
            "\"Remplacement\" peut se dire \"Tötredor\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_VERB_REPLACE => ["remplacer"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_VERB_REPLACE => [
            "\"Remplacer\" peut se dire \"Tötredor\" en parole gobline, ou avec \"Erkotötredor\" au passé ou \"Koptötredor\" au futur."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_MURDER => ["totrëkobu|totrekobu|erkodotrëkobu|erkodotrekobu|koptotrëkobu|koptotrekobu|totrëkoburpo|totrëkobupo|totrekoburpo|totrekobupo|erkodotrëkoburpo|erkodotrëkobupo|erkodotrekoburpo|erkodotrekobupo|koptotrëkoburpo|koptotrëkobupo|koptotrekoburpo|koptotrekobupo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_MURDER => [
            "\"Totrëkobu\" signifie un meurtre, ou peux aussi signifier \"Tuer\" comme verbe.",
            "Quand \"Totrëkobu\" est un verbe, il peut également apparaître comme \"Erkodotrëkobu\" ou \"Koptotrëkobu\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_MURDER => ["meurtre"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_MURDER => [
            "\"Meurtre\" peut se dire \"Totrëkobu\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_VERB_MURDER => ["tuer"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_VERB_MURDER => [
            "\"Tuer\" peut se dire \"Totrëkobu\" en parole gobline, ou avec \"Erkodotrëkobu\" au passé ou \"Koptotrëkobu\" au futur."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_UNWILLING_OR_FORCED_WAR => ["totrëkobugubu|totrekobugubu|erkodotrëkobugubu|erkodotrekobugubu|koptotrëkobugubu|koptotrekobugubu|totrëkobuguburpo|totrëkobugubupo|totrekobuguburpo|totrekobugubupo|erkodotrëkobuguburpo|erkodotrëkobugubupo|erkodotrekobuguburpo|erkodotrekobugubupo|koptotrëkobuguburpo|koptotrëkobugubupo|koptotrekobuguburpo|koptotrekobugubupo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_UNWILLING_OR_FORCED_WAR => [
            "\"Totrëkobugubu\" signifie un guerre, forcé, ou peux aussi signifier \"Forcer\" ou \"Mener un guerre\" comme verbe.",
            "Quand \"Totrëkobugubu\" est un verbe, il peut également apparaître comme \"Erkodotrëkobugubu\" ou \"Koptotrëkobugubu\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_UNWILLING_OR_FORCED_WAR => ["forcé|guerre|force|guerre"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_UNWILLING_OR_FORCED_WAR => [
            "\"Forcé\" et \"Guerre\" peut se dire \"Totrëkobugubu\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_VERB_UNWILLING_OR_FORCED_WAR => ["forcer|mener", "forcer|guerre"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_VERB_UNWILLING_OR_FORCED_WAR => [
            "\"Forcer\" et \"Mener un guerre\" peuvent se dire \"Totrëkobugubu\" en parole gobline, ou avec \"Erkodotrëkobugubu\" au passé ou \"Koptotrëkobugubu\" au futur."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_SOURCE_BECAUSE => ["tötresèop|totreseop|erkotötresèop|erkototreseop|koptötresèop|koptotreseop|tötresèoprpo|tötresèoppo|totreseoprpo|totreseoppo|erkotötresèoprpo|erkotötresèoppo|erkototreseoprpo|erkototreseoppo|koptötresèoprpo|koptötresèoppo|koptotreseoprpo|koptotreseoppo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_SOURCE_BECAUSE => [
            "\"Tötresèop\" signifie un source, \"Car\", ou peux aussi signifier \"Produir\" comme verbe.",
            "Quand \"Tötresèop\" est un verbe, il peut également apparaître comme \"Erkotötresèop\" ou \"Koptötresèop\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_SOURCE_BECAUSE => ["source|car"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_SOURCE_BECAUSE => [
            "\"Source\" et \"Car\" peuvent tout deux se dire \"Tötresèop\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_VERB_SOURCE_BECAUSE => ["produir"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_VERB_SOURCE_BECAUSE => [
            "\"Produir\" peut se dire \"Tötresèop\" en parole gobline, ou avec \"Erkotötresèop\" au passé ou \"Koptötresèop\" au futur."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_STOP_FINISH => ["totrköpo|totrkopo|erkodotrköpo|erkodotrkopo|koptotrköpo|koptotrkopo|totrköporpo|totrköpopo|totrkoporpo|totrkopopo|erkodotrköporpo|erkodotrköpopo|erkodotrkoporpo|erkodotrkopopo|koptotrköporpo|koptotrköpopo|koptotrkoporpo|koptotrkopopo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_STOP_FINISH => [
            "\"Totrköpo\" signifie un arrêt, fin, ou peux aussi signifier \"Stopper\" comme verbe.",
            "Quand \"Totrköpo\" est un verbe, il peut également apparaître comme \"Erkodotrköpo\" ou \"Koptotrköpo\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_STOP_FINISH => ["arrêt|fin|arret|fin"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_STOP_FINISH => [
            "\"Arrêt\" ou \"Fin\" peuvent se dire \"Totrköpo\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_VERB_STOP_FINISH => ["stopper"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_VERB_STOP_FINISH => [
            "\"Stopper\" peut se dire \"Totrköpo\" en parole gobline, ou avec \"Erkodotrköpo\" au passé ou \"Koptotrköpo\" au futur."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_DIVIDED => ["tottödod|tottodod|erkodottödod|erkodottodod|koptottödod|koptottodod|tottödodrpo|tottödodpo|tottododrpo|tottododpo|erkodottödodrpo|erkodottödodpo|erkodottododrpo|erkodottododpo|koptottödodrpo|koptottödodpo|koptottododrpo|koptottododpo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_DIVIDED => [
            "\"Tottödod\" signifie un division, divisé, ou peux aussi signifier \"Être divisé\" comme verbe.",
            "Quand \"Tottödod\" est un verbe, il peut également apparaître comme \"Erkodottödod\" ou \"Koptottödod\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_DIVIDED => ["division|divisé|division|divise"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_DIVIDED => [
            "\"Division\" ou \"Divisé\" peuvent se dire \"Tottödod\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_VERB_DIVIDED => ["être|etre", "divisé|divise"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_VERB_DIVIDED => [
            "\"Être divisé\" peut se dire \"Tottödod\" en parole gobline, ou avec \"Erkodottödod\" au passé ou \"Koptottödod\" au futur."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_HATED => ["totutrëkopu|totutrekopu|erkodotutrëkopu|erkodotutrekopu|koptotutrëkopu|koptotutrekopu|totutrëkopurpo|totutrëkopupo|totutrekopurpo|totutrekopupo|erkodotutrëkopurpo|erkodotutrëkopupo|erkodotutrekopurpo|erkodotutrekopupo|koptotutrëkopurpo|koptotutrëkopupo|koptotutrekopurpo|koptotutrekopupo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_HATED => [
            "\"Totutrëkopu\" signifie un haine, ou peux aussi signifier \"Détester\" comme verbe.",
            "Quand \"Totutrëkopu\" est un verbe, il peut également apparaître comme \"Erkodotutrëkopu\" ou \"Koptotutrëkopu\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_HATED => ["haine"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_HATED => [
            "\"Haine\" peut se dire \"Totutrëkopu\" en parole gobline."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_VERB_HATED => ["détester|detester"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_VERB_HATED => [
            "\"Détester\" peut se dire \"Totutrëkopu\" en parole gobline, ou avec \"Erkodotutrëkopu\" au passé ou \"Koptotutrëkopu\" au futur."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_GTE_FOOD => ["trë|tre|erkotrë|erkotre|kobotrë|kobotre|trërpo|trëbo|trerpo|trepo|erkotrërpo|erkotrëbo|erkotrerpo|erkotrepo|kobotrërpo|kobotrëbo|kobotrerpo|kobotrepo"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_GTE_FOOD => [
            "\"Trë\" signifie un nourriture, ou peux aussi signifier \"Transformer en nourriture\" comme verbe.",
            "Quand \"Trë\" est un verbe, il peut également apparaître comme \"Erkotrë\" ou \"Kobotrë\" pour un passé et un future."
        ],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_KEY_ETG_NOUN_FOOD => ["nourriture"],
        LocaleKey::DIAL_GOBLIN_TRANSLATOR_TXT_ETG_NOUN_FOOD => [
            "\"Nourriture\" peut se dire \"Trë\" en parole gobline."
        ]
    }
end
