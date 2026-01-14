class GoblinForge < Shop
    BUY_DIALOG = LocaleKey::GOBLIN_BLACKSMITH_THANK
    NOT_ENOUGH_FUNDS_DIALOG = LocaleKey::GOBLIN_BLACKSMITH_FUND_INSUFFICIENT
    ONE_NOT_ENOUGH_DIALOG = LocaleKey::GOBLIN_BLACKSMITH_FUND_INSUFFICIENT
    NO_MONEY_DIALOG = LocaleKey::GOBLIN_BLACKSMITH_FUND_INSUFFICIENT
    SOLD_DIALOG = LocaleKey::GOBLIN_BLACKSMITH_THANK
    RETAIL_PERCENT = 90
    MUSIC = 'Goblin Village'
    SHOPKEEPER = GoblinBlacksmith
    SECOND_OPTION_LABEL = LocaleKey::UPGRADE_LABEL
    SECOND_OPTION_ACTION = -> (player, shopkeeper, shop) {
        shop.ask_upgrade(player)
    }
    INVENTORY = [
        Bundle.new(DetoxJuice.new(10)),
        Bundle.new(Armor.new(M60Greaves)),
        Bundle.new(Armor.new(H60Greaves)),
        Bundle.new(Armor.new(L60Greaves)),
        Bundle.new(Armor.new(M60Gauntlets)),
        Bundle.new(Armor.new(H60Gauntlets)),
        Bundle.new(Armor.new(L60Gauntlets)),
        Bundle.new(Armor.new(M60Plastron)),
        Bundle.new(Armor.new(H60Plastron)),
        Bundle.new(Armor.new(L60Plastron)),
        Bundle.new(Armor.new(M60Helm)),
        Bundle.new(Armor.new(H60Helm)),
        Bundle.new(Armor.new(L60Helm)),
    ].freeze
end
