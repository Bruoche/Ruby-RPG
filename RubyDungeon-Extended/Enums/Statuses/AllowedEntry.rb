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

    def build_save_data
        return self.class.name + '|' + @duration.to_s + ', ' + @saved.to_s
    end
end
