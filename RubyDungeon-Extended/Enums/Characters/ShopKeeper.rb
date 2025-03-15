module ShopKeeper
    NAME = LocaleKey::SHOPKEEPER_NAME
    INTRO_DIALOG = LocaleKey::SHOPKEEPER_INTRO_DIALOG
    IDLE_DIALOGS = LocaleKey::SHOPKEEPER_IDLE_DIALOGS
    CONVERSATION_STARTER = LocaleKey::SHOPKEEER_CONVERSATION_STARTER
    CONVERSATION_KEEPER = LocaleKey::SHOPKEEER_CONVERSATION_KEEPER
    REPEAT_INTRO = LocaleKey::DIAL_SHOPKEEPER_REPEAT
    DIAL_ID_ORIGIN = 'origin'
    DIAL_ID_ALLIANCE = 'alliance'
    DIAL_ID_BLACK_LEATHER = 'black_leather'
    DIAL_ID_OLD_SOLDIER = 'old_soldier'
    DIAL_ID_POULAINES = 'poulaines'
    DIAL_ID_CHOPINES = 'chopines'
    DIAL_ID_GAMBESON = 'gambeson'
    DIAL_ID_HOUPPELANDE = 'houppelande'
    DIAL_ID_ESCOFFION = 'escoffion'
    DIAL_ID_HAUBERK = 'hauberk'
    DIAL_ID_CERVELIERE = 'cerveliere'
    DIAL_ID_TELECRYSTAL = 'telecrystal'
    DIAL_ID_HEALTH_POTION = 'health_potion'
    DIAL_ID_LOST_KNIGHT = 'lost_knight'
    DIAL_ID_WHERE_DUNGEON = 'where_dungeon'
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
            LocaleKey::DIAL_SHOPKEEPER_KEY_NOT_FROM_HERE,
            LocaleKey::DIAL_SHOPKEEPER_TXT_NOT_FROM_HERE
        ),
        Dialog.new(
            DIAL_ID_ORIGIN,
            LocaleKey::DIAL_SHOPKEEPER_KEY_ORIGIN,
            LocaleKey::DIAL_SHOPKEEPER_TXT_ORIGIN
        ),
        Dialog.new(
            DIAL_ID_ALLIANCE,
            LocaleKey::DIAL_SHOPKEEPER_KEY_ALLIANCE,
            LocaleKey::DIAL_SHOPKEEPER_TXT_ALLIANCE,
            LocaleKey::DIAL_SHOPKEEPER_INTRO_ALLIANCE
        ),
        Dialog.new(
            DIAL_ID_BLACK_LEATHER,
            LocaleKey::DIAL_SHOPKEEPER_KEY_BLACK_LEATHER,
            LocaleKey::DIAL_SHOPKEEPER_TXT_BLACK_LEATHER
        ),
        Dialog.new(
            DIAL_ID_OLD_SOLDIER,
            LocaleKey::DIAL_SHOPKEEPER_KEY_OLD_SOLDIER,
            LocaleKey::DIAL_SHOPKEEPER_TXT_OLD_SOLDIER,
            LocaleKey::DIAL_SHOPKEEPER_INTRO_OLD_SOLDIER
        ),
        Dialog.new(
            DIAL_ID_POULAINES,
            LocaleKey::DIAL_SHOPKEEPER_KEY_POULAINES,
            LocaleKey::DIAL_SHOPKEEPER_TXT_POULAINES,
            LocaleKey::DIAL_SHOPKEEPER_INTRO_POULAINES
        ),
        Dialog.new(
            DIAL_ID_CHOPINES,
            LocaleKey::DIAL_SHOPKEEPER_KEY_CHOPINES,
            LocaleKey::DIAL_SHOPKEEPER_TXT_CHOPINES
        ),
        Dialog.new(
            DIAL_ID_GAMBESON,
            LocaleKey::DIAL_SHOPKEEPER_KEY_GAMBESON,
            LocaleKey::DIAL_SHOPKEEPER_TXT_GAMBESON
        ),
        Dialog.new(
            DIAL_ID_HOUPPELANDE,
            LocaleKey::DIAL_SHOPKEEPER_KEY_HOUPPELANDE,
            LocaleKey::DIAL_SHOPKEEPER_TXT_HOUPPELANDE,
            LocaleKey::DIAL_SHOPKEEPER_INTRO_HOUPPELANDE
        ),
        Dialog.new(
            DIAL_ID_ESCOFFION,
            LocaleKey::DIAL_SHOPKEEPER_KEY_ESCOFFION,
            LocaleKey::DIAL_SHOPKEEPER_TXT_ESCOFFION,
            LocaleKey::DIAL_SHOPKEEPER_INTRO_ESCOFFION
        ),
        Dialog.new(
            DIAL_ID_HAUBERK,
            LocaleKey::DIAL_SHOPKEEPER_KEY_HAUBERK,
            LocaleKey::DIAL_SHOPKEEPER_TXT_HAUBERK
        ),
        Dialog.new(
            DIAL_ID_CERVELIERE,
            LocaleKey::DIAL_SHOPKEEPER_KEY_CERVELIERE,
            LocaleKey::DIAL_SHOPKEEPER_TXT_CERVELIERE
        ),
        Dialog.new(
            DIAL_ID_TELECRYSTAL,
            LocaleKey::DIAL_SHOPKEEPER_KEY_TELECRYSTAL,
            LocaleKey::DIAL_SHOPKEEPER_TXT_TELECRYSTAL,
            LocaleKey::DIAL_SHOPKEEPER_INTRO_TELECRYSTAL
        ),
        Dialog.new(
            DIAL_ID_HEALTH_POTION,
            LocaleKey::DIAL_SHOPKEEPER_KEY_HEALTH_POTION,
            LocaleKey::DIAL_SHOPKEEPER_TXT_HEALTH_POTION
        ),
        Dialog.new(
            DIAL_ID_LOST_KNIGHT,
            LocaleKey::DIAL_SHOPKEEPER_KEY_LOST_KNIGHT,
            LocaleKey::DIAL_SHOPKEEPER_TXT_LOST_KNIGHT
        ),
        Dialog.new(
            DIAL_ID_GOBLINS,
            LocaleKey::DIAL_SHOPKEEPER_KEY_GOBLINS,
            LocaleKey::DIAL_SHOPKEEPER_TXT_GOBLINS
        ),
        Dialog.new(
            DIAL_ID_UNDEAD,
            LocaleKey::DIAL_SHOPKEEPER_KEY_UNDEAD,
            LocaleKey::DIAL_SHOPKEEPER_TXT_UNDEAD
        ),
        Dialog.new(
            DIAL_ID_RESUSCITATE,
            LocaleKey::DIAL_SHOPKEEPER_KEY_RESUSCITATE,
            LocaleKey::DIAL_SHOPKEEPER_TXT_RESUSCITATE
        ),
        Dialog.new(
            DIAL_ID_WHERE_DUNGEON,
            LocaleKey::DIAL_SHOPKEEPER_KEY_WHERE_DUNGEON,
            LocaleKey::DIAL_SHOPKEEPER_TXT_WHERE_DUNGEON
        ),
        Dialog.new(
            DIAL_ID_DUNGEON_INTERIOR,
            LocaleKey::DIAL_SHOPKEEPER_KEY_DUNGEON_INSIDE,
            LocaleKey::DIAL_SHOPKEEPER_TXT_DUNGEON_INSIDE,
            LocaleKey::DIAL_SHOPKEEPER_INTRO_DUNGEON_INSIDE
        ),
        Dialog.new(
            DIAL_ID_DUNGEON,
            LocaleKey::DIAL_SHOPKEEPER_KEY_DUNGEON,
            LocaleKey::DIAL_SHOPKEEPER_TXT_DUNGEON
        ),
        Dialog.new(
            DIAL_ID_HOLY_EMPIRE,
            LocaleKey::DIAL_SHOPKEEPER_KEY_HOLY_EMPIRE,
            LocaleKey::DIAL_SHOPKEEPER_TXT_HOLY_EMPIRE,
            LocaleKey::DIAL_SHOPKEEPER_INTRO_HOLY_EMPIRE
        ),
        Dialog.new(
            DIAL_ID_NAME,
            LocaleKey::DIAL_SHOPKEEPER_KEY_NAME,
            LocaleKey::DIAL_SHOPKEEPER_TXT_NAME
        ),
        Dialog.new(
            DIAL_ID_AGE,
            LocaleKey::DIAL_SHOPKEEPER_KEY_AGE,
            LocaleKey::DIAL_SHOPKEEPER_TXT_AGE,
            LocaleKey::DIAL_SHOPKEEPER_INTRO_AGE
        ),
        Dialog.new(
            DIAL_ID_GENDER,
            LocaleKey::DIAL_SHOPKEEPER_KEY_GENDER,
            LocaleKey::DIAL_SHOPKEEPER_TXT_GENDER,
            LocaleKey::DIAL_SHOPKEEPER_INTRO_GENDER
        ),
        Dialog.new(
            DIAL_ID_ARMOR_WEIGHT,
            LocaleKey::DIAL_SHOPKEEPER_KEY_ARMOR_WEIGHT,
            LocaleKey::DIAL_SHOPKEEPER_TXT_ARMOR_WEIGHT
        ),
        Dialog.new(
            DIAL_ID_ARMOR_PROTECTION,
            LocaleKey::DIAL_SHOPKEEPER_KEY_ARMOR_PROTECTION,
            LocaleKey::DIAL_SHOPKEEPER_TXT_ARMOR_PROTECTION
        ),
        Dialog.new(
            DIAL_ID_AGILITY,
            LocaleKey::DIAL_SHOPKEEPER_KEY_AGILITY,
            LocaleKey::DIAL_SHOPKEEPER_TXT_AGILITY,
            LocaleKey::DIAL_SHOPKEEPER_INTRO_AGILITY
        ),
        Dialog.new(
            DIAL_ID_HEALTH,
            LocaleKey::DIAL_SHOPKEEPER_KEY_HEALTH,
            LocaleKey::DIAL_SHOPKEEPER_TXT_HEALTH,
            LocaleKey::DIAL_SHOPKEEPER_INTRO_HEALTH
        ),
        Dialog.new(
            DIAL_ID_STRENGH,
            LocaleKey::DIAL_SHOPKEEPER_KEY_STRENGTH,
            LocaleKey::DIAL_SHOPKEEPER_TXT_STRENGTH,
            LocaleKey::DIAL_SHOPKEEPER_INTRO_STRENGTH
        ),
        Dialog.new(
            DIAL_ID_INTELLIGENCE,
            LocaleKey::DIAL_SHOPKEEPER_KEY_INTELLIGENCE,
            LocaleKey::DIAL_SHOPKEEPER_TXT_INTELLIGENCE
        ),
        Dialog.new(
            DIAL_ID_ADVICES,
            LocaleKey::DIAL_SHOPKEEPER_KEY_ADVICES,
            LocaleKey::DIAL_SHOPKEEPER_TXT_ADVICES,
            LocaleKey::DIAL_SHOPKEEPER_INTRO_ADVICES
        ),
        Dialog.new(
            DIAL_ID_SUPPLIER,
            LocaleKey::DIAL_SHOPKEEPER_KEY_SUPPLIER,
            LocaleKey::DIAL_SHOPKEEPER_TXT_SUPPLIER
        ),
        Dialog.new(
            DIAL_ID_DISCOUNTS,
            LocaleKey::DIAL_SHOPKEEPER_KEY_DISCOUNTS,
            LocaleKey::DIAL_SHOPKEEPER_TXT_DISCOUNTS,
            LocaleKey::DIAL_SHOPKEEPER_INTRO_DISCOUNTS
        ),
        Dialog.new(
            DIAL_ID_TOO_EXPENSIVE,
            LocaleKey::DIAL_SHOPKEEPER_KEY_TOO_EXPENSIVE,
            LocaleKey::DIAL_SHOPKEEPER_TXT_TOO_EXPENSIVE,
            LocaleKey::DIAL_SHOPKEEPER_INTRO_TOO_EXPENSIVE
        ),
        Dialog.new(
            DIAL_ID_HAVE_YOU,
            LocaleKey::DIAL_SHOPKEEPER_KEY_HAVE_YOU,
            LocaleKey::DIAL_SHOPKEEPER_TXT_HAVE_YOU
        ),
        Dialog.new(
            DIAL_ID_FUCK_YOU,
            LocaleKey::DIAL_SHOPKEEPER_KEY_FUCK_YOU,
            LocaleKey::DIAL_SHOPKEEPER_TXT_FUCK_YOU,
            LocaleKey::DIAL_SHOPKEEPER_INTRO_FUCK_YOU
        ),
        Dialog.new(
            DIAL_ID_GET_LOST,
            LocaleKey::DIAL_SHOPKEEPER_KEY_GET_LOST,
            LocaleKey::DIAL_SHOPKEEPER_TXT_GET_LOST,
            LocaleKey::DIAL_SHOPKEEPER_INTRO_GET_LOST
        ),
        Dialog.new(
            DIAL_ID_THREAT,
            LocaleKey::DIAL_SHOPKEEPER_KEY_THREAT,
            LocaleKey::DIAL_SHOPKEEPER_TXT_THREAT,
            LocaleKey::DIAL_SHOPKEEPER_INTRO_THREAT
        ),
        Dialog.new(
            DIAL_ID_WEATHER,
            LocaleKey::DIAL_SHOPKEEPER_KEY_WEATHER,
            LocaleKey::DIAL_SHOPKEEPER_TXT_WEATHER,
            LocaleKey::DIAL_SHOPKEEPER_INTRO_WEATHER
        ),
        Dialog.new(
            DIAL_ID_SEASON,
            LocaleKey::DIAL_SHOPKEEPER_KEY_SEASON,
            LocaleKey::DIAL_SHOPKEEPER_TXT_SEASON,
            LocaleKey::DIAL_SHOPKEEPER_INTRO_SEASON
        ),
        Dialog.new(
            DIAL_ID_HOW_YOU_DOIN,
            LocaleKey::DIAL_SHOPKEEPER_KEY_HOW_YOU_DOIN,
            LocaleKey::DIAL_SHOPKEEPER_TXT_HOW_YOU_DOIN,
            LocaleKey::DIAL_SHOPKEEPER_INTRO_HOW_YOU_DOIN
        ),
        Dialog.new(
            DIAL_ID_HELLO,
            LocaleKey::DIAL_SHOPKEEPER_KEY_HELLO,
            LocaleKey::DIAL_SHOPKEEPER_TXT_HELLO,
            LocaleKey::DIAL_SHOPKEEPER_INTRO_HELLO
        ),
        Dialog.new(
            DIAL_ID_MARTON,
            LocaleKey::DIAL_SHOPKEEPER_KEY_MERCHANT_NAME,
            LocaleKey::DIAL_SHOPKEEPER_TXT_MERCHANT_NAME
        ),
        Dialog.new(
            DIAL_ID_VILLAGE,
            LocaleKey::DIAL_SHOPKEEPER_KEY_VILLAGE,
            LocaleKey::DIAL_SHOPKEEPER_TXT_VILLAGE
        ),
        Dialog.new(
            DIAL_ID_ADVENTURER,
            LocaleKey::DIAL_SHOPKEEPER_KEY_ADVENTURER,
            LocaleKey::DIAL_SHOPKEEPER_TXT_ADVENTURER,
            LocaleKey::DIAL_SHOPKEEPER_INTRO_ADVENTURER
        ),
        Dialog.new(
            DIAL_ID_YEAR,
            LocaleKey::DIAL_SHOPKEEPER_KEY_YEAR,
            LocaleKey::DIAL_SHOPKEEPER_TXT_YEAR,
            LocaleKey::DIAL_SHOPKEEPER_INTRO_YEAR
        ),
        Dialog.new(
            DIAL_ID_NOT_HELPING,
            LocaleKey::DIAL_SHOPKEEPER_KEY_NOT_HELPING,
            LocaleKey::DIAL_SHOPKEEPER_TXT_NOT_HELPING
        ),
        Dialog.new(
            DIAL_ID_STUPID,
            LocaleKey::DIAL_SHOPKEEPER_KEY_STUPID,
            LocaleKey::DIAL_SHOPKEEPER_TXT_STUPID,
            LocaleKey::DIAL_SHOPKEEPER_INTRO_STUPID
        ),
        Dialog.new(
            DIAL_ID_GOD,
            LocaleKey::DIAL_SHOPKEEPER_KEY_GOD,
            LocaleKey::DIAL_SHOPKEEPER_TXT_GOD,
            LocaleKey::DIAL_SHOPKEEPER_INTRO_GOD
        ),
        Dialog.new(
            DIAL_ID_OTHER_GOD,
            LocaleKey::DIAL_SHOPKEEPER_KEY_OTHER_GOD,
            LocaleKey::DIAL_SHOPKEEPER_TXT_OTHER_GOD
        )
    ]
    UNKNOWN_DIALOGS = LocaleKey::SHOPKEEPER_UNKNOWN_DIALOGS
    PICTURE = 'merchant'
end
