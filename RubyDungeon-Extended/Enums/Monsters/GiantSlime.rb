module GiantSlimeM
    NAMES = [
        LocaleKey::GIANT_SLIME
    ].freeze

    PREFIXES = [].freeze

    SUFFIXES = [
        LocaleKey::SCARY_M,
        LocaleKey::ANGRY_M,
        LocaleKey::WARY_M,
        LocaleKey::GREEN_M,
        LocaleKey::BLUISH_M,
        LocaleKey::GREYISH_M,
        LocaleKey::DARK_M
    ].freeze
end

class GiantSlime < Bestiary
    MALE = GiantSlimeM
    FEMALE_CHANCES = 0
    HEALTH_MULTIPLIER = 2
    DAMAGE_MULTIPLIER = 1
    PICTURE = 'giant_slime'
    UNPREDICTABILITY = 60
    NUMBER_OF_CHILDREN = 2
    DEATH_EVENT = -> (players, giant_slime, pack) {
        Narrator.write(format(Locale.get_localized(LocaleKey::SLIME_DIVIDE), giant_slime.get_name.get_gendered_of))
        SoundManager.play('goop')
        Game.wait
        slime_parameters = make_child_parameters(giant_slime)
        NUMBER_OF_CHILDREN.times do
            make_slime_and_add_to(pack, slime_parameters)
        end
    }

    private

    def self.make_child_parameters(parent)
        new_slime_name = parent.get_name
        new_slime_name.set_base_name(LocaleKey::SLIME)
        if new_slime_name.female?
            suffix = '_f'
        else
            suffix = '_m'
        end
        return [
            parent.get_room,
            parent.get_max_life.div(2),
            parent.get_strength.div(2),
            parent.get_intelligence,
            Slime::HEALING_PROPORTION,
            new_slime_name,
            [Locale.get_localized(LocaleKey::MONSTER_STRIKE)],
            [Locale.get_localized(LocaleKey::MONSTER_SPELL)],
            [Locale.get_localized(LocaleKey::MONSTER_HEAL)],
            [Locale.get_localized(LocaleKey::MONSTER_ESCAPE)],
            Slime::UNPREDICTABILITY,
            Slime::COWARDICE,
            ASCIIPicture.new(ASCIIPrinter::PREFIX + MonsterFactory::PICTURE_PREFIX + Slime::PICTURE + suffix),
            Slime.to_s,
            Slime::LOOTS,
            Slime::ATTACK_EFFECTS,
            Slime::DEATH_EVENT,
            Slime::SPECIAL_MOVES
        ]
    end

    def self.make_slime_and_add_to(pack, slime_parameters)
        slime = Monster.new(*slime_parameters)
        pack.add(slime)
    end
end
