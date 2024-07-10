class SaveManager
    SAVE_DIRECTORY = "saves"
    EXTENSION = ".save"
    SETTING = "settings"
    BASE_SETTINGS = ""

    def self.get_new_id
        i = 0
        loop do
            if (!(get_saves.include? i.to_s))
                return i.to_s
            else
                i += 1
            end
        end
    end

    def self.save(variables, file_name)
        if (file_name == "")
            file_name = "nameless"
        end
        save_directory = File.dirname("#{SAVE_DIRECTORY}/*")
        unless File.directory?(save_directory)
            FileUtils.mkdir_p(save_directory)
        end
        write("#{SAVE_DIRECTORY}/#{file_name.downcase}#{EXTENSION}", variables)
        puts "#{variables[:name]} saved."
    end

    def self.load(file_name)
        path = "#{SAVE_DIRECTORY}/#{file_name}#{EXTENSION}"
        if File.file?(path)
            return Hash[File.read(path).split("\n").map{|i|i.split(': ')}].transform_keys(&:to_sym)
        else
            puts "Aucun fichier nommé #{file_name}#{EXTENSION} n'a pu être trouvé"
        end
    end

    def self.get_saves
        save_directory = File.dirname("#{SAVE_DIRECTORY}/*")
        if File.directory?(save_directory)
            saves = Dir["./#{SAVE_DIRECTORY}/*"]
            saves.reject! {|file_name| !file_name.end_with?(".save")}
            if saves != nil
                saves = saves.map {|file_name| file_name.delete_prefix("./#{SAVE_DIRECTORY}/").delete_suffix("#{EXTENSION}").downcase}
                if saves != []
                    return saves
                end
            end
        end
        return nil
    end

    def self.save_settings(settings)
        save_directory = File.dirname("#{SAVE_DIRECTORY}/*")
        unless File.directory?(save_directory)
            FileUtils.mkdir_p(save_directory)
        end
        write("#{SAVE_DIRECTORY}/#{SETTING}", settings)
        puts "#{SETTING} saved."
    end

    def self.get_settings
        if File.file?("#{SAVE_DIRECTORY}/#{SETTING}")
            return Hash[File.read("#{SAVE_DIRECTORY}/#{SETTING}").split("\n").map{|i|i.split(': ')}].transform_keys(&:to_sym)
        else
            return nil
        end
    end

    def self.write(path, content)
        file = File.open(path, "w")
        content.each do |name, value|
            file.write("#{name}: #{value}\n")
        end
        file.close
    end
end
