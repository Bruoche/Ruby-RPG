class ASCIIPicture
    TRANSPARENT_CHARACTER = 'X'

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
                        @picture[y] = []
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
end
