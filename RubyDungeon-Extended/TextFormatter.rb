class TextFormatter
    PUNCTUATION = ['.', '?', '!']
    DIACRITICS = [*0x1DC0..0x1DFF, *0x0300..0x036F, *0xFE20..0xFE2F].pack('U*')

    def self.truncate(string, size)
        if string.length > size
            cutoff_suffix = '...'
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
            returned_string = ''
            first = true
            for string in array_of_string
                if !first
                    returned_string << ', '
                else
                    first = false
                end
                returned_string << string
            end
            return returned_string + Locale.get_localized(LocaleKey::AND_SPACED) + last_string
        end
    end

    def self.center(string, width = TTY::Screen.width)
        return (' ' * get_padding_for(string.length, Alignments::CENTER, width)) + string
    end

    def self.align(string, alignment, width = TTY::Screen.width)
        return (' ' * get_padding_for(string.length, alignment, width)) + string
    end

    def self.align_right(string, width)
        return (' ' * MathUtils.positive(width - string.length)) + string
    end

    def self.multiline(string, width)
        multiline_string = []
        current_string = ''
        for paragraph in string.split("\n")
            first = true
            for word in paragraph.split(/ /)
                if (current_string.length + (word.length + 1)) <= width
                    if first
                        first = false
                    else
                        word = ' ' + word
                    end
                    current_string = current_string + word
                else
                    if current_string != ''
                        multiline_string.append(current_string)
                        current_string = word
                    else
                        for chunk in word.scan(/.{1,#{width - 1}}/)
                            if chunk.length != 1
                                multiline_string.append(chunk + '-')
                            else
                                multiline_string[-1] = multiline_string.last[0...-1] + chunk
                            end
                        end
                    end
                end
            end
            multiline_string.append(current_string)
            current_string = ''
        end
        return multiline_string
    end

    def self.get_string_numbering(number)
        if number != 1
            return "(x#{number})"
        else
            return ''
        end
    end

    def self.get_padding_for(width, alignment, max_width = TTY::Screen.width)
        width_difference = max_width - width
        if width_difference <= 0
            return 0
        end
        case alignment
        when Alignments::CENTER
            return (width_difference/2)
        when Alignments::RIGHT
            width_difference - 1
        else
            return 0
        end
    end
end
