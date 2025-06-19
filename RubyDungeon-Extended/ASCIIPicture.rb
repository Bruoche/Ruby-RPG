class ASCIIPicture
    TRANSPARENT_CHARACTER = 'X'
    EMPTY_INDEX = '     '
    ICON_SIZE = 18
    ICON_HEIGHT = 7
    ITEM_ICON_WIDTH = 32
    MONSTER_CARD_WIDTH = 32
    BOSS_CARD_WIDTH = 64
    MONSTER_HEALTH_MARGIN = 4
    DEFAULT_VERTICAL_FRAME = '|'
    DEFAULT_HORIZONTAL_FRAME = '─'
    DEFAULT_CORNER_PIECE = ' '
    IMPORTANT_HORIZONTAL_FRAME = '═'
    IMPORTANT_VERTICAL_FRAME = '║'
    IMPORTANT_CORNER_PIECE = '█'
    DEAD_HORIZONTAL_FRAME = '∙'
    DEAD_VERTICAL_FRAME = ':'
    NO_INDEX = nil

    def initialize(picture_path_or_ascii, single_line = true)
        if picture_path_or_ascii.kind_of?(Array)
            @picture = picture_path_or_ascii
        else
            @picture = read(picture_path_or_ascii, single_line);
        end
        @height = @picture.length
        @width = 0
        for line in @picture
            if line.length > @width
                @width = line.length
            end
        end
    end

    def read(picture_path, single_line = false)
        if File.file?(picture_path)
            return File.readlines(picture_path, chomp: single_line);
        else
            return [format(Locale.get_localized(LocaleKey::NO_IMAGE_FOUND), picture_path)]
        end
    end

    def width
        return @width
    end

    def height
        return @height
    end

    def get_ascii
        return @picture
    end

    def superpose(picture)
        picture.get_ascii.each.with_index(0) do |line, y|
            line.each_char.with_index(0) do |char, x|
                if char != TRANSPARENT_CHARACTER
                    if @picture[y] == nil
                        @picture[y] = ''
                    end
                    if @picture[y].length > x
                        @picture[y][x] = char
                    else
                        @picture[y] << char
                    end
                end
            end
            if line.length > @width
                @width = line.length
            end
        end
        @height = @picture.length
    end

    def juxtapose(picture)
        picture.get_ascii.each.with_index(0) do |line, y|
            if @picture[y] == nil
                @picture[y] = ''
            end
            @picture[y] = @picture[y].ljust(@width) + line
        end
        @width += picture.width
        if picture.height > @height
            @height = height
        end
    end

    def replace_char(y_coordinate, x_coordinate, character)
        @picture[y_coordinate][x_coordinate] = character
    end

    def frame(horizontal_line = DEFAULT_HORIZONTAL_FRAME, vertical_line = DEFAULT_VERTICAL_FRAME, corner_piece = DEFAULT_CORNER_PIECE)
        new_picture = [corner_piece + (horizontal_line * @width) + corner_piece]
        @picture.each.with_index(0) do |line, y|
            adjusted_line = line.gsub(/[\u200B-\u200D\uFEFF\u200D\uFE0E]/, '')
            new_picture.append(vertical_line + adjusted_line.ljust(@width) + vertical_line)
        end
        new_picture.append(corner_piece + (horizontal_line * @width) + corner_piece)
        @picture = new_picture
        @width += 2
        @height += 2
    end

    def self.monster_card(monster)
        if monster.is_a?(Boss)
            width = BOSS_CARD_WIDTH
        else
            width = MONSTER_CARD_WIDTH
        end
        picture = monster.get_picture.get_ascii
        stat_string = '♣ ' + monster.get_strength.to_s
        if monster.get_intelligence > 0
            stat_string = stat_string + ' ♠ ' + monster.get_intelligence.to_s
        end
        monster_info = ASCIIPicture.new([
            (' ' * Utils.positive((width - monster.get_name.as_text.length).div(2))) + Utils.truncate(monster.get_name.as_text.capitalize, width),
            (' ' * MONSTER_HEALTH_MARGIN) + monster.healthbar(width - (MONSTER_HEALTH_MARGIN * 2)) + (' ' * MONSTER_HEALTH_MARGIN),
            (' ' * MONSTER_HEALTH_MARGIN) + "(#{monster.get_life_to_string} ♥)",
            Utils.center(" " + monster.status_handler.get_icons.strip, width),
            (' ' * Utils.positive((width - stat_string.length).div(2))) + stat_string
        ])
        monster_info.frame
        return picture + monster_info.get_ascii
    end


    def self.battle_card(player)
        picture = player.get_icon.get_ascii
        strength_string = ' ♣ ' + player.get_strength_to_string
        physical_defense_string = player.get_defense_to_string.rjust((ICON_SIZE - 2) - strength_string.length)
        return [
            picture[0].ljust(ICON_SIZE) + ' | ' + Utils.truncate(' ' + player.get_name, ICON_SIZE),
            picture[1].ljust(ICON_SIZE) + ' | ',
            picture[2].ljust(ICON_SIZE) + ' | ' + player.healthbar(ICON_SIZE - 2) + ' ',
            picture[3].ljust(ICON_SIZE) + ' | ' + "(#{player.health_to_string} ♥)",
            picture[4].ljust(ICON_SIZE) + ' | ' + player.get_status_icons,
            picture[5].ljust(ICON_SIZE) + ' | ' + strength_string + physical_defense_string,
            picture[6].ljust(ICON_SIZE) + ' | ' + ' ♠ ' + player.get_intelligence.to_s,
            picture[7].ljust(ICON_SIZE) + ' | ' + ' ♦ ' + player.get_agility_to_string
        ]
    end


    def self.get_status(player)
        picture = player.get_icon.get_ascii
        return [
            picture[0].ljust(ICON_SIZE),
            picture[1].ljust(ICON_SIZE),
            picture[2].ljust(ICON_SIZE),
            picture[3].ljust(ICON_SIZE),
            picture[4].ljust(ICON_SIZE),
            picture[5].ljust(ICON_SIZE),
            picture[6].ljust(ICON_SIZE),
            picture[7].ljust(ICON_SIZE),
            ' ' + ('‾' * (ICON_SIZE - 2)),
            Utils.truncate(' ' + player.get_name, ICON_SIZE),
            Locale.get_localized(LocaleKey::LEVEL_ABBREVIATION) + player.get_level_to_string,
            '',
            ' ' + player.healthbar(ICON_SIZE - 2),
            " (#{player.health_to_string} ♥)",
            '',
            (' ♣ ' + player.get_strength_to_string).ljust(ICON_SIZE.div(2)) + player.get_defense_to_string,
            (' ♠ ' + player.get_intelligence.to_s).ljust(ICON_SIZE.div(2)),
            ' ♦ ' + player.get_agility_to_string,
            ' ' + player.get_status_icons,
            ' ' + player.get_quantity_of(Shop::DEFAULT_CURRENCY).to_s + ' ¤'
        ]
    end

    def self.get_card(player_data, index = EMPTY_INDEX)
        if (index != EMPTY_INDEX)
            index = index.to_s.rjust(4) + '|'
        end
        name =                      Utils.truncate(player_data[:name].to_s, 50).ljust(50)
        health =                    player_data[:health].to_s.ljust(10)
        strength =                  player_data[:strength].to_s.ljust(10)
        intelligence =              player_data[:intelligence].to_s.ljust(10)
        agility =                   player_data[:agility].to_s.ljust(10)
        level =                     player_data[:level].to_s.ljust(5)
        time_passed_saved =         player_data[:time_played]
        icon_data =                 player_data[:picture]
        if time_passed_saved == nil
            time_played = '000:00:00'
        else
            if time_passed_saved.instance_of? String
                parsed_time = Time.parse(time_passed_saved)
            else
                parsed_time = time_passed_saved
            end
            hours = ((parsed_time.day-1)*24 + parsed_time.hour).to_s.rjust(3, '0')
            minutes = parsed_time.min.to_s.rjust(2, '0')
            seconds = parsed_time.sec.to_s.rjust(2, '0')
            time_played = "#{hours}:#{minutes}:#{seconds}"
        end
        icon = PlayerIcon.new
        icon.load(icon_data)
        picture = icon.get_picture.get_ascii
        return [
            " __________________________________________________________________________________ ",
            "|#{index} #{name   } | #{Locale.get_localized(LocaleKey::TIME_PLAYED).ljust(13)     }#{time_played} |",
            "|‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾|‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾|",
            "| #{picture[0].ljust(ICON_SIZE)} |                                             #{Locale.get_localized(LocaleKey::CARD_LEVEL).rjust(10)}#{level} |",
            "| #{picture[1].ljust(ICON_SIZE)} |                                                             |",
            "| #{picture[2].ljust(ICON_SIZE)} |                                                             |",
            "| #{picture[3].ljust(ICON_SIZE)} |   #{Locale.get_localized(LocaleKey::CARD_HEALTH).rjust(10)  }#{health  }     #{Locale.get_localized(LocaleKey::CARD_AGILITY).rjust(20)     }#{agility     }   |",
            "| #{picture[4].ljust(ICON_SIZE)} |                                                             |",
            "| #{picture[5].ljust(ICON_SIZE)} |                                                             |",
            "| #{picture[6].ljust(ICON_SIZE)} |   #{Locale.get_localized(LocaleKey::CARD_STRENGTH).rjust(10)}#{strength}     #{Locale.get_localized(LocaleKey::CARD_INTELLIGENCE).rjust(20)}#{intelligence}   |",
            "| #{picture[7].ljust(ICON_SIZE)} |                                                             |",
            "|____________________|_____________________________________________________________|"
        ]
    end

    def self.get_selling_card(item, index = NO_INDEX, price_percentage = 100)
        if index != NO_INDEX
            index_string = index.to_s + ' | '
        else
            index_string = ''
        end
        if price_percentage > 0
            price_string = Locale.get_localized(LocaleKey::CARD_PRICE) + item.get_value_to_string(price_percentage) + ' ¤'
        else
            price_string = ''
        end
        text_card = ASCIIPicture.new([
            Utils.truncate(index_string + Locale.get_localized(item.get_name).capitalize, (ITEM_ICON_WIDTH - 2)).ljust(ITEM_ICON_WIDTH - 2),
            price_string,
            ''
        ] + Utils.multiline(' ' + item.get_card_description.capitalize, (ITEM_ICON_WIDTH - 2)))
        text_card.frame(' ', ' ')
        return item.get_picture.get_ascii + text_card.get_ascii
    end

    def self.get_upgrading_card(item, index = NO_INDEX, upgrade_tax = 0)
        upgraded_item = Item.load(item.get_save_data)
        upgraded_item.upgrade
        if index != NO_INDEX
            index_string = index.to_s + ' | '
        else
            index_string = ''
        end
        price_string = Locale.get_localized(LocaleKey::CARD_PRICE) + item.upgrade_cost(upgrade_tax).to_s + ' ¤'
        upgrade_suffix = item.get_upgrade_suffix
        text_card = ASCIIPicture.new([
            Utils.truncate(index_string + Locale.get_localized(item.get_plain_name).capitalize, ITEM_ICON_WIDTH - (2 + upgrade_suffix.length)) + upgrade_suffix,
            price_string,
            '',
            Utils.center('⛊  ' + item.get_defense.to_s + ' -> ⛊  ' + upgraded_item.get_defense.to_s, ITEM_ICON_WIDTH - 2),
            Utils.center(item.get_weight.to_s + ' Kg -> ' + upgraded_item.get_weight.to_s + ' Kg', ITEM_ICON_WIDTH - 2)
        ])
        text_card.frame(' ', ' ')
        return item.get_picture.get_ascii + text_card.get_ascii
    end
end
