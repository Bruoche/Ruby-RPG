class Item
    PICTURE_PREFIX = "Items/"
    RESPONSE_PLAYER_ACTED = "player_acted?"
    RESPONSE_CLOSE_INVENTORY = "close_inventory?"

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
                unless child.const_defined?(:DROP_CHANCE_SCALABLE)
                    child.const_set(:DROP_CHANCE_SCALABLE, true)
                end
                unless child.const_defined?(:DROP_QUANTITY_SCALABLE)
                    child.const_set(:DROP_QUANTITY_SCALABLE, child::DROP_CHANCE_SCALABLE)
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

    def drop_chance_scalable?
        return self.class::DROP_CHANCE_SCALABLE
    end

    def get_save_data
        return self.class.name
    end

    def use(target, user)
        puts "Vous ne savez pas comment utiliser cet objet..."
        SoundManager.play("spell_fart")
        sleep Settings::BATTLE_ACTION_PAUSE
        return !Player::ACTED
    end

    def play_sound
        SoundManager.play(self.class::SOUND)
        sleep Settings::BATTLE_ACTION_PAUSE
    end

    def self.load(item_data)
        object = item_data.split("|")[0]
        parameters = item_data.split("|")[1]
        if parameters != nil
            return Object.const_get(object).new(*parameters.split(", "))
        else
            return Object.const_get(object).new
        end
    end
end
