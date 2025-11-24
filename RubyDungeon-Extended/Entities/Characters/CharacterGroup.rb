class CharacterGroup
    def initialize(npcs, room)
        @members = []
        for character_data in npcs
            @members.append(Character.new(character_data, room))
        end
    end

    def get_interactables
        interactables = []
        for character in @members
            if !character.died?
                interactables.append(character)
            end
        end
        return interactables
    end

    def get_fightings
        fighting = []
        for character in @members
            if character.fighting?
                fighting.append(character)
            end
        end
        return fighting
    end

    def get_description
        descriptions = []
        for character in get_interactables
            descriptions.append(character.get_description)
        end
        return descriptions
    end

    def any?
        for character in @members
            if !character.died?
                return true
            end
        end
        return false
    end
end
