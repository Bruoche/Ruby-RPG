class Catalyst < Item
    NAME = LocaleKey::CATALYST_NAME
    PLURAL_NAME = LocaleKey::CATALYST_PLURAL
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
        SoundManager.play('catalyst_charge')
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
            'unequip',
            Alignments::CENTER,
            VerticalAlignments::BOTTOM
        )
        if (targets.length <= 0)
            return !Player::ACTED
        end
        ArrayUtils.for_potential targets do |monster|
            if monster.kind_of? Boss
                limbs_targeted = Narrator.ask_multiple(
                    format(Locale.get_localized(LocaleKey::ASK_CATALYST_TARGET_LIMB), monster.get_name.get_gendered_of),
                    monster.get_parts,
                    -> (limb) {monster.to_string(limb)},
                    user.get_name,
                    true,
                    'ennemy_added',
                    'unequip'
                )
                if limbs_targeted.length <= 0
                    if targets.length <= 1
                        return !Player::ACTED
                    else
                        return use(target, user)
                    end
                end
                targets.delete(monster)
                targets.concat limbs_targeted
            end
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
