module ShopKeeper
    NAME = Locale::KEY_SHOPKEEPER_NAME
    INTRO_DIALOG = Locale::KEY_SHOPKEEPER_INTRO_DIALOG
    IDLE_DIALOGS = Locale::KEY_SHOPKEEPER_IDLE_DIALOGS
    CONVERSATION_STARTER = Locale::KEY_SHOPKEEER_CONVERSATION_STARTER
    CONVERSATION_KEEPER = Locale::KEY_SHOPKEEER_CONVERSATION_KEEPER
    REPEAT_INTRO = Locale::KEY_DIAL_SHOPKEEPER_REPEAT
    DIAL_ID_ORIGIN = 'origin'
    DIAL_ID_ALLIANCE = 'alliance'
    DIAL_ID_BLACK_LEATHER = 'black_leather'
    DIAL_ID_OLD_SOLDIER = 'old_soldier'
    DIAL_ID_POULAINES = 'poulaines'
    DIAL_ID_CHOPINES = 'chopines'
    DIAL_ID_GAMBESON = 'gambeson'
    DIAL_ID_HOUPPELAND = 'houppelande'
    DIAL_ID_ESCOFFION = 'escoffion'
    DIAL_ID_HAUBERK = 'hauberk'
    DIAL_ID_CERVELIERE = 'cerveliere'
    DIAL_ID_TELECRYSTAL = 'telecrystal'
    DIAL_ID_HEALTH_POTION = 'health_potion'
    DIAL_ID_LOST_KNIGHT = 'lost_knight'
    DIAL_ID_DUNGEON_INTERIOR = 'dungeon_interior'
    DIAL_ID_DUNGEON = 'dungeon'
    DIAL_ID_HOLY_EMPIRE = 'holy_empire'
    DIAL_ID_NOT_FROM_HERE = 'not_from_here'
    DIAL_ID_NAME = 'name'
    DIAL_ID_AGE = 'age'
    DIAL_ID_GENDER = 'gender'
    DIAL_ID_ARMOR_WEIGHT = 'armor_weight'
    DIAL_ID_ARMOR_PROTECTION = 'armor_protection'
    DIAL_ID_AGILITY = 'agility'
    DIAL_ID_INTELLIGENCE = 'intelligence'
    DIAL_ID_HEALTH = 'health'
    DIAL_ID_STRENGH = 'strength'
    DIAL_ID_GOBLINS = 'goblins'
    DIAL_ID_UNDEAD = 'undead'
    DIAL_ID_RESUSCITATE = 'resuscitate'
    DIAL_ID_ADVICES = 'advices'
    DIAL_ID_SUPPLIER = 'supplier'
    DIAL_ID_DISCOUNTS = 'discounts'
    DIAL_ID_TOO_EXPENSIVE = 'too_expensive'
    DIAL_ID_HAVE_YOU = 'have_you'
    DIAL_ID_FUCK_YOU = 'fuck_you'
    DIAL_ID_GET_LOST = 'get_lost'
    DIAL_ID_THREAT = 'threat'
    DIAL_ID_WEATHER = 'weather'
    DIAL_ID_SEASON = 'season'
    DIAL_ID_HOW_YOU_DOIN = 'how_you_doin'
    DIAL_ID_HELLO = 'hello'
    DIAL_ID_MARTON = 'marton'
    DIAL_ID_WHO_YOU = 'who_you'
    DIAL_ID_VILLAGE = 'village'
    DIAL_ID_ADVENTURER = 'adventurer'
    DIAL_ID_YEAR = 'year'
    DIAL_ID_NOT_HELPING = 'not_helping'
    DIAL_ID_STUPID = 'stupid'
    DIAL_ID_GOD = 'god'
    DIAL_ID_OTHER_GOD = 'other_god'
    DIALOGS = [
        Dialog.new(
            DIAL_ID_NOT_FROM_HERE,
            Locale::KEY_DIAL_SHOPKEEPER_KEY_NOT_FROM_HERE,
            Locale::KEY_DIAL_SHOPKEEPER_TXT_NOT_FROM_HERE
        ),
        Dialog.new(
            DIAL_ID_ORIGIN,
            Locale::KEY_DIAL_SHOPKEEPER_KEY_ORIGIN,
            Locale::KEY_DIAL_SHOPKEEPER_TXT_ORIGIN
        ),
        Dialog.new(
            DIAL_ID_ALLIANCE,
            Locale::KEY_DIAL_SHOPKEEPER_KEY_ALLIANCE,
            Locale::KEY_DIAL_SHOPKEEPER_TXT_ALLIANCE,
            Locale::KEY_DIAL_SHOPKEEPER_INTRO_ALLIANCE
        ),
        Dialog.new(
            DIAL_ID_BLACK_LEATHER,
            Locale::KEY_DIAL_SHOPKEEPER_KEY_BLACK_LEATHER,
            Locale::KEY_DIAL_SHOPKEEPER_TXT_BLACK_LEATHER
        ),
        Dialog.new(
            DIAL_ID_OLD_SOLDIER,
            Locale::KEY_DIAL_SHOPKEEPER_KEY_OLD_SOLDIER,
            Locale::KEY_DIAL_SHOPKEEPER_TXT_OLD_SOLDIER,
            Locale::KEY_DIAL_SHOPKEEPER_INTRO_OLD_SOLDIER
        ),
        Dialog.new(
            DIAL_ID_POULAINES,
            Locale::KEY_DIAL_SHOPKEEPER_KEY_POULAINES,
            Locale::KEY_DIAL_SHOPKEEPER_TXT_POULAINES,
            Locale::KEY_DIAL_SHOPKEEPER_INTRO_POULAINES
        ),
        Dialog.new(
            DIAL_ID_CHOPINES,
            Locale::KEY_DIAL_SHOPKEEPER_KEY_CHOPINES,
            Locale::KEY_DIAL_SHOPKEEPER_TXT_CHOPINES
        ),
        Dialog.new(
            DIAL_ID_GAMBESON,
            Locale::KEY_DIAL_SHOPKEEPER_KEY_GAMBESON,
            Locale::KEY_DIAL_SHOPKEEPER_TXT_GAMBESON
        ),
        Dialog.new(
            DIAL_ID_HOUPPELANDE,
            Locale::KEY_DIAL_SHOPKEEPER_KEY_HOUPPELANDE,
            Locale::KEY_DIAL_SHOPKEEPER_TXT_HOUPPELANDE,
            Locale::KEY_DIAL_SHOPKEEPER_INTRO_HOUPPELANDE
        ),
        Dialog.new(
            DIAL_ID_ESCOFFION,
            Locale::KEY_DIAL_SHOPKEEPER_KEY_ESCOFFION,
            Locale::KEY_DIAL_SHOPKEEPER_TXT_ESCOFFION,
            Locale::KEY_DIAL_SHOPKEEPER_INTRO_ESCOFFION
        ),
        Dialog.new(
            DIAL_ID_HAUBERK,
            Locale::KEY_DIAL_SHOPKEEPER_KEY_HAUBERK
        ),
        Dialog.new(
            DIAL_ID_CERVELIERE,
            Locale::KEY_DIAL_SHOPKEEPER_KEY_CERVELIERE,
            Locale::KEY_DIAL_SHOPKEEPER_TXT_CERVELIERE
        ),
        Dialog.new(
            DIAL_ID_TELECRYSTAL,
            Locale::KEY_DIAL_SHOPKEEPER_KEY_TELECRYSTAL,
            Locale::KEY_DIAL_SHOPKEEPER_TXT_TELECRYSTAL,
            Locale::KEY_DIAL_SHOPKEEPER_INTRO_TELECRYSTAL
        ),
        Dialog.new(
            DIAL_ID_HEALTH_POTION,
            Locale::KEY_DIAL_SHOPKEEPER_KEY_HEALTH_POTION,
            Locale::KEY_DIAL_SHOPKEEPER_TXT_HEALTH_POTION
        ),
        Dialog.new(
            DIAL_ID_LOST_KNIGHT,
            Locale::KEY_DIAL_SHOPKEEPER_KEY_LOST_KNIGHT,
            Locale::KEY_DIAL_SHOPKEEPER_TXT_LOST_KNIGHT
        ),
        Dialog.new(
            DIAL_ID_GOBLINS,
            Locale::KEY_DIAL_SHOPKEEPER_KEY_GOBLINS,
            Locale::KEY_DIAL_SHOPKEEPER_TXT_GOBLINS
        ),
        Dialog.new(
            DIAL_ID_UNDEAD,
            Locale::KEY_DIAL_SHOPKEEPER_KEY_UNDEAD,
            Locale::KEY_DIAL_SHOPKEEPER_TXT_UNDEAD
        ),
        Dialog.new(
            DIAL_ID_RESUSCITATE,
            Locale::KEY_DIAL_SHOPKEEPER_KEY_RESUSCITATE,
            Locale::KEY_DIAL_SHOPKEEPER_TXT_RESUSCITATE
        ),
        Dialog.new(
            DIAL_ID_WHERE_DUNGEON,
            Locale::KEY_DIAL_SHOPKEEPER_KEY_WHERE_DUNGEON,
            Locale::KEY_DIAL_SHOPKEEPER_TXT_WHERE_DUNGEON
        ),
        Dialog.new(
            DIAL_ID_DUNGEON_INTERIOR,
            Locale::KEY_DIAL_SHOPKEEPER_KEY_DUNGEON_INSIDE,
            Locale::KEY_DIAL_SHOPKEEPER_TXT_DUNGEON_INSIDE,
            Locale::KEY_DIAL_SHOPKEEPER_INTRO_DUNGEON_INSIDE
        ),
        Dialog.new(
            DIAL_ID_DUNGEON,
            Locale::KEY_DIAL_SHOPKEEPER_KEY_DUNGEON,
            Locale::KEY_DIAL_SHOPKEEPER_TXT_DUNGEON
        ),
        Dialog.new(
            DIAL_ID_HOLY_EMPIRE,
            Locale::KEY_DIAL_SHOPKEEPER_KEY_HOLY_EMPIRE,
            Locale::KEY_DIAL_SHOPKEEPER_TXT_HOLY_EMPIRE,
            Locale::KEY_DIAL_SHOPKEEPER_INTRO_HOLY_EMPIRE
        ),
        Dialog.new(
            DIAL_ID_NAME,
            Locale::KEY_DIAL_SHOPKEEPER_KEY_NAME,
            Locale::KEY_DIAL_SHOPKEEPER_TXT_NAME
        ),
        Dialog.new(
            DIAL_ID_AGE,
            Locale::KEY_DIAL_SHOPKEEPER_KEY_AGE,
            Locale::KEY_DIAL_SHOPKEEPER_TXT_AGE,
            Locale::KEY_DIAL_SHOPKEEPER_INTRO_AGE
        ),
        Dialog.new(
            DIAL_ID_GENDER,
            Locale::KEY_DIAL_SHOPKEEPER_KEY_GENDER,
            Locale::KEY_DIAL_SHOPKEEPER_TXT_GENDER,
            Locale::KEY_DIAL_SHOPKEEPER_INTRO_GENDER
        ),
        Dialog.new(
            DIAL_ID_ARMOR_WEIGHT,
            Locale::KEY_DIAL_SHOPKEEPER_KEY_ARMOR_WEIGHT,
            Locale::KEY_DIAL_SHOPKEEPER_TXT_ARMOR_WEIGHT
        ),
        Dialog.new(
            DIAL_ID_ARMOR_PROTECTION,
            Locale::KEY_DIAL_SHOPKEEPER_KEY_ARMOR_PROTECTION,
            Locale::KEY_DIAL_SHOPKEEPER_TXT_ARMOR_PROTECTION
        ),
        Dialog.new(
            DIAL_ID_AGILITY,
            Locale::KEY_DIAL_SHOPKEEPER_KEY_AGILITY,
            Locale::KEY_DIAL_SHOPKEEPER_TXT_AGILITY,
            Locale::KEY_DIAL_SHOPKEEPER_INTRO_AGILITY
        ),
        Dialog.new(
            DIAL_ID_HEALTH,
            Locale::KEY_DIAL_SHOPKEEPER_KEY_HEALTH,
            Locale::KEY_DIAL_SHOPKEEPER_TXT_HEALTH,
            Locale::KEY_DIAL_SHOPKEEPER_INTRO_HEALTH
        ),
        Dialog.new(
            DIAL_ID_STRENGH,
            Locale::KEY_DIAL_SHOPKEEPER_KEY_STRENGTH,
            Locale::KEY_DIAL_SHOPKEEPER_TXT_STRENGTH,
            Locale::KEY_DIAL_SHOPKEEPER_INTRO_STRENGTH
        ),
        Dialog.new(
            DIAL_ID_INTELLIGENCE,
            Locale::KEY_DIAL_SHOPKEEPER_KEY_INTELLIGENCE,
            Locale::KEY_DIAL_SHOPKEEPER_TXT_INTELLIGENCE
        ),
        Dialog.new(
            DIAL_ID_ADVICES,
            Locale::KEY_DIAL_SHOPKEEPER_KEY_ADVICES,
            Locale::KEY_DIAL_SHOPKEEPER_TXT_ADVICES,
            Locale::KEY_DIAL_SHOPKEEPER_INTRO_ADVICES
        ),
        Dialog.new(
            DIAL_ID_SUPPLIER,
            Locale::KEY_DIAL_SHOPKEEPER_KEY_SUPPLIER,
            Locale::KEY_DIAL_SHOPKEEPER_TXT_SUPPLIER
        ),
        Dialog.new(
            DIAL_ID_DISCOUNTS,
            Locale::KEY_DIAL_SHOPKEEPER_KEY_DISCOUNTS,
            Locale::KEY_DIAL_SHOPKEEPER_TXT_DISCOUNTS,
            Locale::KEY_DIAL_SHOPKEEPER_INTRO_DISCOUNTS
        ),
        Dialog.new(
            DIAL_ID_TOO_EXPENSIVE,
            Locale::KEY_DIAL_SHOPKEEPER_KEY_TOO_EXPENSIVE,
            Locale::KEY_DIAL_SHOPKEEPER_TXT_TOO_EXPENSIVE,
            Locale::KEY_DIAL_SHOPKEEPER_INTRO_TOO_EXPENSIVE
        ),
        Dialog.new(
            DIAL_ID_HAVE_YOU,
            Locale::KEY_DIAL_SHOPKEEPER_KEY_HAVE_YOU,
            Locale::KEY_DIAL_SHOPKEEPER_TXT_HAVE_YOU
        ),
        Dialog.new(
            DIAL_ID_FUCK_YOU,
            Locale::KEY_DIAL_SHOPKEEPER_KEY_FUCK_YOU,
            Locale::KEY_DIAL_SHOPKEEPER_TXT_FUCK_YOU,
            Locale::KEY_DIAL_SHOPKEEPER_INTRO_FUCK_YOU
        ),
        Dialog.new(
            DIAL_ID_GET_LOST,
            Locale::KEY_DIAL_SHOPKEEPER_KEY_GET_LOST,
            Locale::KEY_DIAL_SHOPKEEPER_TXT_GET_LOST,
            Locale::KEY_DIAL_SHOPKEEPER_INTRO_GET_LOST
        ),
        Dialog.new(
            DIAL_ID_THREAT,
            Locale::KEY_DIAL_SHOPKEEPER_KEY_THREAT,
            Locale::KEY_DIAL_SHOPKEEPER_TXT_THREAT,
            Locale::KEY_DIAL_SHOPKEEPER_INTRO_THREAT
        ),
        Dialog.new(
            DIAL_ID_WEATHER,
            Locale::KEY_DIAL_SHOPKEEPER_KEY_WEATHER,
            Locale::KEY_DIAL_SHOPKEEPER_TXT_WEATHER,
            Locale::KEY_DIAL_SHOPKEEPER_INTRO_WEATHER
        ),
        Dialog.new(
            DIAL_ID_SEASON,
            Locale::KEY_DIAL_SHOPKEEPER_KEY_SEASON,
            Locale::KEY_DIAL_SHOPKEEPER_TXT_SEASON,
            Locale::KEY_DIAL_SHOPKEEPER_INTRO_SEASON
        ),
        Dialog.new(
            DIAL_ID_HOW_YOU_DOIN,
            Locale::KEY_DIAL_SHOPKEEPER_KEY_HOW_YOU_DOIN,
            Locale::KEY_DIAL_SHOPKEEPER_TXT_HOW_YOU_DOIN,
            Locale::KEY_DIAL_SHOPKEEPER_INTRO_HOW_YOU_DOIN
        ),
        Dialog.new(
            DIAL_ID_HELLO,
            Locale::KEY_DIAL_SHOPKEEPER_KEY_HELLO,
            Locale::KEY_DIAL_SHOPKEEPER_TXT_HELLO,
            Locale::KEY_DIAL_SHOP_KEEPER_INTRO_HELLO
        ),
        Dialog.new(
            DIAL_ID_WHO_YOU,

        ),
        Dialog.new(
            DIAL_ID_MARTON,
            Locale::KEY_DIAL_SHOPKEEPER_KEY_MERCHANT_NAME,
            Locale::KEY_DIAL_SHOPKEEPER_TXT_MERCHANT_NAME
        ),
        Dialog.new(
            DIAL_ID_VILLAGE,
            Locale::KEY_DIAL_SHOPKEEPER_KEY_VILLAGE,
            Locale::KEY_DIAL_SHOPKEEPER_TXT_VILLAGE
        ),
        Dialog.new(
            DIAL_ID_ADVENTURER,
            Locale::KEY_DIAL_SHOPKEEPER_KEY_ADVENTURER,
            Locale::KEY_DIAL_SHOPKEEPER_TXT_ADVENTURER,
            Locale::KEY_DIAL_SHOPKEEPER_INTRO_ADVENTURER
        ),
        Dialog.new(
            DIAL_ID_YEAR,
            Locale::KEY_DIAL_SHOPKEEPER_KEY_YEAR,
            Locale::KEY_DIAL_SHOPKEEPER_TXT_YEAR,
            Locale::KEY_DIAL_SHOPKEEPER_INTRO_YEAR
        ),
        Dialog.new(
            DIAL_ID_NOT_HELPING,
            Locale::KEY_DIAL_SHOPKEEPER_KEY_NOT_HELPING,
            Locale::KEY_DIAL_SHOPKEEPER_TXT_NOT_HELPING
        ),
        Dialog.new(
            DIAL_ID_STUPID
            Locale::KEY_DIAL_SHOPKEEPER_KEY_STUPID,
            Locale::KEY_DIAL_SHOPKEEPER_TXT_STUPID,
            Locale::KEY_DIAL_SHOPKEEPER_INTRO_STUPID
        ),
        Dialog.new(
            DIAL_ID_GOD,
            Locale::KEY_DIAL_SHOPKEEPER_KEY_GOD,
            Locale::KEY_DIAL_SHOPKEEPER_TXT_GOD,
            Locale::KEY_DIAL_SHOPKEEPER_INTRO_GOD
        ),
        Dialog.new(
            DIAL_ID_OTHER_GOD,
            Locale::KEY_DIAL_SHOPKEEPER_KEY_OTHER_GOD,
            Locale::KEY_DIAL_SHOPKEEPER_TXT_OTHER_GOD
        )
    ]
    UNKNOWN_DIALOGS = Locale::KEY_SHOPKEEPER_UNKNOWN_DIALOGS
    PICTURE = 'merchant'
end
