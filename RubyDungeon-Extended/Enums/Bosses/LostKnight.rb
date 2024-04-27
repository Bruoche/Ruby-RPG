class LostKnight
    def self.make(difficulty_bonus)
        name = Name.new(
            name: "#{Monsters::KNIGHT_M} #{Adjectives::LOST_M}",
            female: false
        )
        @left_arm = Bodypart.new(
            BaseStats::BASE_HEALTH.div(2) + difficulty_bonus,
            BaseStats::BASE_STRENGTH.div(3) * 2 + difficulty_bonus,
            Name.new(
                name: "#{Bodyparts::ARM_M} #{Adjectives::LEFT_M} #{name.get_gendered_of}",
                female: false
            ),
            "vous met un coup de coude",
            [],
            -> (arm, boss) {limb_loss(arm, boss)}
        )
        @right_arm = Bodypart.new(
            BaseStats::BASE_HEALTH.div(2) + difficulty_bonus,
            BaseStats::BASE_STRENGTH + difficulty_bonus,
            Name.new(
                name: "#{Bodyparts::ARM_M} #{Adjectives::RIGHT_M} #{name.get_gendered_of}",
                female: false
            ),
            "vous assène un coup d'épée.",
            [
                SpecialMove.new(25, -> (target, damage, boss) {slash(target, damage, boss)})
            ],
            -> (arm, boss) {main_arm_loss(arm, boss)}
        )
        @head = Weakpoint.new(
            BaseStats::BASE_HEALTH.div(2) * 5 + difficulty_bonus,
            Name.new(
                name: "#{Bodyparts::HEAD_F} #{name.get_gendered_of}",
                female: true
            ),
            -> (head, boss) {death(head, boss)}
        )
        return Boss.new(
            [
                @head
            ],
            [
                @left_arm,
                @right_arm
            ],
            name
        )
    end

    def self.limb_loss(name, boss)
        puts "#{name.get_gendered_the} se brise sous vos coups."
    end

    def self.main_arm_loss(name, boss)
        left_arm = boss.get(@left_arm)
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

    def self.death(name, boss)
        puts "Le casque #{boss.get_name.get_gendered_of} s'enfonce sous vos coups,"
        puts "faisant raisonner un craquement sinistre en son coeur."
        puts
        puts "Le chevalier reste immobile quelques instants, avant de s'effondrer soudainement."
    end

    def self.slash(target, damage, boss)
        puts "Le chevalier assène un coup d'épée puissant avec l'objectif de trancher son ennemi."
        target.hurt(Attack.new(rand(damage..damage*2), Attack::PHYSIC_TYPE))
    end
end
