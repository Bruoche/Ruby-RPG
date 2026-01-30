class GolemChestCrystal < Bestiary
    ID = 'chest_crystal'
    IS_WEAKPOINT = true
    UNPREDICTABILITY = 0
    HEALTH_MULTIPLIER = 2
    DAMAGE_MULTIPLIER = 0
    FEMALE = LocaleKey::GOLEM_CHEST_CRYSTAL
    FEMALE_CHANCES = 100
    PICTURE = 'boss_golem_chest_crystal'
    DEATH_EVENT = -> (players, crystal, boss_data) {
        GolemBoss.break_chest_crystal(boss_data)
    }
end

class GolemHeadCrystal < Bestiary
    ID = 'head_crystal'
    IS_WEAKPOINT = true
    UNPREDICTABILITY = 0
    HEALTH_MULTIPLIER = 1
    DAMAGE_MULTIPLIER = 0
    FEMALE = LocaleKey::GOLEM_HEAD_CRYSTAL
    FEMALE_CHANCES = 100
    PICTURE = 'boss_golem_head_crystal'
    LOOTS = [
        Loot.new(
            LocaleKey::GOLEM_CRYSTAL_LOOT,
            100,
            Amethyst
        )
    ]
    DEATH_EVENT = -> (players, crystal, boss_data) {
        GolemBoss.crystal_loss(crystal.get_name.get_gendered_the, boss_data, GolemBossHead::ID)
    }
end

class GolemRightArmCrystal < Bestiary
    ID = 'right_arm_crystal'
    IS_WEAKPOINT = true
    UNPREDICTABILITY = 0
    HEALTH_MULTIPLIER = 1
    DAMAGE_MULTIPLIER = 0
    FEMALE = LocaleKey::GOLEM_RIGHT_ARM_CRYSTAL
    FEMALE_CHANCES = 100
    PICTURE = 'boss_golem_right_arm_crystal'
    LOOTS = [
        Loot.new(
            LocaleKey::GOLEM_CRYSTAL_LOOT,
            100,
            Amethyst
        )
    ]
    DEATH_EVENT = -> (players, crystal, boss_data) {
        GolemBoss.crystal_loss(crystal.get_name.get_gendered_the, boss_data, GolemBossRightArm::ID)
    }
end

class GolemLeftArmCrystal < Bestiary
    ID = 'left_arm_crystal'
    IS_WEAKPOINT = true
    UNPREDICTABILITY = 0
    HEALTH_MULTIPLIER = 1
    DAMAGE_MULTIPLIER = 0
    FEMALE = LocaleKey::GOLEM_LEFT_ARM_CRYSTAL
    FEMALE_CHANCES = 100
    PICTURE = 'boss_golem_left_arm_crystal'
    LOOTS = [
        Loot.new(
            LocaleKey::GOLEM_CRYSTAL_LOOT,
            100,
            Amethyst
        )
    ]
    DEATH_EVENT = -> (players, crystal, boss_data) {
        GolemBoss.crystal_loss(crystal.get_name.get_gendered_the, boss_data, GolemBossLeftArm::ID)
    }
end

class GolemRightLegCrystal < Bestiary
    ID = 'right_leg_crystal'
    IS_WEAKPOINT = true
    UNPREDICTABILITY = 0
    HEALTH_MULTIPLIER = 1
    DAMAGE_MULTIPLIER = 0
    FEMALE = LocaleKey::GOLEM_RIGHT_LEG_CRYSTAL
    FEMALE_CHANCES = 100
    PICTURE = 'boss_golem_right_leg_crystal'
    LOOTS = [
        Loot.new(
            LocaleKey::GOLEM_CRYSTAL_LOOT,
            100,
            Amethyst
        )
    ]
    DEATH_EVENT = -> (players, crystal, boss_data) {
        GolemBoss.crystal_loss(crystal.get_name.get_gendered_the, boss_data, GolemBossRightLeg::ID)
    }
end

class GolemLeftLegCrystal < Bestiary
    ID = 'left_leg_crystal'
    IS_WEAKPOINT = true
    UNPREDICTABILITY = 0
    HEALTH_MULTIPLIER = 1
    DAMAGE_MULTIPLIER = 0
    FEMALE = LocaleKey::GOLEM_LEFT_LEG_CRYSTAL
    FEMALE_CHANCES = 100
    PICTURE = 'boss_golem_left_leg_crystal'
    LOOTS = [
        Loot.new(
            LocaleKey::GOLEM_CRYSTAL_LOOT,
            100,
            Amethyst
        )
    ]
    DEATH_EVENT = -> (players, crystal, boss_data) {
        GolemBoss.crystal_loss(crystal.get_name.get_gendered_the, boss_data, GolemBossLeftLeg::ID)
    }
end

class GolemBossHead < Bestiary
    ID = 'head'
    HEALTH_MULTIPLIER = 3
    DAMAGE_MULTIPLIER = 0
    FEMALE = LocaleKey::GOLEM_HEAD
    FEMALE_CHANCES = 100
    PICTURE = 'boss_golem_head'
    DEATH_EVENT = -> (players, limb, boss_data) {
        GolemBoss.lost_head(limb, boss_data)
    }
end

class GolemBossLeftArm < Bestiary
    ID = 'left_arm'
    HEALTH_MULTIPLIER = 3
    DAMAGE_MULTIPLIER = 0.72
    MALE = LocaleKey::GOLEM_LEFT_ARM
    FEMALE_CHANCES = 0
    PICTURE = 'boss_golem_left_arm'
    BASE_MOVES = [LocaleKey::KNIGHT_LEFT_ATTACK]
    DEATH_EVENT = -> (players, limb, boss_data) {
        GolemBoss.limb_loss(limb, boss_data, GolemLeftArmCrystal::ID)
    }
end

class GolemBossRightArm < Bestiary
    ID = 'right_arm'
    HEALTH_MULTIPLIER = 3
    DAMAGE_MULTIPLIER = 0.72
    MALE = LocaleKey::GOLEM_RIGHT_ARM
    FEMALE_CHANCES = 0
    PICTURE = 'boss_golem_right_arm'
    BASE_MOVES = [LocaleKey::KNIGHT_RIGHT_ATTACK]
    DEATH_EVENT = -> (players, limb, boss_data) {
        GolemBoss.limb_loss(limb, boss_data, GolemRightArmCrystal::ID)
    }
end

class GolemBossLeftLeg < Bestiary
    ID = 'left_leg'
    HEALTH_MULTIPLIER = 4
    DAMAGE_MULTIPLIER = 0.78
    MALE = LocaleKey::GOLEM_LEFT_LEG
    FEMALE_CHANCES = 0
    PICTURE = 'boss_golem_left_leg'
    BASE_MOVES = [LocaleKey::KNIGHT_LEFT_ATTACK]
    DEATH_EVENT = -> (players, limb, boss_data) {
        GolemBoss.limb_loss(limb, boss_data, GolemLeftLegCrystal::ID)
    }
end

class GolemBossRightLeg < Bestiary
    ID = 'right_leg'
    HEALTH_MULTIPLIER = 4
    DAMAGE_MULTIPLIER = 0.78
    MALE = LocaleKey::GOLEM_RIGHT_LEG
    FEMALE_CHANCES = 0
    PICTURE = 'boss_golem_right_leg'
    BASE_MOVES = [LocaleKey::KNIGHT_RIGHT_ATTACK]
    DEATH_EVENT = -> (players, limb, boss_data) {
        GolemBoss.limb_loss(limb, boss_data, GolemRightLegCrystal::ID)
    }
end

class GolemBoss < Bestiary
    IS_BOSS = true
    EXPECTED_LEVEL = 33
    MALE = LocaleKey::GOLEM_NAME
    FEMALE_CHANCES = 0
    PICTURE = 'boss_golem'
    BODYPARTS = [
        GolemBossHead,
        GolemHeadCrystal,
        GolemBossLeftArm,
        GolemLeftArmCrystal,
        GolemBossRightArm,
        GolemRightArmCrystal,
        GolemChestCrystal,
        GolemBossLeftLeg,
        GolemLeftLegCrystal,
        GolemBossRightLeg,
        GolemRightLegCrystal,
    ]

    def self.lost_head(limb, boss_data)
        GolemBoss.limb_loss(limb, boss_data, GolemHeadCrystal::ID)
        boss_data.add_status(Rage.new, -> (bodypart) {
            return !bodypart.is_weakpoint?
        })
    end

    def self.limb_loss(limb, boss_data, related_crystal_id)
        SoundManager.play('ennemy_death')
        Narrator.knight_limb_loss(limb.get_name.get_gendered_the)
        Game.wait
        crystal = boss_data.get_part_by(related_crystal_id)
        if crystal != nil && !crystal.died?
            room = boss_data.get_room
            room.get_monsters.add(MonsterFactory.make_monster(
                nil,
                CrystalCaves,
                5,
                room,
                [SmallGolem]
            ))
            boss_data.remove_part_by(related_crystal_id)
        end
        has_limbs_left = false
        for bodypart in boss_data.get_parts
            if !(bodypart.is_weakpoint? || bodypart.is?(GolemBossHead::ID) || bodypart == limb)
                has_limbs_left = true
            end
        end
        if !has_limbs_left
            GolemBoss.defenseless(boss_data)
        end
    end

    def self.crystal_loss(name, boss_data, related_limb_id)
        SoundManager.play('ennemy_death')
        Narrator.knight_limb_loss(name)
        Game.wait
        limb = boss_data.get_part_by(related_limb_id)
        if limb != nil
            limb_health = limb.get_max_life
            damage = limb_health.div(3) * 2
            limb.hurt(Attack.new(damage, Attack::PHYSIC_TYPE, boss_data))
        end
    end

    def self.defenseless(boss_data)
        heart = boss_data.get_part_by(GolemChestCrystal::ID)
        SoundManager.play('unequip')
        Narrator.knight_defenseless(boss_data.get_name.get_gendered_the)
        Game.wait
        room = boss_data.get_room
        if heart != nil
            room.add_loot(Loot.new(
                LocaleKey::GOLEM_HEART_LOOT,
                100,
                Amethyst
            ))
        end
        boss_data.kill(-> (bodypart) {
            if bodypart.is_weakpoint?
                room.add_loot(
                    Loot.new(
                        LocaleKey::GOLEM_CRYSTAL_LOOT,
                        100,
                        Amethyst
                    )
                )
            end
            return false
        })
    end

    def self.break_chest_crystal(boss_data)
        for limb in boss_data.get_parts
            if !limb.is_weakpoint?
                damage = limb.get_max_life.div(2)
                limb.hurt(Attack.new(damage, Attack::PHYSIC_TYPE, boss_data))
            end
        end
        boss_data.get_room.add_loot(Loot.new(
            LocaleKey::GOLEM_BROKEN_HEART_LOOT,
            100,
            Amethyst
        ))
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
