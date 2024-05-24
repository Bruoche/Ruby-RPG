class PlayerIcon
    DEFAULT_PICTURE = 'default'
    BASE_PATH = ASCIIPrinter::PREFIX + 'PlayerCharacter/'
    def initialize
        @picture = DEFAULT_PICTURE
    end

    def get_picture
        return ASCIIPicture.new(BASE_PATH+@picture, true)
    end

    def load(data)
    end
end
