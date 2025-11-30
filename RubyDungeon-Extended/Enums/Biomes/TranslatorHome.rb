class TranslatorHome < Biome
    EXPECTED_LEVEL = 27
    PICTURE = 'goblin_translator_hut'
    EXPLORATION_TRACK = 'Goblin Village'
    COMBAT_TRACK = 'Dungeon Entrance Battle theme'
    FEMALE = GoblinHomeF
    FEMALE_CHANCES = 100
    BACKTRACK_CHANCES = 0
    DESCRIPTION = LocaleKey::VILLAGE_HOME_DESCRIPTION
    NPCS = [
        GoblinTranslator
    ]
    SAFE_CHANCES = 100
    LOOT = []
    MIN_EXITS = 0
    MAX_EXITS = 0
    ENTRY_EVENT = -> (room, player) {
        if player.have_status?(TranslatorGreeted)
            if player.have_status?(GoblinMurderer) && !player.have_status?(TranslatorScared)
                will_attack = Narrator.translator_intro(player, LocaleKey::TRANSLATOR_WHAT_HAVE_YOU_DONE, LocaleKey::TRANSLATOR_APOLOGY)
                give_everyone_status(TranslatorScared)
                if will_attack
                    room.anger_npcs
                end
            end
            return !Player::ACTED
        end
        if player.have_status?(GoblinMurderer)
            room.set_exploration_track('Goblin Village - Empty')
            will_attack = Narrator.translator_intro(player, LocaleKey::TRANSLATOR_BEGGING, LocaleKey::TRANSLATOR_SPARING)
            give_everyone_status(TranslatorScared)
            if will_attack
                room.anger_npcs
            end
        else
            Narrator.write(LocaleKey::TRANSLATOR_GREETING)
            Narrator.pause_text
        end
        give_everyone_status(TranslatorGreeted)
        return !Player::ACTED
    }

    def self.give_everyone_status(status)
        for player in World.get_instance.get_all_players
            player.add_status(status.new)
        end
    end
end
