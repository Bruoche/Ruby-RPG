class GoblinBadgeBloody < Item
    NAME = LocaleKey::PRISON_KEY_NAME
    PLURAL_NAME = LocaleKey::PRISON_KEY_PLURAL
    SOUND = 'key'
    USABLE_ON_OTHERS = false
    DROP_CHANCE_SCALABLE = false
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
        GoblinBadge.act_on_peacefull_goblins(target, user, LocaleKey::SHOW_GOBLIN_BADGE, -> (goblin) {
            if [true, false].sample
                GoblinBadge.appease(goblin)
            else
                goblin.status_handler.add(Rage.new)
            end
        })
    end
end
