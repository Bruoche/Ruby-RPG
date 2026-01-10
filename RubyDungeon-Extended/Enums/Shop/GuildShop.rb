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
        Bundle.new(HealthPotion.new(35), 1),
        Bundle.new(HealthPotion.new(100), 1),
        Bundle.new(HealthPotion.new(200), 1),
        Bundle.new(HealthPotion.new(350), 1),
        Bundle.new(HealthPotion.new(500), 1),
        Bundle.new(HealthStone.new(2, 20), 1),
        Bundle.new(HealthStone.new(2, 50), 1),
        Bundle.new(HealthStone.new(2, 100), 1),
        Bundle.new(HealthStone.new(2, 175), 1),
        Bundle.new(HealthStone.new(2, 250), 1),
        Bundle.new(HealthStone.new(5, 20), 1),
        Bundle.new(HealthStone.new(5, 50), 1),
        Bundle.new(HealthStone.new(5, 100), 1),
        Bundle.new(HealthStone.new(5, 175), 1),
        Bundle.new(HealthStone.new(5, 250), 1),
        Bundle.new(HealthPotion.new(700), 1),
        Bundle.new(HealthPotion.new(950), 1),
        Bundle.new(HealthPotion.new(1200), 1),
        Bundle.new(HealthPotion.new(1500), 1),
        Bundle.new(HealthPotion.new(1800), 1),
        Bundle.new(HealthStone.new(2, 350), 1),
        Bundle.new(HealthStone.new(2, 500), 1),
        Bundle.new(HealthStone.new(2, 600), 1),
        Bundle.new(HealthStone.new(2, 750), 1),
        Bundle.new(HealthStone.new(2, 900), 1),
        Bundle.new(HealthStone.new(5, 350), 1),
        Bundle.new(HealthStone.new(5, 500), 1),
        Bundle.new(HealthStone.new(5, 600), 1),
        Bundle.new(HealthStone.new(5, 750), 1),
        Bundle.new(HealthStone.new(5, 900), 1),
        Bundle.new(Catalyst.new, 1)
    ].freeze
end
