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

    def self.write_formatted(localkey_or_string, *inserted_substring)
        write(format(Locale.get_localized(localkey_or_string), *inserted_substring))
    end

    def self.warning_pop_up(automatic)
        Narrator.write(LocaleKey::WARNING_POP_UP)
        if automatic
            Narrator.write(LocaleKey::WARNING_POP_UP_OPTIONS)
        else
            Narrator.write(LocaleKey::WARNING_POP_UP_SETTINGS)
        end
    end

    def self.main_menu_options
        Narrator.write(LocaleKey::MAIN_MENU_OPTIONS)
    end

    def self.select_characters_options(party)
        Narrator.write(LocaleKey::PARTY_LIST_TITLE)
        party.show_cards
        Narrator.write(LocaleKey::PARTY_MANAGE_OPTIONS)
    end

    def self.remove_party_member_option
        Narrator.write(LocaleKey::PARTY_MANAGE_REMOVE_OPTION)
    end

    def self.start_travel_option(index)
        Narrator.write('    ' + index.to_s + Locale.get_localized(LocaleKey::START_TRAVEL_OPTION))
    end

    def self.new_or_old_character
        Narrator.write(LocaleKey::NEW_OR_OLD_CHARACTER)
    end

    def self.character_creation_options
        Narrator.write(LocaleKey::CHARACTER_CREATION_OPTIONS)
    end

    def self.features_options
        Narrator.write(LocaleKey::FEATURES_OPTIONS)
    end

    def self.body_options
        Narrator.write(LocaleKey::BODY_OPTIONS)
    end

    def self.beard_options
        Narrator.write(LocaleKey::CHARACTER_CREATION_BEARD_OPTIONS)
    end

    def self.hair_options
        Narrator.write(LocaleKey::CHARACTER_CREATION_HAIR_OPTIONS)
    end

    def self.hairstyle_options
        Narrator.write(LocaleKey::CHARACTER_CREATION_HAIRSTYLE_OPTIONS)
    end

    def self.options_selection
        Narrator.write(LocaleKey::SETTINGS_OPTIONS)
    end

    def self.asset_size_verification_line
        Narrator.write(LocaleKey::ASSET_SIZE_VERIFICATION)
    end

    def self.asset_size_options
        Narrator.write(LocaleKey::ASSET_SIZE_OPTIONS)
    end

    def self.sound_options
        Narrator.write(Locale.get_localized(LocaleKey::CURRENT_MUSIC_VOLUME) + Settings.music_volume.to_s + '%')
        Narrator.add_space_of(1)
        Narrator.write(Locale.get_localized(LocaleKey::CURRENT_SOUND_EFFECTS) + (Settings.sound_effects ? Locale.get_localized(LocaleKey::YES) : Locale.get_localized(LocaleKey::NO)))
        add_space_of(3)
        Narrator.write(LocaleKey::SOUND_OPTIONS)
    end

    def self.language_options
        Narrator.write(format(Locale.get_localized(LocaleKey::LANGUAGE_SETTINGS_TITLE), Locale.get_localized(Settings.locale.to_sym)))
        Narrator.write(LocaleKey::GO_BACK_ENUMERATED)
    end

    def self.language_pop_up_options
        Narrator.write(Locale.get_localized(LocaleKey::LANGUAGE_POP_UP_TITLE))
    end

    def self.current_equipment_title
        Narrator.write(LocaleKey::CURRENT_EQUIPMENT_TITLE)
    end

    def self.equipment_options(wear_equipment)
        Narrator.write(LocaleKey::EQUIPMENT_OPTIONS)
        if wear_equipment
            Narrator.write(LocaleKey::EQUIPMENT_REMOVE_OPTION)
        end
    end

    def self.inventory_options
        Narrator.write(LocaleKey::INVENTORY_OPTIONS)
    end

    def self.shop_inventory_options
        Narrator.write(LocaleKey::INVENTORY_OPTIONS_SHOP)
    end

    def self.player_options(room_name, have_npcs, have_monsters, interactibles)
        Narrator.write(LocaleKey::PLAYER_OPTIONS_FIRST)
        Narrator.write(Locale.get_localized(LocaleKey::PLAYER_OPTIONS_SEARCH) + room_name)
        Narrator.write(LocaleKey::PLAYER_OPTIONS_SECOND)
        if interactibles.length > 1
            Narrator.write(LocaleKey::INTERACTIBLES_OPTION)
        elsif have_npcs
            Narrator.write('    5) ' + format(Locale.get_localized(LocaleKey::NPC_INTERACT_OPTION), interactibles[0].get_name))
        elsif have_monsters
            Narrator.player_option_fight(interactibles[0].get_plural_the)
        end
    end

    def self.player_option_fight(monster_denomination)
        Narrator.write('    5) ' + Locale.get_localized(LocaleKey::PLAYER_FIGHT_OPTION) + monster_denomination)
    end

    def self.stat_options(
        current_stat, total_stats,
        current_life, life_increase,
        current_strength, strength_increase,
        current_intelligence, intelligence_increase,
        current_agility, agility_increase)
        Narrator.write(format(Locale.get_localized(LocaleKey::STAT_UP_TITLE), {
            LocaleKey::F_CURRENT => current_stat,
            LocaleKey::F_TOTAL => total_stats
        }))
        Narrator.write(format(Locale.get_localized(LocaleKey::STAT_UP_HEALTH), {
            LocaleKey::F_CURRENT => current_life,
            LocaleKey::F_NEW => current_life + life_increase
        }))
        Narrator.write(format(Locale.get_localized(LocaleKey::STAT_UP_STRENGTH), {
            LocaleKey::F_CURRENT => current_strength,
            LocaleKey::F_NEW => current_strength + strength_increase
        }))
        Narrator.write(format(Locale::get_localized(LocaleKey::STAT_UP_INTELLIGENCE), {
            LocaleKey::F_CURRENT => current_intelligence,
            LocaleKey::F_NEW => current_intelligence + intelligence_increase
        }))
        Narrator.write(format(Locale::get_localized(LocaleKey::STAT_UP_AGILITY), {
            LocaleKey::F_CURRENT => current_agility,
            LocaleKey::F_NEW => current_agility + agility_increase
        }))
    end

    def self.teleporter_ask_destination
        Narrator.write(LocaleKey::TELEPORT_OPTIONS)
    end

    def self.teleporter_ask_destination_allies(index, ally_name)
        enumerate(Locale.get_localized(LocaleKey::TELEPORT_JOIN_OPTION) + ally_name, index)
    end

    def self.yes_or_no
        Narrator.write(LocaleKey::YES_OR_NO)
    end

    def self.no_items_to_use
        Narrator.write(LocaleKey::NO_ITEMS_TO_USE)
    end

    def self.no_items_to_sell
        Narrator.write(LocaleKey::NO_ITEMS_TO_SELL)
    end

    def self.no_items_to_upgrade
        Narrator.write(LocaleKey::NO_ITEMS_TO_UPGRADE)
    end

    def self.no_items_to_equip
        Narrator.write(LocaleKey::NO_ITEMS_TO_EQUIP)
    end

    def self.item_possessed_title
        Narrator.write(LocaleKey::INVENTORY_TITLE)
    end

    def self.list(thing)
        Narrator.write('    - ' + thing.capitalize)
    end

    def self.enumerate(thing, number)
        Narrator.write('    ' + number.to_s + ') ' + thing.capitalize)
    end

    def self.introduction_shop
        Narrator.write(LocaleKey::SHOP_INTRO)
        pause_text
    end

    def self.guild_invite_party
        guild_invite(LocaleKey::GUILD_INVITE_PARTY_DIALOG)
    end

    def self.guild_invite(dialog = LocaleKey::GUILD_INVITE_DIALOG)
        recruter = Character.new(Recruter)
        Narrator.write(LocaleKey::GUILD_INVITE_INTRO)
        Narrator.pause_text
        MusicManager.get_instance.set_ambiance('Invitation')
        recruter.show
        recruter_dialog = recruter.make_dialog_box(dialog)
        Narrator.write(recruter_dialog.get_ascii)
        Narrator.pause_text
        Narrator.write(LocaleKey::GUILD_INVITE_END)
        Narrator.pause_text
    end

    def self.describe_guild
        ASCIIPrinter.print('guild_hall')
        Narrator.add_space_of(1)
        Narrator.write(LocaleKey::GUILD_DESCRIPTION)
        Narrator.add_space_of(1)
    end

    def self.introduction(party)
        Narrator.add_space_of(1)
        ASCIIPrinter.print('title')
        Narrator.add_space_of(1)
        if party.starting?
            Narrator.write(LocaleKey::FIRST_INTRO)
        else
            if party.new_members?
                Narrator.write(LocaleKey::NEW_MEMBERS_INTRO)
            else
                Narrator.write(LocaleKey::RETURN_INTRO)
            end
        end
        Narrator.add_space_of(1)
        ASCIIPrinter.print('dungeon_outside')
        Narrator.add_space_of(1)
        pause_text
    end

    def self.thank_for_playing
        Narrator.write(LocaleKey::THANK_YOU_NOTE)
    end

    def self.pause_text
        Narrator.add_space_of(1)
        Narrator.write(LocaleKey::PRESS_CONTINUE)
        gets
        TTY::Screen.height.times do
            Narrator.add_space_of(1)
        end
    end

    def self.describe_monsters_room(player, describe_biome, picture, the_room, monsters_description)
        describe_room(player, describe_biome, picture)
        write_same_line(Locale.get_localized(LocaleKey::ENTER_ROOM) + the_room)
        describe_monsters(player, monsters_description)
    end

    def self.describe_empty_room(player, describe_biome, picture, the_room, female)
        describe_room(player, describe_biome, picture)
        write_same_line(Locale.get_localized(LocaleKey::ENTER_ROOM) + the_room + " ")
        if female
            Narrator.write(LocaleKey::EMPTY_ROOM_F)
        else
            Narrator.write(LocaleKey::EMPTY_ROOM_M)
        end
    end

    def self.describe_current_room(player, describe_biome, picture, a_room, monsters_description)
        describe_room(player, describe_biome, picture)
        write_same_line(Locale.get_localized(LocaleKey::IN_A_ROOM) + a_room)
        if monsters_description != nil
            describe_monsters(player, monsters_description)
        else
            Narrator.write(LocaleKey::IS_EMPTY)
        end
    end

    def self.describe_room(player, describe_biome, picture)
        Narrator.add_space_of(1)
        Narrator.write(LocaleKey::OPEN_SETTINGS_OPTION)
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
            Narrator.write(format(Locale.get_localized(LocaleKey::MONSTER_ROOM), monsters_description))
        else
            Narrator.write(format(Locale.get_localized(LocaleKey::MONSTER_ROOM_FIGHTING), {
                LocaleKey::F_ALLIES => TextFormatter.enumerate(allies_fighting),
                LocaleKey::F_ENNEMIES => monsters_description
            }))
        end
    end

    def self.describe_extras(player, passives_description, character_descriptions)
        describe_allies(player)
        describe_passives(passives_description)
        describe_npcs(character_descriptions)
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
                Narrator.write(format(Locale.get_localized(LocaleKey::DEAD_ALLY), dead_allies[0]))
            elsif dead_allies.length > 1
                Narrator.write(format(Locale.get_localized(LocaleKey::DEAD_ALLIES), TextFormatter.enumerate(dead_allies)))
            end
        else
            if allies.length == 1
                write_same_line(Locale.get_localized(LocaleKey::ALLY_ASIDE) + allies[0])
            elsif allies.length > 1
                write_same_line(Locale.get_localized(LocaleKey::ALLIES_ASIDE) + TextFormatter.enumerate(allies))
            end
            if dead_allies.empty?
                Narrator.write('.')
            elsif dead_allies.length == 1
                Narrator.write(Locale.get_localized(LocaleKey::AND_DEAD_ALLY), dead_allies[0])
            else
                Narrator.write(Locale.get_localized(LocaleKey::AND_DEAD_ALLIES), TextFormatter.enumerate(dead_allies))
            end
        end
    end

    def self.describe_passives(passives_description)
        if passives_description != ''
            Narrator.write(passives_description)
        end
    end

    def self.describe_npcs(character_descriptions)
        if character_descriptions.length > 0
            Narrator.write(character_descriptions)
        end
    end

    def self.print_status(player)
        Narrator.write(player.get_icon.get_ascii)
        Narrator.add_space_of(1)
        Narrator.write(format(Locale.get_localized(LocaleKey::STATUS_INTRO), {
            LocaleKey::F_SUBJECT => player.get_name,
            LocaleKey::F_LEVEL => player.get_level.to_s
        }))
        Narrator.write(format(Locale.get_localized(LocaleKey::STATUS_STATS), {
            LocaleKey::F_LIFE => player.health_to_string,
            LocaleKey::F_STRENGTH => player.get_raw_strength.to_s,
            LocaleKey::F_INTELLIGENCE => player.get_intelligence.to_s,
            LocaleKey::F_AGILITY => player.get_raw_agility.to_s
        }))
        Narrator.print_weight_status(player)
        statuses_description = player.get_statuses_descriptions
        if statuses_description.length > 0
            Narrator.add_space_of(1)
            Narrator.write(statuses_description)
        end
        Narrator.pause_text
    end

    def self.print_weight_status(player)
        encumbrance_score = (player.get_agility*100).div(player.get_raw_agility)
        if encumbrance_score <= 0
            if (player.get_strength <= 0)
                Narrator.write(LocaleKey::WEIGHT_MAX)
            else
                if (player.get_strength < player.get_raw_strength)
                    Narrator.write(LocaleKey::WEIGHT_STRENGTH_REDUCED)
                else
                    Narrator.write(LocaleKey::WEIGHT_AGI_MAX)
                end
            end
        elsif encumbrance_score <= 25
            Narrator.write(LocaleKey::WEIGHT_THREE_QUARTER)
        elsif encumbrance_score <= 50
            Narrator.write(LocaleKey::WEIGHT_HALF)
        elsif encumbrance_score <= 75
            Narrator.write(LocaleKey::WEIGHT_QUARTER)
        elsif encumbrance_score < 100
            Narrator.write(LocaleKey::WEIGHT_SMALL)
        else
            if player.get_defense > 0
                Narrator.write(LocaleKey::WEIGHT_NONE)
            else
                Narrator.write(LocaleKey::NO_ARMOR)
            end
        end
    end

    def self.start_fight(plural)
        Narrator.add_space_of(1)
        if plural
            Narrator.write(LocaleKey::ATTACK_MONSTERS)
        else
            Narrator.write(LocaleKey::ATTACK_MONSTER)
        end
    end

    def self.avoid_fight(the_monsters)
        Narrator.add_space_of(1)
        Narrator.write(format(Locale.get_localized(LocaleKey::AVOID_FIGHT), the_monsters))
    end

    def self.fail_sneak(plural)
        Narrator.add_space_of(1)
        if plural
            Narrator.write(LocaleKey::FAIL_ESCAPE_PLURAL)
        else
            Narrator.write(LocaleKey::FAIL_ESCAPE_SINGLE)
        end
    end

    def self.death_scene(plural)
        Narrator.add_space_of(1)
        if plural
            Narrator.write(LocaleKey::GAME_OVER_PLURAL)
        else
            Narrator.write(LocaleKey::GAME_OVER_SINGLE)
        end
    end

    def self.escape_scene
        Narrator.write(LocaleKey::ESCAPE)
    end

    def self.fail_escape(plural)
        if plural
            Narrator.write(LocaleKey::ESCAPE_FAIL_PLURAL)
        else
            Narrator.write(LocaleKey::ESCAPE_FAIL_SINGLE)
        end
    end

    def self.victory_scene(was_plural, xp)
        Narrator.add_space_of(1)
        if was_plural
            Narrator.write(format(Locale.get_localized(LocaleKey::VICTORY_PLURAL), xp))
        else
            Narrator.write(format(Locale.get_localized(LocaleKey::VICTORY_SINGLE), xp))
        end
    end

    def self.sneaking_transition
        Narrator.write(LocaleKey::EXPLORATION_CONTINUE)
    end

    def self.exit_dungeon(did_nothing)
        if (did_nothing)
            write_same_line(LocaleKey::EXIT_SCARED)
        else
            write_same_line(LocaleKey::EXIT_DONE)
        end
        Narrator.write(LocaleKey::EXIT_SURVIVED)
    end

    def self.hurt(denomination, damage)
        Narrator.write(format(Locale.get_localized(LocaleKey::HURT_MESSAGE), {
            LocaleKey::F_TARGET => denomination.capitalize,
            LocaleKey::F_AMOUNT => damage
        }))
    end

    def self.detailed_hurt(denomination, damage_taken, damage, dodge_score, defense_text)
        Narrator.write(format(Locale.get_localized(LocaleKey::DETAILED_HURT_MESSAGE), {
            LocaleKey::F_TARGET => denomination.capitalize,
            LocaleKey::F_AMOUNT => damage_taken,
            LocaleKey::F_TOTAL => damage,
            LocaleKey::F_DODGED => dodge_score,
            LocaleKey::F_PARRIED => defense_text
        }))
    end

    def self.heal(denomination, amount)
        Narrator.write(format(Locale.get_localized(LocaleKey::HEAL_MESSAGE), {
            LocaleKey::F_TARGET => denomination.capitalize,
            LocaleKey::F_AMOUNT => amount
        }))
    end

    def self.dont_need_heal(denomination)
        Narrator.write(format(Locale.get_localized(LocaleKey::DONT_NEED_HEAL), denomination.capitalize))
    end

    def self.heal_spell_fail
        Narrator.write(LocaleKey::HEAL_FAIL_MESSAGE)
    end

    def self.heal_spell_cast(denomination, target)
        Narrator.write(format((Locale.get_localized(LocaleKey::HEAL_SPELL_MESSAGE)), {
            LocaleKey::F_SOURCE => denomination.capitalize,
            LocaleKey::F_TARGET => target
        }))
    end

    def self.self_heal(denomination, amount)
        Narrator.write(format(Locale.get_localized(LocaleKey::SELF_HEAL_MESSAGE), {
            LocaleKey::F_TARGET => denomination.capitalize,
            LocaleKey::F_AMOUNT => amount
        }))
    end

    def self.player_spell_fail
        Narrator.write(LocaleKey::SPELL_FAIL)
    end

    def self.player_spell_cast(denomination)
        Narrator.write(format(Locale.get_localized(LocaleKey::SPELL_CAST), denomination.capitalize))
    end

    def self.monster_death(denomination)
        Narrator.write(format(Locale.get_localized(LocaleKey::MONSTER_DEATH), denomination.capitalize))
    end

    def self.player_death(denomination)
        Narrator.write(format(Locale.get_localized(LocaleKey::PLAYER_DEATH), denomination.capitalize))
    end

    def self.obtain_item(denomination, item_name)
        Narrator.write(format(Locale.get_localized(LocaleKey::OBTAIN_ITEM), {
            LocaleKey::F_TARGET => denomination.capitalize,
            LocaleKey::F_ITEM => item_name
        }))
    end

    def self.remove_armor(denomination, item_name)
        Narrator.write(format(Locale.get_localized(LocaleKey::REMOVE_ARMOR), {
            LocaleKey::F_TARGET => denomination.capitalize,
            LocaleKey::F_ITEM => item_name
        }))
    end

    def self.equip_armor(denomination, item_name)
        Narrator.write(format(Locale.get_localized(LocaleKey::EQUIP_ARMOR), {
            LocaleKey::F_TARGET => denomination.capitalize,
            LocaleKey::F_ITEM => item_name
        }))
    end

    def self.searching(room_name)
        write_same_line(format(Locale.get_localized(LocaleKey::SEARCHING), room_name))
    end

    def self.everything_taken_already(denomination)
        Narrator.write(format(Locale.get_localized(LocaleKey::ALREADY_TAKEN), denomination))
    end

    def self.nothing_found
        Narrator.write(LocaleKey::NOTHING_FOUND)
    end

    def self.level_up
        Narrator.write(LocaleKey::LEVEL_UP)
    end

    def self.unknown_use
        Narrator.write(LocaleKey::UNKNOWN_USE)
    end

    def self.bandage_use_self(user_name)
        Narrator.write(format(Locale.get_localized(LocaleKey::BANDAGE_USE_SELF), user_name.capitalize))
    end

    def self.bandage_use_other(user_name, target_name)
        Narrator.write(format(Locale.get_localized(LocaleKey::BANDAGE_USE_OTHER), {
            LocaleKey::F_SOURCE => user_name.capitalize,
            LocaleKey::F_TARGET => target_name
        }))
    end

    def self.toss_coin
        write_same_line(LocaleKey::TOSS_COIN)
    end

    def self.coin_toss_suspense
        write_same_line(LocaleKey::COIN_TOSS_SUSPENSE)
    end

    def self.coin_toss(result)
        Narrator.write(format(Locale.get_localized(LocaleKey::COIN_TOSS_RESULT), result))
    end

    def self.use_self(user_name, use_dialog)
        Narrator.write(format(Locale.get_localized(use_dialog), user_name.capitalize))
    end

    def self.use_other(user_name, target_name, use_dialog)
        Narrator.write(format(Locale.get_localized(use_dialog), {
            LocaleKey::F_SOURCE => user_name.capitalize,
            LocaleKey::F_TARGET => target_name
        }))
    end

    def self.teleporter_fail
        Narrator.write(LocaleKey::TELEPORTER_FAIL)
    end

    def self.teleporter_start
        Narrator.write(LocaleKey::TELEPORTER_START)
        Narrator.add_space_of(1)
    end

    def self.climb_rope(is_going_down)
        if is_going_down
            Narrator.write_same_line(LocaleKey::CLIMB_ROPE_DOWN)
        else
            Narrator.write_same_line(LocaleKey::CLIMB_ROPE_UP)
        end
        SoundManager.play("rope_climb")
        sleep 1.5
        3.times do
            Narrator.write_same_line('.')
            SoundManager.play("rope_climb")
            sleep 1.5
        end
        Narrator.add_space_of(1)
    end

    def self.jump_hole(player)
        Narrator.write(format(Locale.get_localized(LocaleKey::JUMP_HOLE), player.get_name))
    end

    def self.knight_slash
        Narrator.write(LocaleKey::KNIGHT_SLASH)
    end

    def self.knight_limb_loss(limb_name)
        Narrator.write(format(Locale.get_localized(LocaleKey::KNIGHT_LIMB_LOSS), limb_name.capitalize))
    end

    def self.knight_change_weapon_side(boss_name)
        Narrator.write(format(Locale.get_localized(LocaleKey::KNIGHT_CHANGE_WEAPON_SIDE), boss_name.capitalize))
    end

    def self.knight_phase_change
        Narrator.write(LocaleKey::KNIGHT_PHASE_CHANGE)
    end

    def self.knight_defenseless(boss_name)
        Narrator.write(format(Locale.get_localized(LocaleKey::KNIGHT_DEFENSELESS), boss_name.capitalize))
    end

    def self.knight_death1(boss_name)
        Narrator.write(format(Locale.get_localized(LocaleKey::KNIGHT_DEATH_FIRST), boss_name))
        Narrator.write(LocaleKey::KNIGHT_DEATH_SECOND)
    end

    def self.knight_death2
        Narrator.add_space_of(1)
        Narrator.write(LocaleKey::KNIGHT_DEATH_THIRD)
    end

    def self.translator_intro(player, intro_question, sparing_reaction)
        kill = true
        loop do
            Narrator.write(intro_question)
            case Narrator.user_input(player.get_name).downcase
            when 'a'
                Narrator.write(sparing_reaction)
                Narrator.pause_text
                return !kill
            when 'b'
                if Narrator.ask_confirmation(format(Locale.get_localized(LocaleKey::NPC_ATTACK_CONFIRM), Locale.get_localized(LocaleKey::GOBLIN_TRANSLATOR_NAME)), player.get_name)
                    return kill
                end
            end
            Narrator.unsupported_choice_error
        end
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
        Narrator.write(Locale.get_localized(LocaleKey::PAGE) + " #{current_page + 1}/#{nb_pages}")
    end

    def self.ask_name(current_name)
        Narrator.write(LocaleKey::ASK_NAME)
        if (current_name != CharacterCreator::DEFAULT_NAME)
            Narrator.write(Locale.get_localized(LocaleKey::CURRENT_NAME) + current_name)
        end
    end

    def self.ask_confirm_character
        Narrator.write(LocaleKey::ASK_CONFIRM_CHARACTER)
    end

    def self.ask_play_again
        loop do
            Narrator.write(LocaleKey::ASK_SHOP)
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
        Narrator.write(format(Locale.get_localized(LocaleKey::ASK_VOLUME), Settings.music_volume))
    end

    def self.ask_if_sound_effects
        Narrator.write(LocaleKey::ASK_SOUND_EFFECTS)
    end

    def self.usage_options(item_name, usage_text)
        Narrator.write(format(Locale::get_localized(LocaleKey::ASK_USE), item_name))
        Narrator.write(LocaleKey::ABORT_ENUMERATED)
        Narrator.write("    1) #{usage_text}")
        Narrator.write(LocaleKey::GIVE_OPTION)
    end

    def self.ask_quantity_given(question, item_name)
        Narrator.write(format(Locale.get_localized(question), item_name))
    end

    def self.ask_quantity_sold(item_name)
        Narrator.write(format(Locale.get_localized(LocaleKey::ASK_QUANTITY_SOLD), item_name))
    end

    def self.ask_if_fight(escape_chances, player_name)
        Narrator.write(LocaleKey::PROPOSE_COMBAT)
        Narrator.write(format(Locale.get_localized(LocaleKey::PROPOSE_SNEAK), escape_chances))
        return user_input(player_name)
    end

    def self.ask_fight_action(player, monsters_description, escape_chances)
        monster_cards_pages = player.get_room.get_monster_cards
        loop do
            monster_cards_pages.show(25)
            Narrator.add_space_of(1)
            show_player_battle_cards(player)
            Narrator.write(format(Locale.get_localized(LocaleKey::DESCRIBE_ENNEMIES), monsters_description))
            Narrator.add_space_of(1)
            Narrator.write(LocaleKey::FIGHT_ACTIONS)
            Narrator.write(format(Locale.get_localized(LocaleKey::ESCAPE_COMBAT), escape_chances))
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
        Narrator.write(LocaleKey::TRY_AGAIN)
        return user_input
    end

    def self.ask_armor_replacement_confirmation(armor_name)
        Narrator.write(format(Locale.get_localized(LocaleKey::ARMOR_CHANGE_CONFIRMATION), armor_name))
    end

    def self.ask_character_options(player, name, special_interactions)
        Narrator.write(LocaleKey::NPC_QUESTION_INTRO)
        Narrator.write(format(Locale.get_localized(LocaleKey::NPC_OPTION_TALK), name))
        option_index = Character::NB_OPTIONS_BEFORE_SPE_INTERACT
        for special_interaction in special_interactions
            Narrator.write(format('    %i) ', option_index) + Locale.get_localized(special_interaction.get_menu_option))
            option_index += 1
        end
        Narrator.write(format(Locale.get_localized(LocaleKey::NPC_OPTION_ATTACK), option_index, name))
        return Narrator.user_input(player.get_name).to_i
    end

    def self.ask_confirmation(question, player_name = NO_NAME_DISPLAYED)
        if !question.kind_of?(Array)
            question = [question]
        end
        for line in question
            Narrator.write(line)
        end
        case Narrator.user_input(player_name).downcase
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
        Narrator.write(LocaleKey::UNSUPPORTED_CHOICE_ERROR)
    end

    def self.page_up_impossible_error
        Narrator.write(LocaleKey::PAGE_UP_IMPOSSIBLE_ERROR)
    end

    def self.page_down_impossible_error
        Narrator.write(LocaleKey::PAGE_DOWN_IMPOSSIBLE_ERROR)
    end

    def self.empty_name_error
        Narrator.write(LocaleKey::EMPTY_NAME_ERROR)
    end

    def self.forbiden_char_error
        Narrator.write(LocaleKey::FORBIDDEN_CHAR_ERROR)
    end

    def self.no_file_found_error(file_name)
        Narrator.write(format(Locale.get_localized(LocaleKey::NO_FILE_FOUND_ERROR), file_name))
    end

    def self.negative_quantity_error
        Narrator.write(LocaleKey::NEGATIVE_QUANTITY_ERROR)
    end

    def self.unexpected_damage_type_error
        Narrator.write(LocaleKey::UNEXPECTED_DAMAGE_TYPE_ERROR)
    end

    def self.unexpected_error
        Narrator.write(LocaleKey::UNEXPECTED_ERROR)
    end

    def self.user_input(name = NO_NAME_DISPLAYED, new_screen = true)
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
                Narrator.write(LocaleKey::CLOSE_GAME_CONFIRM)
                case user_input(NO_NAME_DISPLAYED, false).capitalize
                when 'Y'
                    raise e
                when 'N'
                    return user_input
                end
            end
        end
        if new_screen
            TTY::Screen.height.times do
                Narrator.add_space_of(1)
            end
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
            Narrator.write(LocaleKey::GO_BACK_ENUMERATED)
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
