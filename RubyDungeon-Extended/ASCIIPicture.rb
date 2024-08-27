class ASCIIPicture
    TRANSPARENT_CHARACTER = 'X'
    EMPTY_INDEX = "     "
    ICON_SIZE = 18

    def initialize(picture_path, single_line = false)
        @picture = read(picture_path, single_line);
    end

    def read(picture_path, single_line = false)
        if File.file?(picture_path)
            return File.readlines(picture_path, chomp: single_line);
        else
            return ["      (aucune image \"#{picture_path}\" n'a été trouvée)"]
        end
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
        end
    end

    def self.get_card(player_data, index = EMPTY_INDEX)
        if (index != EMPTY_INDEX)
            index = index.to_s.rjust(4) + '|'
        end
        name =                      player_data[:name].to_s.ljust(50)
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
