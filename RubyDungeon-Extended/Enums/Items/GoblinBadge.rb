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
    USED = true

    def initialize
        @value = 0
    end

    def get_description
        return LocaleKey::GOBLIN_BADGE_DESCRIPTION
    end

    def use(target, user)
        used = act_on_peacefull_goblins(target, user, LocaleKey::SHOW_GOBLIN_BADGE, -> (goblin) {
            appease(goblin)
        })
        if !used
            return super(target, user)
        end
        return !Player::ACTED
    end

    def self.act_on_peacefull_goblins(target, user, badge_message, action)
        room = user.get_room
        monsters = room.get_monsters
        if monsters == nil
            return !USED
        end
        first = true
        for monster in monsters.get_all.clone
            if GOBLINS.include?(monster.get_type)
                if first
                    first = false
                    SoundManager.play('paper')
                    Narrator.write(badge_message)
                    sleep Settings.get_pause_duration
                    if room.get_biome == BossGoblinHouse
                        return refuse_peace(LocaleKey::GOBLINS_NOT_FORGIVING)
                    end
                    if user.status_handler.have?(GoblinMurderer)
                        return refuse_peace(LocaleKey::GOBLINS_NOT_TRUSTING)
                    end
                end
                if !monster.status_handler.have?(Rage)
                    action.call(monster)
                end
            end
        end
        if first
            super(target, user)
        end
        return USED
    end

    def self.appease(goblin)
        SoundManager.play('ennemy_footsteps')
        Narrator.write_formatted(LocaleKey::PACIFY_GOBLIN, goblin.get_name.get_gendered_the.capitalize)
        sleep Settings.get_pause_duration
        goblin.pacify
    end

    def self.refuse_peace(message)
        SoundManager.play('spell_fart')
        Narrator.write(message)
        sleep Settings.get_pause_duration
        return USED
    end
end
