class GoblinForge < Shop
    BUY_DIALOG = LocaleKey::BLACKSMITH_THANK
    NOT_ENOUGH_FUNDS_DIALOG = LocaleKey::BLACKSMITH_FUND_INSUFFICIENT
    ONE_NOT_ENOUGH_DIALOG = LocaleKey::BLACKSMITH_COIN_INSUFFICIENT
    NO_MONEY_DIALOG = LocaleKey::BLACKSMITH_NO_MONEY
    SOLD_DIALOG = LocaleKey::BLACKSMITH_PURCHASE
    RETAIL_PERCENT = 90
    MUSIC = 'Adventurers Waltz'
    SHOPKEEPER = Blacksmith
    SECOND_OPTION_LABEL = LocaleKey::UPGRADE_LABEL
    SECOND_OPTION_ACTION = -> (player, shopkeeper, shop) {
        shop.ask_upgrade(player)
    }
    INVENTORY = [
        Bundle.new(DetoxJuice.new(10), 1),
        Bundle.new(Armor.new(M60Greaves), 1),
        Bundle.new(Armor.new(H60Greaves), 1),
        Bundle.new(Armor.new(L60Greaves), 1),
        Bundle.new(Armor.new(M60Gauntlets), 1),
        Bundle.new(Armor.new(H60Gauntlets), 1),
        Bundle.new(Armor.new(L60Gauntlets), 1),
        Bundle.new(Armor.new(M60Plastron), 1),
        Bundle.new(Armor.new(H60Plastron), 1),
        Bundle.new(Armor.new(L60Plastron), 1),
        Bundle.new(Armor.new(M60Helm), 1),
        Bundle.new(Armor.new(H60Helm), 1),
        Bundle.new(Armor.new(L60Helm), 1),
    ].freeze
end
