class Dialog
    NO_LEVEL_REQ = nil
    NO_ITEMS_REQ = nil
    NO_INTRO = nil

    def initialize(id, trigger_words, sentences, intro = NO_INTRO, min_level = NO_LEVEL_REQ, max_level = NO_LEVEL_REQ, required_items = NO_ITEMS_REQ)
        @trigger_words = trigger_words
        @sentences = sentences
        @intro = intro
        @min_level = min_level
        @max_level = max_level
        @required_items = required_items
    end

    def self.process_sentence(sentence_heard)
        return processed_sentence = sentence_heard.gsub("'", ' ').gsub(/\W/, ' ').downcase.split
    end

    def get_answer
        return @sentences
    end

    def triggered?(processed_sentence)
        for required_trigger in @trigger_words
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
