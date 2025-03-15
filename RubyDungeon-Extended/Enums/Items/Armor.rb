class Armor < Item
    ICON_PREFIX = 'Armor/'

    def initialize(armor_data)
        if armor_data.is_a? String
            armor_data = Object.const_get(armor_data)
        end
        @level = armor_data::LEVEL
        @weightclass = armor_data::WEIGHTCLASS
        @type = armor_data::TYPE
        @name = armor_data::NAME
        @description = armor_data::DESCRIPTION
        @picture = armor_data::PICTURE
        @icon = armor_data::ICON
        fullset_defense = calculate_armor_defense
        fullset_weight = calculate_armor_weight(fullset_defense)
        fullset_price = calculate_armor_price
        @weight = (fullset_weight * @type::STAT_PERCENTAGE).div(100)
        @defense = (fullset_defense * @type::STAT_PERCENTAGE).div(100)
        @value = (fullset_price * @type::STAT_PERCENTAGE).div(100)
        @armor_data_class = armor_data
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

    def calculate_armor_defense
        max_monster_strength = BaseStats::BASE_STRENGTH + (@level * BaseStats::NB_STATS_PER_LEVEL)
        average_monster_strength = Utils::average(max_monster_strength)
        damage_difference = max_monster_strength - average_monster_strength
        required_protection = Utils.average(average_monster_strength + damage_difference.div(2))
        return (required_protection * @weightclass::PROTECTION_PERCENTAGE).div(100)
    end

    def calculate_armor_weight(defense)
        return (defense * @weightclass::WEIGHT_PERCENTAGE).div(100)
    end

    def calculate_armor_price
        average_room_earnings_percent = (@level * 100)/BaseStats::LEVELS_PER_COINS_PER_ROOMS
        base_price = (average_room_earnings_percent * (BaseStats::EXPECTED_ROOMS_PER_ARMOR + @level.div(10))).div(100)
        return (base_price * @weightclass::PRICE_PERCENTAGE * @weightclass::PROTECTION_PERCENTAGE).div(100 * 100)
    end

    def get_name
        return Locale::get_localized(@name)
    end

    def get_long_name
        return Locale::get_localized(@type::ARTICLE) + ' ' + Locale::get_localized(@name)
    end

    def get_description
        return Locale.get_localized(@description) + format(Locale.get_localized(LocaleKey::ARMOR_DESCRIPTION), {
            LocaleKey::F_DEFENSE => @defense,
            LocaleKey::F_WEIGHT => @weight
        })
    end

    def get_card_description
        return Locale.get_localized(@description) + format(Locale.get_localized(LocaleKey::ARMOR_CARD_DESCRIPTION), {
            LocaleKey::F_DEFENSE => @defense,
            LocaleKey::F_WEIGHT => @weight
        })
    end

    def get_penality
        return @weight * BaseStats::AGILITY_PENALITY_PER_KILO
    end

    def get_defense
        return @defense
    end

    def get_save_data
        return "#{self.class.name}|#{@armor_data_class.name}"
    end
end
