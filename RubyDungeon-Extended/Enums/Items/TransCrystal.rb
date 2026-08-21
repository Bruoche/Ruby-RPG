class TransCrystal < Item
    NAME = LocaleKey::AMETHYST_NAME
    PLURAL_NAME = LocaleKey::AMETHYST_PLURAL
    SOUND = 'gold_coins'
    PICTURE = 'amethyst'
    USABLE_ON_OTHERS = false
    DROP_CHANCE_SCALABLE = false
    DROP_QUANTITY_SCALABLE = false
    TRANSFORMATION_DURATION = 3.6

    def initialize
        @value = 20
    end

    def get_description
        return LocaleKey::AMETHYST_DESCRIPTION
    end

    def use(target, user)
        user.prep_respec
        new_name = user.get_name
        new_icon = PlayerIcon.new
        new_icon.load(user.get_icon_data)
        character_creator = CharacterCreator.new(new_name)
        loop do
            change_card = new_icon.get_picture
            change_card.frame('', '', '', '', ' |')
            stat_card = ASCIIPicture.new([new_name + ': ', ''].concat user.get_respec_summary)
            stat_card.frame(' ', ' ')
            change_card.juxtapose(stat_card)
            ASCIIPrinter.print([change_card.get_ascii], Alignments::CENTER)
            Narrator.add_space_of 1
            Narrator.write(LocaleKey::CRYSTAL_ASK_TRANSFORMATION)
            case Narrator.user_input(user.get_name)
            when '0'
                if !changes_made?(user, new_icon, new_name)
                    return !Player::ACTED
                end
                if Narrator.ask_confirmation(LocaleKey::UNSAVED_RETURN_CONFIRM, user.get_name)
                    return !Player::ACTED
                end
            when '1'
                new_name = character_creator.ask_name
            when '2'
                new_icon.customize
            when '3'
                user.ask_respec
            when '4'
                if !changes_made?(user, new_icon, new_name)
                    return !Player::ACTED
                end
                if Narrator.ask_confirmation(LocaleKey::ASK_CONFIRM_RESPEC, user.get_name, change_card.get_ascii)
                    user.set_name(new_name)
                    if !changes_made?(user, new_icon, user.get_name())
                        return !Player::ACTED
                    end
                    user.confirm_respec
                    user.load_icon(new_icon.get_save_data)
                    SoundManager.play('transform')
                    Game.wait TRANSFORMATION_DURATION
                    return Player::ACTED
                end
            else
                Narrator.unsupported_choice_error
            end
        end
    end

    def changes_made?(user, new_icon, new_name)
        return user.respec_ready? || (new_icon.get_save_data != user.get_icon_data) || (user.get_name != new_name)
    end
end
