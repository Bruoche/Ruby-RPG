class OutsideShop < Shop
    BUY_DIALOG = LocaleKey::MERCHANT_THANK
    NOT_ENOUGH_FUNDS_DIALOG = LocaleKey::MERCHANT_FUND_INSUFFICIENT
    ONE_NOT_ENOUGH_DIALOG = LocaleKey::MERCHANT_COIN_INSUFFICIENT
    NO_MONEY_DIALOG = LocaleKey::MERCHANT_NO_MONEY
    SOLD_DIALOG = LocaleKey::MERCHANT_PURCHASE
    RETAIL_PERCENT = 85
    MUSIC = 'Merchant'
    SHOPKEEPER = ShopKeeper
    SIGN = 'shop_sign'
    INVENTORY = [
        Bundle.new(Chalk.new),
        Bundle.new(HealthPotion.new(10)),
        Bundle.new(HealthPotion.new(20)),
        Bundle.new(HealthPotion.new(50)),
        Bundle.new(HealthPotion.new(100)),
        Bundle.new(Armor.new(LeatherGreaves)),
        Bundle.new(Armor.new(StarterHeavyGreaves)),
        Bundle.new(Armor.new(DressGreaves)),
        Bundle.new(Armor.new(NobleGreaves)),
        Bundle.new(Armor.new(LeatherGauntlets)),
        Bundle.new(Armor.new(StarterHeavyGauntlets)),
        Bundle.new(Armor.new(DressGauntlets)),
        Bundle.new(Armor.new(NobleGauntlets)),
        Bundle.new(Armor.new(LeatherPlastron)),
        Bundle.new(Armor.new(StarterHeavyPlastron)),
        Bundle.new(Armor.new(DressPlastron)),
        Bundle.new(Armor.new(NoblePlastron)),
        Bundle.new(Armor.new(LeatherHelm)),
        Bundle.new(Armor.new(StarterHeavyHelm)),
        Bundle.new(Armor.new(DressHelm)),
        Bundle.new(Armor.new(NobleHelm)),
        Bundle.new(Armor.new(IronGreaves)),
        Bundle.new(Armor.new(HeavyGreaves)),
        Bundle.new(Armor.new(BlackLeatherGreaves)),
        Bundle.new(Armor.new(IronGauntlets)),
        Bundle.new(Armor.new(HeavyGauntlets)),
        Bundle.new(Armor.new(BlackLeatherGauntlets)),
        Bundle.new(Armor.new(IronPlastron)),
        Bundle.new(Armor.new(HeavyPlastron)),
        Bundle.new(Armor.new(BlackLeatherPlastron)),
        Bundle.new(Armor.new(IronHelm)),
        Bundle.new(Armor.new(HeavyHelm)),
        Bundle.new(Armor.new(BlackLeatherHelm)),
        Bundle.new(Teleporter.new)
    ].freeze
end
