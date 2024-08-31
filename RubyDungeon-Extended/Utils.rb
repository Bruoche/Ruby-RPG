class Utils
    HUNDRED_PERCENT = 100

    def self.average(max_value)
        return (max_value+1)/2
    end

    def self.truncate(string, size)
        if string.length > size
            return "#{string[0..size-3]}..."
        else
            return string
        end
    end

    def self.enumerate(array_of_string)
        if array_of_string.length == 1
            return array_of_string[0]
        else
            last_string = array_of_string.pop();
            returned_string = ""
            first = true
            for string in array_of_string
                if !first
                    returned_string << ", "
                else
                    first = false
                end
                returned_string << string
            end
            return returned_string + " et " + last_string
        end
    end
end
