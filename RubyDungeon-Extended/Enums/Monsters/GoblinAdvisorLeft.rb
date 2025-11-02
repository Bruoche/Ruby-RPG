class GoblinAdvisorLeft < Bestiary
    FEMALE = GoblinF
    MALE = GoblinM
    FEMALE_CHANCES = 50
    HEALTH_MULTIPLIER = 1
    DAMAGE_MULTIPLIER = 1
    MAGIC_PROPORTION = 50
    HEALING_PROPORTION = 100
    PICTURE = 'goblin'
    LOOTS = []
    UNPREDICTABILITY = 5
    DEATH_EVENT = -> (players, goblin, pack) {
        for player in players
            player.add_status(GoblinMurderer.new)
        end
        found = 0
        for other_goblin in pack.get_all
            if other_goblin.get_type == "GoblinAdvisorRight"
                found += 1
            end
            if other_goblin.get_type == "GoblinElderBoss"
                boss = other_goblin
            end
        end
        if (found <= 0) && (boss != nil)
            boss.add_status(Rage.new)
        end
    }
end
