class Bestiary
    def self.inherited(child)
        TracePoint.trace(:end) do |t|
            if child == t.self
                unless child.const_defined?(:LOOTS)
                    child.const_set(:LOOTS, [])
                end
                unless child.const_defined?(:IS_BOSS)
                    child.const_set(:IS_BOSS, false)
                end
                unless child.const_defined?(:IS_WEAKPOINT)
                    child.const_set(:IS_WEAKPOINT, false)
                end
                unless child.const_defined?(:MAGIC_PROPORTION)
                    child.const_set(:MAGIC_PROPORTION, 0)
                end
                unless child.const_defined?(:HEALING_PROPORTION)
                    child.const_set(:HEALING_PROPORTION, 50)
                end
                unless child.const_defined?(:UNPREDICTABILITY)
                    child.const_set(:UNPREDICTABILITY, 5)
                end
                unless child.const_defined?(:COWARDICE)
                    child.const_set(:COWARDICE, 0)
                end
                unless child.const_defined?(:ATTACK_EFFECTS)
                    child.const_set(:ATTACK_EFFECTS, [])
                end
                unless child.const_defined?(:BASE_MOVES)
                    child.const_set(:BASE_MOVES, [Locale.get_localized(LocaleKey::MONSTER_STRIKE)])
                end
                unless child.const_defined?(:SPELL_MOVES)
                    child.const_set(:SPELL_MOVES, [Locale.get_localized(LocaleKey::MONSTER_SPELL)])
                end
                unless child.const_defined?(:HEAL_MOVES)
                    child.const_set(:HEAL_MOVES, [Locale.get_localized(LocaleKey::MONSTER_HEAL)])
                end
                unless child.const_defined?(:ESCAPE_MOVE)
                    child.const_set(:ESCAPE_MOVE, [Locale.get_localized(LocaleKey::MONSTER_ESCAPE)])
                end
                unless child.const_defined?(:SPECIAL_MOVES)
                    child.const_set(:SPECIAL_MOVES, [])
                end
                unless child.const_defined?(:DEATH_EVENT)
                    child.const_set(:DEATH_EVENT, -> (players, dead_monster, pack) {
                        # no death event by default
                    })
                end
                unless child.const_defined?(:PICTURE)
                    child.const_set(:PICTURE, '')
                end
            end
        end
    end
end
