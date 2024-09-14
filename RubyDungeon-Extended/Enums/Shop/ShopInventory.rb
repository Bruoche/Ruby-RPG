module ShopInventory
    ITEM_LIST = [
        Bundle.new(Armor.new(*StarterHeavyHelm::get_attributes), 1),
        Bundle.new(Armor.new(*LeatherHelm::get_attributes), 1),
        Bundle.new(Armor.new(*DressHelm::get_attributes), 1),
        Bundle.new(Armor.new(*NobleHelm::get_attributes), 1),
        Bundle.new(Armor.new(*StarterHeavyPlastron::get_attributes), 1),
        Bundle.new(Armor.new(*LeatherPlastron::get_attributes), 1),
        Bundle.new(Armor.new(*DressPlastron::get_attributes), 1),
        Bundle.new(Armor.new(*NoblePlastron::get_attributes), 1),
        Bundle.new(Armor.new(*StarterHeavyGauntlets::get_attributes), 1),
        Bundle.new(Armor.new(*LeatherGauntlets::get_attributes), 1),
        Bundle.new(Armor.new(*DressGauntlets::get_attributes), 1),
        Bundle.new(Armor.new(*NobleGauntlets::get_attributes), 1),
        Bundle.new(Armor.new(*StarterHeavyGreaves::get_attributes), 1),
        Bundle.new(Armor.new(*LeatherGreaves::get_attributes), 1),
        Bundle.new(Armor.new(*DressGreaves::get_attributes), 1),
        Bundle.new(Armor.new(*NobleGreaves::get_attributes), 1),
        Bundle.new(HealthPotion.new(20), 1),
        Bundle.new(HealthPotion.new(50), 1),
        Bundle.new(HealthPotion.new(10), 1)
    ].freeze
end
