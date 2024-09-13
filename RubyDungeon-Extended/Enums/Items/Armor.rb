class Armor < Item
    ICON_PREFIX = "Armor/"

    def initialize(level, weightclass, type, name, description, picture, icon = nil)
        @level = level.to_i
        if weightclass.is_a? String
            weightclass = Object.const_get(weightclass)
        end
        @weightclass = weightclass
        if type.is_a? String
            type = Object.const_get(type)
        end
        @type = type
        @name = name
        @description = description
        @picture = picture
        @icon = icon
        fullset_defense = calculate_armor_defense(weightclass)
        fullset_weight = calculate_armor_weight(fullset_defense, weightclass)
        fullset_price = calculate_armor_price(weightclass)
        @weight = (fullset_weight * type::STAT_PERCENTAGE).div(100)
        @defense = (fullset_defense * type::STAT_PERCENTAGE).div(100)
        @value = (fullset_price * type::STAT_PERCENTAGE).div(100)
    end

    def get_picture
        return ASCIIPicture.new(ASCIIPrinter::PREFIX + Item::PICTURE_PREFIX + @picture)
    end

    def get_icon
        if @icon == nil
            return nil
        else
            return ASCIIPicture.new(PlayerIcon::ASSETS_PATH + ICON_PREFIX + @type::FOLDER_PREFIX + @icon)
        end
    end

    def get_type
        return @type
    end

    def calculate_armor_defense(weightclass)
        max_monster_strength = BaseStats::BASE_STRENGTH + (@level * BaseStats::NB_STATS_PER_LEVEL)
        average_monster_strength = Utils::average(max_monster_strength)
        damage_difference = max_monster_strength - average_monster_strength
        required_protection = Utils.average(average_monster_strength + damage_difference.div(2))
        return (required_protection * weightclass::PROTECTION_PERCENTAGE).div(100)
    end

    def calculate_armor_weight(defense, weightclass)
        return (defense * weightclass::WEIGHT_PERCENTAGE).div(100)
    end

    def calculate_armor_price(weightclass)
        average_room_earnings_percent = (@level * 100)/BaseStats::LEVELS_PER_COINS_PER_ROOMS
        base_price = (average_room_earnings_percent * (BaseStats::EXPECTED_ROOMS_PER_ARMOR + @level.div(10))).div(100)
        return (base_price * weightclass::PRICE_PERCENTAGE * weightclass::PROTECTION_PERCENTAGE).div(100 * 100)
    end

    def get_name
        return @name
    end

    def get_long_name
        return @type::ARTICLE + " " + @name
    end

    def get_description
        return @description + ", protège de #{@defense} dégats et pèse #{@weight} Kg"
    end

    def get_card_description
        return @description + "\n\n♣ #{@defense}\n#{@weight} Kg"
    end

    def get_penality
        return @weight * BaseStats::AGILITY_PENALITY_PER_KILO
    end

    def get_defense
        return @defense
    end

    def get_save_data
        return "#{self.class.name}|#{@level}, #{@weightclass}, #{@type}, #{@name}, #{@description}, #{@picture}, #{@icon}"
    end
end
