class CharacterData
    NOT_FIGHTING = nil

    def self.inherited(child)
        TracePoint.trace(:end) do |t|
            if child == t.self
                unless child.const_defined?(:ROOM_DESCRIPTION)
                    child.const_set(:ROOM_DESCRIPTION, LocaleKey::DEFAULT_NPC_DESCRIPTION)
                end
                unless child.const_defined?(:WILLING_TO_TALK)
                    child.const_set(:WILLING_TO_TALK, -> (npc, player, is_already_talking) {true})
                end
                unless child.const_defined?(:SPECIAL_INTERACTIONS)
                    child.const_set(:SPECIAL_INTERACTIONS, [])
                end
                unless child.const_defined?(:COMBAT_BODY)
                    child.const_set(:COMBAT_BODY, NOT_FIGHTING)
                end
                unless child.const_defined?(:START_FIGHT_ACTION)
                    child.const_set(:START_FIGHT_ACTION, -> (character, room, first_attacked) {
                        #do nothing by default
                    })
                end
            end
        end
    end
end
