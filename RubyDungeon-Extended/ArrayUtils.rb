class ArrayUtils
    def self.for_potential(elements, &action)
        index = 0
        array_size = elements.length
        while (index < array_size)
            action.call(elements[index])
            if (elements.length != array_size)
                array_size = elements.length
            else
                index += 1
            end
        end
    end
end
