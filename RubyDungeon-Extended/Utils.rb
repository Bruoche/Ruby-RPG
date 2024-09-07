class Utils
    HUNDRED_PERCENT = 100

    def self.average(max_value)
        return (max_value+1)/2
    end

    def self.truncate(string, size)
        if string.length > size
            cutoff_suffix = "..."
            return string[0..size-(cutoff_suffix.length + 1)] + cutoff_suffix
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

    def self.positive(number)
        if number < 0
            return 0
        else
            return number
        end
    end

    def self.center(string, width)
        return (" " * Utils.positive((width - string.length).div(2))) + string
    end

    def self.multiline(string, width)
        multiline_string = []
        current_string = ""
        first = true
        for word in string.split
            if (current_string.length + (word.length + 1)) <= width
                if first
                    first = false
                else
                    word = " " + word
                end
                current_string = current_string + word
            else
                if current_string != ""
                    multiline_string.append(current_string)
                    current_string = word
                else
                    for chunk in word.scan(/.{1,#{width - 1}}/)
                        if chunk.length != 1
                            multiline_string.append(chunk + "-")
                        else
                            multiline_string[-1] = multiline_string.last[0...-1] + chunk
                        end
                    end
                end
            end
        end
        if current_string != ""
            multiline_string.append(current_string)
        end
        return multiline_string
    end
end
