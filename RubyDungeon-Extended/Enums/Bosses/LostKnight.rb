module LostKnightM
    NAMES = [Locale::KEY_KNIGHT_NAME]
end

module LostKnightHeadF
    NAMES = [Locale::KEY_KNIGHT_HEAD]
end

module LostKnightRightArmM
    NAMES = [Locale::KEY_KNIGHT_RIGHT_ARM]
end

module LostKnightLeftArmM
    NAMES = [Locale::KEY_KNIGHT_LEFT_ARM]
end

class LostKnightHead
    ID = 'head'
    HEALTH = BaseStats::BASE_HEALTH * 3
    FEMALE = LostKnightHeadF
    FEMALE_CHANCES = 100
    DEATH_EVENT = -> (head, boss) {LostKnight.death(head, boss)}
end

class LostKnightLeftArm
    ID = 'left_arm'
    HEALTH = BaseStats::BASE_HEALTH.div(2)
    DAMAGE = BaseStats::BASE_STRENGTH.div(3) * 2
    MALE = LostKnightLeftArmM
    FEMALE_CHANCES = 0
    BASE_MOVES = [Locale::KEY_KNIGHT_LEFT_ATTACK]
    SPECIAL_MOVES = []
    DEATH_EVENT = -> (arm, boss) {LostKnight.limb_loss(arm, boss)}
end

class LostKnightRightArm
    ID = 'right_arm'
    HEALTH = BaseStats::BASE_HEALTH.div(2)
    DAMAGE = BaseStats::BASE_STRENGTH
    MALE = LostKnightRightArmM
    FEMALE_CHANCES = 0
    BASE_MOVES = [Locale::KEY_KNIGHT_RIGHT_ATTACK]
    SPECIAL_MOVES = [
        SpecialMove.new(10, -> (target, pack, damage, boss) {LostKnight.slash(target, pack, damage, boss)})
    ]
    DEATH_EVENT = -> (arm, boss) {LostKnight.main_arm_loss(arm, boss)}
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
            Locale::KEY_KNIGHT_LOOT_COINS,
            100,
            Coins,
            [],
            40
        ),
        Loot.new(
            Locale::KEY_KNIGHT_LOOT_NOTE,
            100,
            DevNote
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
        sleep Settings::BATTLE_ACTION_PAUSE
        target = actor.choose_target(targets)
        target.hurt(Attack.new(rand(actor.get_strength..actor.get_strength*2), Attack::PHYSIC_TYPE, actor))
    end

    def self.limb_loss(name, boss)
        SoundManager.play('ennemy_death')
        Narrator.knight_limb_loss(name.get_gendered_the)
        sleep Settings::BATTLE_ACTION_PAUSE
    end

    def self.main_arm_loss(name, boss)
        left_arm = boss.get_part_by(LostKnightLeftArm::ID)
        if left_arm != nil
            limb_loss(name, boss)
            SoundManager.play('taking_object')
            Narrator.knight_change_weapon_side(boss.get_name.get_gendered_the)
            sleep Settings::BATTLE_ACTION_PAUSE
            SoundManager.play('equip')
            Narrator.knight_phase_change
            sleep Settings::BATTLE_ACTION_PAUSE
            left_arm.add_special_move(SpecialMove.new(50, -> (target, pack, damage, boss) {slash(target, pack, damage, boss)}))
            left_arm.set_death_event(-> (name, boss) {defenseless(name, boss)})
        else
            defenseless(name, boss)
        end
    end

    def self.defenseless(name, boss)
        limb_loss(name, boss)
        SoundManager.play('unequip')
        Narrator.knight_defenseless(boss.get_name.get_gendered_the)
        sleep Settings::BATTLE_ACTION_PAUSE
    end

    # death event

    def self.death(name, boss)
        SoundManager.play('ennemy_death')
        Narrator.knight_death1(boss.get_name.get_gendered_of)
        sleep Settings::BATTLE_ACTION_PAUSE
        SoundManager.play('player_death')
        Narrator.knight_death2
        sleep Settings::BATTLE_ACTION_PAUSE
    end
end
