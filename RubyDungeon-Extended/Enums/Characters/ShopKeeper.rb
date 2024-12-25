module ShopKeeper
    NAME = Locale::KEY_SHOPKEEPER_NAME
    INTRO_DIALOG = Locale::KEY_SHOPKEEPER_INTRO_DIALOG
    IDLE_DIALOGS = Locale::KEY_SHOPKEEPER_IDLE_DIALOGS
    CONVERSATION_STARTER = Locale::KEY_SHOPKEEER_CONVERSATION_STARTER
    DIAL_ID_NAME = 'name'
    DIAL_ID_TOO_EXPENSIVE = 'too_expensive'
    DIAL_ID_FUCK_YOU = 'fuck_you'
    DIAL_ID_GET_LOST = 'get_lost'
    DIAL_ID_THREAT = 'threat'
    DIALOGS = [
        Dialog.new(
            DIAL_ID_NAME,
            ["your|you", "name|called|named|call"],
            ["My name is Márton Orbán."]
        ),
        Dialog.new(
            DIAL_ID_TOO_EXPENSIVE,
            ["here|your|you|that", "expensive|much"],
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
        )
    ]
    UNKNOWN_DIALOGS = Locale::KEY_SHOPKEEPER_UNKNOWN_DIALOGS
    PICTURE = 'merchant'
end
