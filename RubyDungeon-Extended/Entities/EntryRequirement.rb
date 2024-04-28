class EntryRequirement
    def initialize(ask_enter, entry_message, no_entry_message, impossible_entry_message, required_items, once = true)
        @ask_enter = ask_enter
        @entry_message = entry_message
        @no_entry_message = no_entry_message
        @impossible_entry_message = impossible_entry_message
        @required_items = required_items
        @require_once = once
        @ignored = false
    end

    def ignored?
        return @ignored
    end

    def can_enter?(player)
        for required_item in @required_items
            if not player.have(required_item)
                return false
            end
        end
        return true
    end

    def ask_enter
        puts @ask_enter
    end

    def entry_message
        if @require_once
            @ignored = true
        end
        puts @entry_message
    end

    def no_entry_message
        puts @no_entry_message
    end

    def impossible_entry_message
        puts @impossible_entry_message
    end
end
