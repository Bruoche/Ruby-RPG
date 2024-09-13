module ShopInventory
    ITEM_LIST = [
        Bundle.new(HealthPotion.new(10), 1),
        Bundle.new(HealthPotion.new(10), 5),
        Bundle.new(HealthPotion.new(20), 1),
        Bundle.new(HealthPotion.new(50), 1),
        Bundle.new(Armor.new(*StarterHeavyHelm::get_attributes), 1),
        Bundle.new(Armor.new(*StarterHeavyPlastron::get_attributes), 1),
        Bundle.new(Armor.new(*StarterHeavyGauntlets::get_attributes), 1),
        Bundle.new(Armor.new(*StarterHeavyGreaves::get_attributes), 1)
    ].freeze
end
