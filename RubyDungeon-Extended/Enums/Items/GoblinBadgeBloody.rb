class GoblinBadgeBloody < Item
    NAME = LocaleKey::PRISON_KEY_NAME
    PLURAL_NAME = LocaleKey::PRISON_KEY_PLURAL
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
        return LocaleKey::PRISON_KEY_DESCRIPTION
    end

    def use(target, user)
        first = true
        for monster in user.get_room.get_monsters.get_all
            if GOBLINS.include?(monster.get_type)
                if first
                    first = false
                    Narrator.write(LocaleKey::SHOW_GOBLIN_BADGE)
                end
                if !monster.status_handler.have?(Rage)
                    if [true, false].sample
                        monster.leave(LocaleKey::PACIFY_GOBLIN)
                    else
                        monster.add_status(Rage.new)
                    end
                end
            end
        end
        if first
            super(target, user)
        end
        return !Player::ACTED
    end
end
