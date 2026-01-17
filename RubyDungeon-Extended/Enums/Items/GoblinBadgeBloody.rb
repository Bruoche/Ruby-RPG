class GoblinBadgeBloody < Item
    NAME = LocaleKey::GOBLIN_BADGE_NAME_BLOODY
    PLURAL_NAME = LocaleKey::GOBLIN_BADGE_PLURAL_BLOODY
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
        @value = 100
    end

    def get_description
        return LocaleKey::GOBLIN_BADGE_DESCRIPTION_BLOODY
    end

    def use(target, user)
        used = GoblinBadge.act_on_peacefull_goblins(target, user, LocaleKey::SHOW_GOBLIN_BADGE, -> (goblin) {
            if [true, false].sample
                GoblinBadge.appease(goblin)
            else
                SoundManager.play('rage')
                Narrator.write_formatted(LocaleKey::RAGING, goblin.get_name.get_gendered_the.capitalize)
                Game.wait
                goblin.status_handler.add(Rage.new)
            end
        })
        if !used
            return super(target, user)
        end
        return !Player::ACTED
    end
end
