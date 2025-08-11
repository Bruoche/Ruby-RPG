class SpecialInteraction
    def initialize(menu_option, action)
        @menu_option = menu_option
        @action = action
    end

    def get_menu_option
        return @menu_option
    end

    def execute(character, player)
        @action.call(character, player)
    end
end
