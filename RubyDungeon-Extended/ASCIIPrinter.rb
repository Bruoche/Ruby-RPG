class ASCIIPrinter
    PREFIX = "RubyDungeon-Extended/Assets/"
    SMALL_SUFFIX = "_small"
    def self.print(image_name)
        image_path = "#{PREFIX}#{image_name}"
        if Settings.print_small
            image_path += SMALL_SUFFIX
        end
        puts get_image(image_path)
    end

    def self.showCard(player_data, index)
        index = index.to_s.rjust(4)
        name =                     player_data[:name].ljust(50)
        health =                   player_data[:health].ljust(10)
        strength =                 player_data[:strength].ljust(10)
        intelligence =             player_data[:intelligence].ljust(10)
        agility =                  player_data[:agility].ljust(10)
        level =                    player_data[:level].ljust(5)
        time_passed_saved =        player_data[:time_played]
        if time_passed_saved == nil
            time_played = '000:00:00'
        else
            parsed_time = Time.parse(time_passed_saved)
            hours = ((parsed_time.day-1)*24 + parsed_time.hour).to_s.rjust(3, '0')
            minutes = parsed_time.min.to_s.rjust(2, '0')
            seconds = parsed_time.sec.to_s.rjust(2, '0')
            time_played = "#{hours}:#{minutes}:#{seconds}"
        end
        puts " __________________________________________________________________________________"
        puts "|#{index}| #{name}| Time played : #{time_played} |"
        puts "|‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾|‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾|"
        puts "|     g▓█▓▒▒▒▒▒@,    |                                               Level : #{level} |"
        puts "|    ▒╣▒▒▄▄▄▄▄▄╫╣░   |                                                             |"
        puts "|    ╟█▀▀████▀▀▓▌`   |                                                             |"
        puts "|   ╬▓█▌▒▒█▒▒╣▒╣░¡   |     Health : #{health}          Agility : #{agility}       |"
        puts "|   ╙▓█████▒▒▓█▌░'   |                                                             |"
        puts "|     ▀██▓▒░▒██╜     |                                                             |"
        puts "|    ▄╖▒█▓▄▄▒▒▒╖╓    |     Strength : #{strength}        Inteligence : #{intelligence}   |"
        puts "| ▄████▒░░░░░▒▒▒▒▓█▄ |                                                             |"
        puts "|____________________|_____________________________________________________________|"
    end

    private

    def self.get_image(image_path)
      if File.file?(image_path)
          return File.readlines(image_path)
      else
          return "      (aucune image \"#{image_path}\" n'a été trouvée)"
      end
    end
end
