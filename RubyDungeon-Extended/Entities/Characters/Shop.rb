class Shop
    MERCHANT_PREFIX = "Characters/"
    SIGN_PREFIX = "NotScalable/"


    def self.propose_purchases_to(player)
        puts_dialog("Hello traveler, please do look up above and see if anything is catching your interest.")
    end

    def self.puts_dialog(text)
        show_sign
        show_sold_items
        puts ASCIIPicture.new(ASCIIPrinter::PREFIX + MERCHANT_PREFIX + "merchant").get_ascii
        Narrator.user_input
    end

    def self.show_sign
        for line in ASCIIPicture.new(ASCIIPrinter::PREFIX + SIGN_PREFIX + "shop_sign").get_ascii
            puts Utils.center(line, TTY::Screen.width)
        end
    end

    def self.show_sold_items
        sold_items = ASCIIRow.new
        for item in ShopInventory::ITEM_LIST
            item_display = ASCIIPicture.new(ASCIIPicture.get_selling_card(item))
            item_display.frame
            sold_items.append(item_display)
        end
        sold_items.show
    end
end
