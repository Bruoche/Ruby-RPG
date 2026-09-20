class IndexedResponse
    def initialize(value, index)
        @value = value
        @index = index
    end

    def get
        return @value
    end

    def get_index
        return @index
    end
end
