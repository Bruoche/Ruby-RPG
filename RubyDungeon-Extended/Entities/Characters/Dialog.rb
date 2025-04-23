class Dialog
    NO_TRIGGER_NEEDED = nil
    NO_REQUIREMENTS = nil
    NO_PRECEDENT_DIAL_REQ = nil
    NO_INTRO = ''
    NO_REACTION = nil

    def initialize(id, trigger_words, sentences, intro = NO_INTRO, precedent_dialog_required = NO_PRECEDENT_DIAL_REQ, requirements = NO_REQUIREMENTS, reaction = NO_REACTION)
        @id = id
        @trigger_words = trigger_words
        @sentences = sentences
        @intro = intro
        @precedent_dialog_required = precedent_dialog_required
        @requirements = requirements
        @reaction = reaction
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
        player_prompt = Dialog.process_sentence(player.get_name)
        player_trigger = player_prompt.join('|')
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

    def react(player, npc)
        if @reaction != NO_REACTION
            @reaction.call(player, npc)
        end
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
end
