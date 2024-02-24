require "fileutils"
require "./Enums/Items/HealthPotion"
require "./Enums/Items/Bandage"

class SaveManager
    SAVE_DIRECTROY = "saves"
    EXTENSION = ".save"
    def self.save(variables, file_name)
        if (file_name == "")
            file_name = "nameless"
        end
        save_directory = File.dirname("#{SAVE_DIRECTROY}/*")
        unless File.directory?(save_directory)
            FileUtils.mkdir_p(save_directory)
        end
        save_file = File.open("#{SAVE_DIRECTROY}/#{file_name}#{EXTENSION}", "w")
        variables.each do |name, value|
            save_file.write("#{name}: #{value}\n")
        end
        save_file.close
        puts "#{file_name} saved."
    end

    def self.load(file_name)
        if File.file?("#{SAVE_DIRECTROY}/#{file_name}#{EXTENSION}")
            return Hash[File.read("#{SAVE_DIRECTROY}/#{file_name}#{EXTENSION}").split("\n").map{|i|i.split(': ')}].transform_keys(&:to_sym)
        else
            puts "Aucun fichier nommé #{file_name}.save n'a pu être trouvé"
        end
    end

    def self.get_saves()
        save_directory = File.dirname("#{SAVE_DIRECTROY}/*")
        if File.directory?(save_directory)
            saves = Dir["./#{SAVE_DIRECTROY}/*"]
            saves.reject! {|file_name| !file_name.end_with?(".save")}
            if saves != nil
                saves = saves.map {|file_name| file_name.delete_prefix("./#{SAVE_DIRECTROY}/").delete_suffix("#{EXTENSION}")}
                if saves != []
                    return saves
                end
            end
        end
        return nil
    end
end