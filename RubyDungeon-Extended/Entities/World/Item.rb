class Item
    PICTURE_PREFIX = "Items/"

    def self.inherited(child)
        child.instance_variable_set(:@destroyed, false)
        TracePoint.trace(:end) do |t|
            if child == t.self
                unless child.const_defined?(:USABLE_ON_OTHERS)
                    child.const_set(:USABLE_ON_OTHERS, true)
                end
                unless child.const_defined?(:PICTURE)
                    child.const_set(:PICTURE, "generic")
                end
            end
        end
    end

    def get_name
        return self.class::NAME
    end

    def get_value(percentage = 100)
        return (@value * percentage).div(100)
    end

    def get_picture
        return ASCIIPicture.new(ASCIIPrinter::PREFIX + PICTURE_PREFIX + self.class::PICTURE)
    end

    def destroyed?
        if @destroyed
            @destroyed = false
            return true
        else
            return false
        end
    end

    def usable_on_others?
        return self.class::USABLE_ON_OTHERS
    end

    def get_save_data
        return self.class.name
    end

    def use(target, user)
        puts "Vous ne savez pas comment utiliser cet objet..."
        return !Player::ACTED
    end
end
