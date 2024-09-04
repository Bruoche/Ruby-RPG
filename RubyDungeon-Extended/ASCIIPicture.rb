class ASCIIPicture
    TRANSPARENT_CHARACTER = 'X'
    EMPTY_INDEX = "    "
    ICON_SIZE = 18
    ICON_HEIGHT = 7
    MONSTER_CARD_WIDTH = 32
    BOSS_CARD_WIDTH = 64
    MONSTER_HEALTH_MARGIN = 4
    DEFAULT_VERTICAL_FRAME = "|"
    DEFAULT_HORIZONTAL_FRAME = "─"
    DEFAULT_CORNER_PIECE = " "
    IMPORTANT_HORIZONTAL_FRAME = "═"
    IMPORTANT_VERTICAL_FRAME = "║"
    IMPORTANT_CORNER_PIECE = "█"
    DEAD_HORIZONTAL_FRAME = "∙"
    DEAD_VERTICAL_FRAME = ":"

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
            return ["      (aucune image \"#{picture_path}\" n'a été trouvée)"]
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
                @picture[y] = ""
            end
            @picture[y] = @picture[y].ljust(@width) + line
        end
        @width += picture.width
        if picture.height > @height
            @height = height
        end
    end

    def frame(horizontal_line = DEFAULT_HORIZONTAL_FRAME, vertical_line = DEFAULT_VERTICAL_FRAME, corner_piece = DEFAULT_CORNER_PIECE)
        new_picture = [corner_piece + (horizontal_line * @width) + corner_piece]
        @picture.each.with_index(0) do |line, y|
            new_picture.append(vertical_line + line.ljust(@width) + vertical_line)
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
        stat_string = "♣ #{monster.get_strength}"
        monster_info = ASCIIPicture.new([
            (" " * Utils.positive((width - monster.get_name.as_text.length).div(2))) + monster.get_name.as_text.capitalize,
            (" " * MONSTER_HEALTH_MARGIN) + monster.healthbar(width - (MONSTER_HEALTH_MARGIN * 2)) + (" " * MONSTER_HEALTH_MARGIN),
            (" " * MONSTER_HEALTH_MARGIN) + "(#{monster.get_life_to_string} ♥)",
            "",
            (" " * Utils.positive((width - stat_string.length).div(2))) + stat_string
        ])
        monster_info.frame
        return picture + monster_info.get_ascii
    end


    def self.battle_card(player)
        picture = player.get_icon.get_picture.get_ascii
        return [
            picture[0].ljust(ICON_SIZE) + " | " + Utils.truncate(" " + player.get_name, ICON_SIZE),
            picture[1].ljust(ICON_SIZE) + " | ",
            picture[2].ljust(ICON_SIZE) + " | " + player.healthbar(ICON_SIZE - 2),
            picture[3].ljust(ICON_SIZE) + " | " + "(#{player.health_to_string} ♥)",
            picture[4].ljust(ICON_SIZE) + " | ",
            picture[5].ljust(ICON_SIZE) + " | " + " ♣ " + player.get_strength.to_s,
            picture[6].ljust(ICON_SIZE) + " | " + " ♠ " + player.get_intelligence.to_s,
            picture[7].ljust(ICON_SIZE) + " | " + " ♦ " + player.get_agility.to_s
        ]
    end


    def self.get_status(player)
        picture = player.get_icon.get_picture.get_ascii
        return [
            picture[0].ljust(ICON_SIZE),
            picture[1].ljust(ICON_SIZE),
            picture[2].ljust(ICON_SIZE),
            picture[3].ljust(ICON_SIZE),
            picture[4].ljust(ICON_SIZE),
            picture[5].ljust(ICON_SIZE),
            picture[6].ljust(ICON_SIZE),
            picture[7].ljust(ICON_SIZE),
            " " + ("‾" * (ICON_SIZE - 2)),
            Utils.truncate(" " + player.get_name, ICON_SIZE),
            " Niv. #{player.get_level_to_string}",
            "",
            " " + player.healthbar(ICON_SIZE - 2),
            " (#{player.health_to_string} ♥)",
            "",
            " ♣ " + player.get_strength.to_s,
            " ♠ " + player.get_intelligence.to_s,
            " ♦ " + player.get_agility.to_s
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
            "|#{index} #{name} | Temps joué : #{time_played} |",
            "|‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾|‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾|",
            "| #{picture[0].ljust(ICON_SIZE)} |                                              Niveau : #{level} |",
            "| #{picture[1].ljust(ICON_SIZE)} |                                                             |",
            "| #{picture[2].ljust(ICON_SIZE)} |                                                             |",
            "| #{picture[3].ljust(ICON_SIZE)} |     Santé : #{health}           Agilité : #{agility}       |",
            "| #{picture[4].ljust(ICON_SIZE)} |                                                             |",
            "| #{picture[5].ljust(ICON_SIZE)} |                                                             |",
            "| #{picture[6].ljust(ICON_SIZE)} |     Force : #{strength}          Intelligence : #{intelligence}   |",
            "| #{picture[7].ljust(ICON_SIZE)} |                                                             |",
            "|____________________|_____________________________________________________________|"
        ]
    end
end
