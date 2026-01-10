class Savable
    NAME_SEPARATOR = '|'
    PARAMETERS_SEPARATOR = ', '

    def self.inherited(child)
        TracePoint.trace(:end) do |t|
            if child == t.self
                unless child.const_defined?(:SAVED)
                    child.const_set(:SAVED, true)
                end
                unless child.const_defined?(:FORCE_SAVE)
                    child.const_set(:FORCE_SAVE, false)
                end
            end
        end
    end

    def self.load(status_data)
        object = status_data.split(NAME_SEPARATOR)[0]
        parameters = status_data.split(NAME_SEPARATOR)[1]
        return Logger.try_or_log(StandardError, true) do
            if parameters != nil
                return Object.const_get(object).new(*parameters.split(PARAMETERS_SEPARATOR))
            else
                return Object.const_get(object).new
            end
        end
    end

    def get_save_data(*parameters)
        if !self.class::FORCE_SAVE && !saved?
            return ''
        end
        parameter_string = parameters.join(PARAMETERS_SEPARATOR)
        if parameter_string != ""
            parameter_string = NAME_SEPARATOR + parameter_string
        end
        return self.class.name + parameter_string
    end

    def saved?
        return self.class::SAVED
    end

    def data_as_array
        data_string = get_save_data.split(NAME_SEPARATOR)[1]
        if data_string != nil
            return data_string.split(PARAMETERS_SEPARATOR)
        else
            return []
        end
    end
end
