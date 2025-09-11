module LostKnightM
    NAMES = [LocaleKey::KNIGHT_NAME]
end

module LostKnightHeadF
    NAMES = [LocaleKey::KNIGHT_HEAD]
end

module LostKnightRightArmM
    NAMES = [LocaleKey::KNIGHT_RIGHT_ARM]
end

module LostKnightLeftArmM
    NAMES = [LocaleKey::KNIGHT_LEFT_ARM]
end

class LostKnightHead
    ID = 'head'
    HEALTH_MULTIPLIER = 1.75
    FEMALE = LostKnightHeadF
    FEMALE_CHANCES = 100
    DEATH_EVENT = -> (players, head, boss) {LostKnight.death(head.get_name, boss)}
end

class LostKnightLeftArm < Bestiary
    ID = 'left_arm'
    HEALTH_MULTIPLIER = 0.75
    DAMAGE_MULTIPLIER = 0.8
    MALE = LostKnightLeftArmM
    FEMALE_CHANCES = 0
    BASE_MOVES = [LocaleKey::KNIGHT_LEFT_ATTACK]
    SPECIAL_MOVES = []
    DEATH_EVENT = -> (players, arm, boss) {LostKnight.limb_loss(arm.get_name, boss)}
end

class LostKnightRightArm < Bestiary
    ID = 'right_arm'
    HEALTH_MULTIPLIER = 0.75
    DAMAGE_MULTIPLIER = 1
    MALE = LostKnightRightArmM
    FEMALE_CHANCES = 0
    BASE_MOVES = [LocaleKey::KNIGHT_RIGHT_ATTACK]
    SPECIAL_MOVES = [
        SpecialMove.new(33, -> (target, pack, damage, boss) {LostKnight.slash(target, pack, damage, boss)})
    ]
    DEATH_EVENT = -> (players, arm, boss) {LostKnight.main_arm_loss(arm.get_name, boss)}
end

class LostKnight < Bestiary
    IS_BOSS = true
    EXPECTED_LEVEL = 12
    AMOUNT_BONUS = EXPECTED_LEVEL.div(BaseStats::LEVELS_PER_EXTRA_MONSTER)
    POWER_BONUS = EXPECTED_LEVEL * BaseStats::NB_STATS_PER_LEVEL * AMOUNT_BONUS
    MALE = LostKnightM
    FEMALE_CHANCES = 0
    PICTURE = 'lost_knight'
    LOOTS = [
        Loot.new(
            LocaleKey::KNIGHT_LOOT_COINS,
            100,
            Coins,
            [],
            40
        )
    ]
    WEAKPOINTS = [
        LostKnightHead
    ]
    BODYPARTS = [
        LostKnightLeftArm,
        LostKnightRightArm
    ]

    def self.slash(targets, allies, actor, boss)
        SoundManager.play('swoosh')
        Narrator.knight_slash
        sleep Settings.get_pause_duration
        3.times do
            target = actor.choose_target(targets)
            target.hurt(Attack.new((actor.get_strength.div(2)), Attack::PHYSIC_TYPE, actor))
        end
    end

    def self.limb_loss(name, boss)
        SoundManager.play('ennemy_death')
        Narrator.knight_limb_loss(name.get_gendered_the)
        sleep Settings.get_pause_duration
    end

    def self.main_arm_loss(name, boss)
        left_arm = boss.get_part_by(LostKnightLeftArm::ID)
        if left_arm != nil
            limb_loss(name, boss)
            SoundManager.play('taking_object')
            Narrator.knight_change_weapon_side(boss.get_name.get_gendered_the)
            sleep Settings.get_pause_duration
            SoundManager.play('equip')
            Narrator.knight_phase_change
            sleep Settings.get_pause_duration
            left_arm.add_special_move(SpecialMove.new(100, -> (target, pack, damage, boss) {slash(target, pack, damage, boss)}))
            left_arm.set_death_event(-> (players, left_arm, boss) {defenseless(left_arm.get_name, boss)})
        else
            defenseless(name, boss)
        end
    end

    def self.defenseless(name, boss)
        limb_loss(name, boss)
        SoundManager.play('unequip')
        Narrator.knight_defenseless(boss.get_name.get_gendered_the)
        sleep Settings.get_pause_duration
    end

    # death event

    def self.death(name, boss)
        SoundManager.play('ennemy_death')
        Narrator.knight_death1(boss.get_name.get_gendered_of)
        sleep Settings.get_pause_duration
        SoundManager.play('player_death')
        Narrator.knight_death2
        sleep Settings.get_pause_duration
    end
end
