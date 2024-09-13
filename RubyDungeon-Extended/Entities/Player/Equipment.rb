class Equipment
    HELMET_ID = "helmet"
    PLASTRON_ID = "plastron"
    GAUNTLETS_ID = "gauntlets"


    def initialize
        @slots = [
            EquipmentSlot.new(Helmet, :helmet),
            EquipmentSlot.new(Plastron, :plastron),
            EquipmentSlot.new(Gauntlets, :gauntlets),
            EquipmentSlot.new(Greaves, :greaves)
        ]
    end

    def get_penality
        penality = 0
        for slot in @slots
            penality += slot.get_penality
        end
        return penality
    end

    def get_defense
        defense = 0
        for slot in @slots
            defense += slot.get_defense
        end
        return defense
    end

    def get_taken_slots
        taken_slots = []
        for slot in @slots
            if !slot.empty?
                taken_slots.append(slot)
            end
        end
        return taken_slots
    end

    def get_pictures
        armor_pictures = []
        for slot in @slots
            if slot.have_picture?
                armor_pictures.append(slot.get_picture)
            end
        end
        return armor_pictures
    end

    def got_equipment?
        for slot in @slots
            if !slot.empty?
                return true
            end
        end
        return false
    end

    def get_save_data
        save_data = {}
        for slot in @slots
            save_data[slot.get_save_id] = slot.get_save_data
        end
        return save_data
    end

    def load(equipment_data)
        for slot in @slots
            slot.load(equipment_data[slot.get_save_id])
        end
    end

    def equip(armor, player_name)
        for slot in @slots
            if slot.can_equip?(armor)
                return slot.ask_equip(armor, player_name)
            end
        end
        return armor
    end

    def manage(inventory, player_name)
        puts "Equipement actuel : "
        slots_row = ASCIIRow.new
        for slot in @slots
            slot_card = slot.get_card
            slot_card.frame
            slots_row.append(slot_card)
        end
        slots_row.show
        puts
        puts "Que voulez-vous faire ?"
        puts "    0) Retour"
        puts "    1) Equiper une nouvelle pièce d'armure"
        if got_equipment?
            puts "    2) Retirer une pièce d'armure"
        end
        case Narrator.user_input
        when "0"
            return !Player::ACTED
        when "1"
            ask_equip(inventory, player_name)
        when "2"
            if got_equipment?
                ask_remove(inventory, player_name)
            else
                Narrator::unsupported_choice_error
            end
        else
            Narrator::unsupported_choice_error
        end
        return manage(inventory, player_name)
    end

    def ask_equip(inventory, player_name)
        available_equipments = inventory.get_all(Armor)
        equipment_index = Narrator.ask_complex_element(
            "Quel pièce d'armure souhaitez-vous équiper?",
            available_equipments,
            -> (equipment, index){
                if equipment == Narrator::RETURN_BUTTON
                    puts "0) Annuler..."
                else
                    equipment_card = ASCIIPicture.new(ASCIIPicture.get_selling_card(equipment, index, 0))
                    equipment_card.frame
                    puts equipment_card.get_ascii
                end
            },
            player_name
        )
        if equipment_index == Narrator::RETURN_BUTTON
            return !Player::ACTED
        else
            choosen_armor = available_equipments[equipment_index].get_item
            removed_armor = equip(choosen_armor, player_name)
            inventory.remove(choosen_armor)
            if removed_armor != EquipmentSlot::NO_ARMOR_EQUIPPED
                inventory.add(Bundle.new(removed_armor, 1))
            end
        end
    end

    def ask_remove(inventory, player_name)
        removable_slots = get_taken_slots
        equipment_index = Narrator.ask_complex_element(
            "Quel pièce d'armure souhaitez-vous retirer?",
            removable_slots,
            -> (slot, index){
                if slot == Narrator::RETURN_BUTTON
                    puts "0) Retour..."
                else
                    removable_card = slot.get_card(index)
                    removable_card.frame
                    puts removable_card.get_ascii
                end
            },
            player_name
        )
        if equipment_index != Narrator::RETURN_BUTTON
            removed_item = removable_slots[equipment_index].unequip
            puts "#{player_name.capitalize} retire #{removed_item.get_long_name}"
            inventory.add(Bundle.new(removed_item, 1))
        end
    end
end
