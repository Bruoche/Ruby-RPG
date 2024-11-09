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
            end
        end
    end
end
