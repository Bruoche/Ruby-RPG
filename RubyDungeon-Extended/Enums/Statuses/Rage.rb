class Rage < Status
    SAVED = false
    ICON = 'R'
    DESCRIPTION = LocaleKey::RAGE_DESCRIPTION

    def initialize(duration = Status::INFINITE)
        super
    end
end
