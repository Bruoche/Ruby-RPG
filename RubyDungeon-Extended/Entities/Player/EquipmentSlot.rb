class EquipmentSlot
    NO_ARMOR_EQUIPPED = nil

    def initialize(type, equippedArmor = NO_ARMOR_EQUIPPED)
        @type = type
        @equippedArmor = equippedArmor
    end

    def get_type
        return @type
    end

    def can_equip?(armor)
        return armor.get_type == @type
    end

    def get_penality
        if @equippedArmor != NO_ARMOR_EQUIPPED
            return @equippedArmor.get_penality
        else
            return 0
        end
    end

    def get_defense
        if @equippedArmor != NO_ARMOR_EQUIPPED
            return @equippedArmor.get_defense
        else
            return 0
        end
    end

    def empty?
        return @equippedArmor == NO_ARMOR_EQUIPPED
    end

    def have_picture?
        if (@equippedArmor != NO_ARMOR_EQUIPPED) && (@type::FOLDER_PREFIX != nil)
            return @equippedArmor.get_icon != nil
        end
        return false
    end

    def get_picture
        if @equippedArmor != NO_ARMOR_EQUIPPED
            return @equippedArmor.get_icon
        else
            return nil
        end
    end

    def ask_equip(armor, player_name)
        if can_equip?(armor)
            precedent_armor = @equippedArmor
            if precedent_armor != NO_ARMOR_EQUIPPED
                puts "Êtes-vous sûr de vouloir remplacer votre armure actuelle par #{armor.get_name} ? (y/n)"
                armor_comparison = ASCIIRow.new
                current_armor_frame = ASCIIPicture.new(ASCIIPicture.get_selling_card(precedent_armor, ASCIIPicture::NO_INDEX, 0))
                new_armor_frame = ASCIIPicture.new(ASCIIPicture.get_selling_card(armor, ASCIIPicture::NO_INDEX, 0))
                current_armor_frame.frame
                new_armor_frame.frame
                armor_comparison.append(current_armor_frame)
                armor_comparison.append(ASCIIPicture.new(["", "", "", "", "", "-\\", "-/"]))
                armor_comparison.append(new_armor_frame)
                armor_comparison.show
                if Narrator.ask_confirmation("")
                    return equip(armor, player_name)
                else
                    return armor
                end
            else
                return equip(armor, player_name)
            end
        else
            return armor
        end
    end

    def equip(armor, player_name)
        precedent_armor = @equippedArmor
        @equippedArmor = armor
        puts "#{player_name.capitalize} s'équipe d'#{@equippedArmor.get_long_name}"
        return precedent_armor
    end

    def unequip
        removed_armor = @equippedArmor
        @equippedArmor = NO_ARMOR_EQUIPPED
        return removed_armor
    end

    def get_card(index = ASCIIPicture::NO_INDEX)
        if @equippedArmor == NO_ARMOR_EQUIPPED
            upper_space = Array.new(11, " " * ASCIIPicture::ITEM_ICON_WIDTH)
            text = Utils.multiline(Utils.center("Pas d'armure équipé pour #{@type::NAME}", ASCIIPicture::ITEM_ICON_WIDTH), ASCIIPicture::ITEM_ICON_WIDTH)
            lower_space = Array.new(11 - text.length, " " * ASCIIPicture::ITEM_ICON_WIDTH)
            picture = ASCIIPicture.new(upper_space + text + lower_space)
        else
            picture = ASCIIPicture.new(ASCIIPicture.get_selling_card(@equippedArmor, index, 0))
        end
        picture.frame(" ", " ")
        return picture
    end
end