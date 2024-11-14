class ASCIIPaginator
    PAGINATION_MINMIMUM_PADDING = 5

    def initialize(inbetween_space = ASCIIRow::DEFAULT_SPACING_BETWEEN, last_first = false)
        @rows = ASCIIRow.new
        @current_page = nil
        @pages = []
        @last_first = last_first
    end

    def append(picture)
        @rows.append(picture)
    end

    def show(vertical_padding = 0)
        height_limit = TTY::Screen::height - (PAGINATION_MINMIMUM_PADDING + vertical_padding)
        update_pages(height_limit)
        for row in @pages[@current_page]
            @rows.print_row(row)
        end
        if @pages.length > 1
            Narrator.put_scrollbar(get_scroll_bar, @current_page, @pages.length)
        end
    end

    def get_scroll_bar
        if precedent_page_accessible?
            left_arrow = "< a) Page précédente | "
        else
            left_arrow = "< a) (indisponible)  | "
        end
        if next_page_accessible?
            right_arrow = " |  z) Page suivante >"
        else
            right_arrow = " | z) (indisponible) >"
        end
        return_button = " [ 0) Retour ] "
        bar_length = (TTY::Screen.width - (left_arrow.length + return_button.length + right_arrow.length)).div(2)
        return left_arrow + "-" * bar_length + return_button + "-" * bar_length + right_arrow
    end

    def precedent_page_accessible?
        return @current_page > 0
    end

    def next_page_accessible?
        return @current_page < (@pages.length - 1)
    end

    def page_up
        if next_page_accessible?
            @current_page = @current_page + 1
        else
            Narrator.page_up_impossible_error
        end
    end

    def page_down
        if precedent_page_accessible?
            @current_page = @current_page - 1
        else
            Narrator.page_down_impossible_error
        end
    end

    def update_pages(height_limit)
        @pages = []
        current_page_height = 0
        current_page = []
        for row in @rows.get_rows
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
                @pages.append(current_page)
                current_page = [row]
                current_page_height = row_height
            end
        end
        @pages.append(current_page)
        if (@current_page == nil)
            if @last_first
                @current_page = @pages.length - 1
            else
                @current_page = 0
            end
        end
        if @current_page > (@pages.length - 1)
            @current_page = @pages.length - 1
        end
        if @current_page < 0
            @current_page = 0
        end
    end
end
