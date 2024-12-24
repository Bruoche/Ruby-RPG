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
        return processed_sentence = sentence_heard.gsub("'", " ").downcase.split
    end

    def triggered?(processed_sentence)
        # test if trigger words in sentence heard, see how to test for vaguely ressembling string
        # if repeated, replace @intro by "As I said,"
    end
end
