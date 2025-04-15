class OutsideShop < Shop
    BUY_DIALOG = LocaleKey::MERCHANT_THANK
    NOT_ENOUGH_FUNDS_DIALOG = LocaleKey::MERCHANT_FUND_INSUFFICIENT
    ONE_NOT_ENOUGH_DIALOG = LocaleKey::MERCHANT_COIN_INSUFFICIENT
    NO_MONEY_DIALOG = LocaleKey::MERCHANT_NO_MONEY
    SOLD_DIALOG = LocaleKey::MERCHANT_PURCHASE
    RETAIL_PERCENT = 85
    MUSIC = 'Merchant'
    SHOPKEEPER = ShopKeeper
    INVENTORY = [
        Bundle.new(HealthPotion.new(10), 1),
        Bundle.new(HealthPotion.new(20), 1),
        Bundle.new(HealthPotion.new(50), 1),
        Bundle.new(HealthPotion.new(100), 1),
        Bundle.new(Armor.new(LeatherGreaves), 1),
        Bundle.new(Armor.new(StarterHeavyGreaves), 1),
        Bundle.new(Armor.new(DressGreaves), 1),
        Bundle.new(Armor.new(NobleGreaves), 1),
        Bundle.new(Armor.new(LeatherGauntlets), 1),
        Bundle.new(Armor.new(StarterHeavyGauntlets), 1),
        Bundle.new(Armor.new(DressGauntlets), 1),
        Bundle.new(Armor.new(NobleGauntlets), 1),
        Bundle.new(Armor.new(LeatherPlastron), 1),
        Bundle.new(Armor.new(StarterHeavyPlastron), 1),
        Bundle.new(Armor.new(DressPlastron), 1),
        Bundle.new(Armor.new(NoblePlastron), 1),
        Bundle.new(Armor.new(LeatherHelm), 1),
        Bundle.new(Armor.new(StarterHeavyHelm), 1),
        Bundle.new(Armor.new(DressHelm), 1),
        Bundle.new(Armor.new(NobleHelm), 1),
        Bundle.new(Armor.new(IronGreaves), 1),
        Bundle.new(Armor.new(HeavyGreaves), 1),
        Bundle.new(Armor.new(BlackLeatherGreaves), 1),
        Bundle.new(Armor.new(IronGauntlets), 1),
        Bundle.new(Armor.new(HeavyGauntlets), 1),
        Bundle.new(Armor.new(BlackLeatherGauntlets), 1),
        Bundle.new(Armor.new(IronPlastron), 1),
        Bundle.new(Armor.new(HeavyPlastron), 1),
        Bundle.new(Armor.new(BlackLeatherPlastron), 1),
        Bundle.new(Armor.new(IronHelm), 1),
        Bundle.new(Armor.new(HeavyHelm), 1),
        Bundle.new(Armor.new(BlackLeatherHelm), 1),
        Bundle.new(Teleporter.new, 1)
    ].freeze
end
