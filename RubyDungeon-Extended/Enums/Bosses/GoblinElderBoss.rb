module GoblinElderF
    NAMES = [LocaleKey::GOBLIN_ELDER_BOSS_NAME]
end

module GoblinElderHeadF
    NAMES = [LocaleKey::GOBLIN_ELDER_HEAD]
end

module GoblinElderRightArmM
    NAMES = [LocaleKey::GOBLIN_ELDER_RIGHT_ARM]
end

module GoblinElderLeftArmM
    NAMES = [LocaleKey::GOBLIN_ELDER_LEFT_ARM]
end

class GoblinElderHead < Bestiary
    ID = 'head'
    IS_WEAKPOINT = true
    HEALTH_MULTIPLIER = 2
    DAMAGE_MULTIPLIER = 0.5
    FEMALE = GoblinElderHeadF
    FEMALE_CHANCES = 100
    BASE_MOVES = [LocaleKey::GOBLIN_ELDER_BITE_ATTACK]
    DEATH_EVENT = -> (players, head, boss) {GoblinElderBoss.death(head.get_name, boss)}
end

class GoblinElderLeftArm < Bestiary
    ID = 'left_arm'
    HEALTH_MULTIPLIER = 1
    DAMAGE_MULTIPLIER = 1.25
    MAGIC_PROPORTION = 80
    HEALING_PROPORTION = 100
    MALE = GoblinElderLeftArmM
    FEMALE_CHANCES = 0
    BASE_MOVES = [LocaleKey::GOBLIN_ELDER_LEFT_ATTACK]
    SPECIAL_MOVES = [
        SpecialMove.new(100, -> (targets, pack, damage, boss) {GoblinElderBoss.delegate(targets, pack, damage, boss, GoblinAdvisorLeft)})
    ]
    DEATH_EVENT = -> (players, arm, boss) {GoblinElderBoss.arm_loss(arm.get_name, boss, GoblinElderRightArm::ID)}
end

class GoblinElderRightArm < Bestiary
    ID = 'right_arm'
    HEALTH_MULTIPLIER = 1
    DAMAGE_MULTIPLIER = 1.25
    MAGIC_PROPORTION = 80
    HEALING_PROPORTION = 0
    MALE = GoblinElderRightArmM
    FEMALE_CHANCES = 0
    BASE_MOVES = [LocaleKey::GOBLIN_ELDER_RIGHT_ATTACK]
    SPECIAL_MOVES = [
        SpecialMove.new(100, -> (target, pack, damage, boss) {GoblinElderBoss.delegate(target, pack, damage, boss, GoblinAdvisorRight)})
    ]
    DEATH_EVENT = -> (players, arm, boss) {GoblinElderBoss.arm_loss(arm.get_name, boss, GoblinElderLeftArm::ID)}
end

class GoblinElderBoss < Bestiary
    IS_BOSS = true
    EXPECTED_LEVEL = 12
    MALE = GoblinElderF
    FEMALE_CHANCES = 0
    PICTURE = 'lost_knight'
    LOOTS = [
    ]
    BODYPARTS = [
        GoblinElderHead,
        GoblinElderLeftArm,
        GoblinElderRightArm
    ]

    def self.delegate(targets, allies, actor, boss, choosen_advisor)
        if boss.have?(Rage)
            return !SpecialMove::END_TURN
        end
        for goblin in allies
            if (goblin.get_type == choosen_advisor.to_s)
                advisor = goblin
            end
        end
        if (advisor != nil)
            SoundManager.play('swoosh')
            Narrator.knight_slash
            sleep Settings.get_pause_duration
            advisor.act(targets, allies, boss)
            return SpecialMove::END_TURN
        end
        return !SpecialMove::END_TURN
    end

    def self.arm_loss(name, boss, other_arm_id)
        SoundManager.play('ennemy_death')
        Narrator.knight_limb_loss(name.get_gendered_the)
        sleep Settings.get_pause_duration
        left_arm = boss.get_part_by(other_arm_id)
        if left_arm == nil
            defenseless(name, boss)
        end
    end

    def self.defenseless(name, boss)
        Narrator.knight_defenseless(boss.get_name.get_gendered_the)
        sleep Settings.get_pause_duration
        head = boss.get_part_by(GoblinElderHead::ID)
        head.set_intelligence(head.get_strength * 6)
    end

    def self.death(name, boss)
        SoundManager.play('ennemy_death')
        Narrator.knight_death1(boss.get_name.get_gendered_of)
        sleep Settings.get_pause_duration
        for goblin in boss.get_room.get_monsters.get_all
            if !goblin.is_a? Boss
                goblin.status_handler.add(Rage.new)
            end
        end
    end
end
