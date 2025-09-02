class MathUtils
    HUNDRED_PERCENT = 100

    def self.average(max_value)
        return (max_value+1)/2
    end

    def self.positive(number)
        if number < 0
            return 0
        else
            return number
        end
    end
end
