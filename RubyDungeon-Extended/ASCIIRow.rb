class ASCIIRow
    DEFAULT_SPACING_BETWEEN = 3

    def initialize(inbetween_space = DEFAULT_SPACING_BETWEEN)
        @pictures = []
        @space = " " * inbetween_space
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

    def show_paginated(height_limit = (TTY::Screen::height - 5))
        rows = get_rows
        pages = []
        current_page_height = 0
        current_page = []
        for row in rows
            row_height = 0
            for image in row
                if image.height > row_height
                    row_height = image.height
                end
            end
            if ((current_page_height + row_height + 1) < height_limit) || (current_page == [])
                current_page.append(row)
                current_page_height = current_page_height + row_height
            else
                pages.append(current_page)
                current_page = [row]
                current_page_height = row_height
            end
        end
        pages.append(current_page)
        page_index = pages.length - 1
        loop do
            for row in pages[page_index]
                print_row(row)
            end
            puts
            if page_index > 0
                left_arrow = "< 1) Page précédente | "
            else
                left_arrow = "< 1) (indisponible)  | "
            end
            if page_index < pages.length - 1
                right_arrow = " |  2) Page suivante >"
            else
                right_arrow = " | 2) (indisponible) >"
            end
            return_button = " [ 0) Retour ] "
            bar_length = (TTY::Screen.width - (left_arrow.length + return_button.length + right_arrow.length)).div(2)
            puts left_arrow + "-" * bar_length + return_button + "-" * bar_length + right_arrow
            puts "Page #{page_index + 1}/#{pages.length}"
            case Narrator.user_input
            when "0"
                break
            when "1"
                if page_index > 0
                    page_index = page_index - 1
                else
                    Narrator.unsupported_choice_error
                end
            when "2"
                if page_index < pages.length - 1
                    page_index = page_index + 1
                else
                    Narrator.unsupported_choice_error
                end
            else
                Narrator.unsupported_choice_error
            end
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
            line_to_print = ""
            for picture in row
                picture_line = picture.get_ascii[y]
                if picture_line != nil
                    more_lines_to_do = true
                else
                    picture_line = ""
                end
                line_to_print = line_to_print + @space + picture_line.ljust(picture.width)
            end
            puts line_to_print
            y += 1
        end
    end
end
