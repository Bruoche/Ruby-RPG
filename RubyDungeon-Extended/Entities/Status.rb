class Status
    INFINITE = nil

    def initialize(*args)
        @duration = args[0]
    end

    def self.inherited(child)
        TracePoint.trace(:end) do |t|
            if child == t.self
                unless child.const_defined?(:SAVED)
                    child.const_set(:SAVED, true)
                end
                unless child.const_defined?(:HIDDEN)
                    child.const_set(:HIDDEN, false)
                end
                unless child.const_defined?(:ICON)
                    child.const_set(:ICON, '@')
                end
            end
        end
    end

    def self.load(status_data)
        object = status_data.split('|')[0]
        parameters = status_data.split('|')[1]
        if parameters != nil
            return Object.const_get(object).new(*parameters.split(', '))
        else
            return Object.const_get(object).new
        end
    end

    def get_save_data
        if @duration == INFINITE && self.class::SAVED
            return self.class.name
        else
            return ''
        end
    end

    def length
        return @duration
    end

    def visible?
        return !self.class::HIDDEN
    end

    def depleted?
        if @duration == INFINITE
            return false
        else
            return @duration <= 0
        end
    end

    def icon
        if self.class::HIDDEN
            return ''
        else
            if @duration == INFINITE
                duration_string = ''
            else
                duration_string = ' (' + @duration.to_s + ')'
            end
            return self.class::ICON + duration_string
        end
    end

    def set_duration(duration)
        @duration = duration
    end

    def append(duration)
        if @duration != INFINITE
            if duration == INFINITE
                @duration = duration
            else
                @duration += duration
            end
        end
    end

    def tick_down(duration = 1)
        if (@duration != INFINITE) && (@duration > 0)
            @duration -= 1
        end
    end

    def end_of_turn_action(host)
        #no default behavior on statuses
    end
end
