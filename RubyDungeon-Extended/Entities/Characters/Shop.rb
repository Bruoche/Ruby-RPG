class Shop

    def self.propose_purchases_to(player)
        puts_dialog()
    end

    def self.puts_dialog(text)
        show_sign
        show_sold_items
        Narrator.user_input
    end

    def self.show_sign
        for line in ASCIIPicture.new(ASCIIPrinter::PREFIX + ASCIIPrinter::UNSCALABLE_PREFIX + "shop_sign").get_ascii
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
