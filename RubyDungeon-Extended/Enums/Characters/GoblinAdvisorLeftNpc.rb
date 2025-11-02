class GoblinAdvisorLeftNpc < CharacterData
    NAME = LocaleKey::GOBLIN_BLACKSMITH_NAME
    INTRO_DIALOG = LocaleKey::GOBLIN_BLACKSMITH_INTRO_DIALOG
    IDLE_DIALOGS = LocaleKey::GOBLIN_BLACKSMITH_IDLE_DIALOGS
    CONVERSATION_STARTER = LocaleKey::GOBLIN_BLACKSMITH_CONVERSATION_STARTER
    CONVERSATION_KEEPER = LocaleKey::GOBLIN_BLACKSMITH_CONVERSATION_KEEPER
    REPEAT_INTRO = LocaleKey::DIAL_GOBLIN_BLACKSMITH_REPEAT
    UNKNOWN_DIALOGS = LocaleKey::GOBLIN_BLACKSMITH_UNKNOWN_DIALOGS
    PICTURE = 'goblin_blacksmith'
    COMBAT_BODY = GoblinAdvisorLeft
    START_FIGHT_ACTION = -> (character, room, first_attacked) {
        room.anger_npcs
        room.anger_passives
        if (surprise_attack?(room) && first_attacked)
            for goblin in room.get_monsters.get_all
                if goblin.get_type == GoblinElderBoss.to_s
                    goblin.add_status(Rage.new)
                end
            end
        end
    }
    NAME_KNOWN = GoblinBlacksmithAquinted
    PLAYER_NICKNAME = LocaleKey::GOBLIN_BLACKSMITH_NICKNAME
    WILLING_TO_TALK = -> (npc, player, is_already_talking) {
        Narrator.write(LocaleKey::GOBLIN_BLACKSMITH_NO_TALK)
        Narrator.pause_text
        obviously wrong code
        return false
    }
    DIALOGS = []

    private

    def self.surprise_attack?(room)
        return !World.get_instance.get_players_in(room)[0].have_status?(GoblinMurderer)
    end
end
