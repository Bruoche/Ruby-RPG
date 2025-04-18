class Dialog
    NO_LEVEL_REQ = nil
    NO_ITEMS_REQ = nil
    NO_INTRO = ''

    def initialize(id, trigger_words, sentences, intro = NO_INTRO, min_level = NO_LEVEL_REQ, max_level = NO_LEVEL_REQ, required_items = NO_ITEMS_REQ)
        @id = id
        @trigger_words = trigger_words
        @sentences = sentences
        @intro = intro
        @min_level = min_level
        @max_level = max_level
        @required_items = required_items
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

    def triggered?(processed_sentence)
        for required_trigger in Locale::get_localized(@trigger_words)
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
end
