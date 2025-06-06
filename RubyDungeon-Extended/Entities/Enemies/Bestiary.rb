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
            end
        end
    end
end
