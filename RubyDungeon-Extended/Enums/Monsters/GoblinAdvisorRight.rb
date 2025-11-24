class GoblinAdvisorRight < Bestiary
    FEMALE = GoblinAdvisorLeft::FEMALE
    MALE = GoblinAdvisorLeft::MALE
    FEMALE_CHANCES = GoblinAdvisorLeft::FEMALE_CHANCES
    HEALTH_MULTIPLIER = GoblinAdvisorLeft::HEALTH_MULTIPLIER
    DAMAGE_MULTIPLIER = GoblinAdvisorLeft::DAMAGE_MULTIPLIER
    MAGIC_PROPORTION = GoblinAdvisorLeft::MAGIC_PROPORTION
    HEALING_PROPORTION = 0
    PICTURE = 'goblin_advisor'
    LOOTS = []
    UNPREDICTABILITY = GoblinAdvisorLeft::UNPREDICTABILITY
    DEATH_EVENT = -> (players, goblin, pack, other_advisor = "GoblinAdvisorLeft") {
        GoblinAdvisorLeft::DEATH_EVENT.call(players, goblin, pack, other_advisor)
    }
end
