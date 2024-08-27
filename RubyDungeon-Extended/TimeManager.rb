class TimeManager
    def initialize
        @time_played_at_creation = Time.new(0)
        @creation_timestamp = Time.now
    end

    def parse(duration)
        if duration != nil
            if duration.kind_of? String
                @time_played_at_creation = Time.parse(duration)
            else
                @time_played_at_creation = duration
            end
        end
    end

    def current_value
        return  @time_played_at_creation + time_passed
    end

    def time_passed
        return Time.now - @creation_timestamp
    end
end
