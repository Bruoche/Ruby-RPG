module Paddings
    NO_PADDING = 'no_padding'
    HALF_PADDING = 'half_padding'
    FULL_PADDING = 'full_padding'
end

module Alignments
    LEFT = Paddings::NO_PADDING
    RIGHT = Paddings::FULL_PADDING
    CENTER = Paddings::HALF_PADDING
end

module VerticalAlignments
    TOP = Paddings::NO_PADDING
    BOTTOM = Paddings::FULL_PADDING
    CENTER = Paddings::HALF_PADDING
end

class ASCIIPrinter
    PREFIX = 'RubyDungeon-Extended/Assets/'
    UNSCALABLE_PREFIX = 'NotScalable/'
    SMALL_SUFFIX = '_small'

    def self.print(image_or_names, alignment = Alignments::CENTER)
        if !image_or_names.kind_of?(Array)
            image_or_names = [image_or_names]
        end
        first_image = true
        for image_or_name in image_or_names
            if !image_or_name.kind_of?(Array)
                if Settings.print_small
                    name = image_or_name + SMALL_SUFFIX
                else
                    name = image_or_name
                end
                image_or_path = PREFIX + name
            else
                image_or_path = image_or_name
            end
            if first_image
                image = ASCIIPicture.new(image_or_path, true)
                first_image = false
            else
                image.juxtapose(ASCIIPicture.new(image_or_path, true))
            end
        end
        padding = " " * TextFormatter.get_padding_for(image.width, alignment)
        for line in image.get_ascii
            Narrator.write(padding + line)
        end
    end

    def self.show_card(player_data, index = ASCIIPicture::EMPTY_INDEX)
        Narrator.write(ASCIIPicture.get_card(player_data, index))
        Narrator.add_space_of(1)
    end
end
