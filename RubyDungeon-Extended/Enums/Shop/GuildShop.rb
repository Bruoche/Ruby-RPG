class GuildShop < Shop
    BUY_DIALOG = LocaleKey::MERCHANT_THANK
    NOT_ENOUGH_FUNDS_DIALOG = LocaleKey::MERCHANT_FUND_INSUFFICIENT
    ONE_NOT_ENOUGH_DIALOG = LocaleKey::MERCHANT_COIN_INSUFFICIENT
    NO_MONEY_DIALOG = LocaleKey::MERCHANT_NO_MONEY
    SOLD_DIALOG = LocaleKey::MERCHANT_PURCHASE
    RETAIL_PERCENT = 90
    MUSIC = 'Merchant'
    SHOPKEEPER = Alchemist
    INVENTORY = [
        Bundle.new(HealthPotion.new(35), 1),
        Bundle.new(HealthPotion.new(100), 1),
        Bundle.new(HealthPotion.new(200), 1),
        Bundle.new(HealthPotion.new(350), 1),
        Bundle.new(HealthPotion.new(500), 1),
        #
        Bundle.new(HealthPotion.new(700), 1),
        Bundle.new(HealthPotion.new(950), 1),
        Bundle.new(HealthPotion.new(1200), 1),
        Bundle.new(HealthPotion.new(1500), 1),
        Bundle.new(HealthPotion.new(1800), 1)
    ].freeze
end
