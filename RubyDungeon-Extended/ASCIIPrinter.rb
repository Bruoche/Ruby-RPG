class ASCIIPrinter
    PREFIX = "RubyDungeon-Extended/Assets/"
    UNSCALABLE_PREFIX = "NotScalable/"
    SMALL_SUFFIX = "_small"

    def self.print(image_or_names)
        if !image_or_names.kind_of?(Array)
            image_or_names = [image_or_names]
        end
        first_image = true
        for image_or_name in image_or_names
            image_path = image_or_name
            if !image_or_name.kind_of?(Array)
                if Settings.print_small
                    image_path += SMALL_SUFFIX
                end
                image_path = "#{PREFIX}#{image_or_name}"
            end
            if first_image
                image = ASCIIPicture.new(image_path, true)
                first_image = false
            else
                image.juxtapose(ASCIIPicture.new(image_path, true))
            end
        end
        puts image.get_ascii
    end

    def self.show_card(player_data, index = ASCIIPicture::EMPTY_INDEX)
        for line in ASCIIPicture.get_card(player_data, index)
            puts line
        end
        puts
    end
end
