module LostKnightM
    NAMES = ["chevalier perdu"]
end

module LostKnightHeadF
    NAMES = ["#{Bodyparts::HEAD_F} du chevalier perdu"]
end

module LostKnightRightArmM
    NAMES = ["#{Bodyparts::ARM_M} #{Adjectives::RIGHT_M} du chevalier perdu"]
end

module LostKnightLeftArmM
    NAMES = ["#{Bodyparts::ARM_M} #{Adjectives::LEFT_M} du chevalier perdu"]
end

class LostKnightHead
    ID = "head"
    HEALTH = BaseStats::BASE_HEALTH * 3
    FEMALE = LostKnightHeadF
    FEMALE_CHANCES = 100
    DEATH_EVENT = -> (head, boss) {LostKnight.death(head, boss)}
end

class LostKnightLeftArm
    ID = "left_arm"
    HEALTH = BaseStats::BASE_HEALTH.div(2)
    DAMAGE = BaseStats::BASE_STRENGTH.div(3) * 2
    MALE = LostKnightLeftArmM
    FEMALE_CHANCES = 0
    BASE_MOVES = ["vous met un coup de coude"]
    SPECIAL_MOVES = []
    DEATH_EVENT = -> (arm, boss) {LostKnight.limb_loss(arm, boss)}
end

class LostKnightRightArm
    ID = "right_arm"
    HEALTH = BaseStats::BASE_HEALTH.div(2)
    DAMAGE = BaseStats::BASE_STRENGTH
    MALE = LostKnightRightArmM
    FEMALE_CHANCES = 0
    BASE_MOVES = ["vous assène un coup d'épée."]
    SPECIAL_MOVES = [
        SpecialMove.new(25, -> (target, pack, damage, boss) {LostKnight.slash(target, pack, damage, boss)})
    ]
    DEATH_EVENT = -> (arm, boss) {LostKnight.main_arm_loss(arm, boss)}
end

class LostKnight
    IS_BOSS = true
    EXPECTED_LEVEL = 10
    AMOUNT_BONUS = EXPECTED_LEVEL.div(BaseStats::LEVELS_PER_EXTRA_MONSTER)
    POWER_BONUS = EXPECTED_LEVEL * BaseStats::NB_STATS_PER_LEVEL * AMOUNT_BONUS
    MALE = LostKnightM
    FEMALE_CHANCES = 0
    PICTURE = "lost_knight"
    WEAKPOINTS = [
        LostKnightHead
    ]
    BODYPARTS = [
        LostKnightLeftArm,
        LostKnightRightArm
    ]

    def self.slash(targets, allies, actor, boss)
        SoundManager.play("swoosh")
        puts "Le chevalier assène un coup d'épée puissant avec l'objectif de trancher son ennemi."
        sleep Settings::BATTLE_ACTION_PAUSE
        target = actor.choose_target(targets)
        target.hurt(Attack.new(rand(actor.get_strength..actor.get_strength*2), Attack::PHYSIC_TYPE, actor))
    end

    def self.limb_loss(name, boss)
        SoundManager.play("ennemy_death")
        puts "#{name.get_gendered_the} se brise sous vos coups."
        sleep Settings::BATTLE_ACTION_PAUSE
    end

    def self.main_arm_loss(name, boss)
        left_arm = boss.get_part_by(LostKnightLeftArm::ID)
        if left_arm != nil
            limb_loss(name, boss)
            SoundManager.play("taking_object")
            puts "#{boss.get_name.get_gendered_the} change son arme de main."
            sleep Settings::BATTLE_ACTION_PAUSE
            SoundManager.play("equip")
            puts "Il semble être pris d'une résolution soudaine et insoupsonnée."
            sleep Settings::BATTLE_ACTION_PAUSE
            left_arm.add_special_move(SpecialMove.new(50, -> (target, pack, damage, boss) {slash(target, pack, damage, boss)}))
            left_arm.set_death_event(-> (name, boss) {defenseless(name, boss)})
        else
            defenseless(name, boss)
        end
    end

    def self.defenseless(name, boss)
        limb_loss(name, boss)
        SoundManager.play("unequip")
        puts "#{boss.get_name.get_gendered_the} laisse son arme tomber au sol, impuissant."
        sleep Settings::BATTLE_ACTION_PAUSE
    end

    # death event

    def self.death(name, boss)
        SoundManager.play("ennemy_death")
        puts "Le casque #{boss.get_name.get_gendered_of} s'enfonce sous vos coups,"
        puts "Sous la pression du métal contre son crâne, un craquement sinistre résonne en son coeur."
        sleep Settings::BATTLE_ACTION_PAUSE
        SoundManager.play("player_death")
        puts
        puts "Le chevalier reste immobile quelques instants, avant de s'effondrer soudainement."
        sleep Settings::BATTLE_ACTION_PAUSE
    end
end
