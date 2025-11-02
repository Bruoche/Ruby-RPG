class GoblinAdvisorRightNpc < CharacterData
    NAME = GoblinAdvisorLeftNpc::NAME
    INTRO_DIALOG = GoblinAdvisorLeftNpc::INTRO_DIALOG
    IDLE_DIALOGS = GoblinAdvisorLeftNpc::IDLE_DIALOGS
    CONVERSATION_STARTER = GoblinAdvisorLeftNpc::CONVERSATION_STARTER
    CONVERSATION_KEEPER = GoblinAdvisorLeftNpc::CONVERSATION_KEEPER
    REPEAT_INTRO = GoblinAdvisorLeftNpc::REPEAT_INTRO
    UNKNOWN_DIALOGS = GoblinAdvisorLeftNpc::UNKNOWN_DIALOGS
    PICTURE = 'goblin_blacksmith'
    COMBAT_BODY = GoblinAdvisorRight
    START_FIGHT_ACTION = GoblinAdvisorLeftNpc::START_FIGHT_ACTION
    NAME_KNOWN = GoblinAdvisorLeftNpc::NAME_KNOWN
    PLAYER_NICKNAME = GoblinAdvisorLeftNpc::PLAYER_NICKNAME
    WILLING_TO_TALK = -> (npc, player, is_already_talking) {
        Narrator.write(LocaleKey::GOBLIN_BLACKSMITH_NO_TALK)
        Narrator.pause_text
        return false
    }
    DIALOGS = []
end
