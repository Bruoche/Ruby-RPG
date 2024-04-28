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
    FEMALE = LostKnightHeadF
    FEMALE_CHANCES = 100
end

class LostKnightLeftArm
    ID = "left_arm"
    MALE = LostKnightLeftArmM
    FEMALE_CHANCES = 0
end

class LostKnightRightArm
    ID = "right_arm"
    MALE = LostKnightRightArmM
    FEMALE_CHANCES = 0
end

class LostKnight
    EXPECTED_LEVEL = 10
    AMOUNT_BONUS = EXPECTED_LEVEL.div(BaseStats::LEVELS_PER_EXTRA_MONSTER)
    POWER_BONUS = EXPECTED_LEVEL * BaseStats::NB_STATS_PER_LEVEL * AMOUNT_BONUS
    MALE = LostKnightM
    FEMALE_CHANCES = 0
    WEAKPOINTS = [
        Weakpoint.new(
            BaseStats::BASE_HEALTH * 3 + POWER_BONUS,
            LostKnightHead,
            -> (head, boss) {death(head, boss)}
        )
    ]
    BODYPARTS = [
        Bodypart.new(
            BaseStats::BASE_HEALTH.div(2) + POWER_BONUS,
            1 + POWER_BONUS/2,
            LostKnightLeftArm,
            "vous met un coup de coude",
            [],
            -> (arm, boss) {limb_loss(arm, boss)}
        ),
        Bodypart.new(
            BaseStats::BASE_HEALTH.div(2) + POWER_BONUS,
            BaseStats::BASE_STRENGTH + POWER_BONUS/2,
            LostKnightRightArm,
            "vous assène un coup d'épée.",
            [
                SpecialMove.new(25, -> (target, damage, boss) {slash(target, damage, boss)})
            ],
            -> (arm, boss) {main_arm_loss(arm, boss)}
        ),
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
