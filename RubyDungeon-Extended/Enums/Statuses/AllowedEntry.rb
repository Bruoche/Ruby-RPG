class AllowedEntry < Status
    SAVED = false
    HIDDEN = true

    def initialize(duration = Status::INFINITE)
        super
    end
end
