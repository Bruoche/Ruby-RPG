class GoblinElder < CharacterData
    NAME = LocaleKey::GOBLIN_GUARD_NAME
    INTRO_DIALOG = LocaleKey::GOBLIN_GUARD_INTRO_DIALOG
    IDLE_DIALOGS = LocaleKey::GOBLIN_GUARD_IDLE_DIALOGS
    CONVERSATION_STARTER = LocaleKey::GOBLIN_GUARD_CONVERSATION_STARTER
    CONVERSATION_KEEPER = LocaleKey::GOBLIN_GUARD_CONVERSATION_KEEPER
    REPEAT_INTRO = LocaleKey::DIAL_GOBLIN_GUARD_REPEAT
    UNKNOWN_DIALOGS = LocaleKey::GOBLIN_GUARD_UNKNOWN_DIALOGS
    PICTURE = 'goblin_guard'
    NAME_KNOWN = GoblinElderAquinted
    PLAYER_NICKNAME = LocaleKey::GOBLIN_GUARD_NICKNAME
    COMBAT_BODY = GoblinGuardBody
    START_FIGHT_ACTION = -> (character, room) {
        room.anger_passives
    }
    ROOM_DESCRIPTION = LocaleKey::GUARD_NPC_DESCRIPTION
    LEARN_NAME = -> (player, npc) {player.add_status(NAME_KNOWN.new)}
    GIVE_BADGE = -> (player, npc) {
        if !player.have?(GoblinBadge.new)
            player.give_item(Bundle.new(GoblinBadge.new))
        end
    }
    DIALOGS = [
        Dialog.new(
            DialogID::ADVICES,
            LocaleKey::DIAL_GOBLIN_ELDER_KEY_ADVICES,
            LocaleKey::DIAL_GOBLIN_ELDER_TXT_ADVICES,
            Dialog::NO_INTRO,
            Dialog::NO_PRECEDENT_DIAL_REQ,
            Dialog::NO_REQUIREMENTS,
            Dialog::NO_REACTION,
            GIVE_BADGE
        ),
        Dialog.new(
            DialogID::OUTSIDER,
            LocaleKey::DIAL_GOBLIN_ELDER_KEY_OUTSIDER,
            LocaleKey::DIAL_GOBLIN_ELDER_TXT_OUTSIDER
        ),
        Dialog.new(
            DialogID::HERE_FOOD,
            LocaleKey::DIAL_GOBLIN_ELDER_KEY_HERE_FOOD,
            LocaleKey::DIAL_GOBLIN_ELDER_TXT_HERE_FOOD
        ),
        Dialog.new(
            DialogID::ORIGIN,
            LocaleKey::DIAL_GOBLIN_ELDER_KEY_ORIGIN,
            LocaleKey::DIAL_GOBLIN_ELDER_TXT_ORIGIN
        ),
        Dialog.new(
            DialogID::ATTACKED_ADVENTURERS,
            LocaleKey::DIAL_GOBLIN_ELDER_KEY_ATTACKED_ADVENTURERS,
            LocaleKey::DIAL_GOBLIN_ELDER_TXT_ATTACKED_ADVENTURERS,
            Dialog::NO_INTRO,
            Dialog::NO_PRECEDENT_DIAL_REQ,
            Dialog::NO_REQUIREMENTS,
            Dialog::NO_REACTION,
            GIVE_BADGE
        ),
        Dialog.new(
            DialogID::ADVENTURER,
            LocaleKey::DIAL_GOBLIN_ELDER_KEY_ADVENTURER,
            LocaleKey::DIAL_GOBLIN_ELDER_TXT_ADVENTURER
        ),
        Dialog.new(
            DialogID::GOD,
            LocaleKey::DIAL_GOBLIN_ELDER_KEY_GOD,
            LocaleKey::DIAL_GOBLIN_ELDER_TXT_GOD
        ),
        Dialog.new(
            DialogID::GOLD,
            LocaleKey::DIAL_GOBLIN_ELDER_KEY_GOLD,
            LocaleKey::DIAL_GOBLIN_ELDER_TXT_GOLD
        ),
        Dialog.new(
            DialogID::INTELLIGENCE,
            LocaleKey::DIAL_GOBLIN_ELDER_KEY_INTELLIGENCE,
            LocaleKey::DIAL_GOBLIN_ELDER_TXT_INTELLIGENCE
        ),
        Dialog.new(
            DialogID::OTHER_GOD,
            LocaleKey::DIAL_GOBLIN_ELDER_KEY_OTHER_GOD,
            LocaleKey::DIAL_GOBLIN_ELDER_TXT_OTHER_GOD
        ),
        Dialog.new(
            DialogID::RESUSCITATE,
            LocaleKey::DIAL_GOBLIN_ELDER_KEY_RESUSCITATE,
            LocaleKey::DIAL_GOBLIN_ELDER_TXT_RESUSCITATE
        ),
        Dialog.new(
            DialogID::SLIMES,
            LocaleKey::DIAL_GOBLIN_ELDER_KEY_SLIMES,
            LocaleKey::DIAL_GOBLIN_ELDER_TXT_SLIMES
        ),
        Dialog.new(
            DialogID::FRUIT,
            LocaleKey::DIAL_GOBLIN_ELDER_KEY_FRUIT,
            LocaleKey::DIAL_GOBLIN_ELDER_TXT_FRUIT
        ),
        Dialog.new(
            DialogID::UNDEAD,
            LocaleKey::DIAL_GOBLIN_ELDER_KEY_UNDEAD,
            LocaleKey::DIAL_GOBLIN_ELDER_TXT_UNDEAD
        ),
        Dialog.new(
            DialogID::VILLAGE,
            LocaleKey::DIAL_GOBLIN_ELDER_KEY_VILLAGE,
            LocaleKey::DIAL_GOBLIN_ELDER_TXT_VILLAGE
        ),
        Dialog.new(
            DialogID::DUNGEON,
            LocaleKey::DIAL_GOBLIN_ELDER_KEY_DUNGEON,
            LocaleKey::DIAL_GOBLIN_ELDER_TXT_DUNGEON
        ),
        Dialog.new(
            DialogID::NAME,
            LocaleKey::DIAL_GOBLIN_ELDER_KEY_NAME,
            LocaleKey::DIAL_GOBLIN_ELDER_TXT_NAME
        ),
        Dialog.new(
            DialogID::NAME,
            LocaleKey::DIAL_GOBLIN_ELDER_KEY_NAME_LEARN,
            LocaleKey::DIAL_GOBLIN_ELDER_TXT_NAME,
            LocaleKey::DIAL_GOBLIN_ELDER_TXT_HELLO,
            Dialog::NO_INTRO,
            Dialog::NO_PRECEDENT_DIAL_REQ,
            Dialog::NO_REQUIREMENTS,
            LEARN_NAME
        ),
        Dialog.new(
            DialogID::HELLO,
            LocaleKey::DIAL_GOBLIN_ELDER_KEY_HELLO,
            LocaleKey::DIAL_GOBLIN_ELDER_TXT_HELLO
        ),
        Dialog.new(
            DialogID::HELLO,
            LocaleKey::DIAL_GOBLIN_ELDER_KEY_HELLO_LEARN,
            LocaleKey::DIAL_GOBLIN_ELDER_TXT_HELLO,
            Dialog::NO_INTRO,
            Dialog::NO_PRECEDENT_DIAL_REQ,
            Dialog::NO_REQUIREMENTS,
            LEARN_NAME
        ),
        Dialog.new(
            DialogID::GENDER,
            LocaleKey::DIAL_GOBLIN_ELDER_KEY_GENDER,
            LocaleKey::DIAL_GOBLIN_ELDER_TXT_GENDER
        ),
        Dialog.new(
            DialogID::GOBLINS,
            LocaleKey::DIAL_GOBLIN_ELDER_KEY_GOBLINS,
            LocaleKey::DIAL_GOBLIN_ELDER_TXT_GOBLINS
        )
    ]
end
