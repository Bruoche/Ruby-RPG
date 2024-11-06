class Teleporter < Item
    NAME = "un télé-cristal"
    SOUND = "key"
    PICTURE = "teleporter"
    USABLE_ON_OTHERS = false
    TELEPORT_DURATION = 1.2
    NO_DESTINATION = nil

    def initialize
        @value = 95
    end

    def get_description
        return "un cristal très rare dont une magie puissante émane, canalisée via un instrument magique le rendant capable de transporter son possesseur à la sortie du donjon ou auprès de ses alliés."
    end

    def use(target, user)
        if user.fighting?
            puts "Alors que vous tentez d'aggriper l'artéfact pour vous échapper, vos adversaires vous en empêchent."
            SoundManager.play("spell_fart")
            sleep Settings::BATTLE_ACTION_PAUSE
            return Player::ACTED
        else
            puts "Lorsque vous prenez la pierre en votre main, une douce chaleur en émane."
            puts
            choosen_destination = choose_destination(user)
            if choosen_destination != NO_DESTINATION
                user.set_room(choosen_destination)
                SoundManager.play("teleport")
                sleep TELEPORT_DURATION
                return {Item::RESPONSE_PLAYER_ACTED => !Player::ACTED, Item::RESPONSE_CLOSE_INVENTORY => true}
            else
                !Player::ACTED
            end
        end
    end

    def choose_destination(user)
        loop do
            puts "Où souhaitez vous aller ?"
            puts "    0) Annuler"
            puts "    1) La sortie"
            index = 2
            available_allies = []
            for player in World.get_instance.get_all_players do
                if player != user
                    if !player.exited?
                        puts "    #{index}) Rejoindre #{player.get_name}"
                        available_allies.append(player)
                        index += 1
                    end
                end
            end
            choosen_destination = Narrator.user_input
            case choosen_destination
            when "0"
                return NO_DESTINATION
            when "1"
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
