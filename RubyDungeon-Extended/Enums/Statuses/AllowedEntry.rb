class AllowedEntry < Status
    SAVED = false
    HIDDEN = true

    def initialize(duration = Status::INFINITE, saved = false)
        @saved = saved
        super
    end

    def saved?
        return @saved
    end

    def get_save_data
        return super(@duration.to_s, @saved.to_s)
    end
end
