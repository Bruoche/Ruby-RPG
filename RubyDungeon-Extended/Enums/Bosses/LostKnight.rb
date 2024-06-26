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
    BASE_MOVE = "vous met un coup de coude"
    SPECIAL_MOVES = []
    DEATH_EVENT = -> (arm, boss) {LostKnight.limb_loss(arm, boss)}
end

class LostKnightRightArm
    ID = "right_arm"
    HEALTH = BaseStats::BASE_HEALTH.div(2)
    DAMAGE = BaseStats::BASE_STRENGTH
    MALE = LostKnightRightArmM
    FEMALE_CHANCES = 0
    BASE_MOVE = "vous assène un coup d'épée."
    SPECIAL_MOVES = [
        SpecialMove.new(25, -> (target, damage, boss) {LostKnight.slash(target, damage, boss)})
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
    WEAKPOINTS = [
        LostKnightHead
    ]
    BODYPARTS = [
        LostKnightLeftArm,
        LostKnightRightArm
    ]

    def self.slash(target, damage, boss)
        puts "Le chevalier assène un coup d'épée puissant avec le seul objectif de trancher son ennemi."
        target.hurt(Attack.new(rand(damage..damage*2), Attack::PHYSIC_TYPE))
    end

    def self.limb_loss(name, boss)
        puts "#{name.get_gendered_the} se brise sous vos coups."
    end

    def self.main_arm_loss(name, boss)
        left_arm = boss.get(LostKnightLeftArm::ID)
        if left_arm != nil
            limb_loss(name, boss)
            puts "#{boss.get_name.get_gendered_the} change son arme de main."
            puts "Il semble être pris d'une résolution soudaine et insoupsonnée."
            left_arm.add_special_move(SpecialMove.new(50, -> (target, damage, boss) {slash(target, damage, boss)}))
            left_arm.set_death_event(-> (name, boss) {defenseless(name, boss)})
        else
            defenseless(name, boss)
        end
    end

    def self.defenseless(name, boss)
        limb_loss(name, boss)
        puts "#{boss.get_name.get_gendered_the} laisse son arme tomber au sol, impuissant."
    end

    # death event

    def self.death(name, boss)
        puts "Le casque #{boss.get_name.get_gendered_of} s'enfonce sous vos coups,"
        puts "Sous la pression du métal contre son crâne, un craquement sinistre résonne en son coeur."
        puts
        puts "Le chevalier reste immobile quelques instants, avant de s'effondrer soudainement."
    end
end
