class Axe < Item
    NAME = LocaleKey::AXE_NAME
    PLURAL_NAME = LocaleKey::AXE_PLURAL
    SOUND = 'weapon_equip'
    PICTURE = 'catalyst'
    USABLE_ON_OTHERS = false
    TELEPORT_DURATION = 1.2
    NO_DESTINATION = nil
    ATTACK_AREA = 1
    CENTER_DAMAGE_COEFF = 65
    SIDE_DAMAGE_COEFF = 33

    def initialize
        @value = 172
    end

    def get_description
        return LocaleKey::AXE_DESCRIPTION
    end

    def use(target, user)
        if !user.fighting?
            return super
        end
        SoundManager.play('weapon_equip')
        monsters = user.get_room.get_monsters
        response = select_targets(monsters, user.get_name)
        targets = response.get
        if targets.size <= 0
            return !Player::ACTED
        end
        center_index = response.get_index
        current_index = 0
        center_damage = (user.get_strength * CENTER_DAMAGE_COEFF).div(100)
        side_damage = (user.get_strength * SIDE_DAMAGE_COEFF).div(100)
        ArrayUtils.for_potential targets do |target|
            attack = user.strength_attack
            if current_index == center_index
                attack.set_damage(center_damage)
            else
                attack.set_damage(side_damage)
            end
            loop do
                attacked = target.hurt(attack)
                if attacked
                    break
                end
                Narrator.unsupported_choice_error
            end
            current_index += 1
        end
        return Player::ACTED
    end

    def select_targets(monsters, user_name)
        starting_page = ASCIIPaginator::AUTO
        response = Narrator.ask_area(
            LocaleKey::ASK_AIM_TARGET,
            monsters.get_all,
            ATTACK_AREA,
            -> (question, options, return_option) {
                response = Narrator.ask_paginated_general(
                    question,
                    options,
                    -> (monster, i){return card_unselected(monster, i)},
                    user_name,
                    false,
                    return_option,
                    -> (i) {return true},
                    Alignments::CENTER,
                    VerticalAlignments::BOTTOM,
                    true,
                    -> (monster, i){return card_unselected(monster, i)},
                    [],
                    LocaleKey::RETURN_BUTTON,
                    starting_page
                )
                starting_page = response.get_index
                return response.get
            }
        )
        targets = response.get
        center_index = response.get_index
        if targets.size <= 0
            return IndexedResponse.new([], 0)
        end
        center = targets[center_index]
        if center.kind_of? Boss
            loop do
                response = Narrator.ask_area(
                    format(Locale.get_localized(LocaleKey::ASK_AIM_TARGET_LIMB), center.get_name.get_gendered_of),
                    center.get_parts,
                    ATTACK_AREA,
                    -> (question, options, return_option) {
                        response = Narrator.ask(
                            question,
                            options,
                            -> (limb) {center.to_string(limb)},
                            user_name,
                            return_option
                        )
                    }
                )
                limbs = response.get
                if limbs.size <= 0
                    return select_targets(monsters, user_name)
                end
                for limb in limbs
                    Narrator.write("    - " + center.to_string(limb))
                end
                Narrator.add_space_of 1
                if Narrator.ask_confirmation(LocaleKey::ASK_CONFIRM_RETURN_SELECT_SIMPLE, user_name)
                    return response
                end
                if limbs.size <= 1
                    return select_targets(monsters, user_name)
                end
            end
        end
        rows = ASCIIRow.new
        center_index = response.get_index
        current_index = 0
        for target in targets
            corner = ASCIIPicture::DEFAULT_CORNER_PIECE
            if current_index == center_index
                corner = ASCIIPicture::IMPORTANT_CORNER_PIECE
            end
            rows.append(card_selected(target, ASCIIPicture::NO_INDEX, corner))
            current_index += 1
        end
        rows.show(Alignments::CENTER, VerticalAlignments::BOTTOM)
        Narrator.add_space_of 1
        if Narrator.ask_confirmation(LocaleKey::ASK_CONFIRM_RETURN_SELECT_SIMPLE, user_name)
            return response
        elsif targets.size <= 1
            return IndexedResponse.new([], 0)
        end
        return select_targets(monsters, user_name)
    end

    def card_selected(monster, index, corner = ASCIIPicture::DEFAULT_CORNER_PIECE)
        return card(monster, index, ASCIIPicture::IMPORTANT_HORIZONTAL_FRAME, ASCIIPicture::IMPORTANT_VERTICAL_FRAME, corner)
    end

    def card_unselected(monster, index)
        return card(monster, index, ASCIIPicture::DEAD_HORIZONTAL_FRAME, ASCIIPicture::DEAD_VERTICAL_FRAME)
    end

    def card(monster, index, horizontal_frame, vertical_frame, corner = ASCIIPicture::DEFAULT_CORNER_PIECE)
        return ASCIIPicture.new(ASCIIPicture.monster_card(monster, index, horizontal_frame, vertical_frame, corner))
    end
end
