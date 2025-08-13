class Dialog
    NO_TRIGGER_NEEDED = nil
    NO_REQUIREMENTS = nil
    NO_PRECEDENT_DIAL_REQ = nil
    NO_INTRO = ''
    NO_REACTION = nil

    def initialize(id, trigger_words, sentences, intro = NO_INTRO, precedent_dialog_required = NO_PRECEDENT_DIAL_REQ, requirements = NO_REQUIREMENTS, reaction_before_answer = NO_REACTION, reaction_after_answer = NO_REACTION)
        @id = id
        @trigger_words = trigger_words
        @sentences = sentences
        @intro = intro
        @precedent_dialog_required = precedent_dialog_required
        @requirements = requirements
        @reaction_before = reaction_before_answer
        @reaction_after = reaction_after_answer
    end

    def self.process_sentence(sentence_heard)
        return sentence_heard.gsub("'", ' ').gsub("-", ' ').gsub(/(?!-)\p{P}/, ' ').downcase.split
    end

    def get_id
        return @id
    end

    def get_answer
        return @sentences
    end

    def get_intro
        return @intro
    end

    def triggered?(processed_sentence, precedent_dialog, player)
        if (check_requirements(precedent_dialog, player) != true)
            return false
        end
        if @trigger_words == NO_TRIGGER_NEEDED
            return true
        end
        player_trigger = promptify(player.get_name)
        triggers = Locale::get_localized(@trigger_words)
        for required_trigger in triggers
            required_trigger = required_trigger.gsub(Locale::PLAYER_NAME, player_trigger)
            found = false
            for possible_syntax in required_trigger.split('|')
                if processed_sentence.include? possible_syntax
                    found = true
                end
            end
            if !found
                return false
            end
        end
        return true
    end

    def change_intro_on_repeat?
        return (@precedent_dialog_required == NO_PRECEDENT_DIAL_REQ)
    end

    def react_before_answer(player, npc)
        if @reaction_before != NO_REACTION
            @reaction_before.call(player, npc)
        end
    end

    def react_after_answer(player, npc)
        if @reaction_after != NO_REACTION
            return @reaction_after.call(player, npc)
        end
        return !Player::ACTED
    end

    private

    def check_requirements(precedent_dialog, player)
        if (@precedent_dialog_required != NO_PRECEDENT_DIAL_REQ)
            if (@precedent_dialog_required != precedent_dialog)
                return false
            end
        end
        if (@requirements != NO_REQUIREMENTS)
            if (@requirements.call(player) != true)
                return false
            end
        end
        return true
    end

    def promptify(name)
        accented_player_prompt = Dialog.process_sentence(name)
        player_prompt = []
        for accented_word in accented_player_prompt
            player_prompt.append(accented_word)
            player_prompt.append(accented_word.unicode_normalize(:nfd).tr(Utils::DIACRITICS, '').unicode_normalize(:nfc))
        end
        return player_prompt.join('|')
    end
end
