class Catalyst < Item
    NAME = LocaleKey::CATALYST_NAME
    NAME_PLURAL = LocaleKey::CATALYST_PLURAL
    SOUND = 'key'
    PICTURE = 'catalyst'
    USABLE_ON_OTHERS = false
    TELEPORT_DURATION = 1.2
    NO_DESTINATION = nil

    def initialize
        @value = 237
    end

    def get_description
        return LocaleKey::CATALYST_DESCRIPTION
    end

    def use(target, user)
        if !user.fighting?
            return super
        end
        SoundManager.play('taking_object')
        monsters = user.get_room.get_monsters
        targets = Narrator.ask_paginated_multiple(
            LocaleKey::ASK_CATALYST_TARGET,
            monsters.get_all,
            -> (monster, i){return card_unselected(monster, i)},
            -> (monster, i){return card_selected(monster, i)},
            user.get_name,
            false,
            false,
            'ennemy_added',
            'unequip'
        )
        if (targets.length <= 0)
            return !Player::ACTED
        end
        user.magic_attack.hit(targets, monsters)
        return Player::ACTED
    end

    def card_selected(monster, index)
        return card(monster, index, ASCIIPicture::IMPORTANT_HORIZONTAL_FRAME, ASCIIPicture::IMPORTANT_VERTICAL_FRAME)
    end

    def card_unselected(monster, index)
        return card(monster, index, ASCIIPicture::DEAD_HORIZONTAL_FRAME, ASCIIPicture::DEAD_VERTICAL_FRAME)
    end

    def card(monster, index, horizontal_frame, vertical_frame)
        return ASCIIPicture.new(ASCIIPicture.monster_card(monster, index, horizontal_frame, vertical_frame))
    end
end
