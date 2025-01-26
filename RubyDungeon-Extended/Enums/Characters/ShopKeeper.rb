module ShopKeeper
    NAME = Locale::KEY_SHOPKEEPER_NAME
    INTRO_DIALOG = Locale::KEY_SHOPKEEPER_INTRO_DIALOG
    IDLE_DIALOGS = Locale::KEY_SHOPKEEPER_IDLE_DIALOGS
    CONVERSATION_STARTER = Locale::KEY_SHOPKEEER_CONVERSATION_STARTER
    DIAL_ID_ORIGIN = 'origin'
    DIAL_ID_ALLIANCE = 'alliance'
    DIAL_ID_BLACK_LEATHER = 'black_leather'
    DIAL_ID_LOST_KNIGHT = 'lost_knight'
    DIAL_ID_DUNGEON_INTERIOR = 'dungeon_interior'
    DIAL_ID_DUNGEON = 'dungeon'
    DIAL_ID_HOLY_EMPIRE = 'holy_empire'
    DIAL_ID_NOT_FROM_HERE = 'not_from_here'
    DIAL_ID_NAME = 'name'
    DIAL_ID_ADVICES = 'advices'
    DIAL_ID_DISCOUNTS = 'discounts'
    DIAL_ID_TOO_EXPENSIVE = 'too_expensive'
    DIAL_ID_FUCK_YOU = 'fuck_you'
    DIAL_ID_GET_LOST = 'get_lost'
    DIAL_ID_THREAT = 'threat'
    DIAL_ID_HOW_YOU_DOIN = 'how_you_doin'
    DIAL_ID_HELLO = 'hello'
    DIAL_ID_MERCHANT_NAME = 'merchant_name'
    DIAL_ID_VILLAGE = 'village'
    DIAL_ID_NOT_HELPING = 'not_helping'
    DIALOGS = [
        Dialog.new(
            DIAL_ID_ORIGIN,
            ["you|your", "from|born|country|where|story|origin"],
            [
                "I was born in the eastern part of the Holy Empire. Spent my younger years there, but quickly started traveling all around the broader continent.",
                "Travel has always been an essential adventage for the shop, with minimal fees for the right to pass merchandise inbetween kingdoms I've been able to sell the greatest rarities for the most competitive of prices.",
                "The only issues with travel are the time investment and bandits, really."
            ]
        ),
        Dialog.new(
            DIAL_ID_ALLIANCE,
            ["what|great|why|when|how", "alliance"],
            [
                "",
                "The great alliance is a congregation of most countries in this continent, and also some costal ones in the southern continent across the sea.",
                "A treaty that assemble us all under one currency and insure peace in the continent to help trade.",
                "It's the very reason I'm able to seize an opportunity such as this one."
            ],
            "You don't know about it?\nThe people here direly lack education on their own politic. But I guess that not everybody needs to."
        ),
        Dialog.new(
            DIAL_ID_BLACK_LEATHER,
            ["black|dark", "leather"],
            [
                "Black leather is a rare material confectionned from a specific beast and that undergo a great deal of treatments to be refined into the supple, light and solid material that make those armor of the highest quality.",
                "Although, I am no expect and that is the full extent of my knowledge on the specific process."
            ]
        ),
        Dialog.new(
            DIAL_ID_LOST_KNIGHT,
            ["lost", "knight"],
            ["I have no clue who that is. Sorry."]
        ),
        Dialog.new(
            DIAL_ID_DUNGEON_INTERIOR,
            ["catacombs|catacomb|crypt|crypts|entrance|interior|inside|prison|prisons"],
            ["I don't know anything about the tower's insides beyound a few hear-says. Sorry."],
            "I have never been to the dungeon myself, so "
        ),
        Dialog.new(
            DIAL_ID_DUNGEON,
            ["dungeon|tower|dungeons"],
            [
                "Little is known about the dungeons, and a lot of what people says seem to be fabulations if you ask me.",
                "According to the locals, that tower would have just appeared suddently overnight without anyone knowing who put it there.",
                "I think that's madness to even humor such an unlikely story, but the people here clearly wouldn't have had the means to make such a place with so many treasures to be found.",
                "The amount of monsters there is worrying too, some of which seem to come straight from old tales with no proof of their existence elsewhere.",
                "Either way. Even if I'm skeptical, what's sure is that this place is a one-of-a-kind occurence, and it's no wonder so many people come from all around the continent to explore it."
            ]
        ),
        Dialog.new(
            DIAL_ID_HOLY_EMPIRE,
            ["your|holy", "empire|native|hometown|home|birthplace|country|kingdom"],
            [
                "It is a kingdom much further from there, to the east, and more or less equal in size.",
                "I always feel like the days come much sooner there then they do here, and it's also a lot colder where I used to live.",
                "You may have more tender winters, and more bountyfull crops before those times come, but I always felt the summers were way too hot here.",
                "If anything I'm glad to be here during the fall. I can enjoy the tempered climate and beautifull scenery without feeling like I'm going to pass out."
            ],
            "Yeah, I like that place a lot. "
        ),
        Dialog.new(
            DIAL_ID_NOT_FROM_HERE,
            ["from|origin|originally|born", "here|in|there|country|other"],
            ["No, I am indeed not from here.\nI come from the east."]
        ),
        Dialog.new(
            DIAL_ID_NAME,
            ["your|you", "name|called|named|call"],
            ["My name is Márton Orbán."]
        ),
        Dialog.new(
            DIAL_ID_ADVICES,
            ["advice|tips|tip|trick|tricks|advices|help"],
            [
                "if you want my two cents on this tower, you'd better not go too deep unprepaired.",
                "Despite many saying they can come back from death in there, it is clear that many still entered the dungeon never to be seen again.\nAnd for those that do, few come with all their head left.",
                "So, if you have already found a few coins and treasure out there, I think it's best to head back and secure that treasure here without risking it getting lost.\nYou might even take the opportunity to spend a few here while you're at it."
            ],
            "I'm no adventurer, but "
        ),
        Dialog.new(
            DIAL_ID_DISCOUNTS,
            ["free|discount|discounts|gift|offer"],
            ["this isn't a charity.\nI can not make a profit if I spend my time giving away discounts to the first person that ask for them, you know?"],
            "I'm sorry, but "
        ),
        Dialog.new(
            DIAL_ID_TOO_EXPENSIVE,
            ["here|your|you|that|prices|price|it", "high|expensive|much|lot"],
            ["I for one believe that my prices are within my ware's market value.", "But I apologies if what I sell is beyond your budget."],
            "Is that so?\n"
        ),
        Dialog.new(
            DIAL_ID_FUCK_YOU,
            ["fuck|hate", "you|yourself"],
            ["The adventurer's here trully have no sense of customs.\nIs it the tower's aura getting to your nerves or you just never had any education?"],
            "How rude.\n"
        ),
        Dialog.new(
            DIAL_ID_GET_LOST,
            ["go|get|burn", "hell|lost"],
            ["wishing much of the same to you.", "Now, if we could just focus on the buying, please.\nThis is a shop, after all."],
            "Sure, sure, "
        ),
        Dialog.new(
            DIAL_ID_THREAT,
            ["kill|murder|hurt", "you"],
            ["this isn't the dungeon here. Actions have consequences out there."],
            "Oh, so we are going with threats, huh?\nMay I remind you that "
        ),
        Dialog.new(
            DIAL_ID_HOW_YOU_DOIN,
            ["how|are|is", "going|you|doing|feel|good|well|ok"],
            ["doing fine. Thank you for asking."],
            "Well, I'm "
        ),
        Dialog.new(
            DIAL_ID_HELLO,
            ["hello|hi|salutations"],
            ["Hello. Again."],
            "Oh... Hum... "
        ),
        Dialog.new(
            DIAL_ID_MERCHANT_NAME,
            ["márton|marton|orban|orbán"],
            ["Yes, that's my name."]
        ),
        Dialog.new(
            DIAL_ID_VILLAGE,
            ["village|here|town|villagers|townsfolks|villager|townsfolk|place|surrounding"],
            [
                "It's a pretty standard countryside village here, not much would be going on if it wasn't for the suddent apparition of that tower there.",
                "Altho, even with the new buisnesses blooming all around the place, the displeasing smell of cattle remain.\nMoreover, no offense, but much of the same is to be said about your colleagues adventurers, a lot of them spend their time going to the tower and back without a single shower inbetween, and even existing near them prove challenging."
            ]
        ),
        Dialog.new(
            DIAL_ID_NOT_HELPING,
            ["not|no|don", "help|helping|usefull|use|serve"],
            ["I'm sorry to hear that."]
        )
    ]
    UNKNOWN_DIALOGS = Locale::KEY_SHOPKEEPER_UNKNOWN_DIALOGS
    PICTURE = 'merchant'
end
