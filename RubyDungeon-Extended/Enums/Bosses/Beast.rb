class BeastHead < Bestiary
    ID = 'head'
    IS_WEAKPOINT = true
    HEALTH_MULTIPLIER = 3.7
    DAMAGE_MULTIPLIER = 0.35
    FEMALE = LocaleKey::KNIGHT_HEAD
    FEMALE_CHANCES = 100
    PICTURE = 'beast_head'
end

class BeastLeftPaw < Bestiary
    ID = 'left_arm'
    HEALTH_MULTIPLIER = 1.5
    DAMAGE_MULTIPLIER = 0.52
    MALE = LocaleKey::KNIGHT_LEFT_ARM
    FEMALE_CHANCES = 0
    PICTURE = 'beast_left_arm'
    BASE_MOVES = [LocaleKey::KNIGHT_LEFT_ATTACK]
    SPECIAL_MOVES = []
end

class BeastRightPaw < Bestiary
    ID = 'right_arm'
    HEALTH_MULTIPLIER = 1.5
    DAMAGE_MULTIPLIER = 0.52
    MALE = LocaleKey::KNIGHT_RIGHT_ARM
    FEMALE_CHANCES = 0
    PICTURE = 'beast_right_arm'
    BASE_MOVES = [LocaleKey::KNIGHT_RIGHT_ATTACK]
    SPECIAL_MOVES = []
end

class BeastStinger < Bestiary
    ID = 'stinger'
    HEALTH_MULTIPLIER = 1
    DAMAGE_MULTIPLIER = 0.25
    MALE = LocaleKey::KNIGHT_NAME
    FEMALE_CHANCES = 0
    PICTURE = 'beast_tail'
    BASE_MOVES = [LocaleKey::KNIGHT_RIGHT_ATTACK]
    SPECIAL_MOVES = []
end

class Beast < Bestiary
    IS_BOSS = true
    EXPECTED_LEVEL = 40
    MALE = LocaleKey::KNIGHT_NAME
    FEMALE_CHANCES = 0
    PICTURE = 'beast'
    LOOTS = [
        Loot.new(
            LocaleKey::KNIGHT_LOOT_COINS,
            100,
            Coins,
            [],
            40
        )
    ]
    BODYPARTS = [
        BeastHead,
        BeastLeftPaw,
        BeastRightPaw,
        BeastStinger
    ]
end
