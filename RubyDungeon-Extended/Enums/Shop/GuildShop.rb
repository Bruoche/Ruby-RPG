class GuildShop < Shop
    BUY_DIALOG = LocaleKey::ALCHEMIST_THANK
    NOT_ENOUGH_FUNDS_DIALOG = LocaleKey::ALCHEMIST_FUND_INSUFFICIENT
    ONE_NOT_ENOUGH_DIALOG = LocaleKey::ALCHEMIST_COIN_INSUFFICIENT
    NO_MONEY_DIALOG = LocaleKey::ALCHEMIST_NO_MONEY
    SOLD_DIALOG = LocaleKey::ALCHEMIST_PURCHASE
    RETAIL_PERCENT = 90
    MUSIC = 'Adventurers Waltz'
    SHOPKEEPER = Alchemist
    INVENTORY = [
        Bundle.new(HealthPotion.new(35)),
        Bundle.new(HealthPotion.new(100)),
        Bundle.new(HealthPotion.new(200)),
        Bundle.new(HealthPotion.new(350)),
        Bundle.new(HealthPotion.new(500)),
        Bundle.new(HealthStone.new(2, 20)),
        Bundle.new(HealthStone.new(2, 50)),
        Bundle.new(HealthStone.new(2, 100)),
        Bundle.new(HealthStone.new(2, 175)),
        Bundle.new(HealthStone.new(2, 250)),
        Bundle.new(HealthStone.new(5, 20)),
        Bundle.new(HealthStone.new(5, 50)),
        Bundle.new(HealthStone.new(5, 100)),
        Bundle.new(HealthStone.new(5, 175)),
        Bundle.new(HealthStone.new(5, 250)),
        Bundle.new(HealthPotion.new(700)),
        Bundle.new(HealthPotion.new(950)),
        Bundle.new(HealthPotion.new(1200)),
        Bundle.new(HealthPotion.new(1500)),
        Bundle.new(HealthPotion.new(1800)),
        Bundle.new(HealthStone.new(2, 350)),
        Bundle.new(HealthStone.new(2, 500)),
        Bundle.new(HealthStone.new(2, 600)),
        Bundle.new(HealthStone.new(2, 750)),
        Bundle.new(HealthStone.new(2, 900)),
        Bundle.new(HealthStone.new(5, 350)),
        Bundle.new(HealthStone.new(5, 500)),
        Bundle.new(HealthStone.new(5, 600)),
        Bundle.new(HealthStone.new(5, 750)),
        Bundle.new(HealthStone.new(5, 900)),
        Bundle.new(Catalyst.new)
    ].freeze
end
