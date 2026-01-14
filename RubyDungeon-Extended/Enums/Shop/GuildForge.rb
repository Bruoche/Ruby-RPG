class GuildForge < Shop
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
        Bundle.new(Armor.new(M30Greaves)),
        Bundle.new(Armor.new(H30Greaves)),
        Bundle.new(Armor.new(L30Greaves)),
        Bundle.new(Armor.new(M30Gauntlets)),
        Bundle.new(Armor.new(H30Gauntlets)),
        Bundle.new(Armor.new(L30Gauntlets)),
        Bundle.new(Armor.new(M30Plastron)),
        Bundle.new(Armor.new(H30Plastron)),
        Bundle.new(Armor.new(L30Plastron)),
        Bundle.new(Armor.new(M30Helm)),
        Bundle.new(Armor.new(H30Helm)),
        Bundle.new(Armor.new(L30Helm)),
        Bundle.new(Armor.new(M40Greaves)),
        Bundle.new(Armor.new(H40Greaves)),
        Bundle.new(Armor.new(L40Greaves)),
        Bundle.new(Armor.new(M40Gauntlets)),
        Bundle.new(Armor.new(H40Gauntlets)),
        Bundle.new(Armor.new(L40Gauntlets)),
        Bundle.new(Armor.new(M40Plastron)),
        Bundle.new(Armor.new(H40Plastron)),
        Bundle.new(Armor.new(L40Plastron)),
        Bundle.new(Armor.new(M40Helm)),
        Bundle.new(Armor.new(H40Helm)),
        Bundle.new(Armor.new(L40Helm)),
        Bundle.new(Armor.new(M50Greaves)),
        Bundle.new(Armor.new(H50Greaves)),
        Bundle.new(Armor.new(L50Greaves)),
        Bundle.new(Armor.new(M50Gauntlets)),
        Bundle.new(Armor.new(H50Gauntlets)),
        Bundle.new(Armor.new(L50Gauntlets)),
        Bundle.new(Armor.new(M50Plastron)),
        Bundle.new(Armor.new(H50Plastron)),
        Bundle.new(Armor.new(L50Plastron)),
        Bundle.new(Armor.new(M50Helm)),
        Bundle.new(Armor.new(H50Helm)),
        Bundle.new(Armor.new(L50Helm))
    ].freeze
end
