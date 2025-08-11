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
    EXPECTED_BRIBE_VALUE = 49
    SPECIAL_INTERACTIONS = [
        SpecialInteraction.new(LocaleKey::GOBLIN_GUARD_BRIBE, -> (character, player) {
            loop do
                if player.has_status?(AllowedEntry)
                    Narrator.write(LocaleKey::BRIBE_UNNECESSARY)
                    Narrator.pause_text
                    return
                end
                item_presented = player.choose_item(LocaleKey::ASK_ITEM_TO_SHOW)
                if item_presented == nil
                    return
                end
                is_valuable = item_presented.get_value >= EXPECTED_BRIBE_VALUE
                is_valuable = (is_valuable || (item_presented.get_item.instance_of?(Coins) && (item_presented.get_quantity >= EXPECTED_BRIBE_VALUE)))
                if is_valuable
                    if !Narrator.ask_confirmation(format(Locale.get_localized(LocaleKey::ASK_CONFIRMATION_GIVING_GOBLIN), item_presented.get_name))
                        return
                    end
                    item_given = player.remove_item(item_presented.get_item, item_presented.get_quantity)
                    player.add_status(AllowedEntry.new)
                    character.add_loot(Loot.new(
                        LocaleKey::LOOT_GOBLIN_GIFT,
                        100,
                        item_given.get_item.class,
                        item_given.get_item.data_as_array,
                        item_given.get_quantity
                    ))
                    Narrator.write(LocaleKey::GOBLIN_ACCEPT_GIFT)
                    Narrator.pause_text
                    return
                else
                    Narrator.write(LocaleKey::GOBLIN_NOT_INTERESTED)
                    Narrator.pause_text
                end
            end
        })
    ]
    COMBAT_BODY = FighterGoblinHeavy
    START_FIGHT_ACTION = -> (character, room) {
        room.anger_passives
    }
    WILLING_TO_TALK = -> (npc, player, is_already_talking) {
        if (npc.get_aggressive_players.include? player) || player.has_status?(GoblinMurderer)
            if !is_already_talking
                Narrator.write(LocaleKey::GOBLIN_GUARD_AGGRESSIVE)
                SoundManager.play('spell_fart')
                Narrator.pause_text
            end
            return false
        end
        if player.has_status?(AllowedEntry)
            if !is_already_talking
                Narrator.write(LocaleKey::GOBLIN_GUARD_ALREADY_AUTHORISED)
                Narrator.pause_text
            end
            return false
        end
        return true
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
    ANGER = -> (player, npc) {
        npc.anger_against(player)
        return Player::ACTED
    }
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
            Dialog::NO_REACTION,
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
