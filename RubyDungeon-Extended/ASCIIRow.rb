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
            if ((current_width + @space.length*2 + picture.width) < (TTY::Screen.width - 1)) || (current_width <= 0)
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

    def print_row(row, alignment = Alignments::CENTER, vertical_alignment = VerticalAlignments::TOP)
        more_lines_to_do = true
        y = 0
        while more_lines_to_do
            more_lines_to_do = false
            line_to_print = ''
            for picture in row
                row_index = y - TextFormatter.get_vertical_padding_for(picture.height, vertical_alignment, height(row))
                if row_index >= 0
                    picture_line = picture.get_ascii[row_index]
                else
                    picture_line = nil
                end
                if picture_line != nil
                    more_lines_to_do = true
                else
                    picture_line = ''
                end
                line_to_print = line_to_print + @space + picture_line.ljust(picture.width)
            end
            Narrator.write(TextFormatter.align(line_to_print + @space, alignment))
            y += 1
        end
    end

    private

    def height(row)
        max_height = 0
        for picture in row
            if max_height < picture.height
                max_height = picture.height
            end
        end
        return max_height
    end
end
