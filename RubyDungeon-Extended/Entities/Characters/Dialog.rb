class Dialog
    NO_LEVEL_REQ = nil
    NO_ITEMS_REQ = nil

    def initialize(sentences, trigger_words, min_level = NO_LEVEL_REQ, max_level = NO_LEVEL_REQ, required_items = NO_ITEMS_REQ)
        @sentences = sentences
        @trigger_words = trigger_words
        @min_level = min_level
        @max_level = max_level
        @required_items = required_items
    end

    def triggered?(sentence_heard)
        # test if trigger words in sentence heard, see how to test for vaguely ressembling string
    end
end
