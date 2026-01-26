class LostKnightHead < Bestiary
    ID = 'head'
    IS_WEAKPOINT = true
    HEALTH_MULTIPLIER = 4
    DAMAGE_MULTIPLIER = 0
    FEMALE = LocaleKey::KNIGHT_HEAD
    FEMALE_CHANCES = 100
    PICTURE = 'lost_knight_head'
    DEATH_EVENT = -> (players, head, boss_data) {LostKnight.death(head.get_name, boss_data)}
end

class LostKnightLeftArm < Bestiary
    ID = 'left_arm'
    HEALTH_MULTIPLIER = 1
    DAMAGE_MULTIPLIER = 1.2
    MALE = LocaleKey::KNIGHT_LEFT_ARM
    FEMALE_CHANCES = 0
    PICTURE = 'lost_knight_left_arm'
    BASE_MOVES = [LocaleKey::KNIGHT_LEFT_ATTACK]
    SPECIAL_MOVES = []
    DEATH_EVENT = -> (players, arm, boss_data) {LostKnight.limb_loss(arm.get_name, boss_data)}
end

class LostKnightRightArm < Bestiary
    ID = 'right_arm'
    HEALTH_MULTIPLIER = 1
    DAMAGE_MULTIPLIER = 1.5
    MALE = LocaleKey::KNIGHT_RIGHT_ARM
    FEMALE_CHANCES = 0
    PICTURE = 'lost_knight_right_arm'
    BASE_MOVES = [LocaleKey::KNIGHT_RIGHT_ATTACK]
    SPECIAL_MOVES = [
        SpecialMove.new(33, -> (target, pack, damage, boss_data) {LostKnight.slash(target, pack, damage, boss_data)})
    ]
    DEATH_EVENT = -> (players, arm, boss_data) {LostKnight.main_arm_loss(arm.get_name, boss_data)}
end

class LostKnight < Bestiary
    IS_BOSS = true
    EXPECTED_LEVEL = 12
    MALE = LocaleKey::KNIGHT_NAME
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
    BODYPARTS = [
        LostKnightHead,
        LostKnightLeftArm,
        LostKnightRightArm
    ]

    def self.slash(targets, allies, actor, boss_data)
        SoundManager.play('swoosh')
        Narrator.knight_slash
        Game.wait
        3.times do
            target = actor.choose_target(targets)
            target.hurt(Attack.new((actor.get_strength.div(2)), Attack::PHYSIC_TYPE, actor))
        end
        return !SpecialMove::END_TURN
    end

    def self.limb_loss(name, boss_data)
        SoundManager.play('ennemy_death')
        Narrator.knight_limb_loss(name.get_gendered_the)
        Game.wait
    end

    def self.main_arm_loss(name, boss_data)
        left_arm = boss_data.get_part_by(LostKnightLeftArm::ID)
        if left_arm != nil
            limb_loss(name, boss_data)
            SoundManager.play('taking_object')
            Narrator.knight_change_weapon_side(boss_data.get_name.get_gendered_the)
            Game.wait
            SoundManager.play('equip')
            Narrator.knight_phase_change
            Game.wait
            left_arm.add_special_move(SpecialMove.new(100, -> (target, pack, damage, boss_data) {slash(target, pack, damage, boss_data)}))
            left_arm.set_death_event(-> (players, left_arm, boss_data) {defenseless(left_arm.get_name, boss_data)})
        else
            defenseless(name, boss_data)
        end
    end

    def self.defenseless(name, boss_data)
        limb_loss(name, boss_data)
        SoundManager.play('unequip')
        Narrator.knight_defenseless(boss_data.get_name.get_gendered_the)
        Game.wait
    end

    def self.death(name, boss_data)
        SoundManager.play('ennemy_death')
        Narrator.knight_death1(boss_data.get_name.get_gendered_of)
        Game.wait
        SoundManager.play('player_death')
        Narrator.knight_death2
        Game.wait
        Narrator.pause_text
    end
end
