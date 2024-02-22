class ASCIIPrinter
    def self.print(image_name)
        puts File.readlines("Assets/#{image_name}")
    end
end
