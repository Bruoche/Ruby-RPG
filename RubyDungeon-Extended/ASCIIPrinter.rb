class ASCIIPrinter
    PREFIX = "RubyDungeon-Extended/Assets/"
    SMALL_SUFFIX = "_small"
    EMPTY_INDEX = "     "
    ICON_SIZE = 18
    def self.print(image_name)
        image_path = "#{PREFIX}#{image_name}"
        if Settings.print_small
            image_path += SMALL_SUFFIX
        end
        puts ASCIIPicture.new(image_path).get_ascii
    end

    def self.showCard(player_data, index = EMPTY_INDEX)
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
            parsed_time = Time.parse(time_passed_saved)
            hours = ((parsed_time.day-1)*24 + parsed_time.hour).to_s.rjust(3, '0')
            minutes = parsed_time.min.to_s.rjust(2, '0')
            seconds = parsed_time.sec.to_s.rjust(2, '0')
            time_played = "#{hours}:#{minutes}:#{seconds}"
        end
        icon = PlayerIcon.new
        icon.load(icon_data)
        picture = icon.get_picture.get_ascii
        puts " __________________________________________________________________________________"
        puts "|#{index} #{name}| Time played : #{time_played} |"
        puts "|‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾|‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾|"
        puts "| #{picture[0].ljust(ICON_SIZE)} |                                               Level : #{level} |"
        puts "| #{picture[1].ljust(ICON_SIZE)} |                                                             |"
        puts "| #{picture[2].ljust(ICON_SIZE)} |                                                             |"
        puts "| #{picture[3].ljust(ICON_SIZE)} |     Health : #{health}          Agility : #{agility}       |"
        puts "| #{picture[4].ljust(ICON_SIZE)} |                                                             |"
        puts "| #{picture[5].ljust(ICON_SIZE)} |                                                             |"
        puts "| #{picture[6].ljust(ICON_SIZE)} |     Strength : #{strength}        Inteligence : #{intelligence}   |"
        puts "| #{picture[7].ljust(ICON_SIZE)} |                                                             |"
        puts "|____________________|_____________________________________________________________|"
        puts ""
    end
end
