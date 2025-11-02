class GoblinAdvisorRight < Bestiary
    FEMALE = GoblinAdvisorLeft::FEMALE
    MALE = GoblinAdvisorLeft::MALE
    FEMALE_CHANCES = GoblinAdvisorLeft::FEMALE_CHANCES
    HEALTH_MULTIPLIER = GoblinAdvisorLeft::HEALTH_MULTIPLIER
    DAMAGE_MULTIPLIER = GoblinAdvisorLeft::DAMAGE_MULTIPLIER
    MAGIC_PROPORTION = GoblinAdvisorLeft::MAGIC_PROPORTION
    HEALING_PROPORTION = 0
    PICTURE = 'goblin'
    LOOTS = []
    UNPREDICTABILITY = GoblinAdvisorLeft::UNPREDICTABILITY
    DEATH_EVENT = -> (players, goblin, pack) {
        for player in players
            player.add_status(GoblinMurderer.new)
        end
        other_found = false
        for other_goblin in pack.get_all
            if other_goblin.get_type == "GoblinAdvisorLeft"
                other_found = true
            end
            if other_goblin.get_type == "GoblinElderBoss"
                boss = other_goblin
            end
        end
        if (boss != nil) && !other_found
            boss.add_status(Rage.new)
        end
    }
end
