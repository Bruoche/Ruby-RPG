class Teleporter < Item
    NAME = LocaleKey::TELEPORTER_NAME
    NAME_PLURAL = LocaleKey::TELEPORTER_PLURAL
    SOUND = 'key'
    PICTURE = 'teleporter'
    USABLE_ON_OTHERS = false
    TELEPORT_DURATION = 1.2
    NO_DESTINATION = nil

    def initialize
        @value = 69
    end

    def get_description
        return LocaleKey::TELEPORTER_DESCRIPTION
    end

    def use(target, user)
        if user.fighting?
            Narrator.teleporter_fail
            SoundManager.play('spell_fart')
            sleep Settings.get_pause_duration
            return Player::ACTED
        else
            Narrator.teleporter_start
            choosen_destination = choose_destination(user)
            if choosen_destination != NO_DESTINATION
                user.set_room(choosen_destination)
                SoundManager.play('teleport')
                sleep TELEPORT_DURATION
                return {Item::RESPONSE_PLAYER_ACTED => !Player::ACTED, Item::RESPONSE_CLOSE_INVENTORY => true}
            else
                !Player::ACTED
            end
        end
    end

    def choose_destination(user)
        loop do
            Narrator.teleporter_ask_destination
            index = 2
            available_allies = []
            for player in World.get_instance.get_all_players do
                if player != user
                    if !player.exited?
                        Narrator.teleporter_ask_destination_allies(index, player.get_name)
                        available_allies.append(player)
                        index += 1
                    end
                end
            end
            choosen_destination = Narrator.user_input
            case choosen_destination
            when '0'
                return NO_DESTINATION
            when '1'
                return World.get_instance.get_entrance
            else
                choosen_ally = choosen_destination.to_i - 2
                if (choosen_ally >= 0) && (choosen_ally < available_allies.length)
                    return available_allies[choosen_ally].get_room
                else
                    Narrator.unsupported_choice_error
                end
            end
        end
    end
end
