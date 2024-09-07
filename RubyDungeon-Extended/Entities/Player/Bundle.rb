class Bundle
    def initialize(item, quantity = 1)
        @item = item
        @quantity = quantity
    end

    def get_name
        suffix = get_string_numbering
        if suffix != ""
            suffix = " " + suffix
        end
        return @item.get_name + suffix
    end

    def get_value
        return @item.get_value * @quantity
    end

    def get_individual_value
        return @item.get_value
    end

    def get_description
        numbering = get_string_numbering
        if numbering != ""
            numbering = numbering + " "
        end
        description = @item.get_description
        if description != ""
            description = " (#{description})"
        end
        return "#{numbering}#{@item.get_name}#{description}"
    end

    def get_picture
        return @item.get_picture
    end

    def get_item
        return @item
    end

    def get_quantity
        return @quantity
    end

    def get_string_numbering
        if @quantity != 1
            return "(x#{@quantity})"
        else
            return ""
        end
    end

    def get_save_data
        if @quantity > 0
            return (@item.get_save_data + "; ") * @quantity
        else
            return ""
        end
    end

    def usable_on_others?
        return @item.usable_on_others?
    end

    def contain?(item)
        return item.get_save_data == @item.get_save_data
    end

    def depleted?
        return @quantity <= 0
    end

    def add(quantity)
        @quantity += quantity
    end

    def remove(quantity)
        if quantity > @quantity
            quantity = @quantity
        end
        @quantity -= quantity
        return Bundle.new(@item, quantity)
    end

    def use (target, user)
        used = @item.use(target, user)
        if @item.destroyed?
            @quantity -= 1
        end
        return used
    end
end
