class TranslatorGreeted < Status
    HIDDEN = true
    SAVED = false

    def initialize(duration = Status::INFINITE)
        super
    end
end
