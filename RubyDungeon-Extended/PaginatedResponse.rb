class PaginatedResponse
    def initialize(value, page_index)
        @value = value
        @page_index = page_index
    end

    def get
        return @value
    end

    def get_page
        return @page_index
    end
end
