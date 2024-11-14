class EntryRequirement
    def initialize(biomeRequirement)
        @ask_enter = biomeRequirement::ENTRY_QUESTION
        @entry_message = biomeRequirement::ENTRY_MESSAGE
        @no_entry_message = biomeRequirement::NO_ENTRY_MESSAGE
        @impossible_entry_message = biomeRequirement::IMPOSSIBLE_ENTRY_MESSAGE
        @required_items = biomeRequirement::REQUIRED_ITEMS
        @require_once = biomeRequirement::ONCE
        @ignored = false
    end

    def ignored?
        return @ignored
    end

    def can_enter?(player)
        for required_item in @required_items
            if not player.have?(required_item.new)
                return false
            end
        end
        return true
    end

    def ask_enter
        Narrator.write(@ask_enter)
    end

    def entry_message
        if @require_once
            @ignored = true
        end
        Narrator.write(@entry_message)
        Narrator.add_space_of(1)
        Narrator.pause_text
    end

    def no_entry_message
        Narrator.write(@no_entry_message)
    end

    def impossible_entry_message
        Narrator.write(@impossible_entry_message)
        Narrator.add_space_of(1)
        Narrator.pause_text
    end
end
