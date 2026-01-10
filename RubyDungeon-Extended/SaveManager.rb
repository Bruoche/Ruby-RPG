class SaveManager
    SAVE_DIRECTORY = 'saves'
    EXTENSION = '.save'
    SETTING = 'settings'
    LOGS = 'logs'
    BASE_SETTINGS = ''
    NO_EXISTING_SAVEFILE = nil

    def self.get_new_id
        i = 0
        saves = get_saves
        loop do
            if (saves == nil) || (!(saves.include? i.to_s))
                return i.to_s
            else
                i += 1
            end
        end
    end

    def self.save(data, file_name = NO_EXISTING_SAVEFILE)
        if (file_name == NO_EXISTING_SAVEFILE)
            file_name = get_new_id
        end
        save_directory = File.dirname(SAVE_DIRECTORY + '/*')
        unless File.directory?(save_directory)
            FileUtils.mkdir_p(save_directory)
        end
        write("#{SAVE_DIRECTORY}/#{file_name.downcase}#{EXTENSION}", data)
        return file_name
    end

    def self.save_player(player)
        file_name = player.get_save
        if file_name == nil
            file_name = SaveManager.get_new_id
        end
        SaveManager.save(player.get_save_data, file_name)
        return file_name
    end

    def self.load(file_name)
        path = "#{SAVE_DIRECTORY}/#{file_name}#{EXTENSION}"
        if File.file?(path)
            return Hash[File.read(path).split("\n").map{|i|i.split(': ')}].transform_keys(&:to_sym)
        else
            Narrator.no_file_found_error(file_name, EXTENSION)
        end
    end

    def self.get_saves
        save_directory = File.dirname(SAVE_DIRECTORY + '/*')
        if File.directory?(save_directory)
            saves = Dir["./#{SAVE_DIRECTORY}/*"]
            saves.reject! {|file_name| !file_name.end_with?(EXTENSION)}
            if saves != nil
                saves = saves.map {|file_name| file_name.delete_prefix("./#{SAVE_DIRECTORY}/").delete_suffix(EXTENSION).downcase}
                if saves != []
                    saves = saves.sort_by {|e| e.split(/(\d+)/).map {|a| a =~ /\d+/ ? a.to_i : a }}
                    return saves
                end
            end
        end
        return nil
    end

    def self.settings_directory_made?
        return File.file?("#{SAVE_DIRECTORY}/#{SETTING}")
    end

    def self.save_settings(settings)
        save_directory = File.dirname(SAVE_DIRECTORY + '/*')
        unless File.directory?(save_directory)
            FileUtils.mkdir_p(save_directory)
        end
        write("#{SAVE_DIRECTORY}/#{SETTING}", settings)
    end

    def self.get_settings
        if File.file?("#{SAVE_DIRECTORY}/#{SETTING}")
            return Hash[File.read("#{SAVE_DIRECTORY}/#{SETTING}").split("\n").map{|i|i.split(': ')}].transform_keys(&:to_sym)
        else
            return nil
        end
    end

    def self.log(error_trace)
        save_directory = File.dirname("#{SAVE_DIRECTORY}/*")
        unless File.directory?(save_directory)
            FileUtils.mkdir_p(save_directory)
        end
        path = "#{SAVE_DIRECTORY}/#{LOGS}"
        if File.file?(path)
            current_content = File.read(path)
        else
            current_content = ''
        end
        write(path, current_content + error_trace)
    end

    def self.write(path, content)
        file = File.open(path, "w")
        if content.is_a? String
            file.write(content)
        else
            content.each do |name, value|
                file.write("#{name}: #{value}\n")
            end
        end
        file.close
    end
end
