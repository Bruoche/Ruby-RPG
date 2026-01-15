class Chalk < Item
    NAME = LocaleKey::CHALK_NAME
    PLURAL_NAME = LocaleKey::CHALK_PLURAL
    SOUND = 'chalk'
    PICTURE = 'chalk'
    USABLE_ON_OTHERS = false

    def initialize
        @value = 1
    end

    def get_description
        return LocaleKey::CHALK_DESCRIPTION
    end

    def use(target, user)
        marked_room = Narrator.ask(LocaleKey::ASK_ROOM_TO_MARK, user.get_room.get_adjacent_rooms, -> (room, i){user.get_room.to_string(room, i, LocaleKey::GO_BACK)}, user.get_name, Narrator::RETURN_BUTTON, Narrator::CALL_WITH_INDEX)
        if marked_room != Narrator::RETURN_BUTTON
            Narrator.write(LocaleKey::ASK_TEXT_WRITTEN)
            text_choosen = Narrator.user_input(user.get_name)
            Narrator.write(format(Locale.get_localized(LocaleKey::CHALK_USE), user.get_name))
            play_sound
            user.get_room.mark_door_of(marked_room, text_choosen)
        end
        return !Player::ACTED
    end
end
