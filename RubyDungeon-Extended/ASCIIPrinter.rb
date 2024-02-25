class ASCIIPrinter
    PREFIX = "Assets/"
    SMALL_SUFFIX = "_small"
    def self.print(image_name)
        image_path = "RubyDungeon-Extended/Assets/#{image_name}"
        if Settings.print_small
            image_path += "_small"
        end
        if File.file?(image_path)
            puts File.readlines(image_path)
        else
            puts "      (aucune image \"#{image_path}\" n'a été trouvée)"
        end
    end
end
