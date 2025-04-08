class GuildMember < Status
    HIDDEN = true

    def initialize(duration = Status::INFINITE)
        super
    end
end
