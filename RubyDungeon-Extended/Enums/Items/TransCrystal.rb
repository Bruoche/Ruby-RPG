class TransCrystal < Item
    NAME = LocaleKey::TRANS_CRYSTAL_NAME
    PLURAL_NAME = LocaleKey::TRANS_CRYSTAL_PLURAL
    SOUND = 'gold_coins'
    PICTURE = 'amethyst'
    USABLE_ON_OTHERS = false
    DROP_CHANCE_SCALABLE = false
    DROP_QUANTITY_SCALABLE = false
    TRANSFORMATION_DURATION = 3.6

    def initialize(charges = 1)
        @charges = charges.to_i
        @value = 25
    end

    def get_description
        if @charges <= 0
            return LocaleKey::TRANS_CRYSTAL_OFF_DESCRIPTION
        end
        return LocaleKey::TRANS_CRYSTAL_DESCRIPTION
    end

    def use(target, user)
        if @charges <= 0
            Narrator.write(LocaleKey::CRYSTAL_UNUSABLE)
            SoundManager.play('spell_fart')
            Game.wait
            return
        end
        Narrator.write(LocaleKey::CRYSTAL_INTRO)
        Narrator.pause_text
        SoundManager.play('transform_intro')
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
                    @charges -= 1
                    if @charges < 0
                        @charges = 0
                    end
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

    def get_save_data
        return super(@charges)
    end
end
