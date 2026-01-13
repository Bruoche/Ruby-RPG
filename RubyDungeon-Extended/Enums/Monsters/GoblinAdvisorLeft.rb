class GoblinAdvisorLeft < Bestiary
    FEMALE = GoblinF
    MALE = GoblinM
    FEMALE_CHANCES = 0
    HEALTH_MULTIPLIER = 1
    DAMAGE_MULTIPLIER = 1
    MAGIC_PROPORTION = 50
    HEALING_PROPORTION = 100
    PICTURE = 'goblin_advisor'
    LOOTS = []
    UNPREDICTABILITY = 5
    DEATH_EVENT = -> (players, goblin, pack, other_advisor = "GoblinAdvisorRight") {
        for player in players
            player.add_status(GoblinMurderer.new)
        end
        other_found = false
        for other_goblin in pack.get_all
            if other_goblin.get_type == other_advisor
                other_found = true
            end
            if other_goblin.get_type == "GoblinElderBoss"
                boss = other_goblin
            end
        end
        if (boss != nil) && !other_found
            boss.add_status(Rage.new)
            Narrator.write(LocaleKey::GOBLIN_ELDER_BOSS_GRIEF_RAGE)
            SoundManager.play('rage')
            Game.wait
        end
    }
end
