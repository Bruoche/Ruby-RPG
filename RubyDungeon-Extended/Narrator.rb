class Narrator
    RETURN_BUTTON = 'return_button'
    NO_NAME_DISPLAYED = nil

    def self.add_space_of(height)
        height.times do
            puts
        end
    end

    def self.write(text)
        if text.kind_of?(Array)
            puts text
        else
            puts Locale.get_localized(text)
        end
    end

    def self.write_same_line(text)
        print Locale.get_localized(text)
    end

    def self.warning_pop_up
        Narrator.write(Locale::KEY_WARNING_POP_UP)
    end

    def self.main_menu_options
        Narrator.write(Locale::KEY_MAIN_MENU_OPTIONS)
    end

    def self.select_characters_options(party)
        Narrator.write(Locale::KEY_PARTY_LIST_TITLE)
        party.show_cards
        Narrator.write(Locale::KEY_PARTY_MANAGE_OPTIONS)
    end

    def self.remove_party_member_option
        Narrator.write(Locale::KEY_PARTY_MANAGE_REMOVE_OPTION)
    end

    def self.start_travel_option(index)
        Narrator.write('    ' + index.to_s + Locale.get_localized(Locale::KEY_START_TRAVEL_OPTION))
    end

    def self.new_or_old_character
        Narrator.write(Locale::KEY_NEW_OR_OLD_CHARACTER)
    end

    def self.character_creation_options
        Narrator.write(Locale::KEY_CHARACTER_CREATION_OPTIONS)
    end

    def self.beard_options
        Narrator.write(Locale::KEY_CHARACTER_CREATION_BEARD_OPTIONS)
    end

    def self.hair_options
        Narrator.write(Locale::KEY_CHARACTER_CREATION_HAIR_OPTIONS)
    end

    def self.hairstyle_options
        Narrator.write(Locale::KEY_CHARACTER_CREATION_HAIRSTYLE_OPTIONS)
    end

    def self.options_selection
        Narrator.write(Locale::KEY_SETTINGS_OPTIONS)
    end

    def self.asset_size_verification_line
        Narrator.write(Locale::KEY_ASSET_SIZE_VERIFICATION)
    end

    def self.asset_size_options
        Narrator.write(Locale::KEY_ASSET_SIZE_OPTIONS)
    end

    def self.sound_options
        Narrator.write(Locale.get_localized(Locale::KEY_CURRENT_MUSIC_VOLUME) + Settings.music_volume.to_s + '%')
        Narrator.add_space_of(1)
        Narrator.write(Locale.get_localized(Locale::KEY_CURRENT_SOUND_EFFECTS) + (Settings.sound_effects ? Locale.get_localized(Locale::KEY_YES) : Locale.get_localized(Locale::KEY_NO)))
        add_space_of(3)
        Narrator.write(Locale::KEY_SOUND_OPTIONS)
    end

    def self.language_options
        Narrator.write(format(Locale.get_localized(Locale::KEY_LANGUAGE_SETTINGS_TITLE), Locale.get_localized(Settings.locale)))
        Narrator.write(Locale::KEY_GO_BACK_ENUMERATED)
    end

    def self.current_equipment_title
        Narrator.write(Locale::KEY_CURRENT_EQUIPMENT_TITLE)
    end

    def self.equipment_options(wear_equipment)
        Narrator.write(Locale::KEY_EQUIPMENT_OPTIONS)
        if wear_equipment
            Narrator.write(Locale::KEY_EQUIPMENT_REMOVE_OPTION)
        end
    end

    def self.inventory_options
        Narrator.write(Locale::KEY_INVENTORY_OPTIONS)
    end

    def self.shop_inventory_options
        Narrator.write(Locale::KEY_INVENTORY_OPTIONS_SHOP)
    end

    def self.player_options(room_name)
        Narrator.write(Locale::KEY_PLAYER_OPTIONS_FIRST)
        Narrator.write(Locale.get_localized(Locale::KEY_PLAYER_OPTIONS_SEARCH) + room_name)
        Narrator.write(Locale::KEY_PLAYER_OPTIONS_SECOND)
    end

    def self.player_option_fight(monster_denomination)
        Narrator.write(Locale.get_localized(Locale::KEY_PLAYER_FIGHT_OPTION) + monster_denomination)
    end

    def self.stat_options(
        current_stat, total_stats,
        current_life, life_increase,
        current_strength, strength_increase,
        current_intelligence, intelligence_increase,
        current_agility, agility_increase)
        Narrator.write(format(Locale.get_localized(Locale::KEY_STAT_UP_TITLE), {
            Locale::F_KEY_CURRENT => current_stat,
            Locale::F_KEY_TOTAL => total_stats
        }))
        Narrator.write(format(Locale.get_localized(Locale::KEY_STAT_UP_HEALTH), {
            Locale::F_KEY_CURRENT => current_life,
            Locale::F_KEY_NEW => current_life + life_increase
        }))
        Narrator.write(format(Locale.get_localized(Locale::KEY_STAT_UP_STRENGTH), {
            Locale::F_KEY_CURRENT => current_strength,
            Locale::F_KEY_NEW => current_strength + strength_increase
        }))
        Narrator.write(format(Locale::get_localized(Locale::KEY_STAT_UP_INTELLIGENCE), {
            Locale::F_KEY_CURRENT => current_intelligence,
            Locale::F_KEY_NEW => current_intelligence + intelligence_increase
        }))
        Narrator.write(format(Locale::get_localized(Locale::KEY_STAT_UP_AGILITY), {
            Locale::F_KEY_CURRENT => current_agility,
            Locale::F_KEY_NEW => current_agility + agility_increase
        }))
    end

    def self.teleporter_ask_destination
        Narrator.write(Locale::KEY_TELEPORT_OPTIONS)
    end

    def self.teleporter_ask_destination_allies(index, ally_name)
        enumerate(Locale.get_localized(Locale::KEY_TELEPORT_JOIN_OPTION) + ally_name, index)
    end

    def self.yes_or_no
        Narrator.write(Locale::KEY_YES_OR_NO)
    end

    def self.no_items_to_use
        Narrator.write(Locale::KEY_NO_ITEMS_TO_USE)
    end

    def self.no_items_to_sell
        Narrator.write(Locale::KEY_NO_ITEMS_TO_SELL)
    end

    def self.item_possessed_title
        Narrator.write(Locale::KEY_INVENTORY_TITLE)
    end

    def self.list(thing)
        Narrator.write('    - ' + thing.capitalize)
    end

    def self.enumerate(thing, number)
        Narrator.write('    ' + number.to_s + ') ' + thing.capitalize)
    end

    def self.introduction_shop
        Narrator.write(Locale::KEY_SHOP_INTRO)
        pause_text
    end

    def self.introduction(party)
        Narrator.add_space_of(1)
        ASCIIPrinter.print('title')
        Narrator.add_space_of(1)
        if party.starting?
            Narrator.write(Locale::KEY_FIRST_INTRO)
        else
            if party.new_members?
                Narrator.write(Locale::KEY_NEW_MEMBERS_INTRO)
            else
                Narrator.write(Locale::KEY_RETURN_INTRO)
            end
        end
        Narrator.add_space_of(1)
        ASCIIPrinter.print('dungeon_outside')
        Narrator.add_space_of(1)
        pause_text
    end

    def self.thank_for_playing
        Narrator.write(Locale::KEY_THANK_YOU_NOTE)
    end

    def self.pause_text
        Narrator.write(Locale::KEY_PRESS_CONTINUE)
        user_input
    end

    def self.describe_monsters_room(player, describe_biome, picture, the_room, monsters_description)
        describe_room(player, describe_biome, picture)
        write_same_line(Locale.get_localized(Locale::KEY_ENTER_ROOM) + the_room)
        describe_monsters(player, monsters_description)
        describe_allies(player)
    end

    def self.describe_empty_room(player, describe_biome, picture, the_room, female)
        describe_room(player, describe_biome, picture)
        write_same_line(Locale.get_localized(Locale::KEY_ENTER_ROOM) + the_room)
        if female
            Narrator.write(Locale::KEY_EMPTY_ROOM_F)
        else
            Narrator.write(Locale::KEY_EMPTY_ROOM_M)
        end
        describe_allies(player)
    end

    def self.describe_current_room(player, describe_biome, picture, a_room, monsters_description)
        describe_room(player, describe_biome, picture)
        write_same_line(Locale.get_localized(Locale::KEY_IN_A_ROOM) + a_room)
        if monsters_description != nil
            describe_monsters(player, monsters_description)
        else
            Narrator.write(Locale::KEY_IS_EMPTY)
        end
        describe_allies(player)
    end

    def self.describe_room(player, describe_biome, picture)
        Narrator.add_space_of(1)
        ASCIIPrinter.print([picture, ASCIIPicture.get_status(player)])
        Narrator.add_space_of(1)
        describe_biome.call
        Narrator.add_space_of(1)
    end

    def self.describe_monsters(player, monsters_description)
        allies_fighting = []
        allies = World.get_instance.get_players_in(player.get_room)
        for ally in allies
            if (ally != player) && (ally.fighting?)
                allies_fighting.append(ally.get_name)
            end
        end
        if (allies_fighting.empty?)
            Narrator.write(format(Locale.get_localized(Locale::KEY_MONSTER_ROOM), monsters_description))
        else
            Narrator.write(format(Locale.get_localized(Locale::KEY_MONSTER_ROOM_FIGHTING), {
                Locale::F_KEY_ALLIES => Utils.enumerate(allies_fighting),
                Locale::F_KEY_ENNEMIES => monsters_description
            }))
        end
    end

    def self.describe_allies(player)
        potential_allies = World.get_instance.get_players_in(player.get_room)
        allies = []
        dead_allies = []
        for ally in potential_allies
            if (ally != player) && (!ally.fighting?)
                if ally.died?
                    dead_allies.append(ally.get_name)
                else
                    allies.append(ally.get_name)
                end
            end
        end
        if allies.empty?
            if dead_allies.length == 1
                Narrator.write(format(Locale.get_localized(Locale::KEY_DEAD_ALLY), dead_allies[0]))
            elsif dead_allies.length > 1
                Narrator.write(format(Locale.get_localized(Locale::KEY_DEAD_ALLIES), Utils.enumerate(dead_allies)))
            end
        else
            if allies.length == 1
                write_same_line(Locale.get_localized(Locale::KEY_ALLY_ASIDE) + allies[0])
            elsif allies.length > 1
                write_same_line(Locale.get_localized(Locale::KEY_ALLIES_ASIDE) + Utils.enumerate(allies))
            end
            if dead_allies.empty?
                Narrator.write('.')
            elsif dead_allies.length == 1
                Narrator.write(Locale.get_localized(Locale::KEY_AND_DEAD_ALLY), dead_allies[0])
            else
                Narrator.write(Locale.get_localized(Locale::KEY_AND_DEAD_ALLIES), Utils.enumerate(dead_allies))
            end
        end
    end

    def self.start_fight(plural)
        Narrator.add_space_of(1)
        if plural
            Narrator.write(Locale::KEY_ATTACK_MONSTERS)
        else
            Narrator.write(Locale::KEY_ATTACK_MONSTER)
        end
    end

    def self.avoid_fight(the_monsters)
        Narrator.add_space_of(1)
        Narrator.write(format(Locale.get_localized(Locale::KEY_AVOID_FIGHT), the_monsters))
    end

    def self.fail_sneak(plural)
        Narrator.add_space_of(1)
        if plural
            Narrator.write(Locale::KEY_FAIL_ESCAPE_PLURAL)
        else
            Narrator.write(Locale::KEY_FAIL_ESCAPE_SINGLE)
        end
    end

    def self.death_scene(plural)
        Narrator.add_space_of(1)
        if plural
            Narrator.write(Locale::KEY_GAME_OVER_PLURAL)
        else
            Narrator.write(Locale::KEY_GAME_OVER_SINGLE)
        end
    end

    def self.escape_scene
        Narrator.write(Locale::KEY_ESCAPE)
    end

    def self.fail_escape(plural)
        if plural
            Narrator.write(Locale::KEY_ESCAPE_FAIL_PLURAL)
        else
            Narrator.write(Locale::KEY_ESCAPE_FAIL_SINGLE)
        end
    end

    def self.victory_scene(was_plural, xp)
        Narrator.add_space_of(1)
        if was_plural
            Narrator.write(format(Locale.get_localized(Locale::KEY_VICTORY_PLURAL), xp))
        else
            Narrator.write(format(Locale.get_localized(Locale::KEY_VICTORY_SINGLE), xp))
        end
    end

    def self.sneaking_transition
        Narrator.write(Locale::KEY_EXPLORATION_CONTINUE)
    end

    def self.exit_dungeon(did_nothing)
        if (did_nothing)
            write_same_line(Locale::KEY_EXIT_SCARED)
        else
            write_same_line(Locale::KEY_EXIT_DONE)
        end
        Narrator.write(Locale::KEY_EXIT_SURVIVED)
    end

    def self.hurt(denomination, damage)
        Narrator.write(format(Locale.get_localized(Locale::KEY_HURT_MESSAGE), {
            Locale::F_KEY_TARGET => denomination.capitalize,
            Locale::F_KEY_AMOUNT => damage
        }))
    end

    def self.detailed_hurt(denomination, damage_taken, damage, dodge_score, defense_text)
        Narrator.write(format(Locale.get_localized(Locale::KEY_DETAILED_HURT_MESSAGE), {
            Locale::F_KEY_TARGET => denomination.capitalize,
            Locale::F_KEY_AMOUNT => damage_taken,
            Locale::F_KEY_TOTAL => damage,
            Locale::F_KEY_DODGED => dodge_score,
            Locale::F_KEY_PARRIED => defense_text
        }))
    end

    def self.heal(denomination, amount)
        Narrator.write(format(Locale.get_localized(Locale::KEY_HEAL_MESSAGE), {
            Locale::F_KEY_TARGET => denomination.capitalize,
            Locale::F_KEY_AMOUNT => amount
        }))
    end

    def self.dont_need_heal(denomination)
        Narrator.write(format(Locale.get_localized(Locale::KEY_DONT_NEED_HEAL), denomination.capitalize))
    end

    def self.heal_spell_fail
        Narrator.write(Locale::KEY_HEAL_FAIL_MESSAGE)
    end

    def self.heal_spell_cast(denomination, target)
        Narrator.write(format((Locale.get_localized(Locale::KEY_HEAL_SPELL_MESSAGE)), {
            Locale::F_KEY_SOURCE => denomination.capitalize,
            Locale::F_KEY_TARGET => target
        }))
    end

    def self.self_heal(denomination, amount)
        Narrator.write(format(Locale.get_localized(Locale::KEY_SELF_HEAL_MESSAGE), {
            Locale::F_KEY_TARGET => denomination.capitalize,
            Locale::F_KEY_AMOUNT => amount
        }))
    end

    def self.player_spell_fail
        Narrator.write(Locale::KEY_SPELL_FAIL)
    end

    def self.player_spell_cast(denomination)
        Narrator.write(format(Locale.get_localized(Locale::KEY_SPELL_CAST), denomination.capitalize))
    end

    def self.monster_death(denomination)
        Narrator.write(format(Locale.get_localized(Locale::KEY_MONSTER_DEATH), denomination.capitalize))
    end

    def self.player_death(denomination)
        Narrator.write(format(Locale.get_localized(Locale::KEY_PLAYER_DEATH), denomination.capitalize))
    end

    def self.obtain_item(denomination, item_name)
        Narrator.write(format(Locale.get_localized(Locale::KEY_OBTAIN_ITEM), {
            Locale::F_KEY_TARGET => denomination.capitalize,
            Locale::F_KEY_ITEM => item_name
        }))
    end

    def self.remove_armor(denomination, item_name)
        Narrator.write(format(Locale.get_localized(Locale::KEY_REMOVE_ARMOR), {
            Locale::F_KEY_TARGET => denomination.capitalize,
            Locale::F_KEY_ITEM => item_name
        }))
    end

    def self.equip_armor(denomination, item_name)
        Narrator.write(format(Locale.get_localized(Locale::KEY_EQUIP_ARMOR), {
            Locale::F_KEY_TARGET => denomination.capitalize,
            Locale::F_KEY_ITEM => item_name
        }))
    end

    def self.searching(room_name)
        write_same_line(format(Locale.get_localized(Locale::KEY_SEARCHING), room_name))
    end

    def self.everything_taken_already(denomination)
        Narrator.write(format(Locale.get_localized(Locale::KEY_ALREADY_TAKEN), denomination))
    end

    def self.nothing_found
        Narrator.write(Locale::KEY_NOTHING_FOUND)
    end

    def self.level_up
        Narrator.write(Locale::KEY_LEVEL_UP)
    end

    def self.unknown_use
        Narrator.write(Locale::KEY_UNKNOWN_USE)
    end

    def self.bandage_use_self(user_name)
        Narrator.write(format(Locale.get_localized(Locale::KEY_BANDAGE_USE_SELF), user_name.capitalize))
    end

    def self.bandage_use_other(user_name, target_name)
        Narrator.write(format(Locale.get_localized(Locale::KEY_BANDAGE_USE_OTHER), {
            Locale::F_KEY_SOURCE => user_name.capitalize,
            Locale::F_KEY_TARGET => target_name
        }))
    end

    def self.toss_coin
        write_same_line(Locale::KEY_TOSS_COIN)
    end

    def self.coin_toss_suspense
        write_same_line(Locale::KEY_COIN_TOSS_SUSPENSE)
    end

    def self.coin_toss(result)
        Narrator.write(format(Locale.get_localized(Locale::KEY_COIN_TOSS_RESULT), result))
    end

    def self.health_potion_use_self(user_name)
        Narrator.write(format(Locale.get_localized(Locale::KEY_HEALTH_POTION_USE_SELF), user_name.capitalize))
    end

    def self.health_potion_use_other(user_name, target_name)
        Narrator.write(format(Locale.get_localized(Locale::KEY_HEALTH_POTION_USE_OTHER), {
            Locale::F_KEY_SOURCE => user_name.capitalize,
            Locale::F_KEY_TARGET => target_name
        }))
    end

    def self.teleporter_fail
        Narrator.write(Locale::KEY_TELEPORTER_FAIL)
    end

    def self.teleporter_start
        Narrator.write(Locale::KEY_TELEPORTER_START)
        Narrator.add_space_of(1)
    end

    def self.knight_slash
        Narrator.write(Locale::KEY_KNIGHT_SLASH)
    end

    def self.knight_limb_loss(limb_name)
        Narrator.write(format(Locale.get_localized(Locale::KEY_KNIGHT_LIMB_LOSS), limb_name.capitalize))
    end

    def self.knight_change_weapon_side(boss_name)
        Narrator.write(format(Locale.get_localized(Locale::KEY_KNIGHT_CHANGE_WEAPON_SIDE), boss_name.capitalize))
    end

    def self.knight_phase_change
        Narrator.write(Locale::KEY_KNIGHT_PHASE_CHANGE)
    end

    def self.knight_defenseless(boss_name)
        Narrator.write(format(Locale.get_localized(Locale::KEY_KNIGHT_DEFENSELESS), boss_name.capitalize))
    end

    def self.knight_death1(boss_name)
        Narrator.write(format(Locale.get_localized(Locale::KEY_KNIGHT_DEATH_FIRST), boss_name))
        Narrator.write(Locale::KEY_KNIGHT_DEATH_SECOND)
    end

    def self.knight_death2
        Narrator.add_space_of(1)
        Narrator.write(Locale::KEY_KNIGHT_DEATH_THIRD)
    end

    def self.show_player_battle_cards(player)
        battle_cards = ASCIIRow.new
        for ally in World.get_instance.get_players_in(player.get_room)
            if ally.fighting?
                battle_card = ASCIIPicture.new(ASCIIPicture.battle_card(ally))
                if ally == player
                    battle_card.frame(ASCIIPicture::IMPORTANT_HORIZONTAL_FRAME, ASCIIPicture::IMPORTANT_VERTICAL_FRAME, ASCIIPicture::IMPORTANT_CORNER_PIECE)
                else
                    if ally.died?
                        battle_card.frame(ASCIIPicture::DEAD_HORIZONTAL_FRAME, ASCIIPicture::DEAD_VERTICAL_FRAME)
                    else
                        battle_card.frame
                    end
                end
                battle_cards.append(battle_card)
            end
        end
        battle_cards.show
    end

    def self.put_scrollbar(scroll_bar, current_page, nb_pages)
        Narrator.write(scroll_bar)
        Narrator.write(Locale.get_localized(Locale::KEY_PAGE) + " #{current_page + 1}/#{nb_pages}")
    end

    def self.ask_name(current_name)
        Narrator.write(Locale::KEY_ASK_NAME)
        if (current_name != CharacterCreator::DEFAULT_NAME)
            Narrator.write(Locale.get_localized(Locale::KEY_CURRENT_NAME) + current_name)
        end
    end

    def self.ask_confirm_character
        Narrator.write(Locale::KEY_ASK_CONFIRM_CHARACTER)
    end

    def self.ask_play_again
        loop do
            Narrator.write(Locale::KEY_ASK_SHOP)
            case Narrator.user_input.capitalize
            when 'A'
                return true
            when 'B'
                return false
            else
                Narrator.unsupported_choice_error
            end
        end
    end

    def self.ask_desired_volume
        Narrator.write(format(Locale.get_localized(Locale::KEY_ASK_VOLUME), Settings.music_volume))
    end

    def self.ask_if_sound_effects
        Narrator.write(Locale::KEY_ASK_SOUND_EFFECTS)
    end

    def self.usage_options(item_name, usage_text)
        Narrator.write(format(Locale::get_localized(Locale::KEY_ASK_USE), item_name))
        Narrator.write(Locale::KEY_ABORT_ENUMERATED)
        Narrator.write("    1) #{usage_text}")
        Narrator.write(Locale::KEY_GIVE_OPTION)
    end

    def self.ask_quantity_given(item_name)
        Narrator.write(format(Locale.get_localized(Locale::KEY_ASK_QUANTITY_GIVEN), item_name))
    end

    def self.ask_quantity_sold(item_name)
        Narrator.write(format(Locale.get_localized(Locale::KEY_ASK_QUANTITY_SOLD), item_name))
    end

    def self.ask_if_fight(escape_chances, player_name)
        Narrator.write(Locale::KEY_PROPOSE_COMBAT)
        Narrator.write(format(Locale.get_localized(Locale::KEY_PROPOSE_SNEAK), escape_chances))
        return user_input(player_name)
    end

    def self.ask_fight_action(player, monsters_description, escape_chances)
        monster_cards_pages = player.get_room.get_monster_cards
        loop do
            monster_cards_pages.show(25)
            Narrator.add_space_of(1)
            show_player_battle_cards(player)
            Narrator.write(format(Locale.get_localized(Locale::KEY_DESCRIBE_ENNEMIES), monsters_description))
            Narrator.add_space_of(1)
            Narrator.write(Locale::KEY_FIGHT_ACTIONS)
            Narrator.write(format(Locale.get_localized(Locale::KEY_ESCAPE_COMBAT), escape_chances))
            input = user_input(player.get_name)
            case input
            when '1'
                return player.get_room.get_monsters.hurt_single(player.strength_attack)
            when '2'
                player.get_room.get_monsters.hurt_magic(player.magic_attack)
                return Player::ACTED
            when '3'
                return player.heal_spell
            when '4'
                return player.use_item
            when '5'
                if player.can_escape?(player.get_room.get_monsters.get_current_power)
                    escape_scene
                    return player.escape
                else
                    fail_escape(player.get_room.get_monsters.plural?)
                    return Player::ACTED
                end
            else
                if input.capitalize == 'A'
                    monster_cards_pages.page_down
                elsif input.capitalize == 'Z'
                    monster_cards_pages.page_up
                else
                    unsupported_choice_error
                end
            end
        end
    end

    def self.ask_continue
        Narrator.write(Locale::KEY_TRY_AGAIN)
        return user_input
    end

    def self.ask_armor_replacement_confirmation(armor_name)
        Narrator.write(format(Locale.get_localized(Locale::KEY_ARMOR_CHANGE_CONFIRMATION), armor_name))
    end

    def self.ask_confirmation(question)
        if !question.kind_of?(Array)
            question = [question]
        end
        for line in question
            Narrator.write(line)
        end
        case Narrator.user_input.downcase
        when 'y'
            return true
        when 'n'
            return false
        else
            Narrator.unsupported_choice_error
            return self.ask_confirmation(question)
        end
    end

    def self.unsupported_choice_error
        Narrator.add_space_of(1)
        Narrator.write(Locale::KEY_UNSUPPORTED_CHOICE_ERROR)
    end

    def self.page_up_impossible_error
        Narrator.write(Locale::KEY_PAGE_UP_IMPOSSIBLE_ERROR)
    end

    def self.page_down_impossible_error
        Narrator.write(Locale::KEY_PAGE_DOWN_IMPOSSIBLE_ERROR)
    end

    def self.empty_name_error
        Narrator.write(Locale::KEY_EMPTY_NAME_ERROR)
    end

    def self.forbiden_char_error
        Narrator.write(Locale::KEY_FORBIDDEN_CHAR_ERROR)
    end

    def self.no_file_found_error(file_name)
        Narrator.write(format(Locale.get_localized(Locale::KEY_NO_FILE_FOUND_ERROR), file_name))
    end

    def self.negative_quantity_error
        Narrator.write(Locale::KEY_NEGATIVE_QUANTITY_ERROR)
    end

    def self.unexpected_damage_type_error
        Narrator.write(Locale::KEY_UNEXPECTED_DAMAGE_TYPE_ERROR)
    end

    def self.unexpected_error
        Narrator.write(Locale::KEY_UNEXPECTED_ERROR)
    end

    def self.user_input(name = NO_NAME_DISPLAYED)
        Narrator.add_space_of(1)
        if name != NO_NAME_DISPLAYED
            name_prefix = name + ' : '
        else
            name_prefix = ''
        end
        write_same_line("  #{name_prefix}>> ")
        begin
            answer = gets.chomp
        rescue SystemExit, Interrupt => e
            loop do
                Narrator.write(Locale::KEY_CLOSE_GAME_CONFIRM)
                case user_input.capitalize
                when 'Y'
                    raise e
                when 'N'
                    return user_input
                end
            end
        end
        TTY::Screen.height.times do
            Narrator.add_space_of(1)
        end
        return answer
    end

    def self.ask(question, options, to_string, player_name = NO_NAME_DISPLAYED, return_option = Narrator::RETURN_BUTTON)
        ask_general(question, options, to_string, return_option,
            -> (element, i, to_string) {Narrator.write("    #{i}) #{to_string.call(element).capitalize}")},
            player_name
        )
    end

    def self.ask_complex_element(question, options, getter, player_name = NO_NAME_DISPLAYED, return_option = Narrator::RETURN_BUTTON)
        options = [return_option].concat options
        loop do
            Narrator.write(question)
            Narrator.write(Locale::KEY_GO_BACK_ENUMERATED)
            options_row = ASCIIRow.new
            for i in 1..(options.length - 1)
                options_row.append(getter.call(options[i], i))
            end
            options_row.show
            input = user_input(player_name).to_i
            if input.between?(1, options.length - 1)
                return input - 1
            elsif input == 0
                return return_option
            else
                unsupported_choice_error
            end
        end
    end

    def self.ask_paginated(question, options, getter, player_name = NO_NAME_DISPLAYED, last_first = false, return_option = Narrator::RETURN_BUTTON)
        options_pages = ASCIIPaginator.new(ASCIIRow::DEFAULT_SPACING_BETWEEN, last_first)
        for i in 1..(options.length)
            options_pages.append(getter.call(options[i - 1], i))
        end
        loop do
            options_pages.show(2)
            Narrator.add_space_of(1)
            Narrator.write(question)
            input = user_input(player_name)
            if input.to_i.between?(1, options.length)
                return input.to_i - 1
            elsif input.capitalize == 'A'
                options_pages.page_down
            elsif input.capitalize == 'Z'
                options_pages.page_up
            elsif input == '0'
                return return_option
            else
                unsupported_choice_error
            end
        end
    end

    private

    def self.ask_general(question, options, to_string, return_option, print_operation, player_name = NO_NAME_DISPLAYED)
        if options.is_a? Hash
            return ask_hash(question, options, to_string, return_option, print_operation)
        end
        options = [return_option].concat options
        loop do
            Narrator.write(question)
            for i in 0..(options.length - 1)
                print_operation.call(options[i], i, to_string)
            end
            input = user_input(player_name).to_i
            if input.between?(1, options.length - 1)
                return input - 1
            elsif input == 0
                return return_option
            else
                unsupported_choice_error
            end
        end
    end

    def self.ask_hash(question, hash, to_string, return_option, print_operation, player_name = NO_NAME_DISPLAYED)
        options = [return_option].concat hash.keys
        loop do
            Narrator.write(question)
            for i in 0..(options.length - 1)
                print_operation.call(options[i], i, to_string)
            end
            input = user_input(player_name).to_i
            if input.between?(1, options.length - 1)
                return options[input]
            elsif input == 0
                return return_option
            else
                unsupported_choice_error
            end
        end
    end
end
