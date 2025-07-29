class GoblinGuard < CharacterData
    NAME = LocaleKey::GOBLIN_GUARD_NAME
    INTRO_DIALOG = LocaleKey::GOBLIN_GUARD_INTRO_DIALOG
    IDLE_DIALOGS = LocaleKey::GOBLIN_GUARD_IDLE_DIALOGS
    CONVERSATION_STARTER = LocaleKey::GOBLIN_GUARD_CONVERSATION_STARTER
    CONVERSATION_KEEPER = LocaleKey::GOBLIN_GUARD_CONVERSATION_KEEPER
    REPEAT_INTRO = LocaleKey::DIAL_GOBLIN_GUARD_REPEAT
    UNKNOWN_DIALOGS = LocaleKey::GOBLIN_GUARD_UNKNOWN_DIALOGS
    PICTURE = 'alchemist'
    NAME_KNOWN = GoblinGuardAquinted
    PLAYER_NICKNAME = LocaleKey::GOBLIN_GUARD_NICKNAME
    COMBAT_BODY = FighterGoblin
    START_FIGHT_ACTION = -> (character, room) {
        room.anger_passives
    }
    ROOM_DESCRIPTION = LocaleKey::GUARD_NPC_DESCRIPTION
    IF_HEAR_OUT = -> (player) {player.has_status?(GoblinGuardHearOut)}
    LEARN_NAME = -> (player, npc) {player.add_status(NAME_KNOWN.new)}
    HEAR_OUT = -> (player, npc) {player.add_status(GoblinGuardHearOut.new)}
    AUTH_ENTER = -> (player, npc) {for party_member in World.get_instance.get_all_players do party_member.add_status(AllowedEntry.new) end}
    LEARN_NAME_AND_HEAR_OUT = -> (player, npc) {
        player.add_status(NAME_KNOWN.new)
        player.add_status(GoblinGuardHearOut.new)
    }
    ANGER = -> (player, npc) {npc.anger_against(player)}
    DIALOGS = [
        Dialog.new(
            DialogID::ASK_NAME,
            LocaleKey::DIAL_GOBLIN_GUARD_KEY_ASK_NAME,
            LocaleKey::DIAL_GOBLIN_GUARD_TXT_ASK_NAME_HEAR_OUT,
            Dialog::NO_INTRO,
            Dialog::NO_PRECEDENT_DIAL_REQ,
            IF_HEAR_OUT,
            LEARN_NAME
        ),
        Dialog.new(
            DialogID::ASK_NAME,
            LocaleKey::DIAL_GOBLIN_GUARD_KEY_ASK_NAME_NICKNAME,
            LocaleKey::DIAL_GOBLIN_GUARD_TXT_ASK_NAME_HEAR_OUT,
            Dialog::NO_INTRO,
            Dialog::NO_PRECEDENT_DIAL_REQ,
            IF_HEAR_OUT
        ),
        Dialog.new(
            DialogID::ASK_NAME,
            LocaleKey::DIAL_GOBLIN_GUARD_KEY_ASK_NAME,
            LocaleKey::DIAL_GOBLIN_GUARD_TXT_ASK_NAME,
            Dialog::NO_INTRO,
            Dialog::NO_PRECEDENT_DIAL_REQ,
            IF_HEAR_OUT,
            LEARN_NAME
        ),
        Dialog.new(
            DialogID::ASK_NAME,
            LocaleKey::DIAL_GOBLIN_GUARD_KEY_ASK_NAME_NICKNAME,
            LocaleKey::DIAL_GOBLIN_GUARD_TXT_ASK_NAME,
            Dialog::NO_INTRO,
            Dialog::NO_PRECEDENT_DIAL_REQ,
            IF_HEAR_OUT
        ),
        Dialog.new(
            DialogID::PEACE,
            LocaleKey::DIAL_GOBLIN_GUARD_KEY_PEACE,
            LocaleKey::DIAL_GOBLIN_GUARD_TXT_PEACE_HEAR_OUT,
            Dialog::NO_INTRO,
            Dialog::NO_PRECEDENT_DIAL_REQ,
            IF_HEAR_OUT,
            AUTH_ENTER
        ),
        Dialog.new(
            DialogID::PEACE,
            LocaleKey::DIAL_GOBLIN_GUARD_KEY_PEACE,
            LocaleKey::DIAL_GOBLIN_GUARD_TXT_PEACE,
            Dialog::NO_INTRO,
            Dialog::NO_PRECEDENT_DIAL_REQ,
            Dialog::NO_REQUIREMENTS,
            HEAR_OUT
        ),
        Dialog.new(
            DialogID::HELP,
            LocaleKey::DIAL_GOBLIN_GUARD_KEY_HELP,
            LocaleKey::DIAL_GOBLIN_GUARD_TXT_HELP,
            Dialog::NO_INTRO,
            Dialog::NO_PRECEDENT_DIAL_REQ,
            IF_HEAR_OUT,
            AUTH_ENTER
        ),
        Dialog.new(
            DialogID::TRADE,
            LocaleKey::DIAL_GOBLIN_GUARD_KEY_TRADE,
            LocaleKey::DIAL_GOBLIN_GUARD_TXT_TRADE,
            Dialog::NO_INTRO,
            Dialog::NO_PRECEDENT_DIAL_REQ,
            Dialog::NO_REQUIREMENTS,
            AUTH_ENTER
        ),
        Dialog.new(
            DialogID::LEARN,
            LocaleKey::DIAL_GOBLIN_GUARD_KEY_LEARN,
            LocaleKey::DIAL_GOBLIN_GUARD_TXT_LEARN,
            Dialog::NO_INTRO,
            Dialog::NO_PRECEDENT_DIAL_REQ,
            Dialog::NO_REQUIREMENTS,
            AUTH_ENTER
        ),
        Dialog.new(
            DialogID::ELDER,
            LocaleKey::DIAL_GOBLIN_GUARD_KEY_ELDER,
            LocaleKey::DIAL_GOBLIN_GUARD_TXT_ELDER
        ),
        Dialog.new(
            DialogID::ASK_ENTER,
            LocaleKey::DIAL_GOBLIN_GUARD_KEY_ASK_ENTER_LEARN_NAME,
            LocaleKey::DIAL_GOBLIN_GUARD_TXT_ASK_ENTER_HEAR_OUT,
            Dialog::NO_INTRO,
            Dialog::NO_PRECEDENT_DIAL_REQ,
            IF_HEAR_OUT,
            LEARN_NAME
        ),
        Dialog.new(
            DialogID::ASK_ENTER,
            LocaleKey::DIAL_GOBLIN_GUARD_KEY_ASK_ENTER,
            LocaleKey::DIAL_GOBLIN_GUARD_TXT_ASK_ENTER_HEAR_OUT,
            Dialog::NO_INTRO,
            Dialog::NO_PRECEDENT_DIAL_REQ,
            IF_HEAR_OUT
        ),
        Dialog.new(
            DialogID::ASK_ENTER,
            LocaleKey::DIAL_GOBLIN_GUARD_KEY_ASK_ENTER_LEARN_NAME,
            LocaleKey::DIAL_GOBLIN_GUARD_TXT_ASK_ENTER,
            Dialog::NO_INTRO,
            Dialog::NO_PRECEDENT_DIAL_REQ,
            Dialog::NO_REQUIREMENTS,
            LEARN_NAME_AND_HEAR_OUT
        ),
        Dialog.new(
            DialogID::ASK_ENTER,
            LocaleKey::DIAL_GOBLIN_GUARD_KEY_ASK_ENTER,
            LocaleKey::DIAL_GOBLIN_GUARD_TXT_ASK_ENTER,
            Dialog::NO_INTRO,
            Dialog::NO_PRECEDENT_DIAL_REQ,
            Dialog::NO_REQUIREMENTS,
            HEAR_OUT
        ),
        Dialog.new(
            DialogID::THREAT,
            LocaleKey::DIAL_GOBLIN_GUARD_KEY_THREAT,
            LocaleKey::DIAL_GOBLIN_GUARD_TXT_THREAT,
            Dialog::NO_INTRO,
            Dialog::NO_PRECEDENT_DIAL_REQ,
            Dialog::NO_REQUIREMENTS,
            ANGER
        ),
        Dialog.new(
            DialogID::HELLO,
            LocaleKey::DIAL_GOBLIN_GUARD_KEY_HELLO_LEARN_NAME,
            LocaleKey::DIAL_GOBLIN_GUARD_TXT_HELLO_HEAR_OUT,
            Dialog::NO_INTRO,
            Dialog::NO_PRECEDENT_DIAL_REQ,
            IF_HEAR_OUT,
            LEARN_NAME
        ),
        Dialog.new(
            DialogID::HELLO,
            LocaleKey::DIAL_GOBLIN_GUARD_KEY_HELLO,
            LocaleKey::DIAL_GOBLIN_GUARD_TXT_HELLO_HEAR_OUT,
            Dialog::NO_INTRO,
            Dialog::NO_PRECEDENT_DIAL_REQ,
            IF_HEAR_OUT
        ),
        Dialog.new(
            DialogID::HELLO,
            LocaleKey::DIAL_GOBLIN_GUARD_KEY_HELLO_LEARN_NAME,
            LocaleKey::DIAL_GOBLIN_GUARD_TXT_HELLO,
            LocaleKey::DIAL_GOBLIN_GUARD_INTRO_HELLO,
            Dialog::NO_PRECEDENT_DIAL_REQ,
            Dialog::NO_REQUIREMENTS,
            LEARN_NAME_AND_HEAR_OUT
        ),
        Dialog.new(
            DialogID::HELLO,
            LocaleKey::DIAL_GOBLIN_GUARD_KEY_HELLO,
            LocaleKey::DIAL_GOBLIN_GUARD_TXT_HELLO,
            LocaleKey::DIAL_GOBLIN_GUARD_INTRO_HELLO,
            Dialog::NO_PRECEDENT_DIAL_REQ,
            Dialog::NO_REQUIREMENTS,
            HEAR_OUT
        ),
        Dialog.new(
            DialogID::WHAT,
            LocaleKey::DIAL_GOBLIN_GUARD_KEY_WHAT,
            LocaleKey::DIAL_GOBLIN_GUARD_TXT_WHAT
        )
    ]
end
