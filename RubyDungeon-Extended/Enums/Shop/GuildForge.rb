class GuildForge < Shop
    BUY_DIALOG = LocaleKey::MERCHANT_THANK
    NOT_ENOUGH_FUNDS_DIALOG = LocaleKey::MERCHANT_FUND_INSUFFICIENT
    ONE_NOT_ENOUGH_DIALOG = LocaleKey::MERCHANT_COIN_INSUFFICIENT
    NO_MONEY_DIALOG = LocaleKey::MERCHANT_NO_MONEY
    SOLD_DIALOG = LocaleKey::MERCHANT_PURCHASE
    RETAIL_PERCENT = 90
    MUSIC = 'Adventurers Waltz'
    SHOPKEEPER = Alchemist
    INVENTORY = [
        Bundle.new(Armor.new(M30Greaves), 1),
        Bundle.new(Armor.new(H30Greaves), 1),
        Bundle.new(Armor.new(L30Greaves), 1),
        Bundle.new(Armor.new(M30Gauntlets), 1),
        Bundle.new(Armor.new(H30Gauntlets), 1),
        Bundle.new(Armor.new(L30Gauntlets), 1),
        Bundle.new(Armor.new(M30Plastron), 1),
        Bundle.new(Armor.new(H30Plastron), 1),
        Bundle.new(Armor.new(L30Plastron), 1),
        Bundle.new(Armor.new(M30Helm), 1),
        Bundle.new(Armor.new(H30Helm), 1),
        Bundle.new(Armor.new(L30Helm), 1),
        Bundle.new(Armor.new(M40Greaves), 1),
        Bundle.new(Armor.new(H40Greaves), 1),
        Bundle.new(Armor.new(L40Greaves), 1),
        Bundle.new(Armor.new(M40Gauntlets), 1),
        Bundle.new(Armor.new(H40Gauntlets), 1),
        Bundle.new(Armor.new(L40Gauntlets), 1),
        Bundle.new(Armor.new(M40Plastron), 1),
        Bundle.new(Armor.new(H40Plastron), 1),
        Bundle.new(Armor.new(L40Plastron), 1),
        Bundle.new(Armor.new(M40Helm), 1),
        Bundle.new(Armor.new(H40Helm), 1),
        Bundle.new(Armor.new(L40Helm), 1),
        Bundle.new(Armor.new(M50Greaves), 1),
        Bundle.new(Armor.new(H50Greaves), 1),
        Bundle.new(Armor.new(L50Greaves), 1),
        Bundle.new(Armor.new(M50Gauntlets), 1),
        Bundle.new(Armor.new(H50Gauntlets), 1),
        Bundle.new(Armor.new(L50Gauntlets), 1),
        Bundle.new(Armor.new(M50Plastron), 1),
        Bundle.new(Armor.new(H50Plastron), 1),
        Bundle.new(Armor.new(L50Plastron), 1),
        Bundle.new(Armor.new(M50Helm), 1),
        Bundle.new(Armor.new(H50Helm), 1),
        Bundle.new(Armor.new(L50Helm), 1)
    ].freeze
end
