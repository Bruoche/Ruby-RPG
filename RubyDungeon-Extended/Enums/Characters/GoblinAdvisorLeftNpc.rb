class GoblinAdvisorLeftNpc < CharacterData
    NAME = LocaleKey::GOBLIN_ADVISOR_NAME
    INTRO_DIALOG = LocaleKey::GOBLIN_ADVISOR_INTRO_DIALOG
    IDLE_DIALOGS = LocaleKey::GOBLIN_ADVISOR_IDLE_DIALOGS
    CONVERSATION_STARTER = LocaleKey::GOBLIN_ADVISOR_CONVERSATION_STARTER
    CONVERSATION_KEEPER = LocaleKey::GOBLIN_ADVISOR_CONVERSATION_KEEPER
    REPEAT_INTRO = LocaleKey::DIAL_GOBLIN_ADVISOR_REPEAT
    UNKNOWN_DIALOGS = LocaleKey::GOBLIN_ADVISOR_UNKNOWN_DIALOGS
    PICTURE = 'goblin_boss'
    COMBAT_BODY = GoblinAdvisorLeft
    START_FIGHT_ACTION = -> (character, room, first_attacked) {
        room.anger_npcs
        room.anger_passives
        if (surprise_attack?(room) && first_attacked)
            Narrator.write(LocaleKey::ELDER_GOBLIN_SURPRISE_ATTACK_ADVISOR)
            SoundManager.play("rage")
            Game.wait
            for goblin in room.get_monsters.get_all
                if goblin.get_type == GoblinElderBoss.to_s
                    goblin.add_status(Rage.new)
                end
            end
        end
    }
    NAME_KNOWN = GoblinElderAquinted
    PLAYER_NICKNAME = LocaleKey::GOBLIN_ADVISOR_NICKNAME
    WILLING_TO_TALK = -> (npc, player, is_already_talking) {
        Narrator.write(LocaleKey::GOBLIN_ADVISOR_NO_TALK)
        Narrator.pause_text
        return false
    }
    DIALOGS = []

    private

    def self.surprise_attack?(room)
        return !World.get_instance.get_players_in(room)[0].have_status?(GoblinMurderer)
    end
end
