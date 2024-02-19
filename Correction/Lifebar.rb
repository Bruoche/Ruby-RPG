class Lifebar
    def initialize(max_life)
        @max_life = max_life
        @current_life = max_life
    end
    
    def get_max_life()
        return @max_life
    end
    
    def get_missing_life()
        return @max_life - @current_life
    end
    
    def life_to_string()
        return "#{@current_life}/#{@max_life}"
    end
    
    def is_empty
        if (@current_life <= 0)
            return true
        else
            return false
        end
    end
    
    # Actions
    
    def damage(amount)
        @current_life -= amount
    end
    
    def heal(heal)
        @current_life += heal
        if (@current_life > @max_life)
            @current_life = @max_life
        end
    end
    
    def increment()
        @max_life += 1
        @current_life +=1
    end
end