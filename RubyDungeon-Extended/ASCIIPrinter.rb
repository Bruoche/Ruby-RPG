class ASCIIPrinter
    PREFIX = "RubyDungeon-Extended/Assets/"
    SMALL_SUFFIX = "_small"

    def self.print(image_name)
        image_path = "#{PREFIX}#{image_name}"
        if Settings.print_small
            image_path += SMALL_SUFFIX
        end
        puts ASCIIPicture.new(image_path).get_ascii
    end

    def self.show_card(player_data, index = ASCIIPicture::EMPTY_INDEX)
        for line in ASCIIPicture.get_card(player_data, index)
            puts line
        end
        puts
    end
end
