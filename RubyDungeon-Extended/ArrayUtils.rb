class ArrayUtils
    def self.for_potential(elements, &action)
        index = 0
        while (index < elements.length)
            element = elements[index]
            action.call(element)
            if (elements[index] == element)
                index += 1
            end
        end
    end
end
