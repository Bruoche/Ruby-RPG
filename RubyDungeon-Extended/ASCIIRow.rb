class ASCIIRow
    DEFAULT_SPACING_BETWEEN = 3

    def initialize(inbetween_space = DEFAULT_SPACING_BETWEEN)
        @pictures = []
        @space = ' ' * inbetween_space
    end

    def append(picture)
        @pictures.append(picture)
    end

    def show
        rows = get_rows
        for row in rows
            print_row(row)
        end
    end

    def get_rows
        current_width = 0
        rows = []
        row = []
        for picture in @pictures
            if ((current_width + @space.length + picture.width) < (TTY::Screen.width - 1)) || (current_width <= 0)
                row.append(picture)
                current_width += @space.length + picture.width
            else
                rows.append(row)
                row = [picture]
                current_width = @space.length + picture.width
            end
        end
        rows.append(row)
        return rows
    end

    def print_row(row)
        more_lines_to_do = true
        y = 0
        while more_lines_to_do
            more_lines_to_do = false
            line_to_print = ''
            for picture in row
                picture_line = picture.get_ascii[y]
                if picture_line != nil
                    more_lines_to_do = true
                else
                    picture_line = ''
                end
                line_to_print = line_to_print + @space + picture_line.ljust(picture.width)
            end
            Narrator.write(line_to_print)
            y += 1
        end
    end
end
