class ASCIIPaginator
    PAGINATION_MINMIMUM_PADDING = 5
    DEFAULT_RETURN_BUTTON = LocaleKey::RETURN_BUTTON
    AUTO = nil

    def initialize(inbetween_space = ASCIIRow::DEFAULT_SPACING_BETWEEN, last_first = false)
        @rows = ASCIIRow.new
        @current_page = AUTO
        @pages = []
        @last_first = last_first
        @show_return_button = true
    end

    def append(picture)
        @rows.append(picture)
    end

    def show(vertical_padding = 0, return_button = DEFAULT_RETURN_BUTTON)
        height_limit = TTY::Screen::height - (PAGINATION_MINMIMUM_PADDING + vertical_padding)
        update_pages(height_limit)
        for row in @pages[@current_page]
            @rows.print_row(row)
        end
        if @pages.length > 1
            Narrator.put_scrollbar(get_scroll_bar(return_button), @current_page, @pages.length)
        else
            if @show_return_button
                Narrator.write(return_button)
            end
        end
    end

    def set_show_return_button(show_return_button)
        @show_return_button = show_return_button
    end

    def get_scroll_bar(return_button = DEFAULT_RETURN_BUTTON)
        if precedent_page_accessible?
            left_arrow = Locale.get_localized(LocaleKey::PRECEDENT_PAGE)
        else
            left_arrow = Locale.get_localized(LocaleKey::PRECEDENT_PAGE_UNAVAILABLE)
        end
        if next_page_accessible?
            right_arrow = Locale.get_localized(LocaleKey::NEXT_PAGE)
        else
            right_arrow = Locale.get_localized(LocaleKey::NEXT_PAGE_UNAVAILABLE)
        end
        if @show_return_button
            return_button = Locale.get_localized(return_button)
        else
            return_button = ''
        end
        bar_length = (TTY::Screen.width - (left_arrow.length + return_button.length + right_arrow.length)).div(2)
        return left_arrow + '-' * bar_length + return_button + '-' * bar_length + right_arrow
    end

    def precedent_page_accessible?
        return @current_page > 0
    end

    def next_page_accessible?
        return @current_page < (@pages.length - 1)
    end

    def get_page
        return @current_page
    end

    def set_page(new_index = AUTO)
        @current_page = new_index
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
        check_overflow
    end

    private

    def check_overflow
        if (@current_page == AUTO)
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
