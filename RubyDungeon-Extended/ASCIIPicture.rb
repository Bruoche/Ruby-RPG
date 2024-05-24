class ASCIIPicture
    def initialize(picture_path, single_line = false)
        @picture = read(picture_path, single_line);
    end

    def read(picture_path, single_line = false)
        if File.file?(picture_path)
            return File.readlines(picture_path, chomp: single_line);
        else
            return "      (aucune image \"#{picture_path}\" n'a été trouvée)"
        end
    end

    def get_ascii()
        return @picture
    end
end
