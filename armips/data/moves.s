.nds
.thumb

.include "armips/include/macros.s"
.include "armips/include/constants.s"
.include "armips/include/config.s"
.include "armips/include/movemacros.s"
.include "armips/include/movenums.s"

movedata MOVE_NONE, "-"
    battleeffect 0
    pss SPLIT_PHYSICAL
    basepower 0
    type TYPE_NORMAL
    accuracy 0
    pp 0
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags 0x00
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_POUND, "Pound"
    battleeffect 0
    pss SPLIT_PHYSICAL
    basepower 40
    type TYPE_NORMAL
    accuracy 100
    pp 35
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_KINGS_ROCK | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal 0x05
    contesttype CONTEST_TOUGH
    terminatedata

movedata MOVE_KARATE_CHOP, "Karate Chop"
    battleeffect 43
    pss SPLIT_PHYSICAL
    basepower 50
    type TYPE_FIGHTING
    accuracy 100
    pp 25
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_KINGS_ROCK | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal 0x05
    contesttype CONTEST_TOUGH
    terminatedata

movedata MOVE_DOUBLE_SLAP, "DoubleSlap"
    battleeffect 29
    pss SPLIT_PHYSICAL
    basepower 15
    type TYPE_NORMAL
    accuracy 85
    pp 10
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_KINGS_ROCK | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal 0x07
    contesttype CONTEST_TOUGH
    terminatedata

movedata MOVE_COMET_PUNCH, "Comet Punch"
    battleeffect 29
    pss SPLIT_PHYSICAL
    basepower 18
    type TYPE_NORMAL
    accuracy 85
    pp 15
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_KINGS_ROCK | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal 0x07
    contesttype CONTEST_TOUGH
    terminatedata

movedata MOVE_MEGA_PUNCH, "Mega Punch"
    battleeffect 0
    pss SPLIT_PHYSICAL
    basepower 80
    type TYPE_NORMAL
    accuracy 85
    pp 20
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KINGS_ROCK | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal 0x12
    contesttype CONTEST_TOUGH
    terminatedata

movedata MOVE_PAY_DAY, "Pay Day"
    battleeffect 34
    pss SPLIT_PHYSICAL
    basepower 40
    type TYPE_NORMAL
    accuracy 100
    pp 20
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KINGS_ROCK | FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal 0x17
    contesttype CONTEST_SMART
    terminatedata

movedata MOVE_FIRE_PUNCH, "Fire Punch"
    battleeffect 4
    pss SPLIT_PHYSICAL
    basepower 75
    type TYPE_FIRE
    accuracy 100
    pp 15
    effectchance 10
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal 0x11
    contesttype CONTEST_BEAUTY
    terminatedata

movedata MOVE_ICE_PUNCH, "Ice Punch"
    battleeffect 5
    pss SPLIT_PHYSICAL
    basepower 75
    type TYPE_ICE
    accuracy 100
    pp 15
    effectchance 10
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal 0x11
    contesttype CONTEST_BEAUTY
    terminatedata

movedata MOVE_THUNDER_PUNCH, "ThunderPunch"
    battleeffect 6
    pss SPLIT_PHYSICAL
    basepower 75
    type TYPE_ELECTRIC
    accuracy 100
    pp 15
    effectchance 10
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal 0x11
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_SCRATCH, "Scratch"
    battleeffect 0
    pss SPLIT_PHYSICAL
    basepower 40
    type TYPE_NORMAL
    accuracy 100
    pp 35
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_KINGS_ROCK | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal 0x05
    contesttype CONTEST_TOUGH
    terminatedata

movedata MOVE_VICE_GRIP, "ViceGrip"
    battleeffect 0
    pss SPLIT_PHYSICAL
    basepower 55
    type TYPE_NORMAL
    accuracy 100
    pp 30
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KINGS_ROCK | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal 0x05
    contesttype CONTEST_TOUGH
    terminatedata

movedata MOVE_GUILLOTINE, "Guillotine"
    battleeffect 38
    pss SPLIT_PHYSICAL
    basepower 1
    type TYPE_NORMAL
    accuracy 30
    pp 5
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal 0x09
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_RAZOR_WIND, "Razor Wind"
    battleeffect 39
    pss SPLIT_SPECIAL
    basepower 80
    type TYPE_NORMAL
    accuracy 100
    pp 10
    effectchance 0
    target MOVE_TARGET_BOTH
    priority 0
    flags FLAG_KINGS_ROCK | FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal 0x06
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_SWORDS_DANCE, "Swords Dance"
    battleeffect 50
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy 0
    pp 20
    effectchance 0
    target MOVE_TARGET_USER
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_SNATCH
    appeal 0x0B
    contesttype CONTEST_BEAUTY
    terminatedata

movedata MOVE_CUT, "Cut"
    battleeffect 0
    pss SPLIT_PHYSICAL
    basepower 50
    type TYPE_NORMAL
    accuracy 95
    pp 30
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_KINGS_ROCK | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal 0x05
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_GUST, "Gust"
    battleeffect 149
    pss SPLIT_SPECIAL
    basepower 40
    type TYPE_FLYING
    accuracy 100
    pp 35
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KINGS_ROCK | FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal 0x05
    contesttype CONTEST_SMART
    terminatedata

movedata MOVE_WING_ATTACK, "Wing Attack"
    battleeffect 0
    pss SPLIT_PHYSICAL
    basepower 60
    type TYPE_FLYING
    accuracy 100
    pp 35
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_KINGS_ROCK | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal 0x05
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_WHIRLWIND, "Whirlwind"
    battleeffect 28
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy 0
    pp 20
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority -6
    flags FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_MAGIC_COAT
    appeal 0x09
    contesttype CONTEST_SMART
    terminatedata

movedata MOVE_FLY, "Fly"
    battleeffect 155
    pss SPLIT_PHYSICAL
    basepower 90
    type TYPE_FLYING
    accuracy 95
    pp 15
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_HIDE_SHADOW | FLAG_KINGS_ROCK | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal 0x06
    contesttype CONTEST_SMART
    terminatedata

movedata MOVE_BIND, "Bind"
    battleeffect 42
    pss SPLIT_PHYSICAL
    basepower 15
    type TYPE_NORMAL
    accuracy 85
    pp 20
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_KINGS_ROCK | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal 0x15
    contesttype CONTEST_TOUGH
    terminatedata

movedata MOVE_SLAM, "Slam"
    battleeffect 0
    pss SPLIT_PHYSICAL
    basepower 80
    type TYPE_NORMAL
    accuracy 75
    pp 20
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KINGS_ROCK | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal 0x05
    contesttype CONTEST_TOUGH
    terminatedata

movedata MOVE_VINE_WHIP, "Vine Whip"
    battleeffect 0
    pss SPLIT_PHYSICAL
    basepower 45
    type TYPE_GRASS
    accuracy 100
    pp 25
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_KINGS_ROCK | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal 0x05
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_STOMP, "Stomp"
    battleeffect 150
    pss SPLIT_PHYSICAL
    basepower 65
    type TYPE_NORMAL
    accuracy 100
    pp 20
    effectchance 30
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal 0x05
    contesttype CONTEST_TOUGH
    terminatedata

movedata MOVE_DOUBLE_KICK, "Double Kick"
    battleeffect 44
    pss SPLIT_PHYSICAL
    basepower 30
    type TYPE_FIGHTING
    accuracy 100
    pp 30
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_KINGS_ROCK | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal 0x07
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_MEGA_KICK, "Mega Kick"
    battleeffect 0
    pss SPLIT_PHYSICAL
    basepower 120
    type TYPE_NORMAL
    accuracy 75
    pp 5
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_HIDE_SHADOW | FLAG_KINGS_ROCK | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal 0x12
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_JUMP_KICK, "Jump Kick"
    battleeffect 45
    pss SPLIT_PHYSICAL
    basepower 100
    type TYPE_FIGHTING
    accuracy 95
    pp 10
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KINGS_ROCK | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal 0x05
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_ROLLING_KICK, "Rolling Kick"
    battleeffect 31
    pss SPLIT_PHYSICAL
    basepower 60
    type TYPE_FIGHTING
    accuracy 85
    pp 15
    effectchance 30
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KINGS_ROCK | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal 0x05
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_SAND_ATTACK, "Sand-Attack"
    battleeffect 23
    pss SPLIT_STATUS
    basepower 0
    type TYPE_GROUND
    accuracy 100
    pp 15
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_MAGIC_COAT | FLAG_PROTECT
    appeal 0x13
    contesttype CONTEST_CUTE
    terminatedata

movedata MOVE_HEADBUTT, "Headbutt"
    battleeffect 31
    pss SPLIT_PHYSICAL
    basepower 70
    type TYPE_NORMAL
    accuracy 100
    pp 15
    effectchance 30
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal 0x05
    contesttype CONTEST_TOUGH
    terminatedata

movedata MOVE_HORN_ATTACK, "Horn Attack"
    battleeffect 0
    pss SPLIT_PHYSICAL
    basepower 65
    type TYPE_NORMAL
    accuracy 100
    pp 25
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KINGS_ROCK | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal 0x05
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_FURY_ATTACK, "Fury Attack"
    battleeffect 29
    pss SPLIT_PHYSICAL
    basepower 15
    type TYPE_NORMAL
    accuracy 85
    pp 20
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_KINGS_ROCK | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal 0x07
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_HORN_DRILL, "Horn Drill"
    battleeffect 38
    pss SPLIT_PHYSICAL
    basepower 1
    type TYPE_NORMAL
    accuracy 30
    pp 5
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal 0x09
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_TACKLE, "Tackle"
    battleeffect 0
    pss SPLIT_PHYSICAL
    basepower 40
    type TYPE_NORMAL
    accuracy 100
    pp 35
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_KINGS_ROCK | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal 0x05
    contesttype CONTEST_TOUGH
    terminatedata

movedata MOVE_BODY_SLAM, "Body Slam"
    battleeffect 6
    pss SPLIT_PHYSICAL
    basepower 85
    type TYPE_NORMAL
    accuracy 100
    pp 15
    effectchance 30
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal 0x05
    contesttype CONTEST_TOUGH
    terminatedata

movedata MOVE_WRAP, "Wrap"
    battleeffect 42
    pss SPLIT_PHYSICAL
    basepower 15
    type TYPE_NORMAL
    accuracy 90
    pp 20
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KINGS_ROCK | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal 0x15
    contesttype CONTEST_TOUGH
    terminatedata

movedata MOVE_TAKE_DOWN, "Take Down"
    battleeffect 48
    pss SPLIT_PHYSICAL
    basepower 90
    type TYPE_NORMAL
    accuracy 85
    pp 20
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KINGS_ROCK | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal 0x05
    contesttype CONTEST_TOUGH
    terminatedata

movedata MOVE_THRASH, "Thrash"
    battleeffect 27
    pss SPLIT_PHYSICAL
    basepower 120
    type TYPE_NORMAL
    accuracy 100
    pp 10
    effectchance 0
    target MOVE_TARGET_RANDOM
    priority 0
    flags FLAG_KINGS_ROCK | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal 0x07
    contesttype CONTEST_TOUGH
    terminatedata

movedata MOVE_DOUBLE_EDGE, "Double-Edge"
    battleeffect 198
    pss SPLIT_PHYSICAL
    basepower 120
    type TYPE_NORMAL
    accuracy 100
    pp 15
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_HIDE_SHADOW | FLAG_KINGS_ROCK | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal 0x09
    contesttype CONTEST_TOUGH
    terminatedata

movedata MOVE_TAIL_WHIP, "Tail Whip"
    battleeffect 19
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy 100
    pp 30
    effectchance 0
    target MOVE_TARGET_BOTH
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_MAGIC_COAT | FLAG_PROTECT
    appeal 0x13
    contesttype CONTEST_CUTE
    terminatedata

movedata MOVE_POISON_STING, "Poison Sting"
    battleeffect 2
    pss SPLIT_PHYSICAL
    basepower 15
    type TYPE_POISON
    accuracy 100
    pp 35
    effectchance 30
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal 0x13
    contesttype CONTEST_SMART
    terminatedata

movedata MOVE_TWINEEDLE, "Twineedle"
    battleeffect 77
    pss SPLIT_PHYSICAL
    basepower 25
    type TYPE_BUG
    accuracy 100
    pp 20
    effectchance 20
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal 0x07
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_PIN_MISSILE, "Pin Missile"
    battleeffect 29
    pss SPLIT_PHYSICAL
    basepower 25
    type TYPE_BUG
    accuracy 95
    pp 20
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_KINGS_ROCK | FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal 0x07
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_LEER, "Leer"
    battleeffect 19
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy 100
    pp 30
    effectchance 0
    target MOVE_TARGET_BOTH
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_MAGIC_COAT | FLAG_PROTECT
    appeal 0x13
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_BITE, "Bite"
    battleeffect 31
    pss SPLIT_PHYSICAL
    basepower 60
    type TYPE_DARK
    accuracy 100
    pp 25
    effectchance 30
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal 0x05
    contesttype CONTEST_TOUGH
    terminatedata

movedata MOVE_GROWL, "Growl"
    battleeffect 18
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy 100
    pp 40
    effectchance 0
    target MOVE_TARGET_BOTH
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_MAGIC_COAT | FLAG_PROTECT
    appeal 0x13
    contesttype CONTEST_CUTE
    terminatedata

movedata MOVE_ROAR, "Roar"
    battleeffect 28
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy DEBUG_NEEDS_TESTING ? 0 : 100 // come back to check accuracyless later
    pp 20
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority -6
    flags FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT
    appeal 0x13
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_SING, "Sing"
    battleeffect 1
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy 55
    pp 15
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_MAGIC_COAT | FLAG_PROTECT
    appeal 0x13
    contesttype CONTEST_CUTE
    terminatedata

movedata MOVE_SUPERSONIC, "Supersonic"
    battleeffect 49
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy 55
    pp 20
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_MAGIC_COAT | FLAG_PROTECT
    appeal 0x13
    contesttype CONTEST_SMART
    terminatedata

movedata MOVE_SONIC_BOOM, "SonicBoom"
    battleeffect 130
    pss SPLIT_SPECIAL
    basepower 1
    type TYPE_NORMAL
    accuracy 90
    pp 20
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_KINGS_ROCK | FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal 0x05
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_DISABLE, "Disable"
    battleeffect 86
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy 100
    pp 20
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT
    appeal 0x13
    contesttype CONTEST_SMART
    terminatedata

movedata MOVE_ACID, "Acid"
    battleeffect 72
    pss SPLIT_SPECIAL
    basepower 40
    type TYPE_POISON
    accuracy 100
    pp 30
    effectchance 10
    target MOVE_TARGET_BOTH
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal 0x05
    contesttype CONTEST_SMART
    terminatedata

movedata MOVE_EMBER, "Ember"
    battleeffect 4
    pss SPLIT_SPECIAL
    basepower 40
    type TYPE_FIRE
    accuracy 100
    pp 25
    effectchance 10
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal 0x05
    contesttype CONTEST_BEAUTY
    terminatedata

movedata MOVE_FLAMETHROWER, "Flamethrower"
    battleeffect 4
    pss SPLIT_SPECIAL
    basepower 90
    type TYPE_FIRE
    accuracy 100
    pp 15
    effectchance 10
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal 0x11
    contesttype CONTEST_BEAUTY
    terminatedata

movedata MOVE_MIST, "Mist"
    battleeffect 46
    pss SPLIT_STATUS
    basepower 0
    type TYPE_ICE
    accuracy 0
    pp 30
    effectchance 0
    target MOVE_TARGET_USER_SIDE
    priority 0
    flags FLAG_SNATCH
    appeal 0x0D
    contesttype CONTEST_BEAUTY
    terminatedata

movedata MOVE_WATER_GUN, "Water Gun"
    battleeffect 0
    pss SPLIT_SPECIAL
    basepower 40
    type TYPE_WATER
    accuracy 100
    pp 25
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KINGS_ROCK | FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal 0x05
    contesttype CONTEST_CUTE
    terminatedata

movedata MOVE_HYDRO_PUMP, "Hydro Pump"
    battleeffect 0
    pss SPLIT_SPECIAL
    basepower 110
    type TYPE_WATER
    accuracy 80
    pp 5
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_HIDE_SHADOW | FLAG_KINGS_ROCK | FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal 0x11
    contesttype CONTEST_BEAUTY
    terminatedata

movedata MOVE_SURF, "Surf"
    battleeffect 257
    pss SPLIT_SPECIAL
    basepower 90
    type TYPE_WATER
    accuracy 100
    pp 15
    effectchance 0
    target MOVE_TARGET_FOES_AND_ALLY
    priority 0
    flags FLAG_KINGS_ROCK | FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal 0x11
    contesttype CONTEST_BEAUTY
    terminatedata

movedata MOVE_ICE_BEAM, "Ice Beam"
    battleeffect 5
    pss SPLIT_SPECIAL
    basepower 90
    type TYPE_ICE
    accuracy 100
    pp 10
    effectchance 10
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal 0x11
    contesttype CONTEST_BEAUTY
    terminatedata

movedata MOVE_BLIZZARD, "Blizzard"
    battleeffect 260
    pss SPLIT_SPECIAL
    basepower 110
    type TYPE_ICE
    accuracy 70
    pp 5
    effectchance 10
    target MOVE_TARGET_BOTH
    priority 0
    flags FLAG_HIDE_SHADOW | FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal 0x11
    contesttype CONTEST_BEAUTY
    terminatedata

movedata MOVE_PSYBEAM, "Psybeam"
    battleeffect 76
    pss SPLIT_SPECIAL
    basepower 65
    type TYPE_PSYCHIC
    accuracy 100
    pp 20
    effectchance 10
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal 0x11
    contesttype CONTEST_BEAUTY
    terminatedata

movedata MOVE_BUBBLE_BEAM, "BubbleBeam"
    battleeffect 70
    pss SPLIT_SPECIAL
    basepower 65
    type TYPE_WATER
    accuracy 100
    pp 20
    effectchance 10
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal 0x02
    contesttype CONTEST_BEAUTY
    terminatedata

movedata MOVE_AURORA_BEAM, "Aurora Beam"
    battleeffect 68
    pss SPLIT_SPECIAL
    basepower 65
    type TYPE_ICE
    accuracy 100
    pp 20
    effectchance 10
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal 0x11
    contesttype CONTEST_BEAUTY
    terminatedata

movedata MOVE_HYPER_BEAM, "Hyper Beam"
    battleeffect 80
    pss SPLIT_SPECIAL
    basepower 150
    type TYPE_NORMAL
    accuracy 90
    pp 5
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_HIDE_SHADOW | FLAG_KINGS_ROCK | FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal 0x16
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_PECK, "Peck"
    battleeffect 0
    pss SPLIT_PHYSICAL
    basepower 35
    type TYPE_FLYING
    accuracy 100
    pp 35
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_KINGS_ROCK | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal 0x05
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_DRILL_PECK, "Drill Peck"
    battleeffect 0
    pss SPLIT_PHYSICAL
    basepower 80
    type TYPE_FLYING
    accuracy 100
    pp 20
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KINGS_ROCK | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal 0x05
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_SUBMISSION, "Submission"
    battleeffect 48
    pss SPLIT_PHYSICAL
    basepower 80
    type TYPE_FIGHTING
    accuracy 80
    pp 20
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KINGS_ROCK | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal 0x05
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_LOW_KICK, "Low Kick"
    battleeffect 196
    pss SPLIT_PHYSICAL
    basepower 1
    type TYPE_FIGHTING
    accuracy 100
    pp 20
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_KINGS_ROCK | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal 0x05
    contesttype CONTEST_TOUGH
    terminatedata

movedata MOVE_COUNTER, "Counter"
    battleeffect 89
    pss SPLIT_PHYSICAL
    basepower 1
    type TYPE_FIGHTING
    accuracy 100
    pp 20
    effectchance 0
    target MOVE_TARGET_DEPENDS
    priority -5
    flags FLAG_PROTECT | FLAG_CONTACT
    appeal 0x0F
    contesttype CONTEST_TOUGH
    terminatedata

movedata MOVE_SEISMIC_TOSS, "Seismic Toss"
    battleeffect 87
    pss SPLIT_PHYSICAL
    basepower 1
    type TYPE_FIGHTING
    accuracy 100
    pp 20
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_HIDE_SHADOW | FLAG_KINGS_ROCK | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal 0x05
    contesttype CONTEST_TOUGH
    terminatedata

movedata MOVE_STRENGTH, "Strength"
    battleeffect 0
    pss SPLIT_PHYSICAL
    basepower 80
    type TYPE_NORMAL
    accuracy 100
    pp 15
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KINGS_ROCK | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal 0x05
    contesttype CONTEST_TOUGH
    terminatedata

movedata MOVE_ABSORB, "Absorb"
    battleeffect 3
    pss SPLIT_SPECIAL
    basepower 20
    type TYPE_GRASS
    accuracy 100
    pp 25
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal 0x14
    contesttype CONTEST_SMART
    terminatedata

movedata MOVE_MEGA_DRAIN, "Mega Drain"
    battleeffect 3
    pss SPLIT_SPECIAL
    basepower 40
    type TYPE_GRASS
    accuracy 100
    pp 15
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal 0x14
    contesttype CONTEST_SMART
    terminatedata

movedata MOVE_LEECH_SEED, "Leech Seed"
    battleeffect 84
    pss SPLIT_STATUS
    basepower 0
    type TYPE_GRASS
    accuracy 90
    pp 10
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_MAGIC_COAT | FLAG_PROTECT
    appeal 0x15
    contesttype CONTEST_SMART
    terminatedata

movedata MOVE_GROWTH, "Growth"
    battleeffect 13
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy 0
    pp 20
    effectchance 0
    target MOVE_TARGET_USER
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_SNATCH
    appeal 0x0B
    contesttype CONTEST_BEAUTY
    terminatedata

movedata MOVE_RAZOR_LEAF, "Razor Leaf"
    battleeffect 43
    pss SPLIT_PHYSICAL
    basepower 55
    type TYPE_GRASS
    accuracy 95
    pp 25
    effectchance 0
    target MOVE_TARGET_BOTH
    priority 0
    flags FLAG_KINGS_ROCK | FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal 0x05
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_SOLAR_BEAM, "SolarBeam"
    battleeffect 151
    pss SPLIT_SPECIAL
    basepower 120
    type TYPE_GRASS
    accuracy 100
    pp 10
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KINGS_ROCK | FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal 0x06
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_POISON_POWDER, "PoisonPowder"
    battleeffect 66
    pss SPLIT_STATUS
    basepower 0
    type TYPE_POISON
    accuracy 75
    pp 35
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_MAGIC_COAT | FLAG_PROTECT
    appeal 0x13
    contesttype CONTEST_SMART
    terminatedata

movedata MOVE_STUN_SPORE, "Stun Spore"
    battleeffect 67
    pss SPLIT_STATUS
    basepower 0
    type TYPE_GRASS
    accuracy 75
    pp 30
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_MAGIC_COAT | FLAG_PROTECT
    appeal 0x13
    contesttype CONTEST_SMART
    terminatedata

movedata MOVE_SLEEP_POWDER, "Sleep Powder"
    battleeffect 1
    pss SPLIT_STATUS
    basepower 0
    type TYPE_GRASS
    accuracy 75
    pp 15
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_MAGIC_COAT | FLAG_PROTECT
    appeal 0x13
    contesttype CONTEST_SMART
    terminatedata

movedata MOVE_PETAL_DANCE, "Petal Dance"
    battleeffect 27
    pss SPLIT_SPECIAL
    basepower 120
    type TYPE_GRASS
    accuracy 100
    pp 10
    effectchance 0
    target MOVE_TARGET_RANDOM
    priority 0
    flags FLAG_KINGS_ROCK | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal 0x15
    contesttype CONTEST_BEAUTY
    terminatedata

movedata MOVE_STRING_SHOT, "String Shot"
    battleeffect 20
    pss SPLIT_STATUS
    basepower 0
    type TYPE_BUG
    accuracy 95
    pp 40
    effectchance 0
    target MOVE_TARGET_BOTH
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_MAGIC_COAT | FLAG_PROTECT
    appeal 0x13
    contesttype CONTEST_SMART
    terminatedata

movedata MOVE_DRAGON_RAGE, "Dragon Rage"
    battleeffect 41
    pss SPLIT_SPECIAL
    basepower 1
    type TYPE_DRAGON
    accuracy 100
    pp 10
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KINGS_ROCK | FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal 0x05
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_FIRE_SPIN, "Fire Spin"
    battleeffect 42
    pss SPLIT_SPECIAL
    basepower 35
    type TYPE_FIRE
    accuracy 85
    pp 15
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KINGS_ROCK | FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal 0x15
    contesttype CONTEST_BEAUTY
    terminatedata

movedata MOVE_THUNDER_SHOCK, "ThunderShock"
    battleeffect 6
    pss SPLIT_SPECIAL
    basepower 40
    type TYPE_ELECTRIC
    accuracy 100
    pp 30
    effectchance 10
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal 0x05
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_THUNDERBOLT, "Thunderbolt"
    battleeffect 6
    pss SPLIT_SPECIAL
    basepower 90
    type TYPE_ELECTRIC
    accuracy 100
    pp 15
    effectchance 10
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal 0x11
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_THUNDER_WAVE, "Thunder Wave"
    battleeffect 67
    pss SPLIT_STATUS
    basepower 0
    type TYPE_ELECTRIC
    accuracy 90
    pp 20
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_MAGIC_COAT | FLAG_PROTECT
    appeal 0x13
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_THUNDER, "Thunder"
    battleeffect 152
    pss SPLIT_SPECIAL
    basepower 110
    type TYPE_ELECTRIC
    accuracy 70
    pp 10
    effectchance 30
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_HIDE_SHADOW | FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal 0x11
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_ROCK_THROW, "Rock Throw"
    battleeffect 0
    pss SPLIT_PHYSICAL
    basepower 50
    type TYPE_ROCK
    accuracy 90
    pp 15
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KINGS_ROCK | FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal 0x05
    contesttype CONTEST_TOUGH
    terminatedata

movedata MOVE_EARTHQUAKE, "Earthquake"
    battleeffect 147
    pss SPLIT_PHYSICAL
    basepower 100
    type TYPE_GROUND
    accuracy 100
    pp 10
    effectchance 0
    target MOVE_TARGET_FOES_AND_ALLY
    priority 0
    flags FLAG_KINGS_ROCK | FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal 0x12
    contesttype CONTEST_TOUGH
    terminatedata

movedata MOVE_FISSURE, "Fissure"
    battleeffect 38
    pss SPLIT_PHYSICAL
    basepower 1
    type TYPE_GROUND
    accuracy 30
    pp 5
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_HIDE_SHADOW | FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal 0x09
    contesttype CONTEST_TOUGH
    terminatedata

movedata MOVE_DIG, "Dig"
    battleeffect 256
    pss SPLIT_PHYSICAL
    basepower 80
    type TYPE_GROUND
    accuracy 100
    pp 10
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KINGS_ROCK | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal 0x06
    contesttype CONTEST_SMART
    terminatedata

movedata MOVE_TOXIC, "Toxic"
    battleeffect 33
    pss SPLIT_STATUS
    basepower 0
    type TYPE_POISON
    accuracy 90
    pp 10
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_MAGIC_COAT | FLAG_PROTECT
    appeal 0x13
    contesttype CONTEST_SMART
    terminatedata

movedata MOVE_CONFUSION, "Confusion"
    battleeffect 76
    pss SPLIT_SPECIAL
    basepower 50
    type TYPE_PSYCHIC
    accuracy 100
    pp 25
    effectchance 10
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal 0x05
    contesttype CONTEST_SMART
    terminatedata

movedata MOVE_PSYCHIC, "Psychic"
    battleeffect 72
    pss SPLIT_SPECIAL
    basepower 90
    type TYPE_PSYCHIC
    accuracy 100
    pp 10
    effectchance 10
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal 0x11
    contesttype CONTEST_SMART
    terminatedata

movedata MOVE_HYPNOSIS, "Hypnosis"
    battleeffect 1
    pss SPLIT_STATUS
    basepower 0
    type TYPE_PSYCHIC
    accuracy 60
    pp 20
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_MAGIC_COAT | FLAG_PROTECT
    appeal 0x13
    contesttype CONTEST_SMART
    terminatedata

movedata MOVE_MEDITATE, "Meditate"
    battleeffect 10
    pss SPLIT_STATUS
    basepower 0
    type TYPE_PSYCHIC
    accuracy 0
    pp 40
    effectchance 0
    target MOVE_TARGET_USER
    priority 0
    flags FLAG_SNATCH
    appeal 0x0B
    contesttype CONTEST_BEAUTY
    terminatedata

movedata MOVE_AGILITY, "Agility"
    battleeffect 52
    pss SPLIT_STATUS
    basepower 0
    type TYPE_PSYCHIC
    accuracy 0
    pp 30
    effectchance 0
    target MOVE_TARGET_USER
    priority 0
    flags FLAG_HIDE_SHADOW | FLAG_SNATCH
    appeal 0x01
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_QUICK_ATTACK, "Quick Attack"
    battleeffect 103
    pss SPLIT_PHYSICAL
    basepower 40
    type TYPE_NORMAL
    accuracy 100
    pp 30
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 1
    flags FLAG_KEEP_HP_BAR | FLAG_KINGS_ROCK | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal 0x01
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_RAGE, "Rage"
    battleeffect 81
    pss SPLIT_PHYSICAL
    basepower 20
    type TYPE_NORMAL
    accuracy 100
    pp 20
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KINGS_ROCK | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal 0x0B
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_TELEPORT, "Teleport"
    battleeffect 153
    pss SPLIT_STATUS
    basepower 0
    type TYPE_PSYCHIC
    accuracy 0
    pp 20
    effectchance 0
    target MOVE_TARGET_USER
    priority -6
    flags 0
    appeal 0x01
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_NIGHT_SHADE, "Night Shade"
    battleeffect 87
    pss SPLIT_SPECIAL
    basepower 1
    type TYPE_GHOST
    accuracy 100
    pp 15
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KINGS_ROCK | FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal 0x05
    contesttype CONTEST_SMART
    terminatedata

movedata MOVE_MIMIC, "Mimic"
    battleeffect 82
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy 0
    pp 10
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_PROTECT
    appeal 0x0C
    contesttype CONTEST_CUTE
    terminatedata

movedata MOVE_SCREECH, "Screech"
    battleeffect 59
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy 85
    pp 40
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_MAGIC_COAT | FLAG_PROTECT
    appeal 0x0A
    contesttype CONTEST_SMART
    terminatedata

movedata MOVE_DOUBLE_TEAM, "Double Team"
    battleeffect 16
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy 0
    pp 15
    effectchance 0
    target MOVE_TARGET_USER
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_SNATCH
    appeal 0x01
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_RECOVER, "Recover"
    battleeffect 32
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy 0
    pp 10
    effectchance 0
    target MOVE_TARGET_USER
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_SNATCH
    appeal 0x08
    contesttype CONTEST_SMART
    terminatedata

movedata MOVE_HARDEN, "Harden"
    battleeffect 11
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy 0
    pp 30
    effectchance 0
    target MOVE_TARGET_USER
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_SNATCH
    appeal 0x0D
    contesttype CONTEST_TOUGH
    terminatedata

movedata MOVE_MINIMIZE, "Minimize"
    battleeffect 108
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy 0
    pp 10
    effectchance 0
    target MOVE_TARGET_USER
    priority 0
    flags FLAG_SNATCH
    appeal 0x0D
    contesttype CONTEST_CUTE
    terminatedata

movedata MOVE_SMOKESCREEN, "SmokeScreen"
    battleeffect 23
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy 100
    pp 20
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_MAGIC_COAT | FLAG_PROTECT
    appeal 0x0A
    contesttype CONTEST_SMART
    terminatedata

movedata MOVE_CONFUSE_RAY, "Confuse Ray"
    battleeffect 49
    pss SPLIT_STATUS
    basepower 0
    type TYPE_GHOST
    accuracy 100
    pp 10
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_MAGIC_COAT | FLAG_PROTECT
    appeal 0x0A
    contesttype CONTEST_SMART
    terminatedata

movedata MOVE_WITHDRAW, "Withdraw"
    battleeffect 11
    pss SPLIT_STATUS
    basepower 0
    type TYPE_WATER
    accuracy 0
    pp 40
    effectchance 0
    target MOVE_TARGET_USER
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_SNATCH
    appeal 0x0D
    contesttype CONTEST_CUTE
    terminatedata

movedata MOVE_DEFENSE_CURL, "Defense Curl"
    battleeffect 156
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy 0
    pp 40
    effectchance 0
    target MOVE_TARGET_USER
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_SNATCH
    appeal 0x0D
    contesttype CONTEST_CUTE
    terminatedata

movedata MOVE_BARRIER, "Barrier"
    battleeffect 51
    pss SPLIT_STATUS
    basepower 0
    type TYPE_PSYCHIC
    accuracy 0
    pp 20
    effectchance 0
    target MOVE_TARGET_USER
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_SNATCH
    appeal 0x0D
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_LIGHT_SCREEN, "Light Screen"
    battleeffect 35
    pss SPLIT_STATUS
    basepower 0
    type TYPE_PSYCHIC
    accuracy 0
    pp 30
    effectchance 0
    target MOVE_TARGET_USER_SIDE
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_SNATCH
    appeal 0x0D
    contesttype CONTEST_BEAUTY
    terminatedata

movedata MOVE_HAZE, "Haze"
    battleeffect 25
    pss SPLIT_STATUS
    basepower 0
    type TYPE_ICE
    accuracy 0
    pp 30
    effectchance 0
    target MOVE_TARGET_ACTIVE_FIELD
    priority 0
    flags 0
    appeal 0x0D
    contesttype CONTEST_BEAUTY
    terminatedata

movedata MOVE_REFLECT, "Reflect"
    battleeffect 65
    pss SPLIT_STATUS
    basepower 0
    type TYPE_PSYCHIC
    accuracy 0
    pp 20
    effectchance 0
    target MOVE_TARGET_USER_SIDE
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_SNATCH
    appeal 0x0D
    contesttype CONTEST_SMART
    terminatedata

movedata MOVE_FOCUS_ENERGY, "Focus Energy"
    battleeffect 47
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy 0
    pp 30
    effectchance 0
    target MOVE_TARGET_USER
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_SNATCH
    appeal 0x0B
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_BIDE, "Bide"
    battleeffect 26
    pss SPLIT_PHYSICAL
    basepower 1
    type TYPE_NORMAL
    accuracy 0
    pp 10
    effectchance 0
    target MOVE_TARGET_USER
    priority 1
    flags FLAG_KEEP_HP_BAR | FLAG_KINGS_ROCK | FLAG_PROTECT | FLAG_CONTACT
    appeal 0x0F
    contesttype CONTEST_TOUGH
    terminatedata

movedata MOVE_METRONOME, "Metronome"
    battleeffect 83
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy 0
    pp 10
    effectchance 0
    target MOVE_TARGET_DEPENDS
    priority 0
    flags FLAG_KEEP_HP_BAR
    appeal 0x0E
    contesttype CONTEST_CUTE
    terminatedata

movedata MOVE_MIRROR_MOVE, "Mirror Move"
    battleeffect 9
    pss SPLIT_STATUS
    basepower 0
    type TYPE_FLYING
    accuracy 0
    pp 20
    effectchance 0
    target MOVE_TARGET_DEPENDS
    priority 0
    flags 0
    appeal 0x0F
    contesttype CONTEST_SMART
    terminatedata

movedata MOVE_SELF_DESTRUCT, "Selfdestruct"
    battleeffect 7
    pss SPLIT_PHYSICAL
    basepower 200
    type TYPE_NORMAL
    accuracy 100
    pp 5
    effectchance 0
    target MOVE_TARGET_FOES_AND_ALLY
    priority 0
    flags FLAG_KINGS_ROCK | FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal 0x09
    contesttype CONTEST_BEAUTY
    terminatedata

movedata MOVE_EGG_BOMB, "Egg Bomb"
    battleeffect 0
    pss SPLIT_PHYSICAL
    basepower 100
    type TYPE_NORMAL
    accuracy 75
    pp 10
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KINGS_ROCK | FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal 0x05
    contesttype CONTEST_TOUGH
    terminatedata

movedata MOVE_LICK, "Lick"
    battleeffect 6
    pss SPLIT_PHYSICAL
    basepower 30
    type TYPE_GHOST
    accuracy 100
    pp 30
    effectchance 30
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal 0x10
    contesttype CONTEST_TOUGH
    terminatedata

movedata MOVE_SMOG, "Smog"
    battleeffect 2
    pss SPLIT_SPECIAL
    basepower 30
    type TYPE_POISON
    accuracy 70
    pp 20
    effectchance 40
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal 0x05
    contesttype CONTEST_TOUGH
    terminatedata

movedata MOVE_SLUDGE, "Sludge"
    battleeffect 2
    pss SPLIT_SPECIAL
    basepower 65
    type TYPE_POISON
    accuracy 100
    pp 20
    effectchance 30
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal 0x12
    contesttype CONTEST_TOUGH
    terminatedata

movedata MOVE_BONE_CLUB, "Bone Club"
    battleeffect 31
    pss SPLIT_PHYSICAL
    basepower 65
    type TYPE_GROUND
    accuracy 85
    pp 20
    effectchance 10
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal 0x05
    contesttype CONTEST_TOUGH
    terminatedata

movedata MOVE_FIRE_BLAST, "Fire Blast"
    battleeffect 4
    pss SPLIT_SPECIAL
    basepower 110
    type TYPE_FIRE
    accuracy 85
    pp 5
    effectchance 10
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_HIDE_SHADOW | FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal 0x11
    contesttype CONTEST_BEAUTY
    terminatedata

movedata MOVE_WATERFALL, "Waterfall"
    battleeffect 31
    pss SPLIT_PHYSICAL
    basepower 80
    type TYPE_WATER
    accuracy 100
    pp 15
    effectchance 20
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_HIDE_SHADOW | FLAG_KINGS_ROCK | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal 0x05
    contesttype CONTEST_TOUGH
    terminatedata

movedata MOVE_CLAMP, "Clamp"
    battleeffect 42
    pss SPLIT_PHYSICAL
    basepower 35
    type TYPE_WATER
    accuracy 85
    pp 15
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KINGS_ROCK | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal 0x05
    contesttype CONTEST_TOUGH
    terminatedata

movedata MOVE_SWIFT, "Swift"
    battleeffect 17
    pss SPLIT_SPECIAL
    basepower 60
    type TYPE_NORMAL
    accuracy 0
    pp 20
    effectchance 0
    target MOVE_TARGET_BOTH
    priority 0
    flags FLAG_KINGS_ROCK | FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal 0x11
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_SKULL_BASH, "Skull Bash"
    battleeffect 145
    pss SPLIT_PHYSICAL
    basepower 130
    type TYPE_NORMAL
    accuracy 100
    pp 10
    effectchance 100
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KINGS_ROCK | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal 0x06
    contesttype CONTEST_TOUGH
    terminatedata

movedata MOVE_SPIKE_CANNON, "Spike Cannon"
    battleeffect 29
    pss SPLIT_PHYSICAL
    basepower 20
    type TYPE_NORMAL
    accuracy 100
    pp 15
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KINGS_ROCK | FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal 0x07
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_CONSTRICT, "Constrict"
    battleeffect 70
    pss SPLIT_PHYSICAL
    basepower 10
    type TYPE_NORMAL
    accuracy 100
    pp 35
    effectchance 10
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal 0x15
    contesttype CONTEST_TOUGH
    terminatedata

movedata MOVE_AMNESIA, "Amnesia"
    battleeffect 54
    pss SPLIT_STATUS
    basepower 0
    type TYPE_PSYCHIC
    accuracy 0
    pp 20
    effectchance 0
    target MOVE_TARGET_USER
    priority 0
    flags FLAG_SNATCH
    appeal 0x0B
    contesttype CONTEST_CUTE
    terminatedata

movedata MOVE_KINESIS, "Kinesis"
    battleeffect 23
    pss SPLIT_STATUS
    basepower 0
    type TYPE_PSYCHIC
    accuracy 80
    pp 15
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_MAGIC_COAT | FLAG_PROTECT
    appeal 0x0B
    contesttype CONTEST_SMART
    terminatedata

movedata MOVE_SOFT_BOILED, "Softboiled"
    battleeffect 32
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy 0
    pp 10
    effectchance 0
    target MOVE_TARGET_USER
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_SNATCH
    appeal 0x08
    contesttype CONTEST_BEAUTY
    terminatedata

movedata MOVE_HI_JUMP_KICK, "Hi Jump Kick"
    battleeffect 45
    pss SPLIT_PHYSICAL
    basepower 130
    type TYPE_FIGHTING
    accuracy 90
    pp 10
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KINGS_ROCK | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal 0x05
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_GLARE, "Glare"
    battleeffect 67
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy 100
    pp 30
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_MAGIC_COAT | FLAG_PROTECT
    appeal 0x13
    contesttype CONTEST_TOUGH
    terminatedata

movedata MOVE_DREAM_EATER, "Dream Eater"
    battleeffect 8
    pss SPLIT_SPECIAL
    basepower 100
    type TYPE_PSYCHIC
    accuracy 100
    pp 15
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal 0x14
    contesttype CONTEST_SMART
    terminatedata

movedata MOVE_POISON_GAS, "Poison Gas"
    battleeffect 66
    pss SPLIT_STATUS
    basepower 0
    type TYPE_POISON
    accuracy 90
    pp 40
    effectchance 0
    target DEBUG_NEEDS_TESTING ? MOVE_TARGET_BOTH : MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_MAGIC_COAT | FLAG_PROTECT
    appeal 0x05
    contesttype CONTEST_SMART
    terminatedata

movedata MOVE_BARRAGE, "Barrage"
    battleeffect 29
    pss SPLIT_PHYSICAL
    basepower 15
    type TYPE_NORMAL
    accuracy 85
    pp 20
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_KINGS_ROCK | FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal 0x07
    contesttype CONTEST_TOUGH
    terminatedata

movedata MOVE_LEECH_LIFE, "Leech Life"
    battleeffect 3
    pss SPLIT_PHYSICAL
    basepower 80
    type TYPE_BUG
    accuracy 100
    pp 10
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal 0x14
    contesttype CONTEST_SMART
    terminatedata

movedata MOVE_LOVELY_KISS, "Lovely Kiss"
    battleeffect 1
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy 75
    pp 10
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_MAGIC_COAT | FLAG_PROTECT
    appeal 0x13
    contesttype CONTEST_BEAUTY
    terminatedata

movedata MOVE_SKY_ATTACK, "Sky Attack"
    battleeffect 75
    pss SPLIT_PHYSICAL
    basepower 140
    type TYPE_FLYING
    accuracy 90
    pp 5
    effectchance 30
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KINGS_ROCK | FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal 0x06
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_TRANSFORM, "Transform"
    battleeffect 57
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy 0
    pp 10
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR
    appeal 0x17
    contesttype CONTEST_SMART
    terminatedata

movedata MOVE_BUBBLE, "Bubble"
    battleeffect 70
    pss SPLIT_SPECIAL
    basepower 20
    type TYPE_WATER
    accuracy 100
    pp 30
    effectchance 10
    target MOVE_TARGET_BOTH
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal 0x02
    contesttype CONTEST_CUTE
    terminatedata

movedata MOVE_DIZZY_PUNCH, "Dizzy Punch"
    battleeffect 76
    pss SPLIT_PHYSICAL
    basepower 70
    type TYPE_NORMAL
    accuracy 100
    pp 10
    effectchance 20
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal 0x10
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_SPORE, "Spore"
    battleeffect 1
    pss SPLIT_STATUS
    basepower 0
    type TYPE_GRASS
    accuracy 100
    pp 15
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_MAGIC_COAT | FLAG_PROTECT
    appeal 0x0A
    contesttype CONTEST_BEAUTY
    terminatedata

movedata MOVE_FLASH, "Flash"
    battleeffect 23
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy 100
    pp 20
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_HIDE_SHADOW | FLAG_MIRROR_MOVE | FLAG_MAGIC_COAT | FLAG_PROTECT
    appeal 0x0A
    contesttype CONTEST_BEAUTY
    terminatedata

movedata MOVE_PSYWAVE, "Psywave"
    battleeffect 88
    pss SPLIT_SPECIAL
    basepower 1
    type TYPE_PSYCHIC
    accuracy 100
    pp 15
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KINGS_ROCK | FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal 0x05
    contesttype CONTEST_SMART
    terminatedata

movedata MOVE_SPLASH, "Splash"
    battleeffect 85
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy 0
    pp 40
    effectchance 0
    target MOVE_TARGET_USER
    priority 0
    flags FLAG_KEEP_HP_BAR
    appeal 0x10
    contesttype CONTEST_CUTE
    terminatedata

movedata MOVE_ACID_ARMOR, "Acid Armor"
    battleeffect 51
    pss SPLIT_STATUS
    basepower 0
    type TYPE_POISON
    accuracy 0
    pp 20
    effectchance 0
    target MOVE_TARGET_USER
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_SNATCH
    appeal 0x0B
    contesttype CONTEST_TOUGH
    terminatedata

movedata MOVE_CRABHAMMER, "Crabhammer"
    battleeffect 43
    pss SPLIT_PHYSICAL
    basepower 100
    type TYPE_WATER
    accuracy 90
    pp 10
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_KINGS_ROCK | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal 0x12
    contesttype CONTEST_TOUGH
    terminatedata

movedata MOVE_EXPLOSION, "Explosion"
    battleeffect 7
    pss SPLIT_PHYSICAL
    basepower 250
    type TYPE_NORMAL
    accuracy 100
    pp 5
    effectchance 0
    target MOVE_TARGET_FOES_AND_ALLY
    priority 0
    flags FLAG_KINGS_ROCK | FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal 0x09
    contesttype CONTEST_BEAUTY
    terminatedata

movedata MOVE_FURY_SWIPES, "Fury Swipes"
    battleeffect 29
    pss SPLIT_PHYSICAL
    basepower 18
    type TYPE_NORMAL
    accuracy 80
    pp 15
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_KINGS_ROCK | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal 0x07
    contesttype CONTEST_TOUGH
    terminatedata

movedata MOVE_BONEMERANG, "Bonemerang"
    battleeffect 44
    pss SPLIT_PHYSICAL
    basepower 50
    type TYPE_GROUND
    accuracy 90
    pp 10
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_KINGS_ROCK | FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal 0x07
    contesttype CONTEST_TOUGH
    terminatedata

movedata MOVE_REST, "Rest"
    battleeffect 37
    pss SPLIT_STATUS
    basepower 0
    type TYPE_PSYCHIC
    accuracy 0
    pp 10
    effectchance 0
    target MOVE_TARGET_USER
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_SNATCH
    appeal 0x08
    contesttype CONTEST_CUTE
    terminatedata

movedata MOVE_ROCK_SLIDE, "Rock Slide"
    battleeffect 31
    pss SPLIT_PHYSICAL
    basepower 75
    type TYPE_ROCK
    accuracy 90
    pp 10
    effectchance 30
    target MOVE_TARGET_BOTH
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal 0x05
    contesttype CONTEST_TOUGH
    terminatedata

movedata MOVE_HYPER_FANG, "Hyper Fang"
    battleeffect 31
    pss SPLIT_PHYSICAL
    basepower 80
    type TYPE_NORMAL
    accuracy 90
    pp 15
    effectchance 10
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal 0x12
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_SHARPEN, "Sharpen"
    battleeffect 10
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy 0
    pp 30
    effectchance 0
    target MOVE_TARGET_USER
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_SNATCH
    appeal 0x0B
    contesttype CONTEST_CUTE
    terminatedata

movedata MOVE_CONVERSION, "Conversion"
    battleeffect 30
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy 0
    pp 30
    effectchance 0
    target MOVE_TARGET_USER
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_SNATCH
    appeal 0x17
    contesttype CONTEST_BEAUTY
    terminatedata

movedata MOVE_TRI_ATTACK, "Tri Attack"
    battleeffect 36
    pss SPLIT_SPECIAL
    basepower 80
    type TYPE_NORMAL
    accuracy 100
    pp 10
    effectchance 20
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal 0x05
    contesttype CONTEST_BEAUTY
    terminatedata

movedata MOVE_SUPER_FANG, "Super Fang"
    battleeffect 40
    pss SPLIT_PHYSICAL
    basepower 1
    type TYPE_NORMAL
    accuracy 90
    pp 10
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal 0x05
    contesttype CONTEST_TOUGH
    terminatedata

movedata MOVE_SLASH, "Slash"
    battleeffect 43
    pss SPLIT_PHYSICAL
    basepower 70
    type TYPE_NORMAL
    accuracy 100
    pp 20
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_KINGS_ROCK | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal 0x05
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_SUBSTITUTE, "Substitute"
    battleeffect 79
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy 0
    pp 10
    effectchance 0
    target MOVE_TARGET_USER
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_SNATCH
    appeal 0x17
    contesttype CONTEST_SMART
    terminatedata

movedata MOVE_STRUGGLE, "Struggle"
    battleeffect 254
    pss SPLIT_PHYSICAL
    basepower 50
    type TYPE_NORMAL
    accuracy 0
    pp 1
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_KINGS_ROCK | FLAG_PROTECT | FLAG_CONTACT
    appeal 0x05
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_SKETCH, "Sketch"
    battleeffect 95
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy 0
    pp 1
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags 0
    appeal 0x17
    contesttype CONTEST_SMART
    terminatedata

movedata MOVE_TRIPLE_KICK, "Triple Kick"
    battleeffect 104
    pss SPLIT_PHYSICAL
    basepower 10
    type TYPE_FIGHTING
    accuracy 90
    pp 10
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_KINGS_ROCK | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal 0x07
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_THIEF, "Thief"
    battleeffect 105
    pss SPLIT_PHYSICAL
    basepower 60
    type TYPE_DARK
    accuracy 100
    pp 25
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal 0x0C
    contesttype CONTEST_TOUGH
    terminatedata

movedata MOVE_SPIDER_WEB, "Spider Web"
    battleeffect 106
    pss SPLIT_STATUS
    basepower 0
    type TYPE_BUG
    accuracy 0
    pp 10
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_MAGIC_COAT
    appeal 0x0D
    contesttype CONTEST_SMART
    terminatedata

movedata MOVE_MIND_READER, "Mind Reader"
    battleeffect 94
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy 0
    pp 5
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal 0x14
    contesttype CONTEST_SMART
    terminatedata

movedata MOVE_NIGHTMARE, "Nightmare"
    battleeffect 107
    pss SPLIT_STATUS
    basepower 0
    type TYPE_GHOST
    accuracy 100
    pp 15
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal 0x13
    contesttype CONTEST_SMART
    terminatedata

movedata MOVE_FLAME_WHEEL, "Flame Wheel"
    battleeffect 125
    pss SPLIT_PHYSICAL
    basepower 60
    type TYPE_FIRE
    accuracy 100
    pp 25
    effectchance 10
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal 0x07
    contesttype CONTEST_BEAUTY
    terminatedata

movedata MOVE_SNORE, "Snore"
    battleeffect 92
    pss SPLIT_SPECIAL
    basepower 50
    type TYPE_NORMAL
    accuracy 100
    pp 15
    effectchance 30
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KINGS_ROCK | FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal 0x05
    contesttype CONTEST_CUTE
    terminatedata

movedata MOVE_CURSE, "Curse"
    battleeffect 109
    pss SPLIT_STATUS
    basepower 0
    type TYPE_GHOST
    accuracy 0
    pp 10
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR
    appeal 0x15
    contesttype CONTEST_TOUGH
    terminatedata

movedata MOVE_FLAIL, "Flail"
    battleeffect 99
    pss SPLIT_PHYSICAL
    basepower 1
    type TYPE_NORMAL
    accuracy 100
    pp 15
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_KINGS_ROCK | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal 0x0F
    contesttype CONTEST_CUTE
    terminatedata

movedata MOVE_CONVERSION_2, "Conversion 2"
    battleeffect 93
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy 0
    pp 30
    effectchance 0
    target DEBUG_NEEDS_TESTING ? MOVE_TARGET_FOES_AND_ALLY : MOVE_TARGET_USER
    priority 0
    flags 0
    appeal 0x17
    contesttype CONTEST_BEAUTY
    terminatedata

movedata MOVE_AEROBLAST, "Aeroblast"
    battleeffect 43
    pss SPLIT_SPECIAL
    basepower 100
    type TYPE_FLYING
    accuracy 95
    pp 5
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_HIDE_SHADOW | FLAG_KINGS_ROCK | FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal 0x16
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_COTTON_SPORE, "Cotton Spore"
    battleeffect 60
    pss SPLIT_STATUS
    basepower 0
    type TYPE_GRASS
    accuracy 100
    pp 40
    effectchance 0
    target DEBUG_NEEDS_TESTING ? MOVE_TARGET_BOTH : MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_MAGIC_COAT | FLAG_PROTECT
    appeal 0x01
    contesttype CONTEST_BEAUTY
    terminatedata

movedata MOVE_REVERSAL, "Reversal"
    battleeffect 99
    pss SPLIT_PHYSICAL
    basepower 1
    type TYPE_FIGHTING
    accuracy 100
    pp 15
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_KINGS_ROCK | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal 0x0F
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_SPITE, "Spite"
    battleeffect 100
    pss SPLIT_STATUS
    basepower 0
    type TYPE_GHOST
    accuracy 100
    pp 10
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT
    appeal 0x13
    contesttype CONTEST_TOUGH
    terminatedata

movedata MOVE_POWDER_SNOW, "Powder Snow"
    battleeffect 5
    pss SPLIT_SPECIAL
    basepower 40
    type TYPE_ICE
    accuracy 100
    pp 25
    effectchance 10
    target MOVE_TARGET_BOTH
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal 0x05
    contesttype CONTEST_BEAUTY
    terminatedata

movedata MOVE_PROTECT, "Protect"
    battleeffect 111
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy 0
    pp 10
    effectchance 0
    target MOVE_TARGET_USER
    priority 4
    flags 0
    appeal 0x10
    contesttype CONTEST_CUTE
    terminatedata

movedata MOVE_MACH_PUNCH, "Mach Punch"
    battleeffect 103
    pss SPLIT_PHYSICAL
    basepower 40
    type TYPE_FIGHTING
    accuracy 100
    pp 30
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 1
    flags FLAG_KEEP_HP_BAR | FLAG_KINGS_ROCK | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal 0x01
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_SCARY_FACE, "Scary Face"
    battleeffect 60
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy 100
    pp 10
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_MAGIC_COAT | FLAG_PROTECT
    appeal 0x02
    contesttype CONTEST_TOUGH
    terminatedata

movedata MOVE_FAINT_ATTACK, "Faint Attack"
    battleeffect 17
    pss SPLIT_PHYSICAL
    basepower 60
    type TYPE_DARK
    accuracy 0
    pp 20
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KINGS_ROCK | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal 0x12
    contesttype CONTEST_SMART
    terminatedata

movedata MOVE_SWEET_KISS, "Sweet Kiss"
    battleeffect 49
    pss SPLIT_STATUS
    basepower 0
    type FAIRY_TYPE_IMPLEMENTED ? TYPE_FAIRY : TYPE_NORMAL
    accuracy 75
    pp 10
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_MAGIC_COAT | FLAG_PROTECT
    appeal 0x13
    contesttype CONTEST_CUTE
    terminatedata

movedata MOVE_BELLY_DRUM, "Belly Drum"
    battleeffect 142
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy 0
    pp 10
    effectchance 0
    target MOVE_TARGET_USER
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_SNATCH
    appeal 0x0B
    contesttype CONTEST_CUTE
    terminatedata

movedata MOVE_SLUDGE_BOMB, "Sludge Bomb"
    battleeffect 2
    pss SPLIT_SPECIAL
    basepower 90
    type TYPE_POISON
    accuracy 100
    pp 10
    effectchance 30
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal 0x12
    contesttype CONTEST_TOUGH
    terminatedata

movedata MOVE_MUD_SLAP, "Mud-Slap"
    battleeffect 73
    pss SPLIT_SPECIAL
    basepower 20
    type TYPE_GROUND
    accuracy 100
    pp 10
    effectchance 100
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal 0x05
    contesttype CONTEST_CUTE
    terminatedata

movedata MOVE_OCTAZOOKA, "Octazooka"
    battleeffect 73
    pss SPLIT_SPECIAL
    basepower 65
    type TYPE_WATER
    accuracy 85
    pp 10
    effectchance 50
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal 0x04
    contesttype CONTEST_TOUGH
    terminatedata

movedata MOVE_SPIKES, "Spikes"
    battleeffect 112
    pss SPLIT_STATUS
    basepower 0
    type TYPE_GROUND
    accuracy 0
    pp 20
    effectchance 0
    target MOVE_TARGET_OPPONENTS_FIELD
    priority 0
    flags FLAG_MAGIC_COAT
    appeal 0x0D
    contesttype CONTEST_SMART
    terminatedata

movedata MOVE_ZAP_CANNON, "Zap Cannon"
    battleeffect 6
    pss SPLIT_SPECIAL
    basepower 120
    type TYPE_ELECTRIC
    accuracy 50
    pp 5
    effectchance 100
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_HIDE_SHADOW | FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal 0x04
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_FORESIGHT, "Foresight"
    battleeffect 113
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy 0
    pp 40
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT
    appeal 0x14
    contesttype CONTEST_SMART
    terminatedata

movedata MOVE_DESTINY_BOND, "Destiny Bond"
    battleeffect 98
    pss SPLIT_STATUS
    basepower 0
    type TYPE_GHOST
    accuracy 0
    pp 5
    effectchance 0
    target MOVE_TARGET_USER
    priority 0
    flags 0
    appeal 0x09
    contesttype CONTEST_SMART
    terminatedata

movedata MOVE_PERISH_SONG, "Perish Song"
    battleeffect 114
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy 0
    pp 5
    effectchance 0
    target MOVE_TARGET_ACTIVE_FIELD
    priority 0
    flags FLAG_HIDE_SHADOW
    appeal 0x0A
    contesttype CONTEST_BEAUTY
    terminatedata

movedata MOVE_ICY_WIND, "Icy Wind"
    battleeffect 70
    pss SPLIT_SPECIAL
    basepower 55
    type TYPE_ICE
    accuracy 95
    pp 15
    effectchance 100
    target MOVE_TARGET_BOTH
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal 0x02
    contesttype CONTEST_BEAUTY
    terminatedata

movedata MOVE_DETECT, "Detect"
    battleeffect 111
    pss SPLIT_STATUS
    basepower 0
    type TYPE_FIGHTING
    accuracy 0
    pp 5
    effectchance 0
    target MOVE_TARGET_USER
    priority 4
    flags 0
    appeal 0x10
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_BONE_RUSH, "Bone Rush"
    battleeffect 29
    pss SPLIT_PHYSICAL
    basepower 25
    type TYPE_GROUND
    accuracy 90
    pp 10
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_KINGS_ROCK | FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal 0x07
    contesttype CONTEST_TOUGH
    terminatedata

movedata MOVE_LOCK_ON, "Lock-On"
    battleeffect 94
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy 0
    pp 5
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal 0x14
    contesttype CONTEST_SMART
    terminatedata

movedata MOVE_OUTRAGE, "Outrage"
    battleeffect 27
    pss SPLIT_PHYSICAL
    basepower 120
    type TYPE_DRAGON
    accuracy 100
    pp 10
    effectchance 0
    target MOVE_TARGET_RANDOM
    priority 0
    flags FLAG_HIDE_SHADOW | FLAG_KINGS_ROCK | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal 0x07
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_SANDSTORM, "Sandstorm"
    battleeffect 115
    pss SPLIT_STATUS
    basepower 0
    type TYPE_ROCK
    accuracy 0
    pp 10
    effectchance 0
    target MOVE_TARGET_ACTIVE_FIELD
    priority 0
    flags 0
    appeal 0x0D
    contesttype CONTEST_TOUGH
    terminatedata

movedata MOVE_GIGA_DRAIN, "Giga Drain"
    battleeffect 3
    pss SPLIT_SPECIAL
    basepower 75
    type TYPE_GRASS
    accuracy 100
    pp 10
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal 0x14
    contesttype CONTEST_SMART
    terminatedata

movedata MOVE_ENDURE, "Endure"
    battleeffect 116
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy 0
    pp 10
    effectchance 0
    target MOVE_TARGET_USER
    priority 4
    flags FLAG_KEEP_HP_BAR
    appeal 0x0D
    contesttype CONTEST_TOUGH
    terminatedata

movedata MOVE_CHARM, "Charm"
    battleeffect 58
    pss SPLIT_STATUS
    basepower 0
    type FAIRY_TYPE_IMPLEMENTED ? TYPE_FAIRY : TYPE_NORMAL
    accuracy 100
    pp 20
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_MAGIC_COAT | FLAG_PROTECT
    appeal 0x13
    contesttype CONTEST_CUTE
    terminatedata

movedata MOVE_ROLLOUT, "Rollout"
    battleeffect 117
    pss SPLIT_PHYSICAL
    basepower 30
    type TYPE_ROCK
    accuracy 90
    pp 20
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KINGS_ROCK | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal 0x07
    contesttype CONTEST_TOUGH
    terminatedata

movedata MOVE_FALSE_SWIPE, "False Swipe"
    battleeffect 101
    pss SPLIT_PHYSICAL
    basepower 40
    type TYPE_NORMAL
    accuracy 100
    pp 40
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_KINGS_ROCK | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal 0x10
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_SWAGGER, "Swagger"
    battleeffect 118
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy 85
    pp 15
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_MAGIC_COAT | FLAG_PROTECT
    appeal 0x13
    contesttype CONTEST_CUTE
    terminatedata

movedata MOVE_MILK_DRINK, "Milk Drink"
    battleeffect 32
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy 0
    pp 10
    effectchance 0
    target MOVE_TARGET_USER
    priority 0
    flags FLAG_SNATCH
    appeal 0x08
    contesttype CONTEST_CUTE
    terminatedata

movedata MOVE_SPARK, "Spark"
    battleeffect 6
    pss SPLIT_PHYSICAL
    basepower 65
    type TYPE_ELECTRIC
    accuracy 100
    pp 20
    effectchance 30
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal 0x05
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_FURY_CUTTER, "Fury Cutter"
    battleeffect 119
    pss SPLIT_PHYSICAL
    basepower 40
    type TYPE_BUG
    accuracy 95
    pp 20
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_KINGS_ROCK | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal 0x07
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_STEEL_WING, "Steel Wing"
    battleeffect 138
    pss SPLIT_PHYSICAL
    basepower 70
    type TYPE_STEEL
    accuracy 90
    pp 25
    effectchance 10
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KINGS_ROCK | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal 0x05
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_MEAN_LOOK, "Mean Look"
    battleeffect 106
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy 0
    pp 5
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_MAGIC_COAT
    appeal 0x0A
    contesttype CONTEST_BEAUTY
    terminatedata

movedata MOVE_ATTRACT, "Attract"
    battleeffect 120
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy 100
    pp 15
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_MAGIC_COAT | FLAG_PROTECT
    appeal 0x13
    contesttype CONTEST_CUTE
    terminatedata

movedata MOVE_SLEEP_TALK, "Sleep Talk"
    battleeffect 97
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy 0
    pp 10
    effectchance 0
    target MOVE_TARGET_DEPENDS
    priority 0
    flags 0
    appeal 0x05
    contesttype CONTEST_CUTE
    terminatedata

movedata MOVE_HEAL_BELL, "Heal Bell"
    battleeffect 102
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy 0
    pp 5
    effectchance 0
    target MOVE_TARGET_USER_SIDE
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_SNATCH
    appeal 0x08
    contesttype CONTEST_BEAUTY
    terminatedata

movedata MOVE_RETURN, "Return"
    battleeffect 121
    pss SPLIT_PHYSICAL
    basepower 1
    type TYPE_NORMAL
    accuracy 100
    pp 20
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_KINGS_ROCK | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal 0x11
    contesttype CONTEST_CUTE
    terminatedata

movedata MOVE_PRESENT, "Present"
    battleeffect 122
    pss SPLIT_PHYSICAL
    basepower 1
    type TYPE_NORMAL
    accuracy 90
    pp 15
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal 0x10
    contesttype CONTEST_CUTE
    terminatedata

movedata MOVE_FRUSTRATION, "Frustration"
    battleeffect 123
    pss SPLIT_PHYSICAL
    basepower 1
    type TYPE_NORMAL
    accuracy 100
    pp 20
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_KINGS_ROCK | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal 0x12
    contesttype CONTEST_CUTE
    terminatedata

movedata MOVE_SAFEGUARD, "Safeguard"
    battleeffect 124
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy 0
    pp 25
    effectchance 0
    target MOVE_TARGET_USER_SIDE
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_SNATCH
    appeal 0x0D
    contesttype CONTEST_BEAUTY
    terminatedata

movedata MOVE_PAIN_SPLIT, "Pain Split"
    battleeffect 91
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy 0
    pp 20
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal 0x0A
    contesttype CONTEST_SMART
    terminatedata

movedata MOVE_SACRED_FIRE, "Sacred Fire"
    battleeffect 125
    pss SPLIT_PHYSICAL
    basepower 100
    type TYPE_FIRE
    accuracy 95
    pp 5
    effectchance 50
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_HIDE_SHADOW | FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal 0x16
    contesttype CONTEST_BEAUTY
    terminatedata

movedata MOVE_MAGNITUDE, "Magnitude"
    battleeffect 126
    pss SPLIT_PHYSICAL
    basepower 1
    type TYPE_GROUND
    accuracy 100
    pp 30
    effectchance 0
    target MOVE_TARGET_FOES_AND_ALLY
    priority 0
    flags FLAG_KINGS_ROCK | FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal 0x12
    contesttype CONTEST_TOUGH
    terminatedata

movedata MOVE_DYNAMIC_PUNCH, "DynamicPunch"
    battleeffect 76
    pss SPLIT_PHYSICAL
    basepower 100
    type TYPE_FIGHTING
    accuracy 50
    pp 5
    effectchance 100
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_HIDE_SHADOW | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal 0x12
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_MEGAHORN, "Megahorn"
    battleeffect 0
    pss SPLIT_PHYSICAL
    basepower 120
    type TYPE_BUG
    accuracy 85
    pp 10
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_HIDE_SHADOW | FLAG_KINGS_ROCK | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal 0x12
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_DRAGON_BREATH, "DragonBreath"
    battleeffect 6
    pss SPLIT_SPECIAL
    basepower 60
    type TYPE_DRAGON
    accuracy 100
    pp 20
    effectchance 30
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KINGS_ROCK | FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal 0x11
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_BATON_PASS, "Baton Pass"
    battleeffect 127
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy 0
    pp 40
    effectchance 0
    target MOVE_TARGET_USER
    priority 0
    flags 0
    appeal 0x10
    contesttype CONTEST_CUTE
    terminatedata

movedata MOVE_ENCORE, "Encore"
    battleeffect 90
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy 100
    pp 5
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT
    appeal 0x14
    contesttype CONTEST_CUTE
    terminatedata

movedata MOVE_PURSUIT, "Pursuit"
    battleeffect 128
    pss SPLIT_PHYSICAL
    basepower 40
    type TYPE_DARK
    accuracy 100
    pp 20
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_HIDE_SHADOW | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal 0x14
    contesttype CONTEST_SMART
    terminatedata

movedata MOVE_RAPID_SPIN, "Rapid Spin"
    battleeffect 129
    pss SPLIT_PHYSICAL
    basepower 50
    type TYPE_NORMAL
    accuracy 100
    pp 40
    effectchance 100
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KINGS_ROCK | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal 0x11
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_SWEET_SCENT, "Sweet Scent"
    battleeffect 24
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy 100
    pp 20
    effectchance 0
    target MOVE_TARGET_BOTH
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_MAGIC_COAT | FLAG_PROTECT
    appeal 0x13
    contesttype CONTEST_CUTE
    terminatedata

movedata MOVE_IRON_TAIL, "Iron Tail"
    battleeffect 69
    pss SPLIT_PHYSICAL
    basepower 100
    type TYPE_STEEL
    accuracy 75
    pp 15
    effectchance 30
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal 0x12
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_METAL_CLAW, "Metal Claw"
    battleeffect 139
    pss SPLIT_PHYSICAL
    basepower 50
    type TYPE_STEEL
    accuracy 95
    pp 35
    effectchance 10
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal 0x12
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_VITAL_THROW, "Vital Throw"
    battleeffect 78
    pss SPLIT_PHYSICAL
    basepower 70
    type TYPE_FIGHTING
    accuracy 0
    pp 10
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority -1
    flags FLAG_KINGS_ROCK | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal 0x02
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_MORNING_SUN, "Morning Sun"
    battleeffect 132
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy 0
    pp 5
    effectchance 0
    target MOVE_TARGET_USER
    priority 0
    flags FLAG_SNATCH
    appeal 0x08
    contesttype CONTEST_BEAUTY
    terminatedata

movedata MOVE_SYNTHESIS, "Synthesis"
    battleeffect 132
    pss SPLIT_STATUS
    basepower 0
    type TYPE_GRASS
    accuracy 0
    pp 5
    effectchance 0
    target MOVE_TARGET_USER
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_SNATCH
    appeal 0x08
    contesttype CONTEST_SMART
    terminatedata

movedata MOVE_MOONLIGHT, "Moonlight"
    battleeffect 132
    pss SPLIT_STATUS
    basepower 0
    type FAIRY_TYPE_IMPLEMENTED ? TYPE_FAIRY : TYPE_NORMAL
    accuracy 0
    pp 5
    effectchance 0
    target MOVE_TARGET_USER
    priority 0
    flags FLAG_HIDE_SHADOW | FLAG_SNATCH
    appeal 0x08
    contesttype CONTEST_BEAUTY
    terminatedata

movedata MOVE_HIDDEN_POWER, "Hidden Power"
    battleeffect 135
    pss SPLIT_SPECIAL
    basepower DEBUG_NEEDS_TESTING ? 60 : 1 // come back and look at this eventually
    type TYPE_NORMAL
    accuracy 100
    pp 15
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KINGS_ROCK | FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal 0x17
    contesttype CONTEST_SMART
    terminatedata

movedata MOVE_CROSS_CHOP, "Cross Chop"
    battleeffect 43
    pss SPLIT_PHYSICAL
    basepower 100
    type TYPE_FIGHTING
    accuracy 80
    pp 5
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KINGS_ROCK | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal 0x12
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_TWISTER, "Twister"
    battleeffect 146
    pss SPLIT_SPECIAL
    basepower 40
    type TYPE_DRAGON
    accuracy 100
    pp 20
    effectchance 20
    target MOVE_TARGET_BOTH
    priority 0
    flags FLAG_KINGS_ROCK | FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal 0x05
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_RAIN_DANCE, "Rain Dance"
    battleeffect 136
    pss SPLIT_STATUS
    basepower 0
    type TYPE_WATER
    accuracy 0
    pp 5
    effectchance 0
    target MOVE_TARGET_ACTIVE_FIELD
    priority 0
    flags 0
    appeal 0x0D
    contesttype CONTEST_TOUGH
    terminatedata

movedata MOVE_SUNNY_DAY, "Sunny Day"
    battleeffect 137
    pss SPLIT_STATUS
    basepower 0
    type TYPE_FIRE
    accuracy 0
    pp 5
    effectchance 0
    target MOVE_TARGET_ACTIVE_FIELD
    priority 0
    flags 0
    appeal 0x0D
    contesttype CONTEST_BEAUTY
    terminatedata

movedata MOVE_CRUNCH, "Crunch"
    battleeffect 69
    pss SPLIT_PHYSICAL
    basepower 80
    type TYPE_DARK
    accuracy 100
    pp 15
    effectchance 20
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal 0x12
    contesttype CONTEST_TOUGH
    terminatedata

movedata MOVE_MIRROR_COAT, "Mirror Coat"
    battleeffect 144
    pss SPLIT_SPECIAL
    basepower 1
    type TYPE_PSYCHIC
    accuracy 100
    pp 20
    effectchance 0
    target MOVE_TARGET_DEPENDS
    priority -5
    flags FLAG_PROTECT
    appeal 0x0F
    contesttype CONTEST_BEAUTY
    terminatedata

movedata MOVE_PSYCH_UP, "Psych Up"
    battleeffect 143
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy 0
    pp 10
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR
    appeal 0x0B
    contesttype CONTEST_SMART
    terminatedata

movedata MOVE_EXTREME_SPEED, "ExtremeSpeed"
    battleeffect 103
    pss SPLIT_PHYSICAL
    basepower 80
    type TYPE_NORMAL
    accuracy 100
    pp 5
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 2
    flags FLAG_HIDE_SHADOW | FLAG_KINGS_ROCK | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal 0x01
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_ANCIENT_POWER, "AncientPower"
    battleeffect 140
    pss SPLIT_SPECIAL
    basepower 60
    type TYPE_ROCK
    accuracy 100
    pp 5
    effectchance 10
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal 0x12
    contesttype CONTEST_TOUGH
    terminatedata

movedata MOVE_SHADOW_BALL, "Shadow Ball"
    battleeffect 72
    pss SPLIT_SPECIAL
    basepower 80
    type TYPE_GHOST
    accuracy 100
    pp 15
    effectchance 20
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal 0x11
    contesttype CONTEST_SMART
    terminatedata

movedata MOVE_FUTURE_SIGHT, "Future Sight"
    battleeffect 148
    pss SPLIT_SPECIAL
    basepower 120
    type TYPE_PSYCHIC
    accuracy 100
    pp 10
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags 0
    appeal 0x11
    contesttype CONTEST_SMART
    terminatedata

movedata MOVE_ROCK_SMASH, "Rock Smash"
    battleeffect 69
    pss SPLIT_PHYSICAL
    basepower 40
    type TYPE_FIGHTING
    accuracy 100
    pp 15
    effectchance 50
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal 0x12
    contesttype CONTEST_TOUGH
    terminatedata

movedata MOVE_WHIRLPOOL, "Whirlpool"
    battleeffect 261
    pss SPLIT_SPECIAL
    basepower 35
    type TYPE_WATER
    accuracy 85
    pp 15
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_HIDE_SHADOW | FLAG_KINGS_ROCK | FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal 0x15
    contesttype CONTEST_BEAUTY
    terminatedata

movedata MOVE_BEAT_UP, "Beat Up"
    battleeffect 154
    pss SPLIT_PHYSICAL
    basepower DEBUG_NEEDS_TESTING ? 0 : 10 // will beat up still work with base power 0?
    type TYPE_DARK
    accuracy 100
    pp 10
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_KINGS_ROCK | FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal 0x07
    contesttype CONTEST_SMART
    terminatedata

movedata MOVE_FAKE_OUT, "Fake Out"
    battleeffect 158
    pss SPLIT_PHYSICAL
    basepower 40
    type TYPE_NORMAL
    accuracy 100
    pp 10
    effectchance 100
    target MOVE_TARGET_SELECTED
    priority 3
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal 0x11
    contesttype CONTEST_CUTE
    terminatedata

movedata MOVE_UPROAR, "Uproar"
    battleeffect 159
    pss SPLIT_SPECIAL
    basepower 90
    type TYPE_NORMAL
    accuracy 100
    pp 10
    effectchance 0
    target MOVE_TARGET_RANDOM
    priority 0
    flags FLAG_KINGS_ROCK | FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal 0x0A
    contesttype CONTEST_CUTE
    terminatedata

movedata MOVE_STOCKPILE, "Stockpile"
    battleeffect 160
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy 0
    pp 20
    effectchance 0
    target MOVE_TARGET_USER
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_SNATCH
    appeal 0x0B
    contesttype CONTEST_TOUGH
    terminatedata

movedata MOVE_SPIT_UP, "Spit Up"
    battleeffect 161
    pss SPLIT_SPECIAL
    basepower 1
    type TYPE_NORMAL
    accuracy 100
    pp 10
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KINGS_ROCK | FLAG_PROTECT
    appeal 0x12
    contesttype CONTEST_TOUGH
    terminatedata

movedata MOVE_SWALLOW, "Swallow"
    battleeffect 162
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy 0
    pp 10
    effectchance 0
    target MOVE_TARGET_USER
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_SNATCH
    appeal 0x08
    contesttype CONTEST_TOUGH
    terminatedata

movedata MOVE_HEAT_WAVE, "Heat Wave"
    battleeffect 4
    pss SPLIT_SPECIAL
    basepower 95
    type TYPE_FIRE
    accuracy 90
    pp 10
    effectchance 10
    target MOVE_TARGET_BOTH
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal 0x11
    contesttype CONTEST_BEAUTY
    terminatedata

movedata MOVE_HAIL, "Hail"
    battleeffect 164
    pss SPLIT_STATUS
    basepower 0
    type TYPE_ICE
    accuracy 0
    pp 10
    effectchance 0
    target MOVE_TARGET_ACTIVE_FIELD
    priority 0
    flags 0
    appeal 0x0D
    contesttype CONTEST_BEAUTY
    terminatedata

movedata MOVE_TORMENT, "Torment"
    battleeffect 165
    pss SPLIT_STATUS
    basepower 0
    type TYPE_DARK
    accuracy 100
    pp 15
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT
    appeal 0x10
    contesttype CONTEST_TOUGH
    terminatedata

movedata MOVE_FLATTER, "Flatter"
    battleeffect 166
    pss SPLIT_STATUS
    basepower 0
    type TYPE_DARK
    accuracy 100
    pp 15
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_MAGIC_COAT | FLAG_PROTECT
    appeal 0x13
    contesttype CONTEST_SMART
    terminatedata

movedata MOVE_WILL_O_WISP, "Will-O-Wisp"
    battleeffect 167
    pss SPLIT_STATUS
    basepower 0
    type TYPE_FIRE
    accuracy 85
    pp 15
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_MAGIC_COAT | FLAG_PROTECT
    appeal 0x11
    contesttype CONTEST_BEAUTY
    terminatedata

movedata MOVE_MEMENTO, "Memento"
    battleeffect 168
    pss SPLIT_STATUS
    basepower 0
    type TYPE_DARK
    accuracy 100
    pp 10
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal 0x09
    contesttype CONTEST_TOUGH
    terminatedata

movedata MOVE_FACADE, "Facade"
    battleeffect 169
    pss SPLIT_PHYSICAL
    basepower 70
    type TYPE_NORMAL
    accuracy 100
    pp 20
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal 0x0F
    contesttype CONTEST_CUTE
    terminatedata

movedata MOVE_FOCUS_PUNCH, "Focus Punch"
    battleeffect 170
    pss SPLIT_PHYSICAL
    basepower 150
    type TYPE_FIGHTING
    accuracy 100
    pp 20
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority -3
    flags FLAG_HIDE_SHADOW | FLAG_PROTECT | FLAG_CONTACT
    appeal 0x06
    contesttype CONTEST_TOUGH
    terminatedata

movedata MOVE_SMELLING_SALT, "SmellingSalt"
    battleeffect 171
    pss SPLIT_PHYSICAL
    basepower 70
    type TYPE_NORMAL
    accuracy 100
    pp 10
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal 0x10
    contesttype CONTEST_SMART
    terminatedata

movedata MOVE_FOLLOW_ME, "Follow Me"
    battleeffect 172
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy 0
    pp 20
    effectchance 0
    target MOVE_TARGET_USER
    priority 2
    flags 0
    appeal 0x0E
    contesttype CONTEST_CUTE
    terminatedata

movedata MOVE_NATURE_POWER, "Nature Power"
    battleeffect 173
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy 0
    pp 20
    effectchance 0
    target MOVE_TARGET_DEPENDS
    priority 0
    flags FLAG_KEEP_HP_BAR
    appeal 0x0E
    contesttype CONTEST_BEAUTY
    terminatedata

movedata MOVE_CHARGE, "Charge"
    battleeffect 174
    pss SPLIT_STATUS
    basepower 0
    type TYPE_ELECTRIC
    accuracy 0
    pp 20
    effectchance 0
    target MOVE_TARGET_USER
    priority 0
    flags FLAG_SNATCH
    appeal 0x0B
    contesttype CONTEST_SMART
    terminatedata

movedata MOVE_TAUNT, "Taunt"
    battleeffect 175
    pss SPLIT_STATUS
    basepower 0
    type TYPE_DARK
    accuracy 100
    pp 20
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT
    appeal 0x10
    contesttype CONTEST_SMART
    terminatedata

movedata MOVE_HELPING_HAND, "Helping Hand"
    battleeffect 176
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy 0
    pp 20
    effectchance 0
    target MOVE_TARGET_ALLY
    priority 5
    flags 0
    appeal 0x14
    contesttype CONTEST_SMART
    terminatedata

movedata MOVE_TRICK, "Trick"
    battleeffect 177
    pss SPLIT_STATUS
    basepower 0
    type TYPE_PSYCHIC
    accuracy 100
    pp 10
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal 0x0C
    contesttype CONTEST_SMART
    terminatedata

movedata MOVE_ROLE_PLAY, "Role Play"
    battleeffect 178
    pss SPLIT_STATUS
    basepower 0
    type TYPE_PSYCHIC
    accuracy 0
    pp 10
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags 0
    appeal 0x17
    contesttype CONTEST_CUTE
    terminatedata

movedata MOVE_WISH, "Wish"
    battleeffect 179
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy 0
    pp 10
    effectchance 0
    target MOVE_TARGET_USER
    priority 0
    flags FLAG_HIDE_SHADOW | FLAG_SNATCH
    appeal 0x08
    contesttype CONTEST_CUTE
    terminatedata

movedata MOVE_ASSIST, "Assist"
    battleeffect 180
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy 0
    pp 20
    effectchance 0
    target MOVE_TARGET_DEPENDS
    priority 0
    flags 0
    appeal 0x0E
    contesttype CONTEST_CUTE
    terminatedata

movedata MOVE_INGRAIN, "Ingrain"
    battleeffect 181
    pss SPLIT_STATUS
    basepower 0
    type TYPE_GRASS
    accuracy 0
    pp 20
    effectchance 0
    target MOVE_TARGET_USER
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_SNATCH
    appeal 0x15
    contesttype CONTEST_SMART
    terminatedata

movedata MOVE_SUPERPOWER, "Superpower"
    battleeffect 182
    pss SPLIT_PHYSICAL
    basepower 120
    type TYPE_FIGHTING
    accuracy 100
    pp 5
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_HIDE_SHADOW | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal 0x12
    contesttype CONTEST_TOUGH
    terminatedata

movedata MOVE_MAGIC_COAT, "Magic Coat"
    battleeffect 183
    pss SPLIT_STATUS
    basepower 0
    type TYPE_PSYCHIC
    accuracy 0
    pp 15
    effectchance 0
    target MOVE_TARGET_DEPENDS
    priority 4
    flags 0
    appeal 0x0F
    contesttype CONTEST_BEAUTY
    terminatedata

movedata MOVE_RECYCLE, "Recycle"
    battleeffect 184
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy 0
    pp 10
    effectchance 0
    target MOVE_TARGET_USER
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_SNATCH
    appeal 0x0C
    contesttype CONTEST_SMART
    terminatedata

movedata MOVE_REVENGE, "Revenge"
    battleeffect 185
    pss SPLIT_PHYSICAL
    basepower 60
    type TYPE_FIGHTING
    accuracy 100
    pp 10
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority -4
    flags FLAG_KINGS_ROCK | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal 0x0F
    contesttype CONTEST_TOUGH
    terminatedata

movedata MOVE_BRICK_BREAK, "Brick Break"
    battleeffect 186
    pss SPLIT_PHYSICAL
    basepower 75
    type TYPE_FIGHTING
    accuracy 100
    pp 15
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KINGS_ROCK | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal 0x05
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_YAWN, "Yawn"
    battleeffect 187
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy 0
    pp 10
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_MAGIC_COAT | FLAG_PROTECT
    appeal 0x13
    contesttype CONTEST_CUTE
    terminatedata

movedata MOVE_KNOCK_OFF, "Knock Off"
    battleeffect 188
    pss SPLIT_PHYSICAL
    basepower 65
    type TYPE_DARK
    accuracy 100
    pp 20
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal 0x05
    contesttype CONTEST_SMART
    terminatedata

movedata MOVE_ENDEAVOR, "Endeavor"
    battleeffect 189
    pss SPLIT_PHYSICAL
    basepower 1
    type TYPE_NORMAL
    accuracy 100
    pp 5
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_KINGS_ROCK | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal 0x0F
    contesttype CONTEST_TOUGH
    terminatedata

movedata MOVE_ERUPTION, "Eruption"
    battleeffect 190
    pss SPLIT_SPECIAL
    basepower 150
    type TYPE_FIRE
    accuracy 100
    pp 5
    effectchance 0
    target MOVE_TARGET_BOTH
    priority 0
    flags FLAG_KINGS_ROCK | FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal 0x12
    contesttype CONTEST_BEAUTY
    terminatedata

movedata MOVE_SKILL_SWAP, "Skill Swap"
    battleeffect 191
    pss SPLIT_STATUS
    basepower 0
    type TYPE_PSYCHIC
    accuracy 0
    pp 10
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal 0x0C
    contesttype CONTEST_SMART
    terminatedata

movedata MOVE_IMPRISON, "Imprison"
    battleeffect 192
    pss SPLIT_STATUS
    basepower 0
    type TYPE_PSYCHIC
    accuracy 0
    pp 10
    effectchance 0
    target MOVE_TARGET_USER
    priority 0
    flags FLAG_SNATCH
    appeal 0x14
    contesttype CONTEST_SMART
    terminatedata

movedata MOVE_REFRESH, "Refresh"
    battleeffect 193
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy 0
    pp 20
    effectchance 0
    target MOVE_TARGET_USER
    priority 0
    flags FLAG_SNATCH
    appeal 0x08
    contesttype CONTEST_CUTE
    terminatedata

movedata MOVE_GRUDGE, "Grudge"
    battleeffect 194
    pss SPLIT_STATUS
    basepower 0
    type TYPE_GHOST
    accuracy 0
    pp 5
    effectchance 0
    target MOVE_TARGET_USER
    priority 0
    flags 0
    appeal 0x0A
    contesttype CONTEST_TOUGH
    terminatedata

movedata MOVE_SNATCH, "Snatch"
    battleeffect 195
    pss SPLIT_STATUS
    basepower 0
    type TYPE_DARK
    accuracy 0
    pp 10
    effectchance 0
    target MOVE_TARGET_DEPENDS
    priority 4
    flags 0
    appeal 0x0C
    contesttype CONTEST_SMART
    terminatedata

movedata MOVE_SECRET_POWER, "Secret Power"
    battleeffect 197
    pss SPLIT_PHYSICAL
    basepower 70
    type TYPE_NORMAL
    accuracy 100
    pp 20
    effectchance 30
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal 0x0E
    contesttype CONTEST_SMART
    terminatedata

movedata MOVE_DIVE, "Dive"
    battleeffect 255
    pss SPLIT_PHYSICAL
    basepower 80
    type TYPE_WATER
    accuracy 100
    pp 10
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KINGS_ROCK | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal 0x06
    contesttype CONTEST_BEAUTY
    terminatedata

movedata MOVE_ARM_THRUST, "Arm Thrust"
    battleeffect 29
    pss SPLIT_PHYSICAL
    basepower 15
    type TYPE_FIGHTING
    accuracy 100
    pp 20
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_KINGS_ROCK | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal 0x07
    contesttype CONTEST_TOUGH
    terminatedata

movedata MOVE_CAMOUFLAGE, "Camouflage"
    battleeffect 213
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy 0
    pp 20
    effectchance 0
    target MOVE_TARGET_USER
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_SNATCH
    appeal 0x0D
    contesttype CONTEST_SMART
    terminatedata

movedata MOVE_TAIL_GLOW, "Tail Glow"
    battleeffect 53
    pss SPLIT_STATUS
    basepower 0
    type TYPE_BUG
    accuracy 0
    pp 20
    effectchance 0
    target MOVE_TARGET_USER
    priority 0
    flags FLAG_SNATCH
    appeal 0x0B
    contesttype CONTEST_BEAUTY
    terminatedata

movedata MOVE_LUSTER_PURGE, "Luster Purge"
    battleeffect 72
    pss SPLIT_SPECIAL
    basepower 70
    type TYPE_PSYCHIC
    accuracy 100
    pp 5
    effectchance 50
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal 0x16
    contesttype CONTEST_SMART
    terminatedata

movedata MOVE_MIST_BALL, "Mist Ball"
    battleeffect 71
    pss SPLIT_SPECIAL
    basepower 70
    type TYPE_PSYCHIC
    accuracy 100
    pp 5
    effectchance 50
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_HIDE_SHADOW | FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal 0x16
    contesttype CONTEST_SMART
    terminatedata

movedata MOVE_FEATHER_DANCE, "FeatherDance"
    battleeffect 58
    pss SPLIT_STATUS
    basepower 0
    type TYPE_FLYING
    accuracy 100
    pp 15
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_MAGIC_COAT | FLAG_PROTECT
    appeal 0x13
    contesttype CONTEST_BEAUTY
    terminatedata

movedata MOVE_TEETER_DANCE, "Teeter Dance"
    battleeffect 199
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy 100
    pp 20
    effectchance 0
    target MOVE_TARGET_FOES_AND_ALLY
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal 0x0E
    contesttype CONTEST_CUTE
    terminatedata

movedata MOVE_BLAZE_KICK, "Blaze Kick"
    battleeffect 200
    pss SPLIT_PHYSICAL
    basepower 85
    type TYPE_FIRE
    accuracy 90
    pp 10
    effectchance 10
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal 0x11
    contesttype CONTEST_BEAUTY
    terminatedata

movedata MOVE_MUD_SPORT, "Mud Sport"
    battleeffect 201
    pss SPLIT_STATUS
    basepower 0
    type TYPE_GROUND
    accuracy 0
    pp 15
    effectchance 0
    target MOVE_TARGET_ACTIVE_FIELD
    priority 0
    flags 0
    appeal 0x0D
    contesttype CONTEST_CUTE
    terminatedata

movedata MOVE_ICE_BALL, "Ice Ball"
    battleeffect 117
    pss SPLIT_PHYSICAL
    basepower 30
    type TYPE_ICE
    accuracy 90
    pp 20
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KINGS_ROCK | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal 0x07
    contesttype CONTEST_BEAUTY
    terminatedata

movedata MOVE_NEEDLE_ARM, "Needle Arm"
    battleeffect 31
    pss SPLIT_PHYSICAL
    basepower 60
    type TYPE_GRASS
    accuracy 100
    pp 15
    effectchance 30
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal 0x05
    contesttype CONTEST_SMART
    terminatedata

movedata MOVE_SLACK_OFF, "Slack Off"
    battleeffect 32
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy 0
    pp 10
    effectchance 0
    target MOVE_TARGET_USER
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_SNATCH
    appeal 0x08
    contesttype CONTEST_CUTE
    terminatedata

movedata MOVE_HYPER_VOICE, "Hyper Voice"
    battleeffect 0
    pss SPLIT_SPECIAL
    basepower 90
    type TYPE_NORMAL
    accuracy 100
    pp 10
    effectchance 0
    target MOVE_TARGET_BOTH
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal 0x05
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_POISON_FANG, "Poison Fang"
    battleeffect 202
    pss SPLIT_PHYSICAL
    basepower 50
    type TYPE_POISON
    accuracy 100
    pp 15
    effectchance 50
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal 0x04
    contesttype CONTEST_SMART
    terminatedata

movedata MOVE_CRUSH_CLAW, "Crush Claw"
    battleeffect 69
    pss SPLIT_PHYSICAL
    basepower 75
    type TYPE_NORMAL
    accuracy 95
    pp 10
    effectchance 50
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal 0x05
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_BLAST_BURN, "Blast Burn"
    battleeffect 80
    pss SPLIT_SPECIAL
    basepower 150
    type TYPE_FIRE
    accuracy 90
    pp 5
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KINGS_ROCK | FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal 0x16
    contesttype CONTEST_BEAUTY
    terminatedata

movedata MOVE_HYDRO_CANNON, "Hydro Cannon"
    battleeffect 80
    pss SPLIT_SPECIAL
    basepower 150
    type TYPE_WATER
    accuracy 90
    pp 5
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_HIDE_SHADOW | FLAG_KINGS_ROCK | FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal 0x16
    contesttype CONTEST_BEAUTY
    terminatedata

movedata MOVE_METEOR_MASH, "Meteor Mash"
    battleeffect 139
    pss SPLIT_PHYSICAL
    basepower 90
    type TYPE_STEEL
    accuracy 90
    pp 10
    effectchance 20
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KINGS_ROCK | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal 0x12
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_ASTONISH, "Astonish"
    battleeffect 31
    pss SPLIT_PHYSICAL
    basepower 30
    type TYPE_GHOST
    accuracy 100
    pp 15
    effectchance 30
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal 0x05
    contesttype CONTEST_SMART
    terminatedata

movedata MOVE_WEATHER_BALL, "Weather Ball"
    battleeffect 203
    pss SPLIT_SPECIAL
    basepower 50
    type TYPE_NORMAL
    accuracy 100
    pp 10
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KINGS_ROCK | FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal 0x04
    contesttype CONTEST_SMART
    terminatedata

movedata MOVE_AROMATHERAPY, "Aromatherapy"
    battleeffect 102
    pss SPLIT_STATUS
    basepower 0
    type TYPE_GRASS
    accuracy 0
    pp 5
    effectchance 0
    target MOVE_TARGET_USER_SIDE
    priority 0
    flags FLAG_SNATCH
    appeal 0x08
    contesttype CONTEST_SMART
    terminatedata

movedata MOVE_FAKE_TEARS, "Fake Tears"
    battleeffect 62
    pss SPLIT_STATUS
    basepower 0
    type TYPE_DARK
    accuracy 100
    pp 20
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_MAGIC_COAT | FLAG_PROTECT
    appeal 0x13
    contesttype CONTEST_SMART
    terminatedata

movedata MOVE_AIR_CUTTER, "Air Cutter"
    battleeffect 43
    pss SPLIT_SPECIAL
    basepower 60
    type TYPE_FLYING
    accuracy 95
    pp 25
    effectchance 0
    target MOVE_TARGET_BOTH
    priority 0
    flags FLAG_KINGS_ROCK | FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal 0x05
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_OVERHEAT, "Overheat"
    battleeffect 204
    pss SPLIT_SPECIAL
    basepower 130
    type TYPE_FIRE
    accuracy 90
    pp 5
    effectchance 100
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_HIDE_SHADOW | FLAG_KINGS_ROCK | FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal 0x16
    contesttype CONTEST_BEAUTY
    terminatedata

movedata MOVE_ODOR_SLEUTH, "Odor Sleuth"
    battleeffect 113
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy 0
    pp 40
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT
    appeal 0x14
    contesttype CONTEST_SMART
    terminatedata

movedata MOVE_ROCK_TOMB, "Rock Tomb"
    battleeffect 70
    pss SPLIT_PHYSICAL
    basepower 60
    type TYPE_ROCK
    accuracy 95
    pp 15
    effectchance 100
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal 0x02
    contesttype CONTEST_SMART
    terminatedata

movedata MOVE_SILVER_WIND, "Silver Wind"
    battleeffect 140
    pss SPLIT_SPECIAL
    basepower 60
    type TYPE_BUG
    accuracy 100
    pp 5
    effectchance 10
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KINGS_ROCK | FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal 0x04
    contesttype CONTEST_BEAUTY
    terminatedata

movedata MOVE_METAL_SOUND, "Metal Sound"
    battleeffect 62
    pss SPLIT_STATUS
    basepower 0
    type TYPE_STEEL
    accuracy 85
    pp 40
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_MAGIC_COAT | FLAG_PROTECT
    appeal 0x0A
    contesttype CONTEST_SMART
    terminatedata

movedata MOVE_GRASS_WHISTLE, "GrassWhistle"
    battleeffect 1
    pss SPLIT_STATUS
    basepower 0
    type TYPE_GRASS
    accuracy 55
    pp 15
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_MAGIC_COAT | FLAG_PROTECT
    appeal 0x13
    contesttype CONTEST_SMART
    terminatedata

movedata MOVE_TICKLE, "Tickle"
    battleeffect 205
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy 100
    pp 20
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_MAGIC_COAT | FLAG_PROTECT
    appeal 0x13
    contesttype CONTEST_CUTE
    terminatedata

movedata MOVE_COSMIC_POWER, "Cosmic Power"
    battleeffect 206
    pss SPLIT_STATUS
    basepower 0
    type TYPE_PSYCHIC
    accuracy 0
    pp 20
    effectchance 0
    target MOVE_TARGET_USER
    priority 0
    flags FLAG_HIDE_SHADOW | FLAG_SNATCH
    appeal 0x0B
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_WATER_SPOUT, "Water Spout"
    battleeffect 190
    pss SPLIT_SPECIAL
    basepower 150
    type TYPE_WATER
    accuracy 100
    pp 5
    effectchance 0
    target MOVE_TARGET_BOTH
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal 0x16
    contesttype CONTEST_BEAUTY
    terminatedata

movedata MOVE_SIGNAL_BEAM, "Signal Beam"
    battleeffect 76
    pss SPLIT_SPECIAL
    basepower 75
    type TYPE_BUG
    accuracy 100
    pp 15
    effectchance 10
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KINGS_ROCK | FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal 0x04
    contesttype CONTEST_BEAUTY
    terminatedata

movedata MOVE_SHADOW_PUNCH, "Shadow Punch"
    battleeffect 17
    pss SPLIT_PHYSICAL
    basepower 60
    type TYPE_GHOST
    accuracy 0
    pp 20
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KINGS_ROCK | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal 0x11
    contesttype CONTEST_SMART
    terminatedata

movedata MOVE_EXTRASENSORY, "Extrasensory"
    battleeffect 31
    pss SPLIT_SPECIAL
    basepower 80
    type TYPE_PSYCHIC
    accuracy 100
    pp 20
    effectchance 10
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal 0x11
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_SKY_UPPERCUT, "Sky Uppercut"
    battleeffect 207
    pss SPLIT_PHYSICAL
    basepower 85
    type TYPE_FIGHTING
    accuracy 90
    pp 15
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_HIDE_SHADOW | FLAG_KINGS_ROCK | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal 0x11
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_SAND_TOMB, "Sand Tomb"
    battleeffect 42
    pss SPLIT_PHYSICAL
    basepower 35
    type TYPE_GROUND
    accuracy 85
    pp 15
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KINGS_ROCK | FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal 0x15
    contesttype CONTEST_SMART
    terminatedata

movedata MOVE_SHEER_COLD, "Sheer Cold"
    battleeffect 38
    pss SPLIT_SPECIAL
    basepower 1
    type TYPE_ICE
    accuracy 30
    pp 5
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal 0x09
    contesttype CONTEST_BEAUTY
    terminatedata

movedata MOVE_MUDDY_WATER, "Muddy Water"
    battleeffect 73
    pss SPLIT_SPECIAL
    basepower 90
    type TYPE_WATER
    accuracy 85
    pp 10
    effectchance 30
    target MOVE_TARGET_BOTH
    priority 0
    flags FLAG_KINGS_ROCK | FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal 0x12
    contesttype CONTEST_TOUGH
    terminatedata

movedata MOVE_BULLET_SEED, "Bullet Seed"
    battleeffect 29
    pss SPLIT_PHYSICAL
    basepower 25
    type TYPE_GRASS
    accuracy 100
    pp 30
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_KINGS_ROCK | FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal 0x07
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_AERIAL_ACE, "Aerial Ace"
    battleeffect 17
    pss SPLIT_PHYSICAL
    basepower 60
    type TYPE_FLYING
    accuracy 0
    pp 20
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KINGS_ROCK | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal 0x11
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_ICICLE_SPEAR, "Icicle Spear"
    battleeffect 29
    pss SPLIT_PHYSICAL
    basepower 25
    type TYPE_ICE
    accuracy 100
    pp 30
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_KINGS_ROCK | FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal 0x07
    contesttype CONTEST_BEAUTY
    terminatedata

movedata MOVE_IRON_DEFENSE, "Iron Defense"
    battleeffect 51
    pss SPLIT_STATUS
    basepower 0
    type TYPE_STEEL
    accuracy 0
    pp 15
    effectchance 0
    target MOVE_TARGET_USER
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_SNATCH
    appeal 0x0D
    contesttype CONTEST_TOUGH
    terminatedata

movedata MOVE_BLOCK, "Block"
    battleeffect 106
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy 0
    pp 5
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_MAGIC_COAT
    appeal 0x0D
    contesttype CONTEST_CUTE
    terminatedata

movedata MOVE_HOWL, "Howl"
    battleeffect 10
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy 0
    pp 40
    effectchance 0
    target MOVE_TARGET_USER
    priority 0
    flags FLAG_SNATCH
    appeal 0x0B
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_DRAGON_CLAW, "Dragon Claw"
    battleeffect 0
    pss SPLIT_PHYSICAL
    basepower 80
    type TYPE_DRAGON
    accuracy 100
    pp 15
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KINGS_ROCK | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal 0x11
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_FRENZY_PLANT, "Frenzy Plant"
    battleeffect 80
    pss SPLIT_SPECIAL
    basepower 150
    type TYPE_GRASS
    accuracy 90
    pp 5
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_HIDE_SHADOW | FLAG_KINGS_ROCK | FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal 0x16
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_BULK_UP, "Bulk Up"
    battleeffect 208
    pss SPLIT_STATUS
    basepower 0
    type TYPE_FIGHTING
    accuracy 0
    pp 20
    effectchance 0
    target MOVE_TARGET_USER
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_SNATCH
    appeal 0x0B
    contesttype CONTEST_BEAUTY
    terminatedata

movedata MOVE_BOUNCE, "Bounce"
    battleeffect 263
    pss SPLIT_PHYSICAL
    basepower 85
    type TYPE_FLYING
    accuracy 85
    pp 5
    effectchance 30
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KINGS_ROCK | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal 0x06
    contesttype CONTEST_CUTE
    terminatedata

movedata MOVE_MUD_SHOT, "Mud Shot"
    battleeffect 70
    pss SPLIT_SPECIAL
    basepower 55
    type TYPE_GROUND
    accuracy 95
    pp 15
    effectchance 100
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KINGS_ROCK | FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal 0x02
    contesttype CONTEST_TOUGH
    terminatedata

movedata MOVE_POISON_TAIL, "Poison Tail"
    battleeffect 209
    pss SPLIT_PHYSICAL
    basepower 50
    type TYPE_POISON
    accuracy 100
    pp 25
    effectchance 10
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KINGS_ROCK | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal 0x04
    contesttype CONTEST_SMART
    terminatedata

movedata MOVE_COVET, "Covet"
    battleeffect 105
    pss SPLIT_PHYSICAL
    basepower 60
    type TYPE_NORMAL
    accuracy 100
    pp 25
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal 0x0C
    contesttype CONTEST_CUTE
    terminatedata

movedata MOVE_VOLT_TACKLE, "Volt Tackle"
    battleeffect 262
    pss SPLIT_PHYSICAL
    basepower 120
    type TYPE_ELECTRIC
    accuracy 100
    pp 15
    effectchance 10
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_HIDE_SHADOW | FLAG_KINGS_ROCK | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal 0x16
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_MAGICAL_LEAF, "Magical Leaf"
    battleeffect 17
    pss SPLIT_SPECIAL
    basepower 60
    type TYPE_GRASS
    accuracy 0
    pp 20
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KINGS_ROCK | FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal 0x11
    contesttype CONTEST_BEAUTY
    terminatedata

movedata MOVE_WATER_SPORT, "Water Sport"
    battleeffect 210
    pss SPLIT_STATUS
    basepower 0
    type TYPE_WATER
    accuracy 0
    pp 15
    effectchance 0
    target MOVE_TARGET_ACTIVE_FIELD
    priority 0
    flags 0
    appeal 0x0D
    contesttype CONTEST_CUTE
    terminatedata

movedata MOVE_CALM_MIND, "Calm Mind"
    battleeffect 211
    pss SPLIT_STATUS
    basepower 0
    type TYPE_PSYCHIC
    accuracy 0
    pp 20
    effectchance 0
    target MOVE_TARGET_USER
    priority 0
    flags FLAG_SNATCH
    appeal 0x0B
    contesttype CONTEST_SMART
    terminatedata

movedata MOVE_LEAF_BLADE, "Leaf Blade"
    battleeffect 43
    pss SPLIT_PHYSICAL
    basepower 90
    type TYPE_GRASS
    accuracy 100
    pp 15
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KINGS_ROCK | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal 0x11
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_DRAGON_DANCE, "Dragon Dance"
    battleeffect 212
    pss SPLIT_STATUS
    basepower 0
    type TYPE_DRAGON
    accuracy 0
    pp 20
    effectchance 0
    target MOVE_TARGET_USER
    priority 0
    flags FLAG_SNATCH
    appeal 0x0B
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_ROCK_BLAST, "Rock Blast"
    battleeffect 29
    pss SPLIT_PHYSICAL
    basepower 25
    type TYPE_ROCK
    accuracy 90
    pp 10
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KINGS_ROCK | FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal 0x07
    contesttype CONTEST_TOUGH
    terminatedata

movedata MOVE_SHOCK_WAVE, "Shock Wave"
    battleeffect 17
    pss SPLIT_SPECIAL
    basepower 60
    type TYPE_ELECTRIC
    accuracy 0
    pp 20
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KINGS_ROCK | FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal 0x11
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_WATER_PULSE, "Water Pulse"
    battleeffect 76
    pss SPLIT_SPECIAL
    basepower 60
    type TYPE_WATER
    accuracy 100
    pp 20
    effectchance 20
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_HIDE_SHADOW | FLAG_KINGS_ROCK | FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal 0x11
    contesttype CONTEST_BEAUTY
    terminatedata

movedata MOVE_DOOM_DESIRE, "Doom Desire"
    battleeffect 148
    pss SPLIT_SPECIAL
    basepower 140
    type TYPE_STEEL
    accuracy 100
    pp 5
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_HIDE_SHADOW
    appeal 0x11
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_PSYCHO_BOOST, "Psycho Boost"
    battleeffect 204
    pss SPLIT_SPECIAL
    basepower 140
    type TYPE_PSYCHIC
    accuracy 90
    pp 5
    effectchance 100
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_HIDE_SHADOW | FLAG_KINGS_ROCK | FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal 0x16
    contesttype CONTEST_SMART
    terminatedata

movedata MOVE_ROOST, "Roost"
    battleeffect 214
    pss SPLIT_STATUS
    basepower 0
    type TYPE_FLYING
    accuracy 0
    pp 10
    effectchance 0
    target MOVE_TARGET_USER
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_SNATCH
    appeal 0x08
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_GRAVITY, "Gravity"
    battleeffect 215
    pss SPLIT_STATUS
    basepower 0
    type TYPE_PSYCHIC
    accuracy 0
    pp 5
    effectchance 0
    target MOVE_TARGET_ACTIVE_FIELD
    priority 0
    flags 0
    appeal 0x0D
    contesttype CONTEST_BEAUTY
    terminatedata

movedata MOVE_MIRACLE_EYE, "Miracle Eye"
    battleeffect 216
    pss SPLIT_STATUS
    basepower 0
    type TYPE_PSYCHIC
    accuracy 0
    pp 40
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT
    appeal 0x14
    contesttype CONTEST_CUTE
    terminatedata

movedata MOVE_WAKE_UP_SLAP, "Wake-Up Slap"
    battleeffect 217
    pss SPLIT_PHYSICAL
    basepower 70
    type TYPE_FIGHTING
    accuracy 100
    pp 10
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KINGS_ROCK | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal 0x10
    contesttype CONTEST_SMART
    terminatedata

movedata MOVE_HAMMER_ARM, "Hammer Arm"
    battleeffect 218
    pss SPLIT_PHYSICAL
    basepower 100
    type TYPE_FIGHTING
    accuracy 90
    pp 10
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KINGS_ROCK | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal 0x02
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_GYRO_BALL, "Gyro Ball"
    battleeffect 219
    pss SPLIT_PHYSICAL
    basepower 1
    type TYPE_STEEL
    accuracy 100
    pp 5
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KINGS_ROCK | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal 0x0F
    contesttype CONTEST_BEAUTY
    terminatedata

movedata MOVE_HEALING_WISH, "Healing Wish"
    battleeffect 220
    pss SPLIT_STATUS
    basepower 0
    type TYPE_PSYCHIC
    accuracy 0
    pp 10
    effectchance 0
    target MOVE_TARGET_USER
    priority 0
    flags FLAG_SNATCH
    appeal 0x08
    contesttype CONTEST_CUTE
    terminatedata

movedata MOVE_BRINE, "Brine"
    battleeffect 221
    pss SPLIT_SPECIAL
    basepower 65
    type TYPE_WATER
    accuracy 100
    pp 10
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KINGS_ROCK | FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal 0x04
    contesttype CONTEST_SMART
    terminatedata

movedata MOVE_NATURAL_GIFT, "Natural Gift"
    battleeffect 222
    pss SPLIT_PHYSICAL
    basepower 1
    type TYPE_NORMAL
    accuracy 100
    pp 15
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal 0x12
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_FEINT, "Feint"
    battleeffect 223
    pss SPLIT_PHYSICAL
    basepower 30
    type TYPE_NORMAL
    accuracy 100
    pp 10
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 2
    flags FLAG_MIRROR_MOVE
    appeal 0x10
    contesttype CONTEST_BEAUTY
    terminatedata

movedata MOVE_PLUCK, "Pluck"
    battleeffect 224
    pss SPLIT_PHYSICAL
    basepower 60
    type TYPE_FLYING
    accuracy 100
    pp 20
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_KINGS_ROCK | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal 0x0C
    contesttype CONTEST_CUTE
    terminatedata

movedata MOVE_TAILWIND, "Tailwind"
    battleeffect 225
    pss SPLIT_STATUS
    basepower 0
    type TYPE_FLYING
    accuracy 0
    pp 15
    effectchance 0
    target MOVE_TARGET_USER_SIDE
    priority 0
    flags FLAG_SNATCH
    appeal 0x01
    contesttype CONTEST_SMART
    terminatedata

movedata MOVE_ACUPRESSURE, "Acupressure"
    battleeffect 226
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy 0
    pp 30
    effectchance 0
    target MOVE_TARGET_ACUPRESSURE
    priority 0
    flags FLAG_KEEP_HP_BAR
    appeal 0x0B
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_METAL_BURST, "Metal Burst"
    battleeffect 227
    pss SPLIT_PHYSICAL
    basepower 1
    type TYPE_STEEL
    accuracy 100
    pp 10
    effectchance 0
    target MOVE_TARGET_DEPENDS
    priority 0
    flags FLAG_PROTECT | FLAG_MIRROR_MOVE
    appeal 0x0F
    contesttype CONTEST_BEAUTY
    terminatedata

movedata MOVE_U_TURN, "U-turn"
    battleeffect 228
    pss SPLIT_PHYSICAL
    basepower 70
    type TYPE_BUG
    accuracy 100
    pp 20
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KINGS_ROCK | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal 0x10
    contesttype CONTEST_CUTE
    terminatedata

movedata MOVE_CLOSE_COMBAT, "Close Combat"
    battleeffect 229
    pss SPLIT_PHYSICAL
    basepower 120
    type TYPE_FIGHTING
    accuracy 100
    pp 5
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_HIDE_SHADOW | FLAG_KINGS_ROCK | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal 0x16
    contesttype CONTEST_SMART
    terminatedata

movedata MOVE_PAYBACK, "Payback"
    battleeffect 230
    pss SPLIT_PHYSICAL
    basepower 50
    type TYPE_DARK
    accuracy 100
    pp 10
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KINGS_ROCK | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal 0x06
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_ASSURANCE, "Assurance"
    battleeffect 231
    pss SPLIT_PHYSICAL
    basepower 60
    type TYPE_DARK
    accuracy 100
    pp 10
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KINGS_ROCK | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal 0x0F
    contesttype CONTEST_BEAUTY
    terminatedata

movedata MOVE_EMBARGO, "Embargo"
    battleeffect 232
    pss SPLIT_STATUS
    basepower 0
    type TYPE_DARK
    accuracy 100
    pp 15
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT
    appeal 0x0D
    contesttype CONTEST_CUTE
    terminatedata

movedata MOVE_FLING, "Fling"
    battleeffect 233
    pss SPLIT_PHYSICAL
    basepower 1
    type TYPE_DARK
    accuracy 100
    pp 10
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal 0x17
    contesttype CONTEST_TOUGH
    terminatedata

movedata MOVE_PSYCHO_SHIFT, "Psycho Shift"
    battleeffect 234
    pss SPLIT_STATUS
    basepower 0
    type TYPE_PSYCHIC
    accuracy 100
    pp 10
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal 0x10
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_TRUMP_CARD, "Trump Card"
    battleeffect 235
    pss SPLIT_SPECIAL
    basepower 1
    type TYPE_NORMAL
    accuracy 0
    pp 5
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KINGS_ROCK | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal 0x15
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_HEAL_BLOCK, "Heal Block"
    battleeffect 236
    pss SPLIT_STATUS
    basepower 0
    type TYPE_PSYCHIC
    accuracy 100
    pp 15
    effectchance 0
    target MOVE_TARGET_BOTH
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT
    appeal 0x0D
    contesttype CONTEST_CUTE
    terminatedata

movedata MOVE_WRING_OUT, "Wring Out"
    battleeffect 237
    pss SPLIT_SPECIAL
    basepower 1
    type TYPE_NORMAL
    accuracy 100
    pp 5
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KINGS_ROCK | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal 0x16
    contesttype CONTEST_SMART
    terminatedata

movedata MOVE_POWER_TRICK, "Power Trick"
    battleeffect 238
    pss SPLIT_STATUS
    basepower 0
    type TYPE_PSYCHIC
    accuracy 0
    pp 10
    effectchance 0
    target MOVE_TARGET_USER
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_SNATCH
    appeal 0x10
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_GASTRO_ACID, "Gastro Acid"
    battleeffect 239
    pss SPLIT_STATUS
    basepower 0
    type TYPE_POISON
    accuracy 100
    pp 10
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_MAGIC_COAT | FLAG_PROTECT
    appeal 0x0D
    contesttype CONTEST_BEAUTY
    terminatedata

movedata MOVE_LUCKY_CHANT, "Lucky Chant"
    battleeffect 240
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy 0
    pp 30
    effectchance 0
    target MOVE_TARGET_USER_SIDE
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_SNATCH
    appeal 0x0D
    contesttype CONTEST_CUTE
    terminatedata

movedata MOVE_ME_FIRST, "Me First"
    battleeffect 241
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy 0
    pp 20
    effectchance 0
    target MOVE_TARGET_ME_FIRST
    priority 0
    flags FLAG_PROTECT
    appeal 0x01
    contesttype CONTEST_CUTE
    terminatedata

movedata MOVE_COPYCAT, "Copycat"
    battleeffect 242
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy 0
    pp 20
    effectchance 0
    target MOVE_TARGET_DEPENDS
    priority 0
    flags 0
    appeal 0x0C
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_POWER_SWAP, "Power Swap"
    battleeffect 243
    pss SPLIT_STATUS
    basepower 0
    type TYPE_PSYCHIC
    accuracy 0
    pp 10
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal 0x10
    contesttype CONTEST_BEAUTY
    terminatedata

movedata MOVE_GUARD_SWAP, "Guard Swap"
    battleeffect 244
    pss SPLIT_STATUS
    basepower 0
    type TYPE_PSYCHIC
    accuracy 0
    pp 10
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal 0x10
    contesttype CONTEST_CUTE
    terminatedata

movedata MOVE_PUNISHMENT, "Punishment"
    battleeffect 245
    pss SPLIT_PHYSICAL
    basepower 1
    type TYPE_DARK
    accuracy 100
    pp 5
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_KINGS_ROCK | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal 0x17
    contesttype CONTEST_SMART
    terminatedata

movedata MOVE_LAST_RESORT, "Last Resort"
    battleeffect 246
    pss SPLIT_PHYSICAL
    basepower 140
    type TYPE_NORMAL
    accuracy 100
    pp 5
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KINGS_ROCK | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal 0x15
    contesttype CONTEST_CUTE
    terminatedata

movedata MOVE_WORRY_SEED, "Worry Seed"
    battleeffect 247
    pss SPLIT_STATUS
    basepower 0
    type TYPE_GRASS
    accuracy 100
    pp 10
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_MAGIC_COAT | FLAG_PROTECT
    appeal 0x13
    contesttype CONTEST_BEAUTY
    terminatedata

movedata MOVE_SUCKER_PUNCH, "Sucker Punch"
    battleeffect 248
    pss SPLIT_PHYSICAL
    basepower 70
    type TYPE_DARK
    accuracy 100
    pp 5
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 1
    flags FLAG_KEEP_HP_BAR | FLAG_KINGS_ROCK | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal 0x01
    contesttype CONTEST_SMART
    terminatedata

movedata MOVE_TOXIC_SPIKES, "Toxic Spikes"
    battleeffect 249
    pss SPLIT_STATUS
    basepower 0
    type TYPE_POISON
    accuracy 0
    pp 20
    effectchance 0
    target MOVE_TARGET_OPPONENTS_FIELD
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_MAGIC_COAT
    appeal 0x0D
    contesttype CONTEST_SMART
    terminatedata

movedata MOVE_HEART_SWAP, "Heart Swap"
    battleeffect 250
    pss SPLIT_STATUS
    basepower 0
    type TYPE_PSYCHIC
    accuracy 0
    pp 10
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal 0x10
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_AQUA_RING, "Aqua Ring"
    battleeffect 251
    pss SPLIT_STATUS
    basepower 0
    type TYPE_WATER
    accuracy 0
    pp 20
    effectchance 0
    target MOVE_TARGET_USER
    priority 0
    flags FLAG_SNATCH
    appeal 0x08
    contesttype CONTEST_BEAUTY
    terminatedata

movedata MOVE_MAGNET_RISE, "Magnet Rise"
    battleeffect 252
    pss SPLIT_STATUS
    basepower 0
    type TYPE_ELECTRIC
    accuracy 0
    pp 10
    effectchance 0
    target MOVE_TARGET_USER
    priority 0
    flags FLAG_SNATCH
    appeal 0x0D
    contesttype CONTEST_CUTE
    terminatedata

movedata MOVE_FLARE_BLITZ, "Flare Blitz"
    battleeffect 253
    pss SPLIT_PHYSICAL
    basepower 120
    type TYPE_FIRE
    accuracy 100
    pp 15
    effectchance 10
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_HIDE_SHADOW | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal 0x16
    contesttype CONTEST_SMART
    terminatedata

movedata MOVE_FORCE_PALM, "Force Palm"
    battleeffect 6
    pss SPLIT_PHYSICAL
    basepower 60
    type TYPE_FIGHTING
    accuracy 100
    pp 10
    effectchance 30
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KINGS_ROCK | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal 0x12
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_AURA_SPHERE, "Aura Sphere"
    battleeffect 17
    pss SPLIT_SPECIAL
    basepower 80
    type TYPE_FIGHTING
    accuracy 0
    pp 20
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_HIDE_SHADOW | FLAG_KINGS_ROCK | FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal 0x11
    contesttype CONTEST_BEAUTY
    terminatedata

movedata MOVE_ROCK_POLISH, "Rock Polish"
    battleeffect 52
    pss SPLIT_STATUS
    basepower 0
    type TYPE_ROCK
    accuracy 0
    pp 20
    effectchance 0
    target MOVE_TARGET_USER
    priority 0
    flags FLAG_SNATCH
    appeal 0x01
    contesttype CONTEST_TOUGH
    terminatedata

movedata MOVE_POISON_JAB, "Poison Jab"
    battleeffect 2
    pss SPLIT_PHYSICAL
    basepower 80
    type TYPE_POISON
    accuracy 100
    pp 20
    effectchance 30
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KINGS_ROCK | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal 0x04
    contesttype CONTEST_SMART
    terminatedata

movedata MOVE_DARK_PULSE, "Dark Pulse"
    battleeffect 31
    pss SPLIT_SPECIAL
    basepower 80
    type TYPE_DARK
    accuracy 100
    pp 15
    effectchance 20
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KINGS_ROCK | FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal 0x11
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_NIGHT_SLASH, "Night Slash"
    battleeffect 43
    pss SPLIT_PHYSICAL
    basepower 70
    type TYPE_DARK
    accuracy 100
    pp 15
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KINGS_ROCK | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal 0x05
    contesttype CONTEST_BEAUTY
    terminatedata

movedata MOVE_AQUA_TAIL, "Aqua Tail"
    battleeffect 0
    pss SPLIT_PHYSICAL
    basepower 90
    type TYPE_WATER
    accuracy 90
    pp 10
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KINGS_ROCK | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal 0x05
    contesttype CONTEST_CUTE
    terminatedata

movedata MOVE_SEED_BOMB, "Seed Bomb"
    battleeffect 0
    pss SPLIT_PHYSICAL
    basepower 80
    type TYPE_GRASS
    accuracy 100
    pp 15
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KINGS_ROCK | FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal 0x05
    contesttype CONTEST_SMART
    terminatedata

movedata MOVE_AIR_SLASH, "Air Slash"
    battleeffect 31
    pss SPLIT_SPECIAL
    basepower 75
    type TYPE_FLYING
    accuracy 95
    pp 15
    effectchance 30
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KINGS_ROCK | FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal 0x11
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_X_SCISSOR, "X-Scissor"
    battleeffect 0
    pss SPLIT_PHYSICAL
    basepower 80
    type TYPE_BUG
    accuracy 100
    pp 15
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KINGS_ROCK | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal 0x11
    contesttype CONTEST_BEAUTY
    terminatedata

movedata MOVE_BUG_BUZZ, "Bug Buzz"
    battleeffect 72
    pss SPLIT_SPECIAL
    basepower 90
    type TYPE_BUG
    accuracy 100
    pp 10
    effectchance 10
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal 0x04
    contesttype CONTEST_CUTE
    terminatedata

movedata MOVE_DRAGON_PULSE, "Dragon Pulse"
    battleeffect 0
    pss SPLIT_SPECIAL
    basepower 85
    type TYPE_DRAGON
    accuracy 100
    pp 10
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KINGS_ROCK | FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal 0x04
    contesttype CONTEST_SMART
    terminatedata

movedata MOVE_DRAGON_RUSH, "Dragon Rush"
    battleeffect 31
    pss SPLIT_PHYSICAL
    basepower 100
    type TYPE_DRAGON
    accuracy 75
    pp 10
    effectchance 20
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KINGS_ROCK | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal 0x12
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_POWER_GEM, "Power Gem"
    battleeffect 0
    pss SPLIT_SPECIAL
    basepower 80
    type TYPE_ROCK
    accuracy 100
    pp 20
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KINGS_ROCK | FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal 0x05
    contesttype CONTEST_BEAUTY
    terminatedata

movedata MOVE_DRAIN_PUNCH, "Drain Punch"
    battleeffect 3
    pss SPLIT_PHYSICAL
    basepower 75
    type TYPE_FIGHTING
    accuracy 100
    pp 10
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KINGS_ROCK | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal 0x14
    contesttype CONTEST_BEAUTY
    terminatedata

movedata MOVE_VACUUM_WAVE, "Vacuum Wave"
    battleeffect 103
    pss SPLIT_SPECIAL
    basepower 40
    type TYPE_FIGHTING
    accuracy 100
    pp 30
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 1
    flags FLAG_KINGS_ROCK | FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal 0x01
    contesttype CONTEST_SMART
    terminatedata

movedata MOVE_FOCUS_BLAST, "Focus Blast"
    battleeffect 72
    pss SPLIT_SPECIAL
    basepower 120
    type TYPE_FIGHTING
    accuracy 70
    pp 5
    effectchance 10
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_HIDE_SHADOW | FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal 0x11
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_ENERGY_BALL, "Energy Ball"
    battleeffect 72
    pss SPLIT_SPECIAL
    basepower 90
    type TYPE_GRASS
    accuracy 100
    pp 10
    effectchance 10
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal 0x11
    contesttype CONTEST_BEAUTY
    terminatedata

movedata MOVE_BRAVE_BIRD, "Brave Bird"
    battleeffect 198
    pss SPLIT_PHYSICAL
    basepower 120
    type TYPE_FLYING
    accuracy 100
    pp 15
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_HIDE_SHADOW | FLAG_KINGS_ROCK | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal 0x12
    contesttype CONTEST_CUTE
    terminatedata

movedata MOVE_EARTH_POWER, "Earth Power"
    battleeffect 72
    pss SPLIT_SPECIAL
    basepower 90
    type TYPE_GROUND
    accuracy 100
    pp 10
    effectchance 10
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KINGS_ROCK | FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal 0x12
    contesttype CONTEST_SMART
    terminatedata

movedata MOVE_SWITCHEROO, "Switcheroo"
    battleeffect 177
    pss SPLIT_STATUS
    basepower 0
    type TYPE_DARK
    accuracy 100
    pp 10
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal 0x0C
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_GIGA_IMPACT, "Giga Impact"
    battleeffect 80
    pss SPLIT_PHYSICAL
    basepower 150
    type TYPE_NORMAL
    accuracy 90
    pp 5
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_HIDE_SHADOW | FLAG_KINGS_ROCK | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal 0x16
    contesttype CONTEST_BEAUTY
    terminatedata

movedata MOVE_NASTY_PLOT, "Nasty Plot"
    battleeffect 53
    pss SPLIT_STATUS
    basepower 0
    type TYPE_DARK
    accuracy 0
    pp 20
    effectchance 0
    target MOVE_TARGET_USER
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_SNATCH
    appeal 0x0B
    contesttype CONTEST_CUTE
    terminatedata

movedata MOVE_BULLET_PUNCH, "Bullet Punch"
    battleeffect 103
    pss SPLIT_PHYSICAL
    basepower 40
    type TYPE_STEEL
    accuracy 100
    pp 30
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 1
    flags FLAG_KEEP_HP_BAR | FLAG_KINGS_ROCK | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal 0x01
    contesttype CONTEST_SMART
    terminatedata

movedata MOVE_AVALANCHE, "Avalanche"
    battleeffect 185
    pss SPLIT_PHYSICAL
    basepower 60
    type TYPE_ICE
    accuracy 100
    pp 10
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority -4
    flags FLAG_KINGS_ROCK | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal 0x0F
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_ICE_SHARD, "Ice Shard"
    battleeffect 103
    pss SPLIT_PHYSICAL
    basepower 40
    type TYPE_ICE
    accuracy 100
    pp 30
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 1
    flags FLAG_KINGS_ROCK | FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal 0x01
    contesttype CONTEST_BEAUTY
    terminatedata

movedata MOVE_SHADOW_CLAW, "Shadow Claw"
    battleeffect 43
    pss SPLIT_PHYSICAL
    basepower 70
    type TYPE_GHOST
    accuracy 100
    pp 15
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_KINGS_ROCK | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal 0x11
    contesttype CONTEST_CUTE
    terminatedata

movedata MOVE_THUNDER_FANG, "Thunder Fang"
    battleeffect 275
    pss SPLIT_PHYSICAL
    basepower 65
    type TYPE_ELECTRIC
    accuracy 95
    pp 15
    effectchance 10
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KINGS_ROCK | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal 0x05
    contesttype CONTEST_SMART
    terminatedata

movedata MOVE_ICE_FANG, "Ice Fang"
    battleeffect 274
    pss SPLIT_PHYSICAL
    basepower 65
    type TYPE_ICE
    accuracy 95
    pp 15
    effectchance 10
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KINGS_ROCK | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal 0x05
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_FIRE_FANG, "Fire Fang"
    battleeffect 273
    pss SPLIT_PHYSICAL
    basepower 65
    type TYPE_FIRE
    accuracy 95
    pp 15
    effectchance 10
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KINGS_ROCK | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal 0x05
    contesttype CONTEST_BEAUTY
    terminatedata

movedata MOVE_SHADOW_SNEAK, "Shadow Sneak"
    battleeffect 103
    pss SPLIT_PHYSICAL
    basepower 40
    type TYPE_GHOST
    accuracy 100
    pp 30
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 1
    flags FLAG_KINGS_ROCK | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal 0x01
    contesttype CONTEST_SMART
    terminatedata

movedata MOVE_MUD_BOMB, "Mud Bomb"
    battleeffect 73
    pss SPLIT_SPECIAL
    basepower 65
    type TYPE_GROUND
    accuracy 85
    pp 10
    effectchance 30
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KINGS_ROCK | FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal 0x12
    contesttype CONTEST_SMART
    terminatedata

movedata MOVE_PSYCHO_CUT, "Psycho Cut"
    battleeffect 43
    pss SPLIT_PHYSICAL
    basepower 70
    type TYPE_PSYCHIC
    accuracy 100
    pp 20
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KINGS_ROCK | FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal 0x11
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_ZEN_HEADBUTT, "Zen Headbutt"
    battleeffect 31
    pss SPLIT_PHYSICAL
    basepower 80
    type TYPE_PSYCHIC
    accuracy 90
    pp 15
    effectchance 20
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KINGS_ROCK | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal 0x12
    contesttype CONTEST_BEAUTY
    terminatedata

movedata MOVE_MIRROR_SHOT, "Mirror Shot"
    battleeffect 73
    pss SPLIT_SPECIAL
    basepower 65
    type TYPE_STEEL
    accuracy 85
    pp 10
    effectchance 30
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KINGS_ROCK | FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal 0x11
    contesttype CONTEST_CUTE
    terminatedata

movedata MOVE_FLASH_CANNON, "Flash Cannon"
    battleeffect 72
    pss SPLIT_SPECIAL
    basepower 80
    type TYPE_STEEL
    accuracy 100
    pp 10
    effectchance 10
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KINGS_ROCK | FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal 0x11
    contesttype CONTEST_SMART
    terminatedata

movedata MOVE_ROCK_CLIMB, "Rock Climb"
    battleeffect 76
    pss SPLIT_PHYSICAL
    basepower 90
    type TYPE_NORMAL
    accuracy 85
    pp 20
    effectchance 20
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KINGS_ROCK | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal 0x12
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_DEFOG, "Defog"
    battleeffect 258
    pss SPLIT_STATUS
    basepower 0
    type TYPE_FLYING
    accuracy 0
    pp 15
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT
    appeal 0x0D
    contesttype CONTEST_BEAUTY
    terminatedata

movedata MOVE_TRICK_ROOM, "Trick Room"
    battleeffect 259
    pss SPLIT_STATUS
    basepower 0
    type TYPE_PSYCHIC
    accuracy 0
    pp 5
    effectchance 0
    target MOVE_TARGET_ACTIVE_FIELD
    priority -7
    flags FLAG_MIRROR_MOVE
    appeal 0x0E
    contesttype CONTEST_CUTE
    terminatedata

movedata MOVE_DRACO_METEOR, "Draco Meteor"
    battleeffect 204
    pss SPLIT_SPECIAL
    basepower 130
    type TYPE_DRAGON
    accuracy 90
    pp 5
    effectchance 100
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KINGS_ROCK | FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal 0x16
    contesttype CONTEST_SMART
    terminatedata

movedata MOVE_DISCHARGE, "Discharge"
    battleeffect 6
    pss SPLIT_SPECIAL
    basepower 80
    type TYPE_ELECTRIC
    accuracy 100
    pp 15
    effectchance 30
    target MOVE_TARGET_FOES_AND_ALLY
    priority 0
    flags FLAG_KINGS_ROCK | FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal 0x11
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_LAVA_PLUME, "Lava Plume"
    battleeffect 4
    pss SPLIT_SPECIAL
    basepower 80
    type TYPE_FIRE
    accuracy 100
    pp 15
    effectchance 30
    target MOVE_TARGET_FOES_AND_ALLY
    priority 0
    flags FLAG_KINGS_ROCK | FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal 0x11
    contesttype CONTEST_TOUGH
    terminatedata

movedata MOVE_LEAF_STORM, "Leaf Storm"
    battleeffect 204
    pss SPLIT_SPECIAL
    basepower 130
    type TYPE_GRASS
    accuracy 90
    pp 5
    effectchance 100
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_HIDE_SHADOW | FLAG_KINGS_ROCK | FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal 0x16
    contesttype CONTEST_CUTE
    terminatedata

movedata MOVE_POWER_WHIP, "Power Whip"
    battleeffect 0
    pss SPLIT_PHYSICAL
    basepower 120
    type TYPE_GRASS
    accuracy 85
    pp 10
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_HIDE_SHADOW | FLAG_KINGS_ROCK | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal 0x05
    contesttype CONTEST_BEAUTY
    terminatedata

movedata MOVE_ROCK_WRECKER, "Rock Wrecker"
    battleeffect 80
    pss SPLIT_PHYSICAL
    basepower 150
    type TYPE_ROCK
    accuracy 90
    pp 5
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_HIDE_SHADOW | FLAG_KINGS_ROCK | FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal 0x16
    contesttype CONTEST_TOUGH
    terminatedata

movedata MOVE_CROSS_POISON, "Cross Poison"
    battleeffect 209
    pss SPLIT_PHYSICAL
    basepower 70
    type TYPE_POISON
    accuracy 100
    pp 20
    effectchance 10
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KINGS_ROCK | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal 0x05
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_GUNK_SHOT, "Gunk Shot"
    battleeffect 2
    pss SPLIT_PHYSICAL
    basepower 120
    type TYPE_POISON
    accuracy 80
    pp 5
    effectchance 30
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_HIDE_SHADOW | FLAG_KINGS_ROCK | FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal 0x05
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_IRON_HEAD, "Iron Head"
    battleeffect 31
    pss SPLIT_PHYSICAL
    basepower 80
    type TYPE_STEEL
    accuracy 100
    pp 15
    effectchance 30
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KINGS_ROCK | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal 0x12
    contesttype CONTEST_TOUGH
    terminatedata

movedata MOVE_MAGNET_BOMB, "Magnet Bomb"
    battleeffect 17
    pss SPLIT_PHYSICAL
    basepower 60
    type TYPE_STEEL
    accuracy 0
    pp 20
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KINGS_ROCK | FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal 0x05
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_STONE_EDGE, "Stone Edge"
    battleeffect 43
    pss SPLIT_PHYSICAL
    basepower 100
    type TYPE_ROCK
    accuracy 80
    pp 5
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KINGS_ROCK | FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal 0x04
    contesttype CONTEST_TOUGH
    terminatedata

movedata MOVE_CAPTIVATE, "Captivate"
    battleeffect 265
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy 100
    pp 20
    effectchance 0
    target MOVE_TARGET_BOTH
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_MAGIC_COAT | FLAG_PROTECT
    appeal 0x13
    contesttype CONTEST_BEAUTY
    terminatedata

movedata MOVE_STEALTH_ROCK, "Stealth Rock"
    battleeffect 266
    pss SPLIT_STATUS
    basepower 0
    type TYPE_ROCK
    accuracy 0
    pp 20
    effectchance 0
    target MOVE_TARGET_OPPONENTS_FIELD
    priority 0
    flags FLAG_MAGIC_COAT
    appeal 0x0D
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_GRASS_KNOT, "Grass Knot"
    battleeffect 196
    pss SPLIT_SPECIAL
    basepower 1
    type TYPE_GRASS
    accuracy 100
    pp 20
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_KINGS_ROCK | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal 0x04
    contesttype CONTEST_SMART
    terminatedata

movedata MOVE_CHATTER, "Chatter"
    battleeffect DEBUG_NEEDS_TESTING ? 76 : 267 // always confuse
    pss SPLIT_SPECIAL
    basepower 65
    type TYPE_FLYING
    accuracy 100
    pp 20
    effectchance DEBUG_NEEDS_TESTING ? 100 : 0 // always confuse
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT
    appeal 0x17
    contesttype CONTEST_SMART
    terminatedata

movedata MOVE_JUDGMENT, "Judgment"
    battleeffect 268
    pss SPLIT_SPECIAL
    basepower 100
    type TYPE_NORMAL
    accuracy 100
    pp 10
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KINGS_ROCK | FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal 0x0E
    contesttype CONTEST_SMART
    terminatedata

movedata MOVE_BUG_BITE, "Bug Bite"
    battleeffect 224
    pss SPLIT_PHYSICAL
    basepower 60
    type TYPE_BUG
    accuracy 100
    pp 20
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_KINGS_ROCK | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal 0x0C
    contesttype CONTEST_TOUGH
    terminatedata

movedata MOVE_CHARGE_BEAM, "Charge Beam"
    battleeffect 276
    pss SPLIT_SPECIAL
    basepower 50
    type TYPE_ELECTRIC
    accuracy 90
    pp 10
    effectchance 70
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KINGS_ROCK | FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal 0x11
    contesttype CONTEST_BEAUTY
    terminatedata

movedata MOVE_WOOD_HAMMER, "Wood Hammer"
    battleeffect 198
    pss SPLIT_PHYSICAL
    basepower 120
    type TYPE_GRASS
    accuracy 100
    pp 15
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KINGS_ROCK | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal 0x12
    contesttype CONTEST_TOUGH
    terminatedata

movedata MOVE_AQUA_JET, "Aqua Jet"
    battleeffect 103
    pss SPLIT_PHYSICAL
    basepower 40
    type TYPE_WATER
    accuracy 100
    pp 20
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 1
    flags FLAG_KINGS_ROCK | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal 0x01
    contesttype CONTEST_BEAUTY
    terminatedata

movedata MOVE_ATTACK_ORDER, "Attack Order"
    battleeffect 43
    pss SPLIT_PHYSICAL
    basepower 90
    type TYPE_BUG
    accuracy 100
    pp 15
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KINGS_ROCK | FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal 0x04
    contesttype CONTEST_SMART
    terminatedata

movedata MOVE_DEFEND_ORDER, "Defend Order"
    battleeffect 206
    pss SPLIT_STATUS
    basepower 0
    type TYPE_BUG
    accuracy 0
    pp 10
    effectchance 0
    target MOVE_TARGET_USER
    priority 0
    flags FLAG_SNATCH
    appeal 0x0B
    contesttype CONTEST_SMART
    terminatedata

movedata MOVE_HEAL_ORDER, "Heal Order"
    battleeffect 32
    pss SPLIT_STATUS
    basepower 0
    type TYPE_BUG
    accuracy 0
    pp 10
    effectchance 0
    target MOVE_TARGET_USER
    priority 0
    flags FLAG_SNATCH
    appeal 0x08
    contesttype CONTEST_SMART
    terminatedata

movedata MOVE_HEAD_SMASH, "Head Smash"
    battleeffect 269
    pss SPLIT_PHYSICAL
    basepower 150
    type TYPE_ROCK
    accuracy 80
    pp 5
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_HIDE_SHADOW | FLAG_KINGS_ROCK | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal 0x16
    contesttype CONTEST_TOUGH
    terminatedata

movedata MOVE_DOUBLE_HIT, "Double Hit"
    battleeffect 44
    pss SPLIT_PHYSICAL
    basepower 35
    type TYPE_NORMAL
    accuracy 90
    pp 10
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KINGS_ROCK | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal 0x07
    contesttype CONTEST_SMART
    terminatedata

movedata MOVE_ROAR_OF_TIME, "Roar of Time"
    battleeffect 80
    pss SPLIT_SPECIAL
    basepower 150
    type TYPE_DRAGON
    accuracy 90
    pp 5
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KINGS_ROCK | FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal 0x16
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_SPACIAL_REND, "Spacial Rend"
    battleeffect 43
    pss SPLIT_SPECIAL
    basepower 100
    type TYPE_DRAGON
    accuracy 95
    pp 5
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_HIDE_SHADOW | FLAG_KINGS_ROCK | FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal 0x04
    contesttype CONTEST_TOUGH
    terminatedata

movedata MOVE_LUNAR_DANCE, "Lunar Dance"
    battleeffect 270
    pss SPLIT_STATUS
    basepower 0
    type TYPE_PSYCHIC
    accuracy 0
    pp 10
    effectchance 0
    target MOVE_TARGET_USER
    priority 0
    flags FLAG_HIDE_SHADOW | FLAG_SNATCH
    appeal 0x08
    contesttype CONTEST_BEAUTY
    terminatedata

movedata MOVE_CRUSH_GRIP, "Crush Grip"
    battleeffect 237
    pss SPLIT_PHYSICAL
    basepower 1
    type TYPE_NORMAL
    accuracy 100
    pp 5
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KINGS_ROCK | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal 0x0F
    contesttype CONTEST_TOUGH
    terminatedata

movedata MOVE_MAGMA_STORM, "Magma Storm"
    battleeffect 42
    pss SPLIT_SPECIAL
    basepower 100
    type TYPE_FIRE
    accuracy 75
    pp 5
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_HIDE_SHADOW | FLAG_KINGS_ROCK | FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal 0x07
    contesttype CONTEST_TOUGH
    terminatedata

movedata MOVE_DARK_VOID, "Dark Void"
    battleeffect 1
    pss SPLIT_STATUS
    basepower 0
    type TYPE_DARK
    accuracy 50
    pp 10
    effectchance 0
    target MOVE_TARGET_BOTH
    priority 0
    flags FLAG_HIDE_SHADOW | FLAG_MIRROR_MOVE | FLAG_MAGIC_COAT | FLAG_PROTECT
    appeal 0x13
    contesttype CONTEST_SMART
    terminatedata

movedata MOVE_SEED_FLARE, "Seed Flare"
    battleeffect 271
    pss SPLIT_SPECIAL
    basepower 120
    type TYPE_GRASS
    accuracy 85
    pp 5
    effectchance 40
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_HIDE_SHADOW | FLAG_KINGS_ROCK | FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal 0x16
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_OMINOUS_WIND, "Ominous Wind"
    battleeffect 140
    pss SPLIT_SPECIAL
    basepower 60
    type TYPE_GHOST
    accuracy 100
    pp 5
    effectchance 10
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KINGS_ROCK | FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal 0x0B
    contesttype CONTEST_SMART
    terminatedata

movedata MOVE_SHADOW_FORCE, "Shadow Force"
    battleeffect 272
    pss SPLIT_PHYSICAL
    basepower 120
    type TYPE_GHOST
    accuracy 100
    pp 5
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KINGS_ROCK | FLAG_MIRROR_MOVE | FLAG_CONTACT
    appeal 0x16
    contesttype CONTEST_SMART
    terminatedata

movedata MOVE_468, "MOVE_468"
    battleeffect 0
    pss SPLIT_SPECIAL
    basepower 100
    type TYPE_NORMAL
    accuracy 100
    pp 10
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KINGS_ROCK | FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal 0x10
    contesttype CONTEST_BEAUTY
    terminatedata

movedata MOVE_469, "MOVE_469"
    battleeffect 0
    pss SPLIT_SPECIAL
    basepower 100
    type TYPE_NORMAL
    accuracy 100
    pp 10
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KINGS_ROCK | FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal 0x11
    contesttype CONTEST_CUTE
    terminatedata

movedata MOVE_470, "MOVE_470"
    battleeffect 0
    pss SPLIT_SPECIAL
    basepower 100
    type TYPE_NORMAL
    accuracy 100
    pp 10
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KINGS_ROCK | FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal 0x12
    contesttype CONTEST_SMART
    terminatedata

movedata MOVE_HONE_CLAWS, "Hone Claws"
    battleeffect 277
    pss SPLIT_STATUS
    basepower 0
    type TYPE_DARK
    accuracy 0
    pp 15
    effectchance 0
    target MOVE_TARGET_USER
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_SNATCH
    appeal 0x00
    contesttype CONTEST_CUTE
    terminatedata

movedata MOVE_WIDE_GUARD, "Wide Guard"
    battleeffect 0
    pss SPLIT_STATUS
    basepower 0
    type TYPE_ROCK
    accuracy 0
    pp 10
    effectchance 0
    target MOVE_TARGET_USER_SIDE
    priority 3
    flags FLAG_KEEP_HP_BAR | FLAG_SNATCH
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_GUARD_SPLIT, "Guard Split"
    battleeffect 278
    pss SPLIT_STATUS
    basepower 0
    type TYPE_PSYCHIC
    accuracy 0
    pp 10
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_PROTECT
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_POWER_SPLIT, "Power Split"
    battleeffect 279
    pss SPLIT_STATUS
    basepower 0
    type TYPE_PSYCHIC
    accuracy 0
    pp 10
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_PROTECT
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_WONDER_ROOM, "Wonder Room"
    battleeffect 0
    pss SPLIT_STATUS
    basepower 0
    type TYPE_PSYCHIC
    accuracy 0
    pp 10
    effectchance 0
    target MOVE_TARGET_USER
    priority 0
    flags FLAG_MIRROR_MOVE
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_PSYSHOCK, "Psyshock"
    battleeffect 0
    pss SPLIT_SPECIAL
    basepower 80
    type TYPE_PSYCHIC
    accuracy 100
    pp 10
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_VENOSHOCK, "Venoshock"
    battleeffect 280
    pss SPLIT_SPECIAL
    basepower 65
    type TYPE_POISON
    accuracy 100
    pp 10
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_AUTOTOMIZE, "Autotomize"
    battleeffect 281
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy 0
    pp 15
    effectchance 0
    target MOVE_TARGET_USER
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_SNATCH
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_RAGE_POWDER, "Rage Powder"
    battleeffect 172
    pss SPLIT_STATUS
    basepower 0
    type TYPE_BUG
    accuracy 100
    pp 20
    effectchance 0
    target MOVE_TARGET_USER
    priority 2
    flags 0
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_TELEKINESIS, "Telekinesis"
    battleeffect 0
    pss SPLIT_STATUS
    basepower 0
    type TYPE_PSYCHIC
    accuracy 0
    pp 15
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_PROTECT | FLAG_MAGIC_COAT | FLAG_MIRROR_MOVE
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_MAGIC_ROOM, "Magic Room"
    battleeffect 0
    pss SPLIT_STATUS
    basepower 0
    type TYPE_PSYCHIC
    accuracy 0
    pp 10
    effectchance 0
    target MOVE_TARGET_USER
    priority 0
    flags FLAG_MIRROR_MOVE
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_SMACK_DOWN, "Smack Down"
    battleeffect 0
    pss SPLIT_PHYSICAL
    basepower 50
    type TYPE_ROCK
    accuracy 100
    pp 15
    effectchance 100
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_STORM_THROW, "Storm Throw"
    battleeffect 282
    pss SPLIT_PHYSICAL
    basepower 60
    type TYPE_FIGHTING
    accuracy 100
    pp 10
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_CONTACT | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_FLAME_BURST, "Flame Burst"
    battleeffect 0
    pss SPLIT_SPECIAL
    basepower 70
    type TYPE_FIRE
    accuracy 100
    pp 15
    effectchance 100
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_SLUDGE_WAVE, "Sludge Wave"
    battleeffect 2
    pss SPLIT_PHYSICAL
    basepower 95
    type TYPE_POISON
    accuracy 100
    pp 10
    effectchance 10
    target MOVE_TARGET_FOES_AND_ALLY
    priority 0
    flags FLAG_PROTECT | FLAG_MIRROR_MOVE
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_QUIVER_DANCE, "Quiver Dance"
    battleeffect 283
    pss SPLIT_STATUS
    basepower 0
    type TYPE_BUG
    accuracy 0
    pp 20
    effectchance 0
    target MOVE_TARGET_USER
    priority 0
    flags FLAG_SNATCH
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_HEAVY_SLAM, "Heavy Slam"
    battleeffect 292
    pss SPLIT_PHYSICAL
    basepower 1
    type TYPE_STEEL
    accuracy 100
    pp 10
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_CONTACT | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_SYNCHRONOISE, "Synchronoise"
    battleeffect 0
    pss SPLIT_SPECIAL
    basepower 120
    type TYPE_PSYCHIC
    accuracy 100
    pp 10
    effectchance 0
    target MOVE_TARGET_FOES_AND_ALLY
    priority 0
    flags FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_ELECTRO_BALL, "Electro Ball"
    battleeffect 0
    pss SPLIT_SPECIAL
    basepower 1
    type TYPE_ELECTRIC
    accuracy 100
    pp 10
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_SOAK, "Soak"
    battleeffect 284
    pss SPLIT_STATUS
    basepower 0
    type TYPE_WATER
    accuracy 100
    pp 20
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_PROTECT | FLAG_MAGIC_COAT | FLAG_MIRROR_MOVE
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_FLAME_CHARGE, "Flame Charge"
    battleeffect 285
    pss SPLIT_PHYSICAL
    basepower 50
    type TYPE_FIRE
    accuracy 100
    pp 20
    effectchance 100
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_CONTACT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_COIL, "Coil"
    battleeffect 286
    pss SPLIT_STATUS
    basepower 0
    type TYPE_POISON
    accuracy 0
    pp 20
    effectchance 0
    target MOVE_TARGET_USER
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_SNATCH
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_LOW_SWEEP, "Low Sweep"
    battleeffect 70
    pss SPLIT_PHYSICAL
    basepower 65
    type TYPE_FIGHTING
    accuracy 100
    pp 20
    effectchance 100
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_CONTACT | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_ACID_SPRAY, "Acid Spray"
    battleeffect 271
    pss SPLIT_SPECIAL
    basepower 40
    type TYPE_POISON
    accuracy 100
    pp 20
    effectchance 100
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_FOUL_PLAY, "Foul Play"
    battleeffect 0
    pss SPLIT_PHYSICAL
    basepower 95
    type TYPE_DARK
    accuracy 100
    pp 15
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_CONTACT | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_SIMPLE_BEAM, "Simple Beam"
    battleeffect 0
    pss SPLIT_SPECIAL
    basepower 0
    type TYPE_NORMAL
    accuracy 100
    pp 15
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MAGIC_COAT | FLAG_MIRROR_MOVE
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_ENTRAINMENT, "Entrainment"
    battleeffect 0
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy 100
    pp 15
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MAGIC_COAT | FLAG_MIRROR_MOVE
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_AFTER_YOU, "After You"
    battleeffect 0
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy 0
    pp 15
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_ROUND, "Round"
    battleeffect 0
    pss SPLIT_SPECIAL
    basepower 60
    type TYPE_NORMAL
    accuracy 100
    pp 15
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_ECHOED_VOICE, "Echoed Voice"
    battleeffect 0
    pss SPLIT_SPECIAL
    basepower 40
    type TYPE_NORMAL
    accuracy 100
    pp 15
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_CHIP_AWAY, "Chip Away"
    battleeffect 0
    pss SPLIT_PHYSICAL
    basepower 70
    type TYPE_NORMAL
    accuracy 100
    pp 20
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_CONTACT | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_CLEAR_SMOG, "Clear Smog"
    battleeffect 0
    pss SPLIT_SPECIAL
    basepower 50
    type TYPE_POISON
    accuracy 0
    pp 15
    effectchance 100
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_STORED_POWER, "Stored Power"
    battleeffect 0
    pss SPLIT_SPECIAL
    basepower 20
    type TYPE_PSYCHIC
    accuracy 100
    pp 10
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_QUICK_GUARD, "Quick Guard"
    battleeffect 0
    pss SPLIT_STATUS
    basepower 0
    type TYPE_FIGHTING
    accuracy 0
    pp 15
    effectchance 0
    target MOVE_TARGET_USER
    priority 3
    flags FLAG_KEEP_HP_BAR | FLAG_SNATCH
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_ALLY_SWITCH, "Ally Switch"
    battleeffect 0
    pss SPLIT_STATUS
    basepower 0
    type TYPE_PSYCHIC
    accuracy 0
    pp 15
    effectchance 0
    target MOVE_TARGET_USER
    priority 2
    flags FLAG_KEEP_HP_BAR
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_SCALD, "Scald"
    battleeffect 4
    pss SPLIT_SPECIAL
    basepower 80
    type TYPE_WATER
    accuracy 100
    pp 15
    effectchance 30
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_SHELL_SMASH, "Shell Smash"
    battleeffect 290
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy 0
    pp 15
    effectchance 0
    target MOVE_TARGET_USER
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_SNATCH
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_HEAL_PULSE, "Heal Pulse"
    battleeffect 0
    pss SPLIT_STATUS
    basepower 0
    type TYPE_PSYCHIC
    accuracy 0
    pp 10
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MAGIC_COAT
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_HEX, "Hex"
    battleeffect 287
    pss SPLIT_SPECIAL
    basepower 65
    type TYPE_GHOST
    accuracy 100
    pp 10
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_SKY_DROP, "Sky Drop"
    battleeffect 0
    pss SPLIT_PHYSICAL
    basepower 60
    type TYPE_FLYING
    accuracy 100
    pp 10
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_CONTACT | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_SHIFT_GEAR, "Shift Gear"
    battleeffect 288
    pss SPLIT_STATUS
    basepower 0
    type TYPE_STEEL
    accuracy 0
    pp 10
    effectchance 0
    target MOVE_TARGET_USER
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_SNATCH
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_CIRCLE_THROW, "Circle Throw"
    battleeffect 0
    pss SPLIT_PHYSICAL
    basepower 60
    type TYPE_FIGHTING
    accuracy 90
    pp 10
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority -6
    flags FLAG_KEEP_HP_BAR | FLAG_CONTACT | FLAG_PROTECT | FLAG_MIRROR_MOVE
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_INCINERATE, "Incinerate"
    battleeffect 0
    pss SPLIT_SPECIAL
    basepower 60
    type TYPE_FIRE
    accuracy 100
    pp 15
    effectchance 100
    target MOVE_TARGET_BOTH
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_QUASH, "Quash"
    battleeffect 0
    pss SPLIT_STATUS
    basepower 0
    type TYPE_DARK
    accuracy 100
    pp 15
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MAGIC_COAT | FLAG_MIRROR_MOVE
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_ACROBATICS, "Acrobatics"
    battleeffect 289
    pss SPLIT_PHYSICAL
    basepower 55
    type TYPE_FLYING
    accuracy 100
    pp 15
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_CONTACT | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_REFLECT_TYPE, "Reflect Type"
    battleeffect 0
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy 0
    pp 15
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_SNATCH
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_RETALIATE, "Retaliate"
    battleeffect 0
    pss SPLIT_PHYSICAL
    basepower 70
    type TYPE_NORMAL
    accuracy 100
    pp 5
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_CONTACT | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_FINAL_GAMBIT, "Final Gambit"
    battleeffect 0
    pss SPLIT_SPECIAL
    basepower 1
    type TYPE_FIGHTING
    accuracy 100
    pp 5
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_BESTOW, "Bestow"
    battleeffect 0
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy 0
    pp 15
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_INFERNO, "Inferno"
    battleeffect 4
    pss SPLIT_SPECIAL
    basepower 100
    type TYPE_FIRE
    accuracy 50
    pp 5
    effectchance 100
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_WATER_PLEDGE, "Water Pledge"
    battleeffect 0
    pss SPLIT_SPECIAL
    basepower 80
    type TYPE_WATER
    accuracy 100
    pp 10
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_FIRE_PLEDGE, "Fire Pledge"
    battleeffect 0
    pss SPLIT_SPECIAL
    basepower 80
    type TYPE_FIRE
    accuracy 100
    pp 10
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_GRASS_PLEDGE, "Grass Pledge"
    battleeffect 0
    pss SPLIT_SPECIAL
    basepower 80
    type TYPE_GRASS
    accuracy 100
    pp 10
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_VOLT_SWITCH, "Volt Switch"
    battleeffect 228
    pss SPLIT_SPECIAL
    basepower 70
    type TYPE_ELECTRIC
    accuracy 100
    pp 20
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_STRUGGLE_BUG, "Struggle Bug"
    battleeffect 71
    pss SPLIT_SPECIAL
    basepower 50
    type TYPE_BUG
    accuracy 100
    pp 20
    effectchance 100
    target MOVE_TARGET_BOTH
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_BULLDOZE, "Bulldoze"
    battleeffect 70
    pss SPLIT_PHYSICAL
    basepower 60
    type TYPE_GROUND
    accuracy 100
    pp 20
    effectchance 100
    target MOVE_TARGET_FOES_AND_ALLY
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_FROST_BREATH, "Frost Breath"
    battleeffect 282
    pss SPLIT_SPECIAL
    basepower 60
    type TYPE_ICE
    accuracy 90
    pp 10
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_DRAGON_TAIL, "Dragon Tail"
    battleeffect 0
    pss SPLIT_PHYSICAL
    basepower 60
    type TYPE_DRAGON
    accuracy 90
    pp 10
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority -6
    flags FLAG_KEEP_HP_BAR | FLAG_CONTACT | FLAG_PROTECT | FLAG_MIRROR_MOVE
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_WORK_UP, "Work Up"
    battleeffect 0
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy 0
    pp 30
    effectchance 0
    target MOVE_TARGET_USER
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_SNATCH
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_ELECTROWEB, "Electroweb"
    battleeffect 70
    pss SPLIT_SPECIAL
    basepower 55
    type TYPE_ELECTRIC
    accuracy 95
    pp 15
    effectchance 100
    target MOVE_TARGET_BOTH
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_WILD_CHARGE, "Wild Charge"
    battleeffect 198
    pss SPLIT_PHYSICAL
    basepower 90
    type TYPE_ELECTRIC
    accuracy 100
    pp 15
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_CONTACT | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_DRILL_RUN, "Drill Run"
    battleeffect 43
    pss SPLIT_PHYSICAL
    basepower 80
    type TYPE_GROUND
    accuracy 95
    pp 10
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_CONTACT | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_DUAL_CHOP, "Dual Chop"
    battleeffect 44
    pss SPLIT_PHYSICAL
    basepower 40
    type TYPE_DRAGON
    accuracy 90
    pp 15
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_CONTACT | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_HEART_STAMP, "Heart Stamp"
    battleeffect 31
    pss SPLIT_PHYSICAL
    basepower 60
    type TYPE_PSYCHIC
    accuracy 100
    pp 25
    effectchance 30
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_CONTACT | FLAG_PROTECT | FLAG_MIRROR_MOVE
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_HORN_LEECH, "Horn Leech"
    battleeffect 3
    pss SPLIT_PHYSICAL
    basepower 75
    type TYPE_GRASS
    accuracy 100
    pp 10
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_CONTACT | FLAG_PROTECT | FLAG_MIRROR_MOVE
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_SACRED_SWORD, "Sacred Sword"
    battleeffect 0
    pss SPLIT_PHYSICAL
    basepower 90
    type TYPE_FIGHTING
    accuracy 100
    pp 15
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_CONTACT | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_RAZOR_SHELL, "Razor Shell"
    battleeffect 69
    pss SPLIT_PHYSICAL
    basepower 75
    type TYPE_WATER
    accuracy 95
    pp 10
    effectchance 50
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_CONTACT | FLAG_PROTECT | FLAG_MIRROR_MOVE
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_HEAT_CRASH, "Heat Crash"
    battleeffect 0
    pss SPLIT_PHYSICAL
    basepower 1
    type TYPE_FIRE
    accuracy 100
    pp 10
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_CONTACT | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_LEAF_TORNADO, "Leaf Tornado"
    battleeffect 73
    pss SPLIT_SPECIAL
    basepower 65
    type TYPE_GRASS
    accuracy 90
    pp 10
    effectchance 50
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_STEAMROLLER, "Steamroller"
    battleeffect 150
    pss SPLIT_PHYSICAL
    basepower 65
    type TYPE_BUG
    accuracy 100
    pp 20
    effectchance 30
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_CONTACT | FLAG_PROTECT | FLAG_MIRROR_MOVE
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_COTTON_GUARD, "Cotton Guard"
    battleeffect 0
    pss SPLIT_STATUS
    basepower 0
    type TYPE_GRASS
    accuracy 0
    pp 10
    effectchance 0
    target MOVE_TARGET_USER
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_SNATCH
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_NIGHT_DAZE, "Night Daze"
    battleeffect 73
    pss SPLIT_SPECIAL
    basepower 85
    type TYPE_DARK
    accuracy 95
    pp 10
    effectchance 40
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_PSYSTRIKE, "Psystrike"
    battleeffect 0
    pss SPLIT_SPECIAL
    basepower 100
    type TYPE_PSYCHIC
    accuracy 100
    pp 10
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_TAIL_SLAP, "Tail Slap"
    battleeffect 29
    pss SPLIT_PHYSICAL
    basepower 25
    type TYPE_NORMAL
    accuracy 85
    pp 10
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_CONTACT | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_HURRICANE, "Hurricane"
    battleeffect 0
    pss SPLIT_SPECIAL
    basepower 110
    type TYPE_FLYING
    accuracy 70
    pp 10
    effectchance 30
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_HEAD_CHARGE, "Head Charge"
    battleeffect 198
    pss SPLIT_PHYSICAL
    basepower 120
    type TYPE_NORMAL
    accuracy 100
    pp 15
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_CONTACT | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_GEAR_GRIND, "Gear Grind"
    battleeffect 44
    pss SPLIT_PHYSICAL
    basepower 50
    type TYPE_STEEL
    accuracy 85
    pp 15
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_CONTACT | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_SEARING_SHOT, "Searing Shot"
    battleeffect 4
    pss SPLIT_SPECIAL
    basepower 100
    type TYPE_FIRE
    accuracy 100
    pp 5
    effectchance 30
    target MOVE_TARGET_FOES_AND_ALLY
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_TECHNO_BLAST, "Techno Blast"
    battleeffect 0
    pss SPLIT_SPECIAL
    basepower 120
    type TYPE_NORMAL
    accuracy 100
    pp 5
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_RELIC_SONG, "Relic Song"
    battleeffect 0
    pss SPLIT_SPECIAL
    basepower 75
    type TYPE_NORMAL
    accuracy 100
    pp 10
    effectchance 10
    target MOVE_TARGET_BOTH
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_SECRET_SWORD, "Secret Sword"
    battleeffect 0
    pss SPLIT_SPECIAL
    basepower 85
    type TYPE_FIGHTING
    accuracy 100
    pp 10
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_GLACIATE, "Glaciate"
    battleeffect 70
    pss SPLIT_SPECIAL
    basepower 65
    type TYPE_ICE
    accuracy 95
    pp 10
    effectchance 100
    target MOVE_TARGET_BOTH
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_BOLT_STRIKE, "Bolt Strike"
    battleeffect 6
    pss SPLIT_SPECIAL
    basepower 130
    type TYPE_ELECTRIC
    accuracy 85
    pp 5
    effectchance 20
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_CONTACT | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_BLUE_FLARE, "Blue Flare"
    battleeffect 4
    pss SPLIT_SPECIAL
    basepower 130
    type TYPE_FIRE
    accuracy 85
    pp 5
    effectchance 20
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_FIERY_DANCE, "Fiery Dance"
    battleeffect 276
    pss SPLIT_SPECIAL
    basepower 80
    type TYPE_FIRE
    accuracy 100
    pp 10
    effectchance 50
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_FREEZE_SHOCK, "Freeze Shock"
    battleeffect 75
    pss SPLIT_SPECIAL
    basepower 140
    type TYPE_ICE
    accuracy 90
    pp 5
    effectchance 30
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_ICE_BURN, "Ice Burn"
    battleeffect 75
    pss SPLIT_SPECIAL
    basepower 140
    type TYPE_ICE
    accuracy 90
    pp 5
    effectchance 30
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_SNARL, "Snarl"
    battleeffect 71
    pss SPLIT_SPECIAL
    basepower 55
    type TYPE_DARK
    accuracy 95
    pp 15
    effectchance 100
    target MOVE_TARGET_BOTH
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_ICICLE_CRASH, "Icicle Crash"
    battleeffect 31
    pss SPLIT_PHYSICAL
    basepower 85
    type TYPE_ICE
    accuracy 90
    pp 10
    effectchance 30
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_V_CREATE, "V-create"
    battleeffect 291
    pss SPLIT_PHYSICAL
    basepower 180
    type TYPE_FIRE
    accuracy 95
    pp 5
    effectchance 100
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_CONTACT | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_FUSION_FLARE, "Fusion Flare"
    battleeffect 0
    pss SPLIT_SPECIAL
    basepower 100
    type TYPE_FIRE
    accuracy 100
    pp 5
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_FUSION_BOLT, "Fusion Bolt"
    battleeffect 0
    pss SPLIT_SPECIAL
    basepower 100
    type TYPE_ELECTRIC
    accuracy 100
    pp 5
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata


movedata MOVE_FLYING_PRESS, "Flying Press"
    battleeffect 0
    pss SPLIT_PHYSICAL
    basepower 100
    type TYPE_FIGHTING
    accuracy 95
    pp 10
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_MAT_BLOCK, "Mat Block"
    battleeffect 0
    pss SPLIT_STATUS
    basepower 0
    type TYPE_FIGHTING
    accuracy 0
    pp 10
    effectchance 0
    target MOVE_TARGET_USER_SIDE
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_BELCH, "Belch"
    battleeffect 0
    pss SPLIT_SPECIAL
    basepower 120
    type TYPE_POISON
    accuracy 90
    pp 10
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_ROTOTILLER, "Rototiller"
    battleeffect 0
    pss SPLIT_STATUS
    basepower 0
    type TYPE_GROUND
    accuracy 0
    pp 10
    effectchance 100
    target MOVE_TARGET_USER | MOVE_TARGET_FOES_AND_ALLY
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_STICKY_WEB, "Sticky Web"
    battleeffect 0
    pss SPLIT_STATUS
    basepower 0
    type TYPE_BUG
    accuracy 0
    pp 20
    effectchance 0
    target MOVE_TARGET_OPPONENTS_FIELD
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_FELL_STINGER, "Fell Stinger"
    battleeffect 0
    pss SPLIT_PHYSICAL
    basepower 50
    type TYPE_BUG
    accuracy 100
    pp 25
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_PHANTOM_FORCE, "Phantom Force"
    battleeffect 0
    pss SPLIT_PHYSICAL
    basepower 90
    type TYPE_GHOST
    accuracy 100
    pp 10
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_TRICK_OR_TREAT, "Trick-or-Treat"
    battleeffect 0
    pss SPLIT_STATUS
    basepower 0
    type TYPE_GHOST
    accuracy 100
    pp 20
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_NOBLE_ROAR, "Noble Roar"
    battleeffect 0
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy 100
    pp 30
    effectchance 100
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_ION_DELUGE, "Ion Deluge"
    battleeffect 0
    pss SPLIT_STATUS
    basepower 0
    type TYPE_ELECTRIC
    accuracy 0
    pp 25
    effectchance 0
    target MOVE_TARGET_ACTIVE_FIELD
    priority 1
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_PARABOLIC_CHARGE, "Parabolic Charge"
    battleeffect 0
    pss SPLIT_SPECIAL
    basepower 65
    type TYPE_ELECTRIC
    accuracy 100
    pp 20
    effectchance 0
    target MOVE_TARGET_FOES_AND_ALLY
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_FORESTS_CURSE, "Forest’s Curse"
    battleeffect 0
    pss SPLIT_STATUS
    basepower 0
    type TYPE_GRASS
    accuracy 100
    pp 20
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_PETAL_BLIZZARD, "Petal Blizzard"
    battleeffect 0
    pss SPLIT_PHYSICAL
    basepower 90
    type TYPE_GRASS
    accuracy 100
    pp 15
    effectchance 0
    target MOVE_TARGET_FOES_AND_ALLY
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_FREEZE_DRY, "Freeze-Dry"
    battleeffect 0
    pss SPLIT_SPECIAL
    basepower 70
    type TYPE_ICE
    accuracy 100
    pp 20
    effectchance 10
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_DISARMING_VOICE, "Disarming Voice"
    battleeffect 0
    pss SPLIT_SPECIAL
    basepower 40
    type (FAIRY_TYPE_IMPLEMENTED) ? TYPE_FAIRY : TYPE_NORMAL
    accuracy 0
    pp 15
    effectchance 0
    target MOVE_TARGET_BOTH
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_PARTING_SHOT, "Parting Shot"
    battleeffect 0
    pss SPLIT_STATUS
    basepower 0
    type TYPE_DARK
    accuracy 100
    pp 20
    effectchance 100
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_TOPSY_TURVY, "Topsy-Turvy"
    battleeffect 0
    pss SPLIT_STATUS
    basepower 0
    type TYPE_DARK
    accuracy 0
    pp 20
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_DRAINING_KISS, "Draining Kiss"
    battleeffect 0
    pss SPLIT_SPECIAL
    basepower 50
    type (FAIRY_TYPE_IMPLEMENTED) ? TYPE_FAIRY : TYPE_NORMAL
    accuracy 100
    pp 10
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_CRAFTY_SHIELD, "Crafty Shield"
    battleeffect 0
    pss SPLIT_STATUS
    basepower 0
    type (FAIRY_TYPE_IMPLEMENTED) ? TYPE_FAIRY : TYPE_NORMAL
    accuracy 0
    pp 10
    effectchance 0
    target MOVE_TARGET_USER_SIDE
    priority 3
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_FLOWER_SHIELD, "Flower Shield"
    battleeffect 0
    pss SPLIT_STATUS
    basepower 0
    type (FAIRY_TYPE_IMPLEMENTED) ? TYPE_FAIRY : TYPE_NORMAL
    accuracy 0
    pp 10
    effectchance 100
    target MOVE_TARGET_USER | MOVE_TARGET_FOES_AND_ALLY
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_GRASSY_TERRAIN, "Grassy Terrain"
    battleeffect 0
    pss SPLIT_STATUS
    basepower 0
    type TYPE_GRASS
    accuracy 0
    pp 10
    effectchance 0
    target MOVE_TARGET_ACTIVE_FIELD
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_MISTY_TERRAIN, "Misty Terrain"
    battleeffect 0
    pss SPLIT_STATUS
    basepower 0
    type (FAIRY_TYPE_IMPLEMENTED) ? TYPE_FAIRY : TYPE_NORMAL
    accuracy 0
    pp 10
    effectchance 0
    target MOVE_TARGET_ACTIVE_FIELD
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_ELECTRIFY, "Electrify"
    battleeffect 0
    pss SPLIT_STATUS
    basepower 0
    type TYPE_ELECTRIC
    accuracy 0
    pp 20
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_PLAY_ROUGH, "Play Rough"
    battleeffect 0
    pss SPLIT_PHYSICAL
    basepower 90
    type (FAIRY_TYPE_IMPLEMENTED) ? TYPE_FAIRY : TYPE_NORMAL
    accuracy 90
    pp 10
    effectchance 10
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_FAIRY_WIND, "Fairy Wind"
    battleeffect 0
    pss SPLIT_SPECIAL
    basepower 40
    type (FAIRY_TYPE_IMPLEMENTED) ? TYPE_FAIRY : TYPE_NORMAL
    accuracy 100
    pp 30
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_MOONBLAST, "Moonblast"
    battleeffect 0
    pss SPLIT_SPECIAL
    basepower 95
    type (FAIRY_TYPE_IMPLEMENTED) ? TYPE_FAIRY : TYPE_NORMAL
    accuracy 100
    pp 15
    effectchance 30
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_BOOMBURST, "Boomburst"
    battleeffect 0
    pss SPLIT_SPECIAL
    basepower 140
    type TYPE_NORMAL
    accuracy 100
    pp 10
    effectchance 0
    target MOVE_TARGET_FOES_AND_ALLY
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_FAIRY_LOCK, "Fairy Lock"
    battleeffect 0
    pss SPLIT_STATUS
    basepower 0
    type (FAIRY_TYPE_IMPLEMENTED) ? TYPE_FAIRY : TYPE_NORMAL
    accuracy 0
    pp 10
    effectchance 0
    target MOVE_TARGET_ACTIVE_FIELD
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_KINGS_SHIELD, "King’s Shield"
    battleeffect 0
    pss SPLIT_STATUS
    basepower 0
    type TYPE_STEEL
    accuracy 0
    pp 10
    effectchance 0
    target MOVE_TARGET_USER
    priority 4
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_PLAY_NICE, "Play Nice"
    battleeffect 0
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy 0
    pp 20
    effectchance 100
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_CONFIDE, "Confide"
    battleeffect 0
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy 0
    pp 20
    effectchance 100
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_DIAMOND_STORM, "Diamond Storm"
    battleeffect 0
    pss SPLIT_PHYSICAL
    basepower 100
    type TYPE_ROCK
    accuracy 95
    pp 5
    effectchance 50
    target MOVE_TARGET_BOTH
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_STEAM_ERUPTION, "Steam Eruption"
    battleeffect 0
    pss SPLIT_SPECIAL
    basepower 110
    type TYPE_WATER
    accuracy 95
    pp 5
    effectchance 30
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_HYPERSPACE_HOLE, "Hyperspace Hole"
    battleeffect 0
    pss SPLIT_SPECIAL
    basepower 80
    type TYPE_PSYCHIC
    accuracy 0
    pp 5
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_WATER_SHURIKEN, "Water Shuriken"
    battleeffect 0
    pss SPLIT_SPECIAL
    basepower 15
    type TYPE_WATER
    accuracy 100
    pp 20
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 1
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_MYSTICAL_FIRE, "Mystical Fire"
    battleeffect 0
    pss SPLIT_SPECIAL
    basepower 75
    type TYPE_FIRE
    accuracy 100
    pp 10
    effectchance 100
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_SPIKY_SHIELD, "Spiky Shield"
    battleeffect 0
    pss SPLIT_STATUS
    basepower 0
    type TYPE_GRASS
    accuracy 0
    pp 10
    effectchance 0
    target MOVE_TARGET_USER
    priority 4
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_AROMATIC_MIST, "Aromatic Mist"
    battleeffect 0
    pss SPLIT_STATUS
    basepower 0
    type (FAIRY_TYPE_IMPLEMENTED) ? TYPE_FAIRY : TYPE_NORMAL
    accuracy 0
    pp 20
    effectchance 0
    target MOVE_TARGET_ALLY
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_EERIE_IMPULSE, "Eerie Impulse"
    battleeffect 0
    pss SPLIT_STATUS
    basepower 0
    type TYPE_ELECTRIC
    accuracy 100
    pp 15
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_VENOM_DRENCH, "Venom Drench"
    battleeffect 0
    pss SPLIT_STATUS
    basepower 0
    type TYPE_POISON
    accuracy 100
    pp 20
    effectchance 100
    target MOVE_TARGET_BOTH
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_POWDER, "Powder"
    battleeffect 0
    pss SPLIT_STATUS
    basepower 0
    type TYPE_BUG
    accuracy 100
    pp 20
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 1
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_GEOMANCY, "Geomancy"
    battleeffect 0
    pss SPLIT_STATUS
    basepower 0
    type (FAIRY_TYPE_IMPLEMENTED) ? TYPE_FAIRY : TYPE_NORMAL
    accuracy 0
    pp 10
    effectchance 0
    target MOVE_TARGET_USER
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_MAGNETIC_FLUX, "Magnetic Flux"
    battleeffect 0
    pss SPLIT_STATUS
    basepower 0
    type TYPE_ELECTRIC
    accuracy 0
    pp 20
    effectchance 0
    target MOVE_TARGET_USER_SIDE
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_HAPPY_HOUR, "Happy Hour"
    battleeffect 0
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy 0
    pp 30
    effectchance 0
    target MOVE_TARGET_USER_SIDE
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_ELECTRIC_TERRAIN, "Electric Terrain"
    battleeffect 0
    pss SPLIT_STATUS
    basepower 0
    type TYPE_ELECTRIC
    accuracy 0
    pp 10
    effectchance 0
    target MOVE_TARGET_ACTIVE_FIELD
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_DAZZLING_GLEAM, "Dazzling Gleam"
    battleeffect 0
    pss SPLIT_SPECIAL
    basepower 80
    type (FAIRY_TYPE_IMPLEMENTED) ? TYPE_FAIRY : TYPE_NORMAL
    accuracy 100
    pp 10
    effectchance 0
    target MOVE_TARGET_BOTH
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_CELEBRATE, "Celebrate"
    battleeffect 0
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy 0
    pp 40
    effectchance 0
    target MOVE_TARGET_USER
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_HOLD_HANDS, "Hold Hands"
    battleeffect 0
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy 0
    pp 40
    effectchance 0
    target MOVE_TARGET_ALLY
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_BABY_DOLL_EYES, "Baby-Doll Eyes"
    battleeffect 0
    pss SPLIT_STATUS
    basepower 0
    type (FAIRY_TYPE_IMPLEMENTED) ? TYPE_FAIRY : TYPE_NORMAL
    accuracy 100
    pp 30
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 1
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_NUZZLE, "Nuzzle"
    battleeffect 0
    pss SPLIT_PHYSICAL
    basepower 20
    type TYPE_ELECTRIC
    accuracy 100
    pp 20
    effectchance 100
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_HOLD_BACK, "Hold Back"
    battleeffect 0
    pss SPLIT_PHYSICAL
    basepower 40
    type TYPE_NORMAL
    accuracy 100
    pp 40
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_INFESTATION, "Infestation"
    battleeffect 0
    pss SPLIT_SPECIAL
    basepower 20
    type TYPE_BUG
    accuracy 100
    pp 20
    effectchance 100
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_POWER_UP_PUNCH, "Power-Up Punch"
    battleeffect 0
    pss SPLIT_PHYSICAL
    basepower 40
    type TYPE_FIGHTING
    accuracy 100
    pp 20
    effectchance 100
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_OBLIVION_WING, "Oblivion Wing"
    battleeffect 0
    pss SPLIT_SPECIAL
    basepower 80
    type TYPE_FLYING
    accuracy 100
    pp 10
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_THOUSAND_ARROWS, "Thousand Arrows"
    battleeffect 0
    pss SPLIT_PHYSICAL
    basepower 90
    type TYPE_GROUND
    accuracy 100
    pp 10
    effectchance 100
    target MOVE_TARGET_BOTH
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_THOUSAND_WAVES, "Thousand Waves"
    battleeffect 0
    pss SPLIT_PHYSICAL
    basepower 90
    type TYPE_GROUND
    accuracy 100
    pp 10
    effectchance 0
    target MOVE_TARGET_BOTH
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_LANDS_WRATH, "Land’s Wrath"
    battleeffect 0
    pss SPLIT_PHYSICAL
    basepower 90
    type TYPE_GROUND
    accuracy 100
    pp 10
    effectchance 0
    target MOVE_TARGET_BOTH
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_LIGHT_OF_RUIN, "Light of Ruin"
    battleeffect 0
    pss SPLIT_SPECIAL
    basepower 140
    type (FAIRY_TYPE_IMPLEMENTED) ? TYPE_FAIRY : TYPE_NORMAL
    accuracy 90
    pp 5
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_ORIGIN_PULSE, "Origin Pulse"
    battleeffect 0
    pss SPLIT_SPECIAL
    basepower 110
    type TYPE_WATER
    accuracy 85
    pp 10
    effectchance 0
    target MOVE_TARGET_BOTH
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_PRECIPICE_BLADES, "Precipice Blades"
    battleeffect 0
    pss SPLIT_PHYSICAL
    basepower 120
    type TYPE_GROUND
    accuracy 85
    pp 10
    effectchance 0
    target MOVE_TARGET_BOTH
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_DRAGON_ASCENT, "Dragon Ascent"
    battleeffect 0
    pss SPLIT_PHYSICAL
    basepower 120
    type TYPE_FLYING
    accuracy 100
    pp 5
    effectchance 100
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_HYPERSPACE_FURY, "Hyperspace Fury"
    battleeffect 0
    pss SPLIT_PHYSICAL
    basepower 100
    type TYPE_DARK
    accuracy 0
    pp 5
    effectchance 100
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_BREAKNECK_BLITZ_PHYSICAL, "Breakneck Blitz"
    battleeffect 0
    pss SPLIT_PHYSICAL
    basepower 0
    type TYPE_NORMAL
    accuracy 0
    pp 1
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_BREAKNECK_BLITZ_SPECIAL, "Breakneck Blitz"
    battleeffect 0
    pss SPLIT_SPECIAL
    basepower 0
    type TYPE_NORMAL
    accuracy 0
    pp 1
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_ALL_OUT_PUMMELING_PHYSICAL, "All-Out Pummeling"
    battleeffect 0
    pss SPLIT_PHYSICAL
    basepower 0
    type TYPE_FIGHTING
    accuracy 0
    pp 1
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_ALL_OUT_PUMMELING_SPECIAL, "All-Out Pummeling"
    battleeffect 0
    pss SPLIT_SPECIAL
    basepower 0
    type TYPE_FIGHTING
    accuracy 0
    pp 1
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_SUPERSONIC_SKYSTRIKE_PHYSICAL, "Supersonic Skystrike"
    battleeffect 0
    pss SPLIT_PHYSICAL
    basepower 0
    type TYPE_FLYING
    accuracy 0
    pp 1
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_SUPERSONIC_SKYSTRIKE_SPECIAL, "Supersonic Skystrike"
    battleeffect 0
    pss SPLIT_SPECIAL
    basepower 0
    type TYPE_FLYING
    accuracy 0
    pp 1
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_ACID_DOWNPOUR_PHYSICAL, "Acid Downpour"
    battleeffect 0
    pss SPLIT_PHYSICAL
    basepower 0
    type TYPE_POISON
    accuracy 0
    pp 1
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_ACID_DOWNPOUR_SPECIAL, "Acid Downpour"
    battleeffect 0
    pss SPLIT_SPECIAL
    basepower 0
    type TYPE_POISON
    accuracy 0
    pp 1
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_TECTONIC_RAGE_PHYSICAL, "Tectonic Rage"
    battleeffect 0
    pss SPLIT_PHYSICAL
    basepower 0
    type TYPE_GROUND
    accuracy 0
    pp 1
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_TECTONIC_RAGE_SPECIAL, "Tectonic Rage"
    battleeffect 0
    pss SPLIT_SPECIAL
    basepower 0
    type TYPE_GROUND
    accuracy 0
    pp 1
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_CONTINENTAL_CRUSH_PHYSICAL, "Continental Crush"
    battleeffect 0
    pss SPLIT_PHYSICAL
    basepower 0
    type TYPE_ROCK
    accuracy 0
    pp 1
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_CONTINENTAL_CRUSH_SPECIAL, "Continental Crush"
    battleeffect 0
    pss SPLIT_SPECIAL
    basepower 0
    type TYPE_ROCK
    accuracy 0
    pp 1
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_SAVAGE_SPIN_OUT_PHYSICAL, "Savage Spin-Out"
    battleeffect 0
    pss SPLIT_PHYSICAL
    basepower 0
    type TYPE_BUG
    accuracy 0
    pp 1
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_SAVAGE_SPIN_OUT_SPECIAL, "Savage Spin-Out"
    battleeffect 0
    pss SPLIT_SPECIAL
    basepower 0
    type TYPE_BUG
    accuracy 0
    pp 1
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_NEVER_ENDING_NIGHTMARE_PHYSICAL, "Never-Ending Nightmare"
    battleeffect 0
    pss SPLIT_PHYSICAL
    basepower 0
    type TYPE_GHOST
    accuracy 0
    pp 1
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_NEVER_ENDING_NIGHTMARE_SPECIAL, "Never-Ending Nightmare"
    battleeffect 0
    pss SPLIT_SPECIAL
    basepower 0
    type TYPE_GHOST
    accuracy 0
    pp 1
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_CORKSCREW_CRASH_PHYSICAL, "Corkscrew Crash"
    battleeffect 0
    pss SPLIT_PHYSICAL
    basepower 0
    type TYPE_STEEL
    accuracy 0
    pp 1
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_CORKSCREW_CRASH_SPECIAL, "Corkscrew Crash"
    battleeffect 0
    pss SPLIT_SPECIAL
    basepower 0
    type TYPE_STEEL
    accuracy 0
    pp 1
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_INFERNO_OVERDRIVE_PHYSICAL, "Inferno Overdrive"
    battleeffect 0
    pss SPLIT_PHYSICAL
    basepower 0
    type TYPE_FIRE
    accuracy 0
    pp 1
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_INFERNO_OVERDRIVE_SPECIAL, "Inferno Overdrive"
    battleeffect 0
    pss SPLIT_SPECIAL
    basepower 0
    type TYPE_FIRE
    accuracy 0
    pp 1
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_HYDRO_VORTEX_PHYSICAL, "Hydro Vortex"
    battleeffect 0
    pss SPLIT_PHYSICAL
    basepower 0
    type TYPE_WATER
    accuracy 0
    pp 1
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_HYDRO_VORTEX_SPECIAL, "Hydro Vortex"
    battleeffect 0
    pss SPLIT_SPECIAL
    basepower 0
    type TYPE_WATER
    accuracy 0
    pp 1
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_BLOOM_DOOM_PHYSICAL, "Bloom Doom"
    battleeffect 0
    pss SPLIT_PHYSICAL
    basepower 0
    type TYPE_GRASS
    accuracy 0
    pp 1
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_BLOOM_DOOM_SPECIAL, "Bloom Doom"
    battleeffect 0
    pss SPLIT_SPECIAL
    basepower 0
    type TYPE_GRASS
    accuracy 0
    pp 1
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_GIGAVOLT_HAVOC_PHYSICAL, "Gigavolt Havoc"
    battleeffect 0
    pss SPLIT_PHYSICAL
    basepower 0
    type TYPE_ELECTRIC
    accuracy 0
    pp 1
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_GIGAVOLT_HAVOC_SPECIAL, "Gigavolt Havoc"
    battleeffect 0
    pss SPLIT_SPECIAL
    basepower 0
    type TYPE_ELECTRIC
    accuracy 0
    pp 1
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_SHATTERED_PSYCHE_PHYSICAL, "Shattered Psyche"
    battleeffect 0
    pss SPLIT_PHYSICAL
    basepower 0
    type TYPE_PSYCHIC
    accuracy 0
    pp 1
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_SHATTERED_PSYCHE_SPECIAL, "Shattered Psyche"
    battleeffect 0
    pss SPLIT_SPECIAL
    basepower 0
    type TYPE_PSYCHIC
    accuracy 0
    pp 1
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_SUBZERO_SLAMMER_PHYSICAL, "Subzero Slammer"
    battleeffect 0
    pss SPLIT_PHYSICAL
    basepower 0
    type TYPE_ICE
    accuracy 0
    pp 1
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_SUBZERO_SLAMMER_SPECIAL, "Subzero Slammer"
    battleeffect 0
    pss SPLIT_SPECIAL
    basepower 0
    type TYPE_ICE
    accuracy 0
    pp 1
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_DEVASTATING_DRAKE_PHYSICAL, "Devastating Drake"
    battleeffect 0
    pss SPLIT_PHYSICAL
    basepower 0
    type TYPE_DRAGON
    accuracy 0
    pp 1
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_DEVASTATING_DRAKE_SPECIAL, "Devastating Drake"
    battleeffect 0
    pss SPLIT_SPECIAL
    basepower 0
    type TYPE_DRAGON
    accuracy 0
    pp 1
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_BLACK_HOLE_ECLIPSE_PHYSICAL, "Black Hole Eclipse"
    battleeffect 0
    pss SPLIT_PHYSICAL
    basepower 0
    type TYPE_DARK
    accuracy 0
    pp 1
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_BLACK_HOLE_ECLIPSE_SPECIAL, "Black Hole Eclipse"
    battleeffect 0
    pss SPLIT_SPECIAL
    basepower 0
    type TYPE_DARK
    accuracy 0
    pp 1
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_TWINKLE_TACKLE_PHYSICAL, "Twinkle Tackle"
    battleeffect 0
    pss SPLIT_PHYSICAL
    basepower 0
    type (FAIRY_TYPE_IMPLEMENTED) ? TYPE_FAIRY : TYPE_NORMAL
    accuracy 0
    pp 1
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_TWINKLE_TACKLE_SPECIAL, "Twinkle Tackle"
    battleeffect 0
    pss SPLIT_SPECIAL
    basepower 0
    type (FAIRY_TYPE_IMPLEMENTED) ? TYPE_FAIRY : TYPE_NORMAL
    accuracy 0
    pp 1
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_CATASTROPIKA, "Catastropika"
    battleeffect 0
    pss SPLIT_PHYSICAL
    basepower 210
    type TYPE_ELECTRIC
    accuracy 0
    pp 1
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_SHORE_UP, "Shore Up"
    battleeffect 0
    pss SPLIT_STATUS
    basepower 0
    type TYPE_GROUND
    accuracy 0
    pp 10
    effectchance 0
    target MOVE_TARGET_USER
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_FIRST_IMPRESSION, "First Impression"
    battleeffect 0
    pss SPLIT_PHYSICAL
    basepower 90
    type TYPE_BUG
    accuracy 100
    pp 10
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 2
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_BANEFUL_BUNKER, "Baneful Bunker"
    battleeffect 0
    pss SPLIT_STATUS
    basepower 0
    type TYPE_POISON
    accuracy 0
    pp 10
    effectchance 0
    target MOVE_TARGET_USER
    priority 4
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_SPIRIT_SHACKLE, "Spirit Shackle"
    battleeffect 0
    pss SPLIT_PHYSICAL
    basepower 80
    type TYPE_GHOST
    accuracy 100
    pp 10
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_DARKEST_LARIAT, "Darkest Lariat"
    battleeffect 0
    pss SPLIT_PHYSICAL
    basepower 85
    type TYPE_DARK
    accuracy 100
    pp 10
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_SPARKLING_ARIA, "Sparkling Aria"
    battleeffect 0
    pss SPLIT_SPECIAL
    basepower 90
    type TYPE_WATER
    accuracy 100
    pp 10
    effectchance 0
    target MOVE_TARGET_FOES_AND_ALLY
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_ICE_HAMMER, "Ice Hammer"
    battleeffect 0
    pss SPLIT_PHYSICAL
    basepower 100
    type TYPE_ICE
    accuracy 90
    pp 10
    effectchance 100
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_FLORAL_HEALING, "Floral Healing"
    battleeffect 0
    pss SPLIT_STATUS
    basepower 0
    type (FAIRY_TYPE_IMPLEMENTED) ? TYPE_FAIRY : TYPE_NORMAL
    accuracy 0
    pp 10
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_HIGH_HORSEPOWER, "High Horsepower"
    battleeffect 0
    pss SPLIT_PHYSICAL
    basepower 95
    type TYPE_GROUND
    accuracy 95
    pp 10
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_STRENGTH_SAP, "Strength Sap"
    battleeffect 0
    pss SPLIT_STATUS
    basepower 0
    type TYPE_GRASS
    accuracy 100
    pp 10
    effectchance 100
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_SOLAR_BLADE, "Solar Blade"
    battleeffect 0
    pss SPLIT_PHYSICAL
    basepower 125
    type TYPE_GRASS
    accuracy 100
    pp 10
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_LEAFAGE, "Leafage"
    battleeffect 0
    pss SPLIT_PHYSICAL
    basepower 40
    type TYPE_GRASS
    accuracy 100
    pp 40
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_SPOTLIGHT, "Spotlight"
    battleeffect 0
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy 0
    pp 15
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 3
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_TOXIC_THREAD, "Toxic Thread"
    battleeffect 0
    pss SPLIT_STATUS
    basepower 0
    type TYPE_POISON
    accuracy 100
    pp 20
    effectchance 100
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_LASER_FOCUS, "Laser Focus"
    battleeffect 0
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy 0
    pp 30
    effectchance 0
    target MOVE_TARGET_USER
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_GEAR_UP, "Gear Up"
    battleeffect 0
    pss SPLIT_STATUS
    basepower 0
    type TYPE_STEEL
    accuracy 0
    pp 20
    effectchance 0
    target MOVE_TARGET_USER_SIDE
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_THROAT_CHOP, "Throat Chop"
    battleeffect 0
    pss SPLIT_PHYSICAL
    basepower 80
    type TYPE_DARK
    accuracy 100
    pp 15
    effectchance 100
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_POLLEN_PUFF, "Pollen Puff"
    battleeffect 0
    pss SPLIT_SPECIAL
    basepower 90
    type TYPE_BUG
    accuracy 100
    pp 15
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_ANCHOR_SHOT, "Anchor Shot"
    battleeffect 0
    pss SPLIT_PHYSICAL
    basepower 80
    type TYPE_STEEL
    accuracy 100
    pp 20
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_PSYCHIC_TERRAIN, "Psychic Terrain"
    battleeffect 0
    pss SPLIT_STATUS
    basepower 0
    type TYPE_PSYCHIC
    accuracy 0
    pp 10
    effectchance 0
    target MOVE_TARGET_ACTIVE_FIELD
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_LUNGE, "Lunge"
    battleeffect 0
    pss SPLIT_PHYSICAL
    basepower 80
    type TYPE_BUG
    accuracy 100
    pp 15
    effectchance 100
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_FIRE_LASH, "Fire Lash"
    battleeffect 0
    pss SPLIT_PHYSICAL
    basepower 80
    type TYPE_FIRE
    accuracy 100
    pp 15
    effectchance 100
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_POWER_TRIP, "Power Trip"
    battleeffect 0
    pss SPLIT_PHYSICAL
    basepower 20
    type TYPE_DARK
    accuracy 100
    pp 10
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_BURN_UP, "Burn Up"
    battleeffect 0
    pss SPLIT_SPECIAL
    basepower 130
    type TYPE_FIRE
    accuracy 100
    pp 5
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_SPEED_SWAP, "Speed Swap"
    battleeffect 0
    pss SPLIT_STATUS
    basepower 0
    type TYPE_PSYCHIC
    accuracy 0
    pp 10
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_SMART_STRIKE, "Smart Strike"
    battleeffect 0
    pss SPLIT_PHYSICAL
    basepower 70
    type TYPE_STEEL
    accuracy 0
    pp 10
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_PURIFY, "Purify"
    battleeffect 0
    pss SPLIT_STATUS
    basepower 0
    type TYPE_POISON
    accuracy 0
    pp 20
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_REVELATION_DANCE, "Revelation Dance"
    battleeffect 0
    pss SPLIT_SPECIAL
    basepower 90
    type TYPE_NORMAL
    accuracy 100
    pp 15
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_CORE_ENFORCER, "Core Enforcer"
    battleeffect 0
    pss SPLIT_SPECIAL
    basepower 100
    type TYPE_DRAGON
    accuracy 100
    pp 10
    effectchance 0
    target MOVE_TARGET_BOTH
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_TROP_KICK, "Trop Kick"
    battleeffect 0
    pss SPLIT_PHYSICAL
    basepower 70
    type TYPE_GRASS
    accuracy 100
    pp 15
    effectchance 100
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_INSTRUCT, "Instruct"
    battleeffect 0
    pss SPLIT_STATUS
    basepower 0
    type TYPE_PSYCHIC
    accuracy 0
    pp 15
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_BEAK_BLAST, "Beak Blast"
    battleeffect 0
    pss SPLIT_PHYSICAL
    basepower 100
    type TYPE_FLYING
    accuracy 100
    pp 15
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority -3
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_CLANGING_SCALES, "Clanging Scales"
    battleeffect 0
    pss SPLIT_SPECIAL
    basepower 110
    type TYPE_DRAGON
    accuracy 100
    pp 5
    effectchance 100
    target MOVE_TARGET_BOTH
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_DRAGON_HAMMER, "Dragon Hammer"
    battleeffect 0
    pss SPLIT_PHYSICAL
    basepower 90
    type TYPE_DRAGON
    accuracy 100
    pp 15
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_BRUTAL_SWING, "Brutal Swing"
    battleeffect 0
    pss SPLIT_PHYSICAL
    basepower 60
    type TYPE_DARK
    accuracy 100
    pp 20
    effectchance 0
    target MOVE_TARGET_FOES_AND_ALLY
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_AURORA_VEIL, "Aurora Veil"
    battleeffect 0
    pss SPLIT_STATUS
    basepower 0
    type TYPE_ICE
    accuracy 0
    pp 20
    effectchance 0
    target MOVE_TARGET_USER_SIDE
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_SINISTER_ARROW_RAID, "Sinister Arrow Raid"
    battleeffect 0
    pss SPLIT_PHYSICAL
    basepower 180
    type TYPE_GHOST
    accuracy 0
    pp 1
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_MALICIOUS_MOONSAULT, "Malicious Moonsault"
    battleeffect 0
    pss SPLIT_PHYSICAL
    basepower 180
    type TYPE_DARK
    accuracy 0
    pp 1
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_OCEANIC_OPERETTA, "Oceanic Operetta"
    battleeffect 0
    pss SPLIT_SPECIAL
    basepower 195
    type TYPE_WATER
    accuracy 0
    pp 1
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_GUARDIAN_OF_ALOLA, "Guardian of Alola"
    battleeffect 0
    pss SPLIT_SPECIAL
    basepower 0
    type (FAIRY_TYPE_IMPLEMENTED) ? TYPE_FAIRY : TYPE_NORMAL
    accuracy 0
    pp 1
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_SOUL_STEALING_7_STAR_STRIKE, "Soul-Stealing 7-Star Strike"
    battleeffect 0
    pss SPLIT_PHYSICAL
    basepower 195
    type TYPE_GHOST
    accuracy 0
    pp 1
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_STOKED_SPARKSURFER, "Stoked Sparksurfer"
    battleeffect 0
    pss SPLIT_SPECIAL
    basepower 175
    type TYPE_ELECTRIC
    accuracy 0
    pp 1
    effectchance 100
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_PULVERIZING_PANCAKE, "Pulverizing Pancake"
    battleeffect 0
    pss SPLIT_PHYSICAL
    basepower 210
    type TYPE_NORMAL
    accuracy 0
    pp 1
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_EXTREME_EVOBOOST, "Extreme Evoboost"
    battleeffect 0
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy 0
    pp 1
    effectchance 100
    target MOVE_TARGET_USER
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_GENESIS_SUPERNOVA, "Genesis Supernova"
    battleeffect 0
    pss SPLIT_SPECIAL
    basepower 185
    type TYPE_PSYCHIC
    accuracy 0
    pp 1
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_SHELL_TRAP, "Shell Trap"
    battleeffect 0
    pss SPLIT_SPECIAL
    basepower 150
    type TYPE_FIRE
    accuracy 100
    pp 5
    effectchance 0
    target MOVE_TARGET_BOTH
    priority -3
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_FLEUR_CANNON, "Fleur Cannon"
    battleeffect 0
    pss SPLIT_SPECIAL
    basepower 130
    type (FAIRY_TYPE_IMPLEMENTED) ? TYPE_FAIRY : TYPE_NORMAL
    accuracy 90
    pp 5
    effectchance 100
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_PSYCHIC_FANGS, "Psychic Fangs"
    battleeffect 0
    pss SPLIT_PHYSICAL
    basepower 85
    type TYPE_PSYCHIC
    accuracy 100
    pp 10
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_STOMPING_TANTRUM, "Stomping Tantrum"
    battleeffect 0
    pss SPLIT_PHYSICAL
    basepower 75
    type TYPE_GROUND
    accuracy 100
    pp 10
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_SHADOW_BONE, "Shadow Bone"
    battleeffect 0
    pss SPLIT_PHYSICAL
    basepower 85
    type TYPE_GHOST
    accuracy 100
    pp 10
    effectchance 20
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_ACCELEROCK, "Accelerock"
    battleeffect 0
    pss SPLIT_PHYSICAL
    basepower 40
    type TYPE_ROCK
    accuracy 100
    pp 20
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 1
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_LIQUIDATION, "Liquidation"
    battleeffect 0
    pss SPLIT_PHYSICAL
    basepower 85
    type TYPE_WATER
    accuracy 100
    pp 10
    effectchance 20
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_PRISMATIC_LASER, "Prismatic Laser"
    battleeffect 0
    pss SPLIT_SPECIAL
    basepower 160
    type TYPE_PSYCHIC
    accuracy 100
    pp 10
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_SPECTRAL_THIEF, "Spectral Thief"
    battleeffect 0
    pss SPLIT_PHYSICAL
    basepower 90
    type TYPE_GHOST
    accuracy 100
    pp 10
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_SUNSTEEL_STRIKE, "Sunsteel Strike"
    battleeffect 0
    pss SPLIT_PHYSICAL
    basepower 100
    type TYPE_STEEL
    accuracy 100
    pp 5
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_MOONGEIST_BEAM, "Moongeist Beam"
    battleeffect 0
    pss SPLIT_SPECIAL
    basepower 100
    type TYPE_GHOST
    accuracy 100
    pp 5
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_TEARFUL_LOOK, "Tearful Look"
    battleeffect 0
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy 0
    pp 20
    effectchance 100
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_ZING_ZAP, "Zing Zap"
    battleeffect 0
    pss SPLIT_PHYSICAL
    basepower 80
    type TYPE_ELECTRIC
    accuracy 100
    pp 10
    effectchance 30
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_NATURES_MADNESS, "Nature’s Madness"
    battleeffect 0
    pss SPLIT_SPECIAL
    basepower 0
    type (FAIRY_TYPE_IMPLEMENTED) ? TYPE_FAIRY : TYPE_NORMAL
    accuracy 90
    pp 10
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_MULTI_ATTACK, "Multi-Attack"
    battleeffect 0
    pss SPLIT_PHYSICAL
    basepower 120
    type TYPE_NORMAL
    accuracy 100
    pp 10
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_10_000_000_VOLT_THUNDERBOLT, "10,000,000 Volt Thunderbolt"
    battleeffect 0
    pss SPLIT_SPECIAL
    basepower 195
    type TYPE_ELECTRIC
    accuracy 0
    pp 1
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_MIND_BLOWN, "Mind Blown"
    battleeffect 0
    pss SPLIT_SPECIAL
    basepower 150
    type TYPE_FIRE
    accuracy 100
    pp 5
    effectchance 0
    target MOVE_TARGET_FOES_AND_ALLY
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_PLASMA_FISTS, "Plasma Fists"
    battleeffect 0
    pss SPLIT_PHYSICAL
    basepower 100
    type TYPE_ELECTRIC
    accuracy 100
    pp 15
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_PHOTON_GEYSER, "Photon Geyser"
    battleeffect 0
    pss SPLIT_SPECIAL
    basepower 100
    type TYPE_PSYCHIC
    accuracy 100
    pp 5
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_LIGHT_THAT_BURNS_THE_SKY, "Light That Burns the Sky"
    battleeffect 0
    pss SPLIT_SPECIAL
    basepower 200
    type TYPE_PSYCHIC
    accuracy 0
    pp 1
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_SEARING_SUNRAZE_SMASH, "Searing Sunraze Smash"
    battleeffect 0
    pss SPLIT_PHYSICAL
    basepower 200
    type TYPE_STEEL
    accuracy 0
    pp 1
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_MENACING_MOONRAZE_MAELSTROM, "Menacing Moonraze Maelstrom"
    battleeffect 0
    pss SPLIT_SPECIAL
    basepower 200
    type TYPE_GHOST
    accuracy 0
    pp 1
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_LETS_SNUGGLE_FOREVER, "Let’s Snuggle Forever"
    battleeffect 0
    pss SPLIT_PHYSICAL
    basepower 190
    type (FAIRY_TYPE_IMPLEMENTED) ? TYPE_FAIRY : TYPE_NORMAL
    accuracy 0
    pp 1
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_SPLINTERED_STORMSHARDS, "Splintered Stormshards"
    battleeffect 0
    pss SPLIT_PHYSICAL
    basepower 190
    type TYPE_ROCK
    accuracy 0
    pp 1
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_CLANGOROUS_SOULBLAZE, "Clangorous Soulblaze"
    battleeffect 0
    pss SPLIT_SPECIAL
    basepower 185
    type TYPE_DRAGON
    accuracy 0
    pp 1
    effectchance 100
    target MOVE_TARGET_BOTH
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_ZIPPY_ZAP, "Zippy Zap"
    battleeffect 0
    pss SPLIT_PHYSICAL
    basepower 80
    type TYPE_ELECTRIC
    accuracy 100
    pp 10
    effectchance 100
    target MOVE_TARGET_SELECTED
    priority 2
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_SPLISHY_SPLASH, "Splishy Splash"
    battleeffect 0
    pss SPLIT_SPECIAL
    basepower 90
    type TYPE_WATER
    accuracy 100
    pp 15
    effectchance 30
    target MOVE_TARGET_BOTH
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_FLOATY_FALL, "Floaty Fall"
    battleeffect 0
    pss SPLIT_PHYSICAL
    basepower 90
    type TYPE_FLYING
    accuracy 95
    pp 15
    effectchance 30
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_PIKA_PAPOW, "Pika Papow"
    battleeffect 0
    pss SPLIT_SPECIAL
    basepower 0
    type TYPE_ELECTRIC
    accuracy 0
    pp 20
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_BOUNCY_BUBBLE, "Bouncy Bubble"
    battleeffect 0
    pss SPLIT_SPECIAL
    basepower 60
    type TYPE_WATER
    accuracy 100
    pp 20
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_BUZZY_BUZZ, "Buzzy Buzz"
    battleeffect 0
    pss SPLIT_SPECIAL
    basepower 60
    type TYPE_ELECTRIC
    accuracy 100
    pp 20
    effectchance 100
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_SIZZLY_SLIDE, "Sizzly Slide"
    battleeffect 0
    pss SPLIT_PHYSICAL
    basepower 60
    type TYPE_FIRE
    accuracy 100
    pp 20
    effectchance 100
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_GLITZY_GLOW, "Glitzy Glow"
    battleeffect 0
    pss SPLIT_SPECIAL
    basepower 80
    type TYPE_PSYCHIC
    accuracy 95
    pp 15
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_BADDY_BAD, "Baddy Bad"
    battleeffect 0
    pss SPLIT_SPECIAL
    basepower 80
    type TYPE_DARK
    accuracy 95
    pp 15
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_SAPPY_SEED, "Sappy Seed"
    battleeffect 0
    pss SPLIT_PHYSICAL
    basepower 100
    type TYPE_GRASS
    accuracy 90
    pp 10
    effectchance 100
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_FREEZY_FROST, "Freezy Frost"
    battleeffect 0
    pss SPLIT_SPECIAL
    basepower 100
    type TYPE_ICE
    accuracy 90
    pp 10
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_SPARKLY_SWIRL, "Sparkly Swirl"
    battleeffect 0
    pss SPLIT_SPECIAL
    basepower 120
    type (FAIRY_TYPE_IMPLEMENTED) ? TYPE_FAIRY : TYPE_NORMAL
    accuracy 85
    pp 5
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_VEEVEE_VOLLEY, "Veevee Volley"
    battleeffect 0
    pss SPLIT_PHYSICAL
    basepower 0
    type TYPE_NORMAL
    accuracy 0
    pp 20
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_DOUBLE_IRON_BASH, "Double Iron Bash"
    battleeffect 0
    pss SPLIT_PHYSICAL
    basepower 60
    type TYPE_STEEL
    accuracy 100
    pp 5
    effectchance 30
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_MAX_GUARD, "Max Guard"
    battleeffect 0
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy 0
    pp 10
    effectchance 0
    target MOVE_TARGET_USER
    priority 4
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_DYNAMAX_CANNON, "Dynamax Cannon"
    battleeffect 0
    pss SPLIT_SPECIAL
    basepower 100
    type TYPE_DRAGON
    accuracy 100
    pp 5
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_SNIPE_SHOT, "Snipe Shot"
    battleeffect 0
    pss SPLIT_SPECIAL
    basepower 80
    type TYPE_WATER
    accuracy 100
    pp 15
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_JAW_LOCK, "Jaw Lock"
    battleeffect 0
    pss SPLIT_PHYSICAL
    basepower 80
    type TYPE_DARK
    accuracy 100
    pp 10
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_STUFF_CHEEKS, "Stuff Cheeks"
    battleeffect 0
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy 0
    pp 10
    effectchance 100
    target MOVE_TARGET_USER
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_NO_RETREAT, "No Retreat"
    battleeffect 0
    pss SPLIT_STATUS
    basepower 0
    type TYPE_FIGHTING
    accuracy 0
    pp 5
    effectchance 100
    target MOVE_TARGET_USER
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_TAR_SHOT, "Tar Shot"
    battleeffect 0
    pss SPLIT_STATUS
    basepower 0
    type TYPE_ROCK
    accuracy 100
    pp 15
    effectchance 100
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_MAGIC_POWDER, "Magic Powder"
    battleeffect 0
    pss SPLIT_STATUS
    basepower 0
    type TYPE_PSYCHIC
    accuracy 100
    pp 20
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_DRAGON_DARTS, "Dragon Darts"
    battleeffect 0
    pss SPLIT_PHYSICAL
    basepower 50
    type TYPE_DRAGON
    accuracy 100
    pp 10
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_TEATIME, "Teatime"
    battleeffect 0
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy 0
    pp 10
    effectchance 0
    target MOVE_TARGET_USER | MOVE_TARGET_FOES_AND_ALLY
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_OCTOLOCK, "Octolock"
    battleeffect 0
    pss SPLIT_STATUS
    basepower 0
    type TYPE_FIGHTING
    accuracy 100
    pp 15
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_BOLT_BEAK, "Bolt Beak"
    battleeffect 0
    pss SPLIT_PHYSICAL
    basepower 85
    type TYPE_ELECTRIC
    accuracy 100
    pp 10
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_FISHIOUS_REND, "Fishious Rend"
    battleeffect 0
    pss SPLIT_PHYSICAL
    basepower 85
    type TYPE_WATER
    accuracy 100
    pp 10
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_COURT_CHANGE, "Court Change"
    battleeffect 0
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy 100
    pp 10
    effectchance 0
    target MOVE_TARGET_ACTIVE_FIELD
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_MAX_FLARE, "Max Flare"
    battleeffect 0
    pss SPLIT_PHYSICAL
    basepower 100
    type TYPE_FIRE
    accuracy 0
    pp 10
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_MAX_FLUTTERBY, "Max Flutterby"
    battleeffect 0
    pss SPLIT_PHYSICAL
    basepower 10
    type TYPE_BUG
    accuracy 0
    pp 10
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_MAX_LIGHTNING, "Max Lightning"
    battleeffect 0
    pss SPLIT_PHYSICAL
    basepower 10
    type TYPE_ELECTRIC
    accuracy 0
    pp 10
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_MAX_STRIKE, "Max Strike"
    battleeffect 0
    pss SPLIT_PHYSICAL
    basepower 10
    type TYPE_NORMAL
    accuracy 0
    pp 10
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_MAX_KNUCKLE, "Max Knuckle"
    battleeffect 0
    pss SPLIT_PHYSICAL
    basepower 10
    type TYPE_FIGHTING
    accuracy 0
    pp 10
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_MAX_PHANTASM, "Max Phantasm"
    battleeffect 0
    pss SPLIT_PHYSICAL
    basepower 10
    type TYPE_GHOST
    accuracy 0
    pp 10
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_MAX_HAILSTORM, "Max Hailstorm"
    battleeffect 0
    pss SPLIT_PHYSICAL
    basepower 10
    type TYPE_ICE
    accuracy 0
    pp 10
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_MAX_OOZE, "Max Ooze"
    battleeffect 0
    pss SPLIT_PHYSICAL
    basepower 10
    type TYPE_POISON
    accuracy 0
    pp 10
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_MAX_GEYSER, "Max Geyser"
    battleeffect 0
    pss SPLIT_PHYSICAL
    basepower 10
    type TYPE_WATER
    accuracy 0
    pp 10
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_MAX_AIRSTREAM, "Max Airstream"
    battleeffect 0
    pss SPLIT_PHYSICAL
    basepower 10
    type TYPE_FLYING
    accuracy 0
    pp 10
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_MAX_STARFALL, "Max Starfall"
    battleeffect 0
    pss SPLIT_PHYSICAL
    basepower 10
    type (FAIRY_TYPE_IMPLEMENTED) ? TYPE_FAIRY : TYPE_NORMAL
    accuracy 0
    pp 10
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_MAX_WYRMWIND, "Max Wyrmwind"
    battleeffect 0
    pss SPLIT_PHYSICAL
    basepower 10
    type TYPE_DRAGON
    accuracy 0
    pp 10
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_MAX_MINDSTORM, "Max Mindstorm"
    battleeffect 0
    pss SPLIT_PHYSICAL
    basepower 10
    type TYPE_PSYCHIC
    accuracy 0
    pp 10
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_MAX_ROCKFALL, "Max Rockfall"
    battleeffect 0
    pss SPLIT_PHYSICAL
    basepower 10
    type TYPE_ROCK
    accuracy 0
    pp 10
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_MAX_QUAKE, "Max Quake"
    battleeffect 0
    pss SPLIT_PHYSICAL
    basepower 10
    type TYPE_GROUND
    accuracy 0
    pp 10
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_MAX_DARKNESS, "Max Darkness"
    battleeffect 0
    pss SPLIT_PHYSICAL
    basepower 10
    type TYPE_DARK
    accuracy 0
    pp 10
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_MAX_OVERGROWTH, "Max Overgrowth"
    battleeffect 0
    pss SPLIT_PHYSICAL
    basepower 10
    type TYPE_GRASS
    accuracy 0
    pp 10
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_MAX_STEELSPIKE, "Max Steelspike"
    battleeffect 0
    pss SPLIT_PHYSICAL
    basepower 10
    type TYPE_STEEL
    accuracy 0
    pp 10
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_CLANGOROUS_SOUL, "Clangorous Soul"
    battleeffect 0
    pss SPLIT_STATUS
    basepower 0
    type TYPE_DRAGON
    accuracy 100
    pp 5
    effectchance 100
    target MOVE_TARGET_USER
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_BODY_PRESS, "Body Press"
    battleeffect 0
    pss SPLIT_PHYSICAL
    basepower 80
    type TYPE_FIGHTING
    accuracy 100
    pp 10
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_DECORATE, "Decorate"
    battleeffect 0
    pss SPLIT_STATUS
    basepower 0
    type (FAIRY_TYPE_IMPLEMENTED) ? TYPE_FAIRY : TYPE_NORMAL
    accuracy 0
    pp 15
    effectchance 100
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_DRUM_BEATING, "Drum Beating"
    battleeffect 0
    pss SPLIT_PHYSICAL
    basepower 80
    type TYPE_GRASS
    accuracy 100
    pp 10
    effectchance 100
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_SNAP_TRAP, "Snap Trap"
    battleeffect 0
    pss SPLIT_PHYSICAL
    basepower 35
    type TYPE_GRASS
    accuracy 100
    pp 15
    effectchance 100
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_PYRO_BALL, "Pyro Ball"
    battleeffect 0
    pss SPLIT_PHYSICAL
    basepower 120
    type TYPE_FIRE
    accuracy 90
    pp 5
    effectchance 10
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_BEHEMOTH_BLADE, "Behemoth Blade"
    battleeffect 0
    pss SPLIT_PHYSICAL
    basepower 100
    type TYPE_STEEL
    accuracy 100
    pp 5
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_BEHEMOTH_BASH, "Behemoth Bash"
    battleeffect 0
    pss SPLIT_PHYSICAL
    basepower 100
    type TYPE_STEEL
    accuracy 100
    pp 5
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_AURA_WHEEL, "Aura Wheel"
    battleeffect 0
    pss SPLIT_PHYSICAL
    basepower 110
    type TYPE_ELECTRIC
    accuracy 100
    pp 10
    effectchance 100
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_BREAKING_SWIPE, "Breaking Swipe"
    battleeffect 0
    pss SPLIT_PHYSICAL
    basepower 60
    type TYPE_DRAGON
    accuracy 100
    pp 15
    effectchance 100
    target MOVE_TARGET_BOTH
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_BRANCH_POKE, "Branch Poke"
    battleeffect 0
    pss SPLIT_PHYSICAL
    basepower 40
    type TYPE_GRASS
    accuracy 100
    pp 40
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_OVERDRIVE, "Overdrive"
    battleeffect 0
    pss SPLIT_SPECIAL
    basepower 80
    type TYPE_ELECTRIC
    accuracy 100
    pp 10
    effectchance 0
    target MOVE_TARGET_BOTH
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_APPLE_ACID, "Apple Acid"
    battleeffect 0
    pss SPLIT_SPECIAL
    basepower 80
    type TYPE_GRASS
    accuracy 100
    pp 10
    effectchance 100
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_GRAV_APPLE, "Grav Apple"
    battleeffect 0
    pss SPLIT_PHYSICAL
    basepower 80
    type TYPE_GRASS
    accuracy 100
    pp 10
    effectchance 100
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_SPIRIT_BREAK, "Spirit Break"
    battleeffect 0
    pss SPLIT_PHYSICAL
    basepower 75
    type (FAIRY_TYPE_IMPLEMENTED) ? TYPE_FAIRY : TYPE_NORMAL
    accuracy 100
    pp 15
    effectchance 100
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_STRANGE_STEAM, "Strange Steam"
    battleeffect 0
    pss SPLIT_SPECIAL
    basepower 90
    type (FAIRY_TYPE_IMPLEMENTED) ? TYPE_FAIRY : TYPE_NORMAL
    accuracy 95
    pp 10
    effectchance 20
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_LIFE_DEW, "Life Dew"
    battleeffect 0
    pss SPLIT_STATUS
    basepower 0
    type TYPE_WATER
    accuracy 0
    pp 10
    effectchance 0
    target MOVE_TARGET_USER_SIDE
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_OBSTRUCT, "Obstruct"
    battleeffect 0
    pss SPLIT_STATUS
    basepower 0
    type TYPE_DARK
    accuracy 100
    pp 10
    effectchance 0
    target MOVE_TARGET_USER
    priority 4
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_FALSE_SURRENDER, "False Surrender"
    battleeffect 0
    pss SPLIT_PHYSICAL
    basepower 80
    type TYPE_DARK
    accuracy 0
    pp 10
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_METEOR_ASSAULT, "Meteor Assault"
    battleeffect 0
    pss SPLIT_PHYSICAL
    basepower 150
    type TYPE_FIGHTING
    accuracy 100
    pp 5
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_ETERNABEAM, "Eternabeam"
    battleeffect 0
    pss SPLIT_SPECIAL
    basepower 160
    type TYPE_DRAGON
    accuracy 90
    pp 5
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_STEEL_BEAM, "Steel Beam"
    battleeffect 0
    pss SPLIT_SPECIAL
    basepower 140
    type TYPE_STEEL
    accuracy 95
    pp 5
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_EXPANDING_FORCE, "Expanding Force"
    battleeffect 0
    pss SPLIT_SPECIAL
    basepower 80
    type TYPE_PSYCHIC
    accuracy 100
    pp 10
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_STEEL_ROLLER, "Steel Roller"
    battleeffect 0
    pss SPLIT_PHYSICAL
    basepower 130
    type TYPE_STEEL
    accuracy 100
    pp 5
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_SCALE_SHOT, "Scale Shot"
    battleeffect 0
    pss SPLIT_PHYSICAL
    basepower 25
    type TYPE_DRAGON
    accuracy 90
    pp 20
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_METEOR_BEAM, "Meteor Beam"
    battleeffect 0
    pss SPLIT_SPECIAL
    basepower 120
    type TYPE_ROCK
    accuracy 90
    pp 10
    effectchance 100
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_SHELL_SIDE_ARM, "Shell Side Arm"
    battleeffect 0
    pss SPLIT_SPECIAL
    basepower 90
    type TYPE_POISON
    accuracy 100
    pp 10
    effectchance 20
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_MISTY_EXPLOSION, "Misty Explosion"
    battleeffect 0
    pss SPLIT_SPECIAL
    basepower 100
    type (FAIRY_TYPE_IMPLEMENTED) ? TYPE_FAIRY : TYPE_NORMAL
    accuracy 100
    pp 5
    effectchance 0
    target MOVE_TARGET_FOES_AND_ALLY
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_GRASSY_GLIDE, "Grassy Glide"
    battleeffect 0
    pss SPLIT_PHYSICAL
    basepower 70
    type TYPE_GRASS
    accuracy 100
    pp 20
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_RISING_VOLTAGE, "Rising Voltage"
    battleeffect 0
    pss SPLIT_SPECIAL
    basepower 70
    type TYPE_ELECTRIC
    accuracy 100
    pp 20
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_TERRAIN_PULSE, "Terrain Pulse"
    battleeffect 0
    pss SPLIT_SPECIAL
    basepower 50
    type TYPE_NORMAL
    accuracy 100
    pp 10
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_SKITTER_SMACK, "Skitter Smack"
    battleeffect 0
    pss SPLIT_PHYSICAL
    basepower 70
    type TYPE_BUG
    accuracy 90
    pp 10
    effectchance 100
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_BURNING_JEALOUSY, "Burning Jealousy"
    battleeffect 0
    pss SPLIT_SPECIAL
    basepower 70
    type TYPE_FIRE
    accuracy 100
    pp 5
    effectchance 100
    target MOVE_TARGET_BOTH
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_LASH_OUT, "Lash Out"
    battleeffect 0
    pss SPLIT_PHYSICAL
    basepower 75
    type TYPE_DARK
    accuracy 100
    pp 5
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_POLTERGEIST, "Poltergeist"
    battleeffect 0
    pss SPLIT_PHYSICAL
    basepower 110
    type TYPE_GHOST
    accuracy 90
    pp 5
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_CORROSIVE_GAS, "Corrosive Gas"
    battleeffect 0
    pss SPLIT_STATUS
    basepower 0
    type TYPE_POISON
    accuracy 100
    pp 40
    effectchance 0
    target MOVE_TARGET_FOES_AND_ALLY
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_COACHING, "Coaching"
    battleeffect 0
    pss SPLIT_STATUS
    basepower 0
    type TYPE_FIGHTING
    accuracy 0
    pp 10
    effectchance 100
    target MOVE_TARGET_USER_SIDE
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_FLIP_TURN, "Flip Turn"
    battleeffect 0
    pss SPLIT_PHYSICAL
    basepower 60
    type TYPE_WATER
    accuracy 100
    pp 20
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_TRIPLE_AXEL, "Triple Axel"
    battleeffect 0
    pss SPLIT_PHYSICAL
    basepower 20
    type TYPE_ICE
    accuracy 90
    pp 10
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_DUAL_WINGBEAT, "Dual Wingbeat"
    battleeffect 0
    pss SPLIT_PHYSICAL
    basepower 40
    type TYPE_FLYING
    accuracy 90
    pp 10
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_SCORCHING_SANDS, "Scorching Sands"
    battleeffect 0
    pss SPLIT_SPECIAL
    basepower 70
    type TYPE_GROUND
    accuracy 100
    pp 10
    effectchance 30
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_JUNGLE_HEALING, "Jungle Healing"
    battleeffect 0
    pss SPLIT_STATUS
    basepower 0
    type TYPE_GRASS
    accuracy 0
    pp 10
    effectchance 0
    target MOVE_TARGET_USER_SIDE
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_WICKED_BLOW, "Wicked Blow"
    battleeffect 0
    pss SPLIT_PHYSICAL
    basepower 80
    type TYPE_DARK
    accuracy 100
    pp 5
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_SURGING_STRIKES, "Surging Strikes"
    battleeffect 0
    pss SPLIT_PHYSICAL
    basepower 25
    type TYPE_WATER
    accuracy 100
    pp 5
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_THUNDER_CAGE, "Thunder Cage"
    battleeffect 0
    pss SPLIT_SPECIAL
    basepower 80
    type TYPE_ELECTRIC
    accuracy 90
    pp 15
    effectchance 100
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_DRAGON_ENERGY, "Dragon Energy"
    battleeffect 0
    pss SPLIT_SPECIAL
    basepower 150
    type TYPE_DRAGON
    accuracy 100
    pp 5
    effectchance 0
    target MOVE_TARGET_BOTH
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_FREEZING_GLARE, "Freezing Glare"
    battleeffect 0
    pss SPLIT_SPECIAL
    basepower 90
    type TYPE_PSYCHIC
    accuracy 100
    pp 10
    effectchance 10
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_FIERY_WRATH, "Fiery Wrath"
    battleeffect 0
    pss SPLIT_SPECIAL
    basepower 90
    type TYPE_DARK
    accuracy 100
    pp 10
    effectchance 20
    target MOVE_TARGET_BOTH
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_THUNDEROUS_KICK, "Thunderous Kick"
    battleeffect 0
    pss SPLIT_PHYSICAL
    basepower 90
    type TYPE_FIGHTING
    accuracy 100
    pp 10
    effectchance 100
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_GLACIAL_LANCE, "Glacial Lance"
    battleeffect 0
    pss SPLIT_PHYSICAL
    basepower 130
    type TYPE_ICE
    accuracy 100
    pp 5
    effectchance 0
    target MOVE_TARGET_BOTH
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_ASTRAL_BARRAGE, "Astral Barrage"
    battleeffect 0
    pss SPLIT_SPECIAL
    basepower 120
    type TYPE_GHOST
    accuracy 100
    pp 5
    effectchance 0
    target MOVE_TARGET_BOTH
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_EERIE_SPELL, "Eerie Spell"
    battleeffect 0
    pss SPLIT_SPECIAL
    basepower 80
    type TYPE_PSYCHIC
    accuracy 100
    pp 5
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_DIRE_CLAW, "Dire Claw"
    battleeffect 0
    pss SPLIT_PHYSICAL
    basepower 80
    type TYPE_POISON
    accuracy 100
    pp 15
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_PSYSHIELD_BASH, "Psyshield Bash"
    battleeffect 0
    pss SPLIT_PHYSICAL
    basepower 70
    type TYPE_PSYCHIC
    accuracy 90
    pp 10
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_POWER_SHIFT, "Power Shift"
    battleeffect 0
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy 0
    pp 10
    effectchance 0
    target MOVE_TARGET_USER
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_STONE_AXE, "Stone Axe"
    battleeffect 0
    pss SPLIT_PHYSICAL
    basepower 65
    type TYPE_ROCK
    accuracy 90
    pp 15
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_SPRINGTIDE_STORM, "Springtide Storm"
    battleeffect 0
    pss SPLIT_SPECIAL
    basepower 100
    type (FAIRY_TYPE_IMPLEMENTED) ? TYPE_FAIRY : TYPE_NORMAL
    accuracy 80
    pp 5
    effectchance 0
    target MOVE_TARGET_BOTH
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_MYSTICAL_POWER, "Mystical Power"
    battleeffect 0
    pss SPLIT_SPECIAL
    basepower 70
    type TYPE_PSYCHIC
    accuracy 90
    pp 10
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_RAGING_FURY, "Raging Fury"
    battleeffect 0
    pss SPLIT_PHYSICAL
    basepower 120
    type TYPE_FIRE
    accuracy 100
    pp 10
    effectchance 0
    target MOVE_TARGET_RANDOM
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_WAVE_CRASH, "Wave Crash"
    battleeffect 0
    pss SPLIT_PHYSICAL
    basepower 120
    type TYPE_WATER
    accuracy 100
    pp 10
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_CHLOROBLAST, "Chloroblast"
    battleeffect 0
    pss SPLIT_SPECIAL
    basepower 150
    type TYPE_GRASS
    accuracy 95
    pp 5
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_MOUNTAIN_GALE, "Mountain Gale"
    battleeffect 0
    pss SPLIT_PHYSICAL
    basepower 100
    type TYPE_ICE
    accuracy 85
    pp 10
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_VICTORY_DANCE, "Victory Dance"
    battleeffect 0
    pss SPLIT_STATUS
    basepower 0
    type TYPE_FIGHTING
    accuracy 0
    pp 10
    effectchance 0
    target MOVE_TARGET_USER
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_HEADLONG_RUSH, "Headlong Rush"
    battleeffect 0
    pss SPLIT_PHYSICAL
    basepower 120
    type TYPE_GROUND
    accuracy 100
    pp 5
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_BARB_BARRAGE, "Barb Barrage"
    battleeffect 0
    pss SPLIT_PHYSICAL
    basepower 60
    type TYPE_POISON
    accuracy 100
    pp 10
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_ESPER_WING, "Esper Wing"
    battleeffect 0
    pss SPLIT_SPECIAL
    basepower 80
    type TYPE_PSYCHIC
    accuracy 100
    pp 10
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_BITTER_MALICE, "Bitter Malice"
    battleeffect 0
    pss SPLIT_SPECIAL
    basepower 75
    type TYPE_GHOST
    accuracy 100
    pp 10
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_SHELTER, "Shelter"
    battleeffect 0
    pss SPLIT_STATUS
    basepower 0
    type TYPE_STEEL
    accuracy 0
    pp 10
    effectchance 0
    target MOVE_TARGET_USER
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_TRIPLE_ARROWS, "Triple Arrows"
    battleeffect 0
    pss SPLIT_PHYSICAL
    basepower 90
    type TYPE_FIGHTING
    accuracy 100
    pp 10
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_INFERNAL_PARADE, "Infernal Parade"
    battleeffect 0
    pss SPLIT_SPECIAL
    basepower 60
    type TYPE_GHOST
    accuracy 100
    pp 15
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_CEASELESS_EDGE, "Ceaseless Edge"
    battleeffect 0
    pss SPLIT_PHYSICAL
    basepower 65
    type TYPE_DARK
    accuracy 90
    pp 15
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_BLEAKWIND_STORM, "Bleakwind Storm"
    battleeffect 0
    pss SPLIT_SPECIAL
    basepower 100
    type TYPE_FLYING
    accuracy 80
    pp 10
    effectchance 0
    target MOVE_TARGET_BOTH
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_WILDBOLT_STORM, "Wildbolt Storm"
    battleeffect 0
    pss SPLIT_SPECIAL
    basepower 100
    type TYPE_ELECTRIC
    accuracy 80
    pp 10
    effectchance 0
    target MOVE_TARGET_BOTH
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_SANDSEAR_STORM, "Sandsear Storm"
    battleeffect 0
    pss SPLIT_SPECIAL
    basepower 100
    type TYPE_GROUND
    accuracy 80
    pp 10
    effectchance 0
    target MOVE_TARGET_BOTH
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_LUNAR_BLESSING, "Lunar Blessing"
    battleeffect 0
    pss SPLIT_STATUS
    basepower 0
    type TYPE_PSYCHIC
    accuracy 0
    pp 5
    effectchance 0
    target MOVE_TARGET_ALLY
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_TAKE_HEART, "Take Heart"
    battleeffect 0
    pss SPLIT_STATUS
    basepower 0
    type TYPE_PSYCHIC
    accuracy 0
    pp 10
    effectchance 0
    target MOVE_TARGET_ALLY
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_TERA_BLAST, "Tera Blast"
    battleeffect 0
    pss SPLIT_SPECIAL
    basepower 80
    type TYPE_NORMAL
    accuracy 100
    pp 10
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_SILK_TRAP, "Silk Trap"
    battleeffect 0
    pss SPLIT_STATUS
    basepower 0
    type TYPE_BUG
    accuracy 0
    pp 10
    effectchance 0
    target MOVE_TARGET_USER
    priority 4
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_AXE_KICK, "Axe Kick"
    battleeffect 0
    pss SPLIT_PHYSICAL
    basepower 120
    type TYPE_FIGHTING
    accuracy 90
    pp 10
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_LAST_RESPECTS, "Last Respects"
    battleeffect 0
    pss SPLIT_PHYSICAL
    basepower 50
    type TYPE_GHOST
    accuracy 100
    pp 10
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_LUMINA_CRASH, "Lumina Crash"
    battleeffect 0
    pss SPLIT_SPECIAL
    basepower 80
    type TYPE_PSYCHIC
    accuracy 100
    pp 10
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_ORDER_UP, "Order Up"
    battleeffect 0
    pss SPLIT_PHYSICAL
    basepower 80
    type TYPE_DRAGON
    accuracy 100
    pp 10
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_JET_PUNCH, "Jet Punch"
    battleeffect 0
    pss SPLIT_PHYSICAL
    basepower 60
    type TYPE_WATER
    accuracy 100
    pp 15
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 1
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_SPICY_EXTRACT, "Spicy Extract"
    battleeffect 0
    pss SPLIT_STATUS
    basepower 0
    type TYPE_GRASS
    accuracy 0
    pp 15
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_SPIN_OUT, "Spin Out"
    battleeffect 0
    pss SPLIT_PHYSICAL
    basepower 100
    type TYPE_STEEL
    accuracy 100
    pp 5
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_POPULATION_BOMB, "Population Bomb"
    battleeffect 0
    pss SPLIT_PHYSICAL
    basepower 20
    type TYPE_NORMAL
    accuracy 90
    pp 10
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_ICE_SPINNER, "Ice Spinner"
    battleeffect 0
    pss SPLIT_PHYSICAL
    basepower 80
    type TYPE_ICE
    accuracy 100
    pp 15
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_GLAIVE_RUSH, "Glaive Rush"
    battleeffect 0
    pss SPLIT_PHYSICAL
    basepower 120
    type TYPE_DRAGON
    accuracy 100
    pp 5
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_REVIVAL_BLESSING, "Revival Blessing"
    battleeffect 0
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy 0
    pp 1
    effectchance 0
    target MOVE_TARGET_USER
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_SALT_CURE, "Salt Cure"
    battleeffect 0
    pss SPLIT_PHYSICAL
    basepower 40
    type TYPE_ROCK
    accuracy 100
    pp 15
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_TRIPLE_DIVE, "Triple Dive"
    battleeffect 0
    pss SPLIT_PHYSICAL
    basepower 30
    type TYPE_WATER
    accuracy 95
    pp 10
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_MORTAL_SPIN, "Mortal Spin"
    battleeffect 0
    pss SPLIT_PHYSICAL
    basepower 30
    type TYPE_POISON
    accuracy 100
    pp 15
    effectchance 0
    target MOVE_TARGET_BOTH
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_DOODLE, "Doodle"
    battleeffect 0
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy 100
    pp 10
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_FILLET_AWAY, "Fillet Away"
    battleeffect 0
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy 0
    pp 10
    effectchance 0
    target MOVE_TARGET_USER
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_KOWTOW_CLEAVE, "Kowtow Cleave"
    battleeffect 0
    pss SPLIT_PHYSICAL
    basepower 85
    type TYPE_DARK
    accuracy 0
    pp 10
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_FLOWER_TRICK, "Flower Trick"
    battleeffect 0
    pss SPLIT_PHYSICAL
    basepower 70
    type TYPE_GRASS
    accuracy 0
    pp 10
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_TORCH_SONG, "Torch Song"
    battleeffect 0
    pss SPLIT_SPECIAL
    basepower 80
    type TYPE_FIRE
    accuracy 100
    pp 10
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_AQUA_STEP, "Aqua Step"
    battleeffect 0
    pss SPLIT_PHYSICAL
    basepower 80
    type TYPE_WATER
    accuracy 100
    pp 10
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_RAGING_BULL, "Raging Bull"
    battleeffect 0
    pss SPLIT_PHYSICAL
    basepower 90
    type TYPE_NORMAL
    accuracy 100
    pp 10
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_MAKE_IT_RAIN, "Make It Rain"
    battleeffect 0
    pss SPLIT_SPECIAL
    basepower 120
    type TYPE_STEEL
    accuracy 100
    pp 5
    effectchance 0
    target MOVE_TARGET_BOTH
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_POUND, "Pound"
    battleeffect 0
    pss SPLIT_PHYSICAL
    basepower 40
    type TYPE_NORMAL
    accuracy 100
    pp 35
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_POUND, "Pound"
    battleeffect 0
    pss SPLIT_PHYSICAL
    basepower 40
    type TYPE_NORMAL
    accuracy 100
    pp 35
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_RUINATION, "Ruination"
    battleeffect 0
    pss SPLIT_SPECIAL
    basepower 1
    type TYPE_DARK
    accuracy 90
    pp 10
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_COLLISION_COURSE, "Collision Course"
    battleeffect 0
    pss SPLIT_PHYSICAL
    basepower 100
    type TYPE_FIGHTING
    accuracy 100
    pp 5
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_ELECTRO_DRIFT, "Electro Drift"
    battleeffect 0
    pss SPLIT_SPECIAL
    basepower 100
    type TYPE_ELECTRIC
    accuracy 100
    pp 5
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_SHED_TAIL, "Shed Tail"
    battleeffect 0
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy 0
    pp 10
    effectchance 0
    target MOVE_TARGET_USER
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_CHILLY_RECEPTION, "Chilly Reception"
    battleeffect 0
    pss SPLIT_STATUS
    basepower 0
    type TYPE_ICE
    accuracy 0
    pp 10
    effectchance 0
    target MOVE_TARGET_ACTIVE_FIELD
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_TIDY_UP, "Tidy Up"
    battleeffect 0
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy 0
    pp 10
    effectchance 0
    target MOVE_TARGET_USER
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_SNOWSCAPE, "Snowscape"
    battleeffect 0
    pss SPLIT_STATUS
    basepower 0
    type TYPE_ICE
    accuracy 0
    pp 10
    effectchance 0
    target MOVE_TARGET_ACTIVE_FIELD
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_POUNCE, "Pounce"
    battleeffect 0
    pss SPLIT_PHYSICAL
    basepower 50
    type TYPE_BUG
    accuracy 100
    pp 20
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_TRAILBLAZE, "Trailblaze"
    battleeffect 0
    pss SPLIT_PHYSICAL
    basepower 50
    type TYPE_GRASS
    accuracy 100
    pp 20
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_CHILLING_WATER, "Chilling Water"
    battleeffect 0
    pss SPLIT_SPECIAL
    basepower 50
    type TYPE_WATER
    accuracy 100
    pp 20
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_HYPER_DRILL, "Hyper Drill"
    battleeffect 0
    pss SPLIT_PHYSICAL
    basepower 100
    type TYPE_NORMAL
    accuracy 100
    pp 5
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_TWIN_BEAM, "Twin Beam"
    battleeffect 0
    pss SPLIT_SPECIAL
    basepower 40
    type TYPE_PSYCHIC
    accuracy 100
    pp 10
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_RAGE_FIST, "Rage Fist"
    battleeffect 0
    pss SPLIT_PHYSICAL
    basepower 50
    type TYPE_GHOST
    accuracy 100
    pp 10
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_ARMOR_CANNON, "Armor Cannon"
    battleeffect 0
    pss SPLIT_SPECIAL
    basepower 120
    type TYPE_FIRE
    accuracy 100
    pp 5
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_BITTER_BLADE, "Bitter Blade"
    battleeffect 0
    pss SPLIT_PHYSICAL
    basepower 90
    type TYPE_FIRE
    accuracy 100
    pp 10
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_DOUBLE_SHOCK, "Double Shock"
    battleeffect 0
    pss SPLIT_PHYSICAL
    basepower 120
    type TYPE_ELECTRIC
    accuracy 100
    pp 5
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_GIGATON_HAMMER, "Gigaton Hammer"
    battleeffect 0
    pss SPLIT_PHYSICAL
    basepower 160
    type TYPE_STEEL
    accuracy 100
    pp 5
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_COMEUPPANCE, "Comeuppance"
    battleeffect 0
    pss SPLIT_PHYSICAL
    basepower 1
    type TYPE_DARK
    accuracy 100
    pp 10
    effectchance 0
    target MOVE_TARGET_DEPENDS
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_AQUA_CUTTER, "Aqua Cutter"
    battleeffect 0
    pss SPLIT_PHYSICAL
    basepower 70
    type TYPE_WATER
    accuracy 100
    pp 20
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_BLAZING_TORQUE, "Blazing Torque"
    battleeffect 0
    pss SPLIT_PHYSICAL
    basepower 80
    type TYPE_FIRE
    accuracy 100
    pp 10
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_WICKED_TORQUE, "Wicked Torque"
    battleeffect 0
    pss SPLIT_PHYSICAL
    basepower 80
    type TYPE_DARK
    accuracy 100
    pp 10
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_NOXIOUS_TORQUE, "Noxious Torque"
    battleeffect 0
    pss SPLIT_PHYSICAL
    basepower 100
    type TYPE_POISON
    accuracy 100
    pp 10
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_COMBAT_TORQUE, "Combat Torque"
    battleeffect 0
    pss SPLIT_PHYSICAL
    basepower 100
    type TYPE_FIGHTING
    accuracy 100
    pp 10
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_MAGICAL_TORQUE, "Magical Torque"
    battleeffect 0
    pss SPLIT_PHYSICAL
    basepower 100
    type (FAIRY_TYPE_IMPLEMENTED) ? TYPE_FAIRY : TYPE_NORMAL
    accuracy 100
    pp 10
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_HYDRO_STEAM, "Hydro Steam"
    battleeffect 0
    pss SPLIT_SPECIAL
    basepower 80
    type TYPE_WATER
    accuracy 100
    pp 15
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_PSYBLADE, "Psyblade"
    battleeffect 0
    pss SPLIT_PHYSICAL
    basepower 80
    type TYPE_PSYCHIC
    accuracy 100
    pp 15
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata

movedatanoname NUM_OF_MOVES+1
    battleeffect 0
    pss SPLIT_SPECIAL
    basepower 100
    type TYPE_NORMAL
    accuracy 100
    pp 10
    effectchance 0
    target 0x0000
    priority 0
    flags 0x32
    appeal 0x10
    contesttype CONTEST_BEAUTY
    terminatedata
