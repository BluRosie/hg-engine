.nds
.thumb

.include "armips/include/macros.s"
.include "armips/include/constants.s"
.include "armips/include/config.s"
.include "armips/include/movemacros.s"
.include "armips/include/movenums.s"

movedata MOVE_NONE
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

movedata MOVE_POUND
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

movedata MOVE_KARATE_CHOP
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

movedata MOVE_DOUBLE_SLAP
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

movedata MOVE_COMET_PUNCH
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

movedata MOVE_MEGA_PUNCH
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

movedata MOVE_PAY_DAY
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

movedata MOVE_FIRE_PUNCH
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

movedata MOVE_ICE_PUNCH
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

movedata MOVE_THUNDER_PUNCH
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

movedata MOVE_SCRATCH
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

movedata MOVE_VICE_GRIP
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

movedata MOVE_GUILLOTINE
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

movedata MOVE_RAZOR_WIND
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

movedata MOVE_SWORDS_DANCE
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

movedata MOVE_CUT
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

movedata MOVE_GUST
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

movedata MOVE_WING_ATTACK
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

movedata MOVE_WHIRLWIND
    battleeffect 28
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy DEBUG_NEEDS_TESTING ? 0 : 100
    pp 20
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority -6
    flags FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT
    appeal 0x09
    contesttype CONTEST_SMART
    terminatedata

movedata MOVE_FLY
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

movedata MOVE_BIND
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

movedata MOVE_SLAM
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

movedata MOVE_VINE_WHIP
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

movedata MOVE_STOMP
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

movedata MOVE_DOUBLE_KICK
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

movedata MOVE_MEGA_KICK
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

movedata MOVE_JUMP_KICK
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

movedata MOVE_ROLLING_KICK
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

movedata MOVE_SAND_ATTACK
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

movedata MOVE_HEADBUTT
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

movedata MOVE_HORN_ATTACK
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

movedata MOVE_FURY_ATTACK
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

movedata MOVE_HORN_DRILL
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

movedata MOVE_TACKLE
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

movedata MOVE_BODY_SLAM
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

movedata MOVE_WRAP
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

movedata MOVE_TAKE_DOWN
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

movedata MOVE_THRASH
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

movedata MOVE_DOUBLE_EDGE
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

movedata MOVE_TAIL_WHIP
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

movedata MOVE_POISON_STING
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

movedata MOVE_TWINEEDLE
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

movedata MOVE_PIN_MISSILE
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

movedata MOVE_LEER
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

movedata MOVE_BITE
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

movedata MOVE_GROWL
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

movedata MOVE_ROAR
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

movedata MOVE_SING
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

movedata MOVE_SUPERSONIC
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

movedata MOVE_SONIC_BOOM
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

movedata MOVE_DISABLE
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

movedata MOVE_ACID
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

movedata MOVE_EMBER
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

movedata MOVE_FLAMETHROWER
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

movedata MOVE_MIST
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

movedata MOVE_WATER_GUN
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

movedata MOVE_HYDRO_PUMP
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

movedata MOVE_SURF
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

movedata MOVE_ICE_BEAM
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

movedata MOVE_BLIZZARD
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

movedata MOVE_PSYBEAM
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

movedata MOVE_BUBBLE_BEAM
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

movedata MOVE_AURORA_BEAM
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

movedata MOVE_HYPER_BEAM
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

movedata MOVE_PECK
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

movedata MOVE_DRILL_PECK
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

movedata MOVE_SUBMISSION
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

movedata MOVE_LOW_KICK
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

movedata MOVE_COUNTER
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

movedata MOVE_SEISMIC_TOSS
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

movedata MOVE_STRENGTH
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

movedata MOVE_ABSORB
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

movedata MOVE_MEGA_DRAIN
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

movedata MOVE_LEECH_SEED
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

movedata MOVE_GROWTH
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

movedata MOVE_RAZOR_LEAF
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

movedata MOVE_SOLAR_BEAM
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

movedata MOVE_POISON_POWDER
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

movedata MOVE_STUN_SPORE
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

movedata MOVE_SLEEP_POWDER
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

movedata MOVE_PETAL_DANCE
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

movedata MOVE_STRING_SHOT
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

movedata MOVE_DRAGON_RAGE
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

movedata MOVE_FIRE_SPIN
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

movedata MOVE_THUNDER_SHOCK
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

movedata MOVE_THUNDERBOLT
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

movedata MOVE_THUNDER_WAVE
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

movedata MOVE_THUNDER
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

movedata MOVE_ROCK_THROW
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

movedata MOVE_EARTHQUAKE
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

movedata MOVE_FISSURE
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

movedata MOVE_DIG
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

movedata MOVE_TOXIC
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

movedata MOVE_CONFUSION
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

movedata MOVE_PSYCHIC
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

movedata MOVE_HYPNOSIS
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

movedata MOVE_MEDITATE
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

movedata MOVE_AGILITY
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

movedata MOVE_QUICK_ATTACK
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

movedata MOVE_RAGE
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

movedata MOVE_TELEPORT
    battleeffect 153
    pss SPLIT_STATUS
    basepower 0
    type TYPE_PSYCHIC
    accuracy 0
    pp 20
    effectchance 0
    target MOVE_TARGET_USER
    priority 0
    flags 0
    appeal 0x01
    contesttype CONTEST_COOL
    terminatedata

movedata MOVE_NIGHT_SHADE
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

movedata MOVE_MIMIC
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

movedata MOVE_SCREECH
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

movedata MOVE_DOUBLE_TEAM
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

movedata MOVE_RECOVER
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

movedata MOVE_HARDEN
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

movedata MOVE_MINIMIZE
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

movedata MOVE_SMOKESCREEN
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

movedata MOVE_CONFUSE_RAY
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

movedata MOVE_WITHDRAW
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

movedata MOVE_DEFENSE_CURL
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

movedata MOVE_BARRIER
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

movedata MOVE_LIGHT_SCREEN
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

movedata MOVE_HAZE
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

movedata MOVE_REFLECT
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

movedata MOVE_FOCUS_ENERGY
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

movedata MOVE_BIDE
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

movedata MOVE_METRONOME
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

movedata MOVE_MIRROR_MOVE
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

movedata MOVE_SELF_DESTRUCT
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

movedata MOVE_EGG_BOMB
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

movedata MOVE_LICK
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

movedata MOVE_SMOG
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

movedata MOVE_SLUDGE
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

movedata MOVE_BONE_CLUB
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

movedata MOVE_FIRE_BLAST
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

movedata MOVE_WATERFALL
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

movedata MOVE_CLAMP
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

movedata MOVE_SWIFT
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

movedata MOVE_SKULL_BASH
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

movedata MOVE_SPIKE_CANNON
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

movedata MOVE_CONSTRICT
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

movedata MOVE_AMNESIA
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

movedata MOVE_KINESIS
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

movedata MOVE_SOFT_BOILED
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

movedata MOVE_HI_JUMP_KICK
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

movedata MOVE_GLARE
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

movedata MOVE_DREAM_EATER
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

movedata MOVE_POISON_GAS
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

movedata MOVE_BARRAGE
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

movedata MOVE_LEECH_LIFE
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

movedata MOVE_LOVELY_KISS
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

movedata MOVE_SKY_ATTACK
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

movedata MOVE_TRANSFORM
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

movedata MOVE_BUBBLE
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

movedata MOVE_DIZZY_PUNCH
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

movedata MOVE_SPORE
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

movedata MOVE_FLASH
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

movedata MOVE_PSYWAVE
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

movedata MOVE_SPLASH
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

movedata MOVE_ACID_ARMOR
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

movedata MOVE_CRABHAMMER
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

movedata MOVE_EXPLOSION
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

movedata MOVE_FURY_SWIPES
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

movedata MOVE_BONEMERANG
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

movedata MOVE_REST
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

movedata MOVE_ROCK_SLIDE
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

movedata MOVE_HYPER_FANG
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

movedata MOVE_SHARPEN
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

movedata MOVE_CONVERSION
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

movedata MOVE_TRI_ATTACK
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

movedata MOVE_SUPER_FANG
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

movedata MOVE_SLASH
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

movedata MOVE_SUBSTITUTE
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

movedata MOVE_STRUGGLE
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

movedata MOVE_SKETCH
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

movedata MOVE_TRIPLE_KICK
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

movedata MOVE_THIEF
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

movedata MOVE_SPIDER_WEB
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

movedata MOVE_MIND_READER
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

movedata MOVE_NIGHTMARE
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

movedata MOVE_FLAME_WHEEL
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

movedata MOVE_SNORE
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

movedata MOVE_CURSE
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

movedata MOVE_FLAIL
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

movedata MOVE_CONVERSION_2
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

movedata MOVE_AEROBLAST
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

movedata MOVE_COTTON_SPORE
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

movedata MOVE_REVERSAL
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

movedata MOVE_SPITE
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

movedata MOVE_POWDER_SNOW
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

movedata MOVE_PROTECT
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

movedata MOVE_MACH_PUNCH
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

movedata MOVE_SCARY_FACE
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

movedata MOVE_FAINT_ATTACK
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

movedata MOVE_SWEET_KISS
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

movedata MOVE_BELLY_DRUM
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

movedata MOVE_SLUDGE_BOMB
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

movedata MOVE_MUD_SLAP
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

movedata MOVE_OCTAZOOKA
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

movedata MOVE_SPIKES
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

movedata MOVE_ZAP_CANNON
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

movedata MOVE_FORESIGHT
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

movedata MOVE_DESTINY_BOND
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

movedata MOVE_PERISH_SONG
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

movedata MOVE_ICY_WIND
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

movedata MOVE_DETECT
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

movedata MOVE_BONE_RUSH
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

movedata MOVE_LOCK_ON
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

movedata MOVE_OUTRAGE
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

movedata MOVE_SANDSTORM
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

movedata MOVE_GIGA_DRAIN
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

movedata MOVE_ENDURE
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

movedata MOVE_CHARM
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

movedata MOVE_ROLLOUT
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

movedata MOVE_FALSE_SWIPE
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

movedata MOVE_SWAGGER
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

movedata MOVE_MILK_DRINK
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

movedata MOVE_SPARK
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

movedata MOVE_FURY_CUTTER
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

movedata MOVE_STEEL_WING
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

movedata MOVE_MEAN_LOOK
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

movedata MOVE_ATTRACT
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

movedata MOVE_SLEEP_TALK
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

movedata MOVE_HEAL_BELL
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

movedata MOVE_RETURN
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

movedata MOVE_PRESENT
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

movedata MOVE_FRUSTRATION
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

movedata MOVE_SAFEGUARD
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

movedata MOVE_PAIN_SPLIT
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

movedata MOVE_SACRED_FIRE
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

movedata MOVE_MAGNITUDE
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

movedata MOVE_DYNAMIC_PUNCH
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

movedata MOVE_MEGAHORN
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

movedata MOVE_DRAGON_BREATH
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

movedata MOVE_BATON_PASS
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

movedata MOVE_ENCORE
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

movedata MOVE_PURSUIT
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

movedata MOVE_RAPID_SPIN
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

movedata MOVE_SWEET_SCENT
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

movedata MOVE_IRON_TAIL
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

movedata MOVE_METAL_CLAW
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

movedata MOVE_VITAL_THROW
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

movedata MOVE_MORNING_SUN
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

movedata MOVE_SYNTHESIS
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

movedata MOVE_MOONLIGHT
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

movedata MOVE_HIDDEN_POWER
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

movedata MOVE_CROSS_CHOP
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

movedata MOVE_TWISTER
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

movedata MOVE_RAIN_DANCE
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

movedata MOVE_SUNNY_DAY
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

movedata MOVE_CRUNCH
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

movedata MOVE_MIRROR_COAT
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

movedata MOVE_PSYCH_UP
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

movedata MOVE_EXTREME_SPEED
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

movedata MOVE_ANCIENT_POWER
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

movedata MOVE_SHADOW_BALL
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

movedata MOVE_FUTURE_SIGHT
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

movedata MOVE_ROCK_SMASH
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

movedata MOVE_WHIRLPOOL
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

movedata MOVE_BEAT_UP
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

movedata MOVE_FAKE_OUT
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

movedata MOVE_UPROAR
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

movedata MOVE_STOCKPILE
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

movedata MOVE_SPIT_UP
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

movedata MOVE_SWALLOW
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

movedata MOVE_HEAT_WAVE
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

movedata MOVE_HAIL
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

movedata MOVE_TORMENT
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

movedata MOVE_FLATTER
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

movedata MOVE_WILL_O_WISP
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

movedata MOVE_MEMENTO
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

movedata MOVE_FACADE
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

movedata MOVE_FOCUS_PUNCH
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

movedata MOVE_SMELLING_SALT
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

movedata MOVE_FOLLOW_ME
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

movedata MOVE_NATURE_POWER
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

movedata MOVE_CHARGE
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

movedata MOVE_TAUNT
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

movedata MOVE_HELPING_HAND
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

movedata MOVE_TRICK
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

movedata MOVE_ROLE_PLAY
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

movedata MOVE_WISH
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

movedata MOVE_ASSIST
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

movedata MOVE_INGRAIN
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

movedata MOVE_SUPERPOWER
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

movedata MOVE_MAGIC_COAT
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

movedata MOVE_RECYCLE
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

movedata MOVE_REVENGE
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

movedata MOVE_BRICK_BREAK
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

movedata MOVE_YAWN
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

movedata MOVE_KNOCK_OFF
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

movedata MOVE_ENDEAVOR
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

movedata MOVE_ERUPTION
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

movedata MOVE_SKILL_SWAP
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

movedata MOVE_IMPRISON
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

movedata MOVE_REFRESH
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

movedata MOVE_GRUDGE
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

movedata MOVE_SNATCH
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

movedata MOVE_SECRET_POWER
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

movedata MOVE_DIVE
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

movedata MOVE_ARM_THRUST
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

movedata MOVE_CAMOUFLAGE
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

movedata MOVE_TAIL_GLOW
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

movedata MOVE_LUSTER_PURGE
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

movedata MOVE_MIST_BALL
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

movedata MOVE_FEATHER_DANCE
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

movedata MOVE_TEETER_DANCE
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

movedata MOVE_BLAZE_KICK
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

movedata MOVE_MUD_SPORT
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

movedata MOVE_ICE_BALL
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

movedata MOVE_NEEDLE_ARM
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

movedata MOVE_SLACK_OFF
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

movedata MOVE_HYPER_VOICE
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

movedata MOVE_POISON_FANG
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

movedata MOVE_CRUSH_CLAW
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

movedata MOVE_BLAST_BURN
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

movedata MOVE_HYDRO_CANNON
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

movedata MOVE_METEOR_MASH
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

movedata MOVE_ASTONISH
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

movedata MOVE_WEATHER_BALL
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

movedata MOVE_AROMATHERAPY
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

movedata MOVE_FAKE_TEARS
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

movedata MOVE_AIR_CUTTER
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

movedata MOVE_OVERHEAT
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

movedata MOVE_ODOR_SLEUTH
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

movedata MOVE_ROCK_TOMB
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

movedata MOVE_SILVER_WIND
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

movedata MOVE_METAL_SOUND
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

movedata MOVE_GRASS_WHISTLE
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

movedata MOVE_TICKLE
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

movedata MOVE_COSMIC_POWER
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

movedata MOVE_WATER_SPOUT
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

movedata MOVE_SIGNAL_BEAM
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

movedata MOVE_SHADOW_PUNCH
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

movedata MOVE_EXTRASENSORY
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

movedata MOVE_SKY_UPPERCUT
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

movedata MOVE_SAND_TOMB
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

movedata MOVE_SHEER_COLD
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

movedata MOVE_MUDDY_WATER
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

movedata MOVE_BULLET_SEED
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

movedata MOVE_AERIAL_ACE
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

movedata MOVE_ICICLE_SPEAR
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

movedata MOVE_IRON_DEFENSE
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

movedata MOVE_BLOCK
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

movedata MOVE_HOWL
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

movedata MOVE_DRAGON_CLAW
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

movedata MOVE_FRENZY_PLANT
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

movedata MOVE_BULK_UP
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

movedata MOVE_BOUNCE
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

movedata MOVE_MUD_SHOT
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

movedata MOVE_POISON_TAIL
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

movedata MOVE_COVET
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

movedata MOVE_VOLT_TACKLE
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

movedata MOVE_MAGICAL_LEAF
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

movedata MOVE_WATER_SPORT
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

movedata MOVE_CALM_MIND
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

movedata MOVE_LEAF_BLADE
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

movedata MOVE_DRAGON_DANCE
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

movedata MOVE_ROCK_BLAST
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

movedata MOVE_SHOCK_WAVE
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

movedata MOVE_WATER_PULSE
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

movedata MOVE_DOOM_DESIRE
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

movedata MOVE_PSYCHO_BOOST
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

movedata MOVE_ROOST
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

movedata MOVE_GRAVITY
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

movedata MOVE_MIRACLE_EYE
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

movedata MOVE_WAKE_UP_SLAP
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

movedata MOVE_HAMMER_ARM
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

movedata MOVE_GYRO_BALL
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

movedata MOVE_HEALING_WISH
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

movedata MOVE_BRINE
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

movedata MOVE_NATURAL_GIFT
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

movedata MOVE_FEINT
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

movedata MOVE_PLUCK
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

movedata MOVE_TAILWIND
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

movedata MOVE_ACUPRESSURE
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

movedata MOVE_METAL_BURST
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

movedata MOVE_U_TURN
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

movedata MOVE_CLOSE_COMBAT
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

movedata MOVE_PAYBACK
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

movedata MOVE_ASSURANCE
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

movedata MOVE_EMBARGO
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

movedata MOVE_FLING
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

movedata MOVE_PSYCHO_SHIFT
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

movedata MOVE_TRUMP_CARD
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

movedata MOVE_HEAL_BLOCK
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

movedata MOVE_WRING_OUT
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

movedata MOVE_POWER_TRICK
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

movedata MOVE_GASTRO_ACID
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

movedata MOVE_LUCKY_CHANT
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

movedata MOVE_ME_FIRST
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

movedata MOVE_COPYCAT
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

movedata MOVE_POWER_SWAP
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

movedata MOVE_GUARD_SWAP
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

movedata MOVE_PUNISHMENT
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

movedata MOVE_LAST_RESORT
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

movedata MOVE_WORRY_SEED
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

movedata MOVE_SUCKER_PUNCH
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

movedata MOVE_TOXIC_SPIKES
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

movedata MOVE_HEART_SWAP
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

movedata MOVE_AQUA_RING
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

movedata MOVE_MAGNET_RISE
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

movedata MOVE_FLARE_BLITZ
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

movedata MOVE_FORCE_PALM
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

movedata MOVE_AURA_SPHERE
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

movedata MOVE_ROCK_POLISH
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

movedata MOVE_POISON_JAB
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

movedata MOVE_DARK_PULSE
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

movedata MOVE_NIGHT_SLASH
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

movedata MOVE_AQUA_TAIL
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

movedata MOVE_SEED_BOMB
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

movedata MOVE_AIR_SLASH
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

movedata MOVE_X_SCISSOR
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

movedata MOVE_BUG_BUZZ
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

movedata MOVE_DRAGON_PULSE
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

movedata MOVE_DRAGON_RUSH
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

movedata MOVE_POWER_GEM
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

movedata MOVE_DRAIN_PUNCH
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

movedata MOVE_VACUUM_WAVE
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

movedata MOVE_FOCUS_BLAST
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

movedata MOVE_ENERGY_BALL
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

movedata MOVE_BRAVE_BIRD
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

movedata MOVE_EARTH_POWER
    battleeffect 0198
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

movedata MOVE_SWITCHEROO
    battleeffect 7
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

movedata MOVE_GIGA_IMPACT
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

movedata MOVE_NASTY_PLOT
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

movedata MOVE_BULLET_PUNCH
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

movedata MOVE_AVALANCHE
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

movedata MOVE_ICE_SHARD
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

movedata MOVE_SHADOW_CLAW
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

movedata MOVE_THUNDER_FANG
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

movedata MOVE_ICE_FANG
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

movedata MOVE_FIRE_FANG
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

movedata MOVE_SHADOW_SNEAK
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

movedata MOVE_MUD_BOMB
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

movedata MOVE_PSYCHO_CUT
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

movedata MOVE_ZEN_HEADBUTT
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

movedata MOVE_MIRROR_SHOT
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

movedata MOVE_FLASH_CANNON
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

movedata MOVE_ROCK_CLIMB
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

movedata MOVE_DEFOG
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

movedata MOVE_TRICK_ROOM
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

movedata MOVE_DRACO_METEOR
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

movedata MOVE_DISCHARGE
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

movedata MOVE_LAVA_PLUME
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

movedata MOVE_LEAF_STORM
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

movedata MOVE_POWER_WHIP
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

movedata MOVE_ROCK_WRECKER
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

movedata MOVE_CROSS_POISON
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

movedata MOVE_GUNK_SHOT
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

movedata MOVE_IRON_HEAD
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

movedata MOVE_MAGNET_BOMB
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

movedata MOVE_STONE_EDGE
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

movedata MOVE_CAPTIVATE
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

movedata MOVE_STEALTH_ROCK
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

movedata MOVE_GRASS_KNOT
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

movedata MOVE_CHATTER
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

movedata MOVE_JUDGMENT
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

movedata MOVE_BUG_BITE
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

movedata MOVE_CHARGE_BEAM
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

movedata MOVE_WOOD_HAMMER
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

movedata MOVE_AQUA_JET
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

movedata MOVE_ATTACK_ORDER
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

movedata MOVE_DEFEND_ORDER
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

movedata MOVE_HEAL_ORDER
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

movedata MOVE_HEAD_SMASH
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

movedata MOVE_DOUBLE_HIT
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

movedata MOVE_ROAR_OF_TIME
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

movedata MOVE_SPACIAL_REND
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

movedata MOVE_LUNAR_DANCE
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

movedata MOVE_CRUSH_GRIP
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

movedata MOVE_MAGMA_STORM
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

movedata MOVE_DARK_VOID
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

movedata MOVE_SEED_FLARE
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

movedata MOVE_OMINOUS_WIND
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

movedata MOVE_SHADOW_FORCE
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

movedata MOVE_SHADOW_FORCE+1
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

movedata MOVE_SHADOW_FORCE+2
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

movedata MOVE_SHADOW_FORCE+3
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

movedata MOVE_HONE_CLAWS
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

movedata MOVE_WIDE_GUARD
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

movedata MOVE_GUARD_SPLIT
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

movedata MOVE_POWER_SPLIT
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

movedata MOVE_WONDER_ROOM
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

movedata MOVE_PSYSHOCK
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

movedata MOVE_VENOSHOCK
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

movedata MOVE_AUTOTOMIZE
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

movedata MOVE_RAGE_POWDER
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

movedata MOVE_TELEKINESIS
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

movedata MOVE_MAGIC_ROOM
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

movedata MOVE_SMACK_DOWN
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

movedata MOVE_STORM_THROW
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

movedata MOVE_FLAME_BURST
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

movedata MOVE_SLUDGE_WAVE
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

movedata MOVE_QUIVER_DANCE
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

movedata MOVE_HEAVY_SLAM
    battleeffect 0
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

movedata MOVE_SYNCHRONOISE
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

movedata MOVE_ELECTRO_BALL
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

movedata MOVE_SOAK
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

movedata MOVE_FLAME_CHARGE
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

movedata MOVE_COIL
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

movedata MOVE_LOW_SWEEP
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

movedata MOVE_ACID_SPRAY
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

movedata MOVE_FOUL_PLAY
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

movedata MOVE_SIMPLE_BEAM
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

movedata MOVE_ENTRAINMENT
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

movedata MOVE_AFTER_YOU
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

movedata MOVE_ROUND
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

movedata MOVE_ECHOED_VOICE
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

movedata MOVE_CHIP_AWAY
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

movedata MOVE_CLEAR_SMOG
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

movedata MOVE_STORED_POWER
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

movedata MOVE_QUICK_GUARD
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

movedata MOVE_ALLY_SWITCH
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

movedata MOVE_SCALD
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

movedata MOVE_SHELL_SMASH
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

movedata MOVE_HEAL_PULSE
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

movedata MOVE_HEX
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

movedata MOVE_SKY_DROP
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

movedata MOVE_SHIFT_GEAR
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

movedata MOVE_CIRCLE_THROW
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

movedata MOVE_INCINERATE
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

movedata MOVE_QUASH
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

movedata MOVE_ACROBATICS
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

movedata MOVE_REFLECT_TYPE
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

movedata MOVE_RETALIATE
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

movedata MOVE_FINAL_GAMBIT
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

movedata MOVE_BESTOW
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

movedata MOVE_INFERNO
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

movedata MOVE_WATER_PLEDGE
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

movedata MOVE_FIRE_PLEDGE
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

movedata MOVE_GRASS_PLEDGE
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

movedata MOVE_VOLT_SWITCH
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

movedata MOVE_STRUGGLE_BUG
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

movedata MOVE_BULLDOZE
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

movedata MOVE_FROST_BREATH
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

movedata MOVE_DRAGON_TAIL
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

movedata MOVE_WORK_UP
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

movedata MOVE_ELECTROWEB
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

movedata MOVE_WILD_CHARGE
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

movedata MOVE_DRILL_RUN
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

movedata MOVE_DUAL_CHOP
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

movedata MOVE_HEART_STAMP
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

movedata MOVE_HORN_LEECH
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

movedata MOVE_SACRED_SWORD
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

movedata MOVE_RAZOR_SHELL
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

movedata MOVE_HEAT_CRASH
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

movedata MOVE_LEAF_TORNADO
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

movedata MOVE_STEAMROLLER
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

movedata MOVE_COTTON_GUARD
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

movedata MOVE_NIGHT_DAZE
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

movedata MOVE_PSYSTRIKE
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

movedata MOVE_TAIL_SLAP
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

movedata MOVE_HURRICANE
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

movedata MOVE_HEAD_CHARGE
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

movedata MOVE_GEAR_GRIND
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

movedata MOVE_SEARING_SHOT
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

movedata MOVE_TECHNO_BLAST
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

movedata MOVE_RELIC_SONG
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

movedata MOVE_SECRET_SWORD
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

movedata MOVE_GLACIATE
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

movedata MOVE_BOLT_STRIKE
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

movedata MOVE_BLUE_FLARE
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

movedata MOVE_FIERY_DANCE
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

movedata MOVE_FREEZE_SHOCK
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

movedata MOVE_ICE_BURN
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

movedata MOVE_SNARL
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

movedata MOVE_ICICLE_CRASH
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

movedata MOVE_V_CREATE
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

movedata MOVE_FUSION_FLARE
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

movedata MOVE_FUSION_BOLT
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

movedata NUM_OF_MOVES+1
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
