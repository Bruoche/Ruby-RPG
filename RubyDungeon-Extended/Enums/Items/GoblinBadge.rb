class GoblinBadge < Item
    NAME = LocaleKey::GOBLIN_BADGE_NAME
    PLURAL_NAME = LocaleKey::GOBLIN_BADGE_PLURAL
    SOUND = 'key'
    USABLE_ON_OTHERS = false
    GOBLINS = [
        'FighterGoblin',
        'FighterGoblinHeavy',
        'ForagerGoblin',
        'ForestGoblin',
        'Goblin',
        'GoblinAdvisorLeft',
        'GoblinAdvisorRight',
        'GoblinGuardBody',
        'VillagerGoblin'
    ]

    def initialize
        @value = 0
    end

    def get_description
        return LocaleKey::GOBLIN_BADGE_DESCRIPTION
    end

    def use(target, user)
        room = user.get_room
        monsters = room.get_monsters
        if monsters == nil
            super(target, user)
            return !Player::ACTED
        end
        first = true
        for monster in monsters.get_all.clone
            if GOBLINS.include?(monster.get_type)
                if first
                    first = false
                    SoundManager.play('paper')
                    Narrator.write(LocaleKey::SHOW_GOBLIN_BADGE)
                    sleep Settings.get_pause_duration
                    if room.get_biome == BossGoblinHouse
                        return refuse_peace(LocaleKey::GOBLINS_NOT_FORGIVING)
                    end
                    if user.status_handler.have?(GoblinMurderer)
                        return refuse_peace(LocaleKey::GOBLINS_NOT_TRUSTING)
                    end
                end
                if !monster.status_handler.have?(Rage)
                    SoundManager.play('ennemy_footsteps')
                    Narrator.write_formatted(LocaleKey::PACIFY_GOBLIN, monster.get_name.get_gendered_the.capitalize)
                    sleep Settings.get_pause_duration
                    monster.pacify
                end
            end
        end
        if first
            super(target, user)
        end
        return !Player::ACTED
    end

    def refuse_peace(message)
        SoundManager.play('spell_fart')
        Narrator.write(message)
        sleep Settings.get_pause_duration
        return !Player::ACTED
    end
end
