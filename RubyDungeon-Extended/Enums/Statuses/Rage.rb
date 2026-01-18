class Rage < Status
    SAVED = false
    ICON = 'R'
    DESCRIPTION = LocaleKey::RAGE_DESCRIPTION
    DESCRIPTION_SELF = LocaleKey::RAGE_DESCRIPTION_SELF

    def initialize(duration = Status::INFINITE)
        super
    end
end
