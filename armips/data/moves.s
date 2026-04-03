.nds
.thumb

.include "armips/include/macros.s"
.include "armips/include/constants.s"
.include "armips/include/config.s"
.include "armips/include/movemacros.s"

.include "asm/include/debug.inc"
.include "asm/include/moves.inc"
.include "asm/include/move_effects.inc"

movedata MOVE_NONE, "-"
    battleeffect MOVE_EFFECT_HIT
    pss SPLIT_PHYSICAL
    basepower 0
    type TYPE_NORMAL
    accuracy 0
    pp 0
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags 0x00
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_NONE, "\n\n\n\n"

movedata MOVE_POUND, "Pound"
    battleeffect MOVE_EFFECT_HIT
    pss SPLIT_PHYSICAL
    basepower 40
    type TYPE_NORMAL
    accuracy 100
    pp 35
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal APPEAL_BASIC
    contesttype CONTEST_TOUGH
    terminatedata
    movedescription MOVE_POUND, "The foe is physically\npounded with a long\ntail or a foreleg,\netc.\n"

movedata MOVE_KARATE_CHOP, "Karate Chop"
    battleeffect MOVE_EFFECT_HIGH_CRITICAL
    pss SPLIT_PHYSICAL
    basepower 50
    type TYPE_FIGHTING
    accuracy 100
    pp 25
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9
    appeal APPEAL_BASIC
    contesttype CONTEST_TOUGH
    terminatedata
    movedescription MOVE_KARATE_CHOP, "The foe is attacked\nwith a sharp chop.\nIt has a high\ncritical-hit ratio.\n"

movedata MOVE_DOUBLE_SLAP, "Double Slap"
    battleeffect MOVE_EFFECT_MULTI_HIT
    pss SPLIT_PHYSICAL
    basepower 15
    type TYPE_NORMAL
    accuracy 85
    pp 10
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9
    appeal APPEAL_SUCCESSIVE
    contesttype CONTEST_TOUGH
    terminatedata
    movedescription MOVE_DOUBLE_SLAP, "The foe is slapped\nrepeatedly, back\nand forth, two to\nfive times in a row.\n"

movedata MOVE_COMET_PUNCH, "Comet Punch"
    battleeffect MOVE_EFFECT_MULTI_HIT
    pss SPLIT_PHYSICAL
    basepower 18
    type TYPE_NORMAL
    accuracy 85
    pp 15
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9
    appeal APPEAL_SUCCESSIVE
    contesttype CONTEST_TOUGH
    terminatedata
    movedescription MOVE_COMET_PUNCH, "The foe is hit with\na flurry of punches\nthat strike two to\nfive times in a row.\n"

movedata MOVE_MEGA_PUNCH, "Mega Punch"
    battleeffect MOVE_EFFECT_HIT
    pss SPLIT_PHYSICAL
    basepower 80
    type TYPE_NORMAL
    accuracy 85
    pp 20
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal APPEAL_LAST_HEARTS
    contesttype CONTEST_TOUGH
    terminatedata
    movedescription MOVE_MEGA_PUNCH, "The foe is slugged\nby a punch thrown\nwith muscle-packed\npower.\n"

movedata MOVE_PAY_DAY, "Pay Day"
    battleeffect MOVE_EFFECT_INCREASE_PRIZE_MONEY
    pss SPLIT_PHYSICAL
    basepower 40
    type TYPE_NORMAL
    accuracy 100
    pp 20
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal APPEAL_PITY_HEARTS
    contesttype CONTEST_SMART
    terminatedata
    movedescription MOVE_PAY_DAY, "Numerous coins are\nhurled at the foe to\ninflict damage.\nMoney is earned\nafter battle."

movedata MOVE_FIRE_PUNCH, "Fire Punch"
    battleeffect MOVE_EFFECT_BURN_HIT
    pss SPLIT_PHYSICAL
    basepower 75
    type TYPE_FIRE
    accuracy 100
    pp 15
    effectchance 10
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal APPEAL_FIRST_HEARTS
    contesttype CONTEST_BEAUTY
    terminatedata
    movedescription MOVE_FIRE_PUNCH, "The foe is punched\nwith a fiery fist.\nIt may leave the\ntarget with a burn.\n"

movedata MOVE_ICE_PUNCH, "Ice Punch"
    battleeffect MOVE_EFFECT_FREEZE_HIT
    pss SPLIT_PHYSICAL
    basepower 75
    type TYPE_ICE
    accuracy 100
    pp 15
    effectchance 10
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal APPEAL_FIRST_HEARTS
    contesttype CONTEST_BEAUTY
    terminatedata
    movedescription MOVE_ICE_PUNCH, "The foe is punched\nwith an icy fist.\nIt may leave the\ntarget frozen.\n"

movedata MOVE_THUNDER_PUNCH, "Thunder Punch"
    battleeffect MOVE_EFFECT_PARALYZE_HIT
    pss SPLIT_PHYSICAL
    basepower 75
    type TYPE_ELECTRIC
    accuracy 100
    pp 15
    effectchance 10
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal APPEAL_FIRST_HEARTS
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_THUNDER_PUNCH, "The foe is punched\nwith an electrified\nfist. It may leave\nthe target with\nparalysis."

movedata MOVE_SCRATCH, "Scratch"
    battleeffect MOVE_EFFECT_HIT
    pss SPLIT_PHYSICAL
    basepower 40
    type TYPE_NORMAL
    accuracy 100
    pp 35
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal APPEAL_BASIC
    contesttype CONTEST_TOUGH
    terminatedata
    movedescription MOVE_SCRATCH, "Hard, pointed, and\nsharp claws rake the\nfoe to inflict damage.\n\n"

movedata MOVE_VICE_GRIP, "Vise Grip"
    battleeffect MOVE_EFFECT_HIT
    pss SPLIT_PHYSICAL
    basepower 55
    type TYPE_NORMAL
    accuracy 100
    pp 30
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal APPEAL_BASIC
    contesttype CONTEST_TOUGH
    terminatedata
    movedescription MOVE_VICE_GRIP, "Huge, impressive\npincers grip and\nsqueeze the foe.\n\n"

movedata MOVE_GUILLOTINE, "Guillotine"
    battleeffect MOVE_EFFECT_ONE_HIT_KO
    pss SPLIT_PHYSICAL
    basepower 1
    type TYPE_NORMAL
    accuracy 30
    pp 5
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal APPEAL_ALL_SAME_JUDGE
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_GUILLOTINE, "A vicious, tearing\nattack with pincers.\nThe foe will faint\ninstantly if this\nattack hits."

movedata MOVE_RAZOR_WIND, "Razor Wind"
    battleeffect MOVE_EFFECT_CHARGE_TURN_HIGH_CRIT
    pss SPLIT_SPECIAL
    basepower 80
    type TYPE_NORMAL
    accuracy 100
    pp 10
    effectchance 0
    target RANGE_ADJACENT_OPPONENTS
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9
    appeal APPEAL_UNIQUE_JUDGE
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_RAZOR_WIND, "A two-turn attack.\nBlades of wind hit the\nfoe on the second\nturn. It has a high\ncritical-hit ratio."

movedata MOVE_SWORDS_DANCE, "Swords Dance"
    battleeffect MOVE_EFFECT_ATK_UP_2
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy 0
    pp 20
    effectchance 0
    target RANGE_USER
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_SNATCH
    appeal APPEAL_DOUBLE_NEXT_SCORE
    contesttype CONTEST_BEAUTY
    terminatedata
    movedescription MOVE_SWORDS_DANCE, "A frenetic dance to\nuplift the fighting\nspirit. It sharply\nraises the user’s\nAttack stat."

movedata MOVE_CUT, "Cut"
    battleeffect MOVE_EFFECT_HIT
    pss SPLIT_PHYSICAL
    basepower 50
    type TYPE_NORMAL
    accuracy 95
    pp 30
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal APPEAL_BASIC
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_CUT, "The foe is cut with a\nscythe or a claw.\nIt can also be used\nto cut down thin\ntrees."

movedata MOVE_GUST, "Gust"
    battleeffect MOVE_EFFECT_DOUBLE_DAMAGE_FLY_OR_BOUNCE
    pss SPLIT_SPECIAL
    basepower 40
    type TYPE_FLYING
    accuracy 100
    pp 35
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal APPEAL_BASIC
    contesttype CONTEST_SMART
    terminatedata
    movedescription MOVE_GUST, "A gust of wind is\nwhipped up by wings\nand launched at the\nfoe to inflict damage.\n"

movedata MOVE_WING_ATTACK, "Wing Attack"
    battleeffect MOVE_EFFECT_HIT
    pss SPLIT_PHYSICAL
    basepower 60
    type TYPE_FLYING
    accuracy 100
    pp 35
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal APPEAL_BASIC
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_WING_ATTACK, "The foe is struck\nwith large, imposing\nwings spread wide\nto inflict damage.\n"

movedata MOVE_WHIRLWIND, "Whirlwind"
    battleeffect MOVE_EFFECT_FORCE_SWITCH
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy 0
    pp 20
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority -6
    flags FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_MAGIC_COAT
    appeal APPEAL_ALL_SAME_JUDGE
    contesttype CONTEST_SMART
    terminatedata
    movedescription MOVE_WHIRLWIND, "The foe is blown away,\nto be replaced by\nanother Pokémon\nin its party. In the\nwild, the battle ends."

movedata MOVE_FLY, "Fly"
    battleeffect MOVE_EFFECT_FLY
    pss SPLIT_PHYSICAL
    basepower 90
    type TYPE_FLYING
    accuracy 95
    pp 15
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_HIDE_SHADOW | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal APPEAL_UNIQUE_JUDGE
    contesttype CONTEST_SMART
    terminatedata
    movedescription MOVE_FLY, "The user soars, then\nstrikes on the second\nturn. It can also be\nused for flying to\nany familiar town."

movedata MOVE_BIND, "Bind"
    battleeffect MOVE_EFFECT_BIND_HIT
    pss SPLIT_PHYSICAL
    basepower 15
    type TYPE_NORMAL
    accuracy 85
    pp 20
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal APPEAL_LATE_BOOST
    contesttype CONTEST_TOUGH
    terminatedata
    movedescription MOVE_BIND, "A long body or\ntentacles are used\nto bind and squeeze\nthe foe for two to\nfive turns."

movedata MOVE_SLAM, "Slam"
    battleeffect MOVE_EFFECT_HIT
    pss SPLIT_PHYSICAL
    basepower 80
    type TYPE_NORMAL
    accuracy 75
    pp 20
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal APPEAL_BASIC
    contesttype CONTEST_TOUGH
    terminatedata
    movedescription MOVE_SLAM, "The foe is slammed\nwith a long tail,\nvines, etc., to inflict\ndamage.\n"

movedata MOVE_VINE_WHIP, "Vine Whip"
    battleeffect MOVE_EFFECT_HIT
    pss SPLIT_PHYSICAL
    basepower 45
    type TYPE_GRASS
    accuracy 100
    pp 25
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal APPEAL_BASIC
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_VINE_WHIP, "The foe is struck\nwith slender, whiplike\nvines to inflict\ndamage.\n"

movedata MOVE_STOMP, "Stomp"
    battleeffect MOVE_EFFECT_FLINCH_MINIMIZE_DOUBLE_HIT
    pss SPLIT_PHYSICAL
    basepower 65
    type TYPE_NORMAL
    accuracy 100
    pp 20
    effectchance 30
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal APPEAL_BASIC
    contesttype CONTEST_TOUGH
    terminatedata
    movedescription MOVE_STOMP, "The foe is stomped\nwith a big foot.\nIt may also make the\ntarget flinch.\n"

movedata MOVE_DOUBLE_KICK, "Double Kick"
    battleeffect MOVE_EFFECT_HIT_TWICE
    pss SPLIT_PHYSICAL
    basepower 30
    type TYPE_FIGHTING
    accuracy 100
    pp 30
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal APPEAL_SUCCESSIVE
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_DOUBLE_KICK, "The foe is quickly\nkicked twice in\nsuccession using both\nfeet.\n"

movedata MOVE_MEGA_KICK, "Mega Kick"
    battleeffect MOVE_EFFECT_HIT
    pss SPLIT_PHYSICAL
    basepower 120
    type TYPE_NORMAL
    accuracy 75
    pp 5
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_HIDE_SHADOW | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal APPEAL_LAST_HEARTS
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_MEGA_KICK, "The foe is attacked\nby a kick launched\nwith muscle-packed\npower.\n"

movedata MOVE_JUMP_KICK, "Jump Kick"
    battleeffect MOVE_EFFECT_CRASH_ON_MISS
    pss SPLIT_PHYSICAL
    basepower 100
    type TYPE_FIGHTING
    accuracy 95
    pp 10
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9
    appeal APPEAL_BASIC
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_JUMP_KICK, "The user jumps up\nhigh, then strikes\nwith a kick. If the\nkick misses, the\nuser hurts itself."

movedata MOVE_ROLLING_KICK, "Rolling Kick"
    battleeffect MOVE_EFFECT_FLINCH_HIT
    pss SPLIT_PHYSICAL
    basepower 60
    type TYPE_FIGHTING
    accuracy 85
    pp 15
    effectchance 30
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9
    appeal APPEAL_BASIC
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_ROLLING_KICK, "The user lashes \nout with a quick,\nspinning kick. It\nmay also make the\ntarget flinch."

movedata MOVE_SAND_ATTACK, "Sand Attack"
    battleeffect MOVE_EFFECT_ACC_DOWN
    pss SPLIT_STATUS
    basepower 0
    type TYPE_GROUND
    accuracy 100
    pp 15
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_MAGIC_COAT | FLAG_PROTECT
    appeal APPEAL_KEEP_VOLTAGE_UP
    contesttype CONTEST_CUTE
    terminatedata
    movedescription MOVE_SAND_ATTACK, "Sand is hurled in the\nfoe’s face, reducing\nits accuracy.\n\n"

movedata MOVE_HEADBUTT, "Headbutt"
    battleeffect MOVE_EFFECT_FLINCH_HIT
    pss SPLIT_PHYSICAL
    basepower 70
    type TYPE_NORMAL
    accuracy 100
    pp 15
    effectchance 30
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal APPEAL_BASIC
    contesttype CONTEST_TOUGH
    terminatedata
    movedescription MOVE_HEADBUTT, "The user attacks with\nits head. It may make\nthe foe flinch. To find\nPokémon, hit trees."

movedata MOVE_HORN_ATTACK, "Horn Attack"
    battleeffect MOVE_EFFECT_HIT
    pss SPLIT_PHYSICAL
    basepower 65
    type TYPE_NORMAL
    accuracy 100
    pp 25
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal APPEAL_BASIC
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_HORN_ATTACK, "The foe is jabbed\nwith a sharply\npointed horn to\ninflict damage.\n"

movedata MOVE_FURY_ATTACK, "Fury Attack"
    battleeffect MOVE_EFFECT_MULTI_HIT
    pss SPLIT_PHYSICAL
    basepower 15
    type TYPE_NORMAL
    accuracy 85
    pp 20
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal APPEAL_SUCCESSIVE
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_FURY_ATTACK, "The foe is jabbed\nrepeatedly with a\nhorn or beak two to\nfive times in a row.\n"

movedata MOVE_HORN_DRILL, "Horn Drill"
    battleeffect MOVE_EFFECT_ONE_HIT_KO
    pss SPLIT_PHYSICAL
    basepower 1
    type TYPE_NORMAL
    accuracy 30
    pp 5
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal APPEAL_ALL_SAME_JUDGE
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_HORN_DRILL, "The foe is stabbed\nwith a horn rotating\nlike a drill.\nThe foe instantly\nfaints if it hits."

movedata MOVE_TACKLE, "Tackle"
    battleeffect MOVE_EFFECT_HIT
    pss SPLIT_PHYSICAL
    basepower 40
    type TYPE_NORMAL
    accuracy 100
    pp 35
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal APPEAL_BASIC
    contesttype CONTEST_TOUGH
    terminatedata
    movedescription MOVE_TACKLE, "A physical attack\nin which the user\ncharges and slams\ninto the foe with\nits whole body."

movedata MOVE_BODY_SLAM, "Body Slam"
    battleeffect MOVE_EFFECT_PARALYZE_HIT
    pss SPLIT_PHYSICAL
    basepower 85
    type TYPE_NORMAL
    accuracy 100
    pp 15
    effectchance 30
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal APPEAL_BASIC
    contesttype CONTEST_TOUGH
    terminatedata
    movedescription MOVE_BODY_SLAM, "The user drops onto\nthe foe with its full\nbody weight.\nIt may leave the foe\nparalyzed."

movedata MOVE_WRAP, "Wrap"
    battleeffect MOVE_EFFECT_BIND_HIT
    pss SPLIT_PHYSICAL
    basepower 15
    type TYPE_NORMAL
    accuracy 90
    pp 20
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal APPEAL_LATE_BOOST
    contesttype CONTEST_TOUGH
    terminatedata
    movedescription MOVE_WRAP, "A long body or vines\nare used to wrap and\nsqueeze the foe for\ntwo to five turns.\n"

movedata MOVE_TAKE_DOWN, "Take Down"
    battleeffect MOVE_EFFECT_RECOIL_QUARTER
    pss SPLIT_PHYSICAL
    basepower 90
    type TYPE_NORMAL
    accuracy 85
    pp 20
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal APPEAL_BASIC
    contesttype CONTEST_TOUGH
    terminatedata
    movedescription MOVE_TAKE_DOWN, "A reckless, full-body\ncharge attack for\nslamming into the foe.\nIt also damages the\nuser a little."

movedata MOVE_THRASH, "Thrash"
    battleeffect MOVE_EFFECT_CONTINUE_AND_CONFUSE_SELF
    pss SPLIT_PHYSICAL
    basepower 120
    type TYPE_NORMAL
    accuracy 100
    pp 10
    effectchance 0
    target RANGE_RANDOM_OPPONENT
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal APPEAL_SUCCESSIVE
    contesttype CONTEST_TOUGH
    terminatedata
    movedescription MOVE_THRASH, "The user rampages\nand attacks for two\nto three turns.\nIt then becomes\nconfused, however."

movedata MOVE_DOUBLE_EDGE, "Double-Edge"
    battleeffect MOVE_EFFECT_RECOIL_THIRD
    pss SPLIT_PHYSICAL
    basepower 120
    type TYPE_NORMAL
    accuracy 100
    pp 15
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_HIDE_SHADOW | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal APPEAL_ALL_SAME_JUDGE
    contesttype CONTEST_TOUGH
    terminatedata
    movedescription MOVE_DOUBLE_EDGE, "A reckless, life-\nrisking tackle.\nIt also damages the\nuser by a fairly large\namount, however."

movedata MOVE_TAIL_WHIP, "Tail Whip"
    battleeffect MOVE_EFFECT_DEF_DOWN
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy 100
    pp 30
    effectchance 0
    target RANGE_ADJACENT_OPPONENTS
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_MAGIC_COAT | FLAG_PROTECT
    appeal APPEAL_KEEP_VOLTAGE_UP
    contesttype CONTEST_CUTE
    terminatedata
    movedescription MOVE_TAIL_WHIP, "The user wags its tail\ncutely, making the\nfoe less wary.\nThe target’s Defense\nstat is lowered."

movedata MOVE_POISON_STING, "Poison Sting"
    battleeffect MOVE_EFFECT_POISON_HIT
    pss SPLIT_PHYSICAL
    basepower 15
    type TYPE_POISON
    accuracy 100
    pp 35
    effectchance 30
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal APPEAL_KEEP_VOLTAGE_UP
    contesttype CONTEST_SMART
    terminatedata
    movedescription MOVE_POISON_STING, "The foe is stabbed\nwith a poisonous\nbarb of some sort.\nIt may also poison\nthe target."

movedata MOVE_TWINEEDLE, "Twineedle"
    battleeffect MOVE_EFFECT_POISON_MULTI_HIT
    pss SPLIT_PHYSICAL
    basepower 25
    type TYPE_BUG
    accuracy 100
    pp 20
    effectchance 20
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9
    appeal APPEAL_SUCCESSIVE
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_TWINEEDLE, "The foe is stabbed\ntwice by a pair of\nstingers.\nIt may also poison\nthe target."

movedata MOVE_PIN_MISSILE, "Pin Missile"
    battleeffect MOVE_EFFECT_MULTI_HIT
    pss SPLIT_PHYSICAL
    basepower 25
    type TYPE_BUG
    accuracy 95
    pp 20
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal APPEAL_SUCCESSIVE
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_PIN_MISSILE, "Sharp pins are shot\nat the foe in rapid\nsuccession.\nThey hit two to five\ntimes in a row."

movedata MOVE_LEER, "Leer"
    battleeffect MOVE_EFFECT_DEF_DOWN
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy 100
    pp 30
    effectchance 0
    target RANGE_ADJACENT_OPPONENTS
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_MAGIC_COAT | FLAG_PROTECT
    appeal APPEAL_KEEP_VOLTAGE_UP
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_LEER, "The foe is given an\nintimidating leer with\nsharp eyes.\nThe target’s Defense\nstat is reduced."

movedata MOVE_BITE, "Bite"
    battleeffect MOVE_EFFECT_FLINCH_HIT
    pss SPLIT_PHYSICAL
    basepower 60
    type TYPE_DARK
    accuracy 100
    pp 25
    effectchance 30
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal APPEAL_BASIC
    contesttype CONTEST_TOUGH
    terminatedata
    movedescription MOVE_BITE, "The foe is bitten with\nviciously sharp fangs.\nIt may make the\ntarget flinch.\n"

movedata MOVE_GROWL, "Growl"
    battleeffect MOVE_EFFECT_ATK_DOWN
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy 100
    pp 40
    effectchance 0
    target RANGE_ADJACENT_OPPONENTS
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_MAGIC_COAT | FLAG_PROTECT
    appeal APPEAL_KEEP_VOLTAGE_UP
    contesttype CONTEST_CUTE
    terminatedata
    movedescription MOVE_GROWL, "The user growls in an\nendearing way, making\nthe foe less wary.\nThe target’s Attack\nstat is lowered."

movedata MOVE_ROAR, "Roar"
    battleeffect MOVE_EFFECT_FORCE_SWITCH
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy 0
    pp 20
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority -6
    flags FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_MAGIC_COAT
    appeal APPEAL_KEEP_VOLTAGE_UP
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_ROAR, "The foe is scared off,\nto be replaced by\nanother Pokémon in\nits party. In the\nwild, the battle ends."

movedata MOVE_SING, "Sing"
    battleeffect MOVE_EFFECT_STATUS_SLEEP
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy 55
    pp 15
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_MAGIC_COAT | FLAG_PROTECT
    appeal APPEAL_KEEP_VOLTAGE_UP
    contesttype CONTEST_CUTE
    terminatedata
    movedescription MOVE_SING, "A soothing lullaby is\nsung in a calming\nvoice that puts the\nfoe into a deep\nslumber."

movedata MOVE_SUPERSONIC, "Supersonic"
    battleeffect MOVE_EFFECT_STATUS_CONFUSE
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy 55
    pp 20
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_MAGIC_COAT | FLAG_PROTECT
    appeal APPEAL_KEEP_VOLTAGE_UP
    contesttype CONTEST_SMART
    terminatedata
    movedescription MOVE_SUPERSONIC, "The user generates\nodd sound waves from\nits body.\nIt may confuse the\ntarget."

movedata MOVE_SONIC_BOOM, "Sonic Boom"
    battleeffect MOVE_EFFECT_10_DAMAGE_FLAT
    pss SPLIT_SPECIAL
    basepower 1
    type TYPE_NORMAL
    accuracy 90
    pp 20
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_UNUSABLE_IN_GEN_8
    appeal APPEAL_BASIC
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_SONIC_BOOM, "The foe is hit with a\ndestructive shock\nwave that always\ninflicts 20 HP damage.\n"

movedata MOVE_DISABLE, "Disable"
    battleeffect MOVE_EFFECT_DISABLE
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy 100
    pp 20
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT
    appeal APPEAL_KEEP_VOLTAGE_UP
    contesttype CONTEST_SMART
    terminatedata
    movedescription MOVE_DISABLE, "For several turns,\nthis move prevents\nthe foe from using\nthe move it last\nused."

movedata MOVE_ACID, "Acid"
    battleeffect MOVE_EFFECT_LOWER_SP_DEF_HIT
    pss SPLIT_SPECIAL
    basepower 40
    type TYPE_POISON
    accuracy 100
    pp 30
    effectchance 10
    target RANGE_ADJACENT_OPPONENTS
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal APPEAL_BASIC
    contesttype CONTEST_SMART
    terminatedata
    movedescription MOVE_ACID, "The foe is attacked\nwith a spray of harsh\nacid. It may also\nlower the target’s\nSp. Def stat."

movedata MOVE_EMBER, "Ember"
    battleeffect MOVE_EFFECT_BURN_HIT
    pss SPLIT_SPECIAL
    basepower 40
    type TYPE_FIRE
    accuracy 100
    pp 25
    effectchance 10
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal APPEAL_BASIC
    contesttype CONTEST_BEAUTY
    terminatedata
    movedescription MOVE_EMBER, "The foe is attacked\nwith small flames.\nThe target may also\nbe left with a burn.\n"

movedata MOVE_FLAMETHROWER, "Flamethrower"
    battleeffect MOVE_EFFECT_BURN_HIT
    pss SPLIT_SPECIAL
    basepower 90
    type TYPE_FIRE
    accuracy 100
    pp 15
    effectchance 10
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal APPEAL_FIRST_HEARTS
    contesttype CONTEST_BEAUTY
    terminatedata
    movedescription MOVE_FLAMETHROWER, "The foe is scorched\nwith an intense blast\nof fire. The target\nmay also be left with\na burn."

movedata MOVE_MIST, "Mist"
    battleeffect MOVE_EFFECT_PREVENT_STAT_REDUCTION
    pss SPLIT_STATUS
    basepower 0
    type TYPE_ICE
    accuracy 0
    pp 30
    effectchance 0
    target RANGE_USER_SIDE
    priority 0
    flags FLAG_SNATCH
    appeal APPEAL_KEEP_VOLTAGE_DOWN
    contesttype CONTEST_BEAUTY
    terminatedata
    movedescription MOVE_MIST, "The user cloaks its\nbody with a white mist\nthat prevents any of\nits stats from being\ncut for five turns."

movedata MOVE_WATER_GUN, "Water Gun"
    battleeffect MOVE_EFFECT_HIT
    pss SPLIT_SPECIAL
    basepower 40
    type TYPE_WATER
    accuracy 100
    pp 25
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal APPEAL_BASIC
    contesttype CONTEST_CUTE
    terminatedata
    movedescription MOVE_WATER_GUN, "The foe is blasted\nwith a forceful shot\nof water.\n\n"

movedata MOVE_HYDRO_PUMP, "Hydro Pump"
    battleeffect MOVE_EFFECT_HIT
    pss SPLIT_SPECIAL
    basepower 110
    type TYPE_WATER
    accuracy 80
    pp 5
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_HIDE_SHADOW | FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal APPEAL_FIRST_HEARTS
    contesttype CONTEST_BEAUTY
    terminatedata
    movedescription MOVE_HYDRO_PUMP, "The foe is blasted by\na huge volume of\nwater launched under\ngreat pressure.\n"

movedata MOVE_SURF, "Surf"
    battleeffect MOVE_EFFECT_DOUBLE_DAMAGE_DIVE
    pss SPLIT_SPECIAL
    basepower 90
    type TYPE_WATER
    accuracy 100
    pp 15
    effectchance 0
    target RANGE_ALL_ADJACENT
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal APPEAL_FIRST_HEARTS
    contesttype CONTEST_BEAUTY
    terminatedata
    movedescription MOVE_SURF, "It swamps the entire\nbattlefield with a\ngiant wave.\nIt can also be used\nfor crossing water."

movedata MOVE_ICE_BEAM, "Ice Beam"
    battleeffect MOVE_EFFECT_FREEZE_HIT
    pss SPLIT_SPECIAL
    basepower 90
    type TYPE_ICE
    accuracy 100
    pp 10
    effectchance 10
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal APPEAL_FIRST_HEARTS
    contesttype CONTEST_BEAUTY
    terminatedata
    movedescription MOVE_ICE_BEAM, "The foe is struck\nwith an icy-cold\nbeam of energy.\nIt may also freeze\nthe target solid."

movedata MOVE_BLIZZARD, "Blizzard"
    battleeffect MOVE_EFFECT_BLIZZARD
    pss SPLIT_SPECIAL
    basepower 110
    type TYPE_ICE
    accuracy 70
    pp 5
    effectchance 10
    target RANGE_ADJACENT_OPPONENTS
    priority 0
    flags FLAG_HIDE_SHADOW | FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal APPEAL_FIRST_HEARTS
    contesttype CONTEST_BEAUTY
    terminatedata
    movedescription MOVE_BLIZZARD, "A howling blizzard is\nsummoned to strike\nthe foe.\nIt may also freeze\nthe target solid."

movedata MOVE_PSYBEAM, "Psybeam"
    battleeffect MOVE_EFFECT_CONFUSE_HIT
    pss SPLIT_SPECIAL
    basepower 65
    type TYPE_PSYCHIC
    accuracy 100
    pp 20
    effectchance 10
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal APPEAL_FIRST_HEARTS
    contesttype CONTEST_BEAUTY
    terminatedata
    movedescription MOVE_PSYBEAM, "The foe is attacked\nwith a peculiar ray.\nIt may also leave the\ntarget confused.\n"

movedata MOVE_BUBBLE_BEAM, "Bubble Beam"
    battleeffect MOVE_EFFECT_LOWER_SPEED_HIT
    pss SPLIT_SPECIAL
    basepower 65
    type TYPE_WATER
    accuracy 100
    pp 20
    effectchance 10
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal APPEAL_LAST_NEXT_TURN
    contesttype CONTEST_BEAUTY
    terminatedata
    movedescription MOVE_BUBBLE_BEAM, "A spray of bubbles is\nforcefully ejected\nat the foe.\nIt may also lower the\ntarget’s Speed stat."

movedata MOVE_AURORA_BEAM, "Aurora Beam"
    battleeffect MOVE_EFFECT_LOWER_ATTACK_HIT
    pss SPLIT_SPECIAL
    basepower 65
    type TYPE_ICE
    accuracy 100
    pp 20
    effectchance 10
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal APPEAL_FIRST_HEARTS
    contesttype CONTEST_BEAUTY
    terminatedata
    movedescription MOVE_AURORA_BEAM, "The foe is hit with a\nrainbow-colored beam.\nIt may also lower the\ntarget’s Attack\nstat."

movedata MOVE_HYPER_BEAM, "Hyper Beam"
    battleeffect MOVE_EFFECT_RECHARGE_AFTER
    pss SPLIT_SPECIAL
    basepower 150
    type TYPE_NORMAL
    accuracy 90
    pp 5
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_HIDE_SHADOW | FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal APPEAL_AFTER_MAX_VOLTAGE_HEARTS
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_HYPER_BEAM, "The foe is attacked\nwith a powerful beam.\nThe user must rest\non the next turn to\nregain its energy."

movedata MOVE_PECK, "Peck"
    battleeffect MOVE_EFFECT_HIT
    pss SPLIT_PHYSICAL
    basepower 35
    type TYPE_FLYING
    accuracy 100
    pp 35
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal APPEAL_BASIC
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_PECK, "The foe is jabbed\nwith a sharply\npointed beak or\nhorn.\n"

movedata MOVE_DRILL_PECK, "Drill Peck"
    battleeffect MOVE_EFFECT_HIT
    pss SPLIT_PHYSICAL
    basepower 80
    type TYPE_FLYING
    accuracy 100
    pp 20
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal APPEAL_BASIC
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_DRILL_PECK, "A corkscrewing\nattack with the\nsharp beak acting\nas a drill.\n"

movedata MOVE_SUBMISSION, "Submission"
    battleeffect MOVE_EFFECT_RECOIL_QUARTER
    pss SPLIT_PHYSICAL
    basepower 80
    type TYPE_FIGHTING
    accuracy 80
    pp 20
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT | FLAG_UNUSABLE_IN_GEN_9
    appeal APPEAL_BASIC
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_SUBMISSION, "The user grabs the\nfoe and recklessly\ndives for the ground.\nIt also hurts the\nuser slightly."

movedata MOVE_LOW_KICK, "Low Kick"
    battleeffect MOVE_EFFECT_INCREASE_POWER_WITH_WEIGHT
    pss SPLIT_PHYSICAL
    basepower 1
    type TYPE_FIGHTING
    accuracy 100
    pp 20
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal APPEAL_BASIC
    contesttype CONTEST_TOUGH
    terminatedata
    movedescription MOVE_LOW_KICK, "A powerful low kick\nthat makes the foe\nfall over. It inflicts\ngreater damage on\nheavier foes."

movedata MOVE_COUNTER, "Counter"
    battleeffect MOVE_EFFECT_COUNTER
    pss SPLIT_PHYSICAL
    basepower 1
    type TYPE_FIGHTING
    accuracy 100
    pp 20
    effectchance 0
    target RANGE_SINGLE_TARGET_SPECIAL
    priority -5
    flags FLAG_PROTECT | FLAG_CONTACT
    appeal APPEAL_DOUBLE_ON_FINALE
    contesttype CONTEST_TOUGH
    terminatedata
    movedescription MOVE_COUNTER, "A retaliation move\nthat counters any\nphysical attack,\ninflicting double the\ndamage taken."

movedata MOVE_SEISMIC_TOSS, "Seismic Toss"
    battleeffect MOVE_EFFECT_LEVEL_DAMAGE_FLAT
    pss SPLIT_PHYSICAL
    basepower 1
    type TYPE_FIGHTING
    accuracy 100
    pp 20
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_HIDE_SHADOW | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal APPEAL_BASIC
    contesttype CONTEST_TOUGH
    terminatedata
    movedescription MOVE_SEISMIC_TOSS, "The foe is thrown\nusing the power of\ngravity. It inflicts\ndamage equal to\nthe user’s level."

movedata MOVE_STRENGTH, "Strength"
    battleeffect MOVE_EFFECT_HIT
    pss SPLIT_PHYSICAL
    basepower 80
    type TYPE_NORMAL
    accuracy 100
    pp 15
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal APPEAL_BASIC
    contesttype CONTEST_TOUGH
    terminatedata
    movedescription MOVE_STRENGTH, "The foe is slugged\nwith a punch thrown\nat maximum power.\nIt can also be used\nto move boulders."

movedata MOVE_ABSORB, "Absorb"
    battleeffect MOVE_EFFECT_RECOVER_HALF_DAMAGE_DEALT
    pss SPLIT_SPECIAL
    basepower 20
    type TYPE_GRASS
    accuracy 100
    pp 25
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal APPEAL_VOLTAGE_CHAIN_HEARTS
    contesttype CONTEST_SMART
    terminatedata
    movedescription MOVE_ABSORB, "A nutrient-draining\nattack. The user’s\nHP is restored by\nhalf the damage taken\nby the target."

movedata MOVE_MEGA_DRAIN, "Mega Drain"
    battleeffect MOVE_EFFECT_RECOVER_HALF_DAMAGE_DEALT
    pss SPLIT_SPECIAL
    basepower 40
    type TYPE_GRASS
    accuracy 100
    pp 15
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal APPEAL_VOLTAGE_CHAIN_HEARTS
    contesttype CONTEST_SMART
    terminatedata
    movedescription MOVE_MEGA_DRAIN, "A nutrient-draining\nattack. The user’s\nHP is restored by\nhalf the damage taken\nby the target."

movedata MOVE_LEECH_SEED, "Leech Seed"
    battleeffect MOVE_EFFECT_STATUS_LEECH_SEED
    pss SPLIT_STATUS
    basepower 0
    type TYPE_GRASS
    accuracy 90
    pp 10
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_MAGIC_COAT | FLAG_PROTECT
    appeal APPEAL_LATE_BOOST
    contesttype CONTEST_SMART
    terminatedata
    movedescription MOVE_LEECH_SEED, "A seed is planted on\nthe foe. It steals\nsome HP from the foe\nto heal the user on\nevery turn."

movedata MOVE_GROWTH, "Growth"
    battleeffect MOVE_EFFECT_SP_ATK_UP
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy 0
    pp 20
    effectchance 0
    target RANGE_USER
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_SNATCH
    appeal APPEAL_DOUBLE_NEXT_SCORE
    contesttype CONTEST_BEAUTY
    terminatedata
    movedescription MOVE_GROWTH, "The user’s body is\nforced to grow all at\nonce. It raises the\nSp. Atk stat.\n"

movedata MOVE_RAZOR_LEAF, "Razor Leaf"
    battleeffect MOVE_EFFECT_HIGH_CRITICAL
    pss SPLIT_PHYSICAL
    basepower 55
    type TYPE_GRASS
    accuracy 95
    pp 25
    effectchance 0
    target RANGE_ADJACENT_OPPONENTS
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal APPEAL_BASIC
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_RAZOR_LEAF, "Sharp-edged leaves\nare launched to slash\nat the foe. It has a\nhigh critical-hit\nratio."

movedata MOVE_SOLAR_BEAM, "Solar Beam"
    battleeffect MOVE_EFFECT_CHARGE_TURN_SUN_SKIPS
    pss SPLIT_SPECIAL
    basepower 120
    type TYPE_GRASS
    accuracy 100
    pp 10
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal APPEAL_UNIQUE_JUDGE
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_SOLAR_BEAM, "A two-turn attack.\nThe user gathers\nlight, then blasts a\nbundled beam on the\nsecond turn."

movedata MOVE_POISON_POWDER, "Poison Powder"
    battleeffect MOVE_EFFECT_STATUS_POISON
    pss SPLIT_STATUS
    basepower 0
    type TYPE_POISON
    accuracy 75
    pp 35
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_MAGIC_COAT | FLAG_PROTECT
    appeal APPEAL_KEEP_VOLTAGE_UP
    contesttype CONTEST_SMART
    terminatedata
    movedescription MOVE_POISON_POWDER, "A cloud of poisonous\ndust is scattered on\nthe foe.\nIt may poison the\ntarget."

movedata MOVE_STUN_SPORE, "Stun Spore"
    battleeffect MOVE_EFFECT_STATUS_PARALYZE
    pss SPLIT_STATUS
    basepower 0
    type TYPE_GRASS
    accuracy 75
    pp 30
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_MAGIC_COAT | FLAG_PROTECT
    appeal APPEAL_KEEP_VOLTAGE_UP
    contesttype CONTEST_SMART
    terminatedata
    movedescription MOVE_STUN_SPORE, "The user scatters a\ncloud of paralyzing\npowder.\nIt may paralyze the\ntarget."

movedata MOVE_SLEEP_POWDER, "Sleep Powder"
    battleeffect MOVE_EFFECT_STATUS_SLEEP
    pss SPLIT_STATUS
    basepower 0
    type TYPE_GRASS
    accuracy 75
    pp 15
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_MAGIC_COAT | FLAG_PROTECT
    appeal APPEAL_KEEP_VOLTAGE_UP
    contesttype CONTEST_SMART
    terminatedata
    movedescription MOVE_SLEEP_POWDER, "The user scatters a\nbig cloud of sleep-\ninducing dust around\nthe foe.\n"

movedata MOVE_PETAL_DANCE, "Petal Dance"
    battleeffect MOVE_EFFECT_CONTINUE_AND_CONFUSE_SELF
    pss SPLIT_SPECIAL
    basepower 120
    type TYPE_GRASS
    accuracy 100
    pp 10
    effectchance 0
    target RANGE_RANDOM_OPPONENT
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal APPEAL_LATE_BOOST
    contesttype CONTEST_BEAUTY
    terminatedata
    movedescription MOVE_PETAL_DANCE, "The user attacks by\nscattering petals for\ntwo to three turns.\nThe user then\nbecomes confused."

movedata MOVE_STRING_SHOT, "String Shot"
    battleeffect MOVE_EFFECT_SPEED_DOWN_2
    pss SPLIT_STATUS
    basepower 0
    type TYPE_BUG
    accuracy 95
    pp 40
    effectchance 0
    target RANGE_ADJACENT_OPPONENTS
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_MAGIC_COAT | FLAG_PROTECT
    appeal APPEAL_KEEP_VOLTAGE_UP
    contesttype CONTEST_SMART
    terminatedata
    movedescription MOVE_STRING_SHOT, "The foe is bound with\nsilk blown from the\nuser’s mouth.\nIt reduces the\ntarget’s Speed stat."

movedata MOVE_DRAGON_RAGE, "Dragon Rage"
    battleeffect MOVE_EFFECT_40_DAMAGE_FLAT
    pss SPLIT_SPECIAL
    basepower 1
    type TYPE_DRAGON
    accuracy 100
    pp 10
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9
    appeal APPEAL_BASIC
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_DRAGON_RAGE, "The foe is stricken\nby a shock wave.\nThis attack always\ninflicts 40 HP\ndamage."

movedata MOVE_FIRE_SPIN, "Fire Spin"
    battleeffect MOVE_EFFECT_BIND_HIT
    pss SPLIT_SPECIAL
    basepower 35
    type TYPE_FIRE
    accuracy 85
    pp 15
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal APPEAL_LATE_BOOST
    contesttype CONTEST_BEAUTY
    terminatedata
    movedescription MOVE_FIRE_SPIN, "The foe becomes\ntrapped within a\nfierce vortex of fire\nthat rages for two\nto five turns."

movedata MOVE_THUNDER_SHOCK, "Thunder Shock"
    battleeffect MOVE_EFFECT_PARALYZE_HIT
    pss SPLIT_SPECIAL
    basepower 40
    type TYPE_ELECTRIC
    accuracy 100
    pp 30
    effectchance 10
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal APPEAL_BASIC
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_THUNDER_SHOCK, "A jolt of electricity\nis hurled at the foe\nto inflict damage.\nIt may also leave the\nfoe paralyzed."

movedata MOVE_THUNDERBOLT, "Thunderbolt"
    battleeffect MOVE_EFFECT_PARALYZE_HIT
    pss SPLIT_SPECIAL
    basepower 90
    type TYPE_ELECTRIC
    accuracy 100
    pp 15
    effectchance 10
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal APPEAL_FIRST_HEARTS
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_THUNDERBOLT, "A strong electric\nblast is loosed at\nthe foe.\nIt may also leave the\nfoe paralyzed."

movedata MOVE_THUNDER_WAVE, "Thunder Wave"
    battleeffect MOVE_EFFECT_STATUS_PARALYZE
    pss SPLIT_STATUS
    basepower 0
    type TYPE_ELECTRIC
    accuracy 90
    pp 20
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_MAGIC_COAT | FLAG_PROTECT
    appeal APPEAL_KEEP_VOLTAGE_UP
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_THUNDER_WAVE, "A weak electric\ncharge is launched at\nthe foe.\nIt causes paralysis if\nit hits."

movedata MOVE_THUNDER, "Thunder"
    battleeffect MOVE_EFFECT_THUNDER // accuracy in rain & sun handled in other_battle_calculators.c
    pss SPLIT_SPECIAL
    basepower 110
    type TYPE_ELECTRIC
    accuracy 70
    pp 10
    effectchance 30
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_HIDE_SHADOW | FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal APPEAL_FIRST_HEARTS
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_THUNDER, "A wicked thunderbolt\nis dropped on the foe\nto inflict damage.\nIt may also leave the\ntarget paralyzed."

movedata MOVE_ROCK_THROW, "Rock Throw"
    battleeffect MOVE_EFFECT_HIT
    pss SPLIT_PHYSICAL
    basepower 50
    type TYPE_ROCK
    accuracy 90
    pp 15
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal APPEAL_BASIC
    contesttype CONTEST_TOUGH
    terminatedata
    movedescription MOVE_ROCK_THROW, "The user picks up\nand throws a small\nrock at the foe to\nattack.\n"

movedata MOVE_EARTHQUAKE, "Earthquake"
    battleeffect MOVE_EFFECT_DOUBLE_DAMAGE_DIG
    pss SPLIT_PHYSICAL
    basepower 100
    type TYPE_GROUND
    accuracy 100
    pp 10
    effectchance 0
    target RANGE_ALL_ADJACENT
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal APPEAL_LAST_HEARTS
    contesttype CONTEST_TOUGH
    terminatedata
    movedescription MOVE_EARTHQUAKE, "The user sets off an\nearthquake that hits\nall the Pokémon in\nthe battle.\n"

movedata MOVE_FISSURE, "Fissure"
    battleeffect MOVE_EFFECT_ONE_HIT_KO
    pss SPLIT_PHYSICAL
    basepower 1
    type TYPE_GROUND
    accuracy 30
    pp 5
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_HIDE_SHADOW | FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal APPEAL_ALL_SAME_JUDGE
    contesttype CONTEST_TOUGH
    terminatedata
    movedescription MOVE_FISSURE, "The user opens up a\nfissure in the ground\nand drops the foe in.\nThe target instantly\nfaints if it hits."

movedata MOVE_DIG, "Dig"
    battleeffect MOVE_EFFECT_DIG
    pss SPLIT_PHYSICAL
    basepower 80
    type TYPE_GROUND
    accuracy 100
    pp 10
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal APPEAL_UNIQUE_JUDGE
    contesttype CONTEST_SMART
    terminatedata
    movedescription MOVE_DIG, "The user burrows,\nthen attacks on the\nsecond turn.\nIt can also be used\nto exit dungeons."

movedata MOVE_TOXIC, "Toxic"
    battleeffect MOVE_EFFECT_STATUS_BADLY_POISON
    pss SPLIT_STATUS
    basepower 0
    type TYPE_POISON
    accuracy 90
    pp 10
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_MAGIC_COAT | FLAG_PROTECT
    appeal APPEAL_KEEP_VOLTAGE_UP
    contesttype CONTEST_SMART
    terminatedata
    movedescription MOVE_TOXIC, "A move that leaves\nthe target badly\npoisoned.\nIts poison damage\nworsens every turn."

movedata MOVE_CONFUSION, "Confusion"
    battleeffect MOVE_EFFECT_CONFUSE_HIT
    pss SPLIT_SPECIAL
    basepower 50
    type TYPE_PSYCHIC
    accuracy 100
    pp 25
    effectchance 10
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal APPEAL_BASIC
    contesttype CONTEST_SMART
    terminatedata
    movedescription MOVE_CONFUSION, "The foe is hit by a\nweak telekinetic\nforce. It may also\nleave the foe\nconfused."

movedata MOVE_PSYCHIC, "Psychic"
    battleeffect MOVE_EFFECT_LOWER_SP_DEF_HIT
    pss SPLIT_SPECIAL
    basepower 90
    type TYPE_PSYCHIC
    accuracy 100
    pp 10
    effectchance 10
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal APPEAL_FIRST_HEARTS
    contesttype CONTEST_SMART
    terminatedata
    movedescription MOVE_PSYCHIC, "The foe is hit by a\nstrong telekinetic\nforce. It may also\nreduce the foe’s\nSp. Def stat."

movedata MOVE_HYPNOSIS, "Hypnosis"
    battleeffect MOVE_EFFECT_STATUS_SLEEP
    pss SPLIT_STATUS
    basepower 0
    type TYPE_PSYCHIC
    accuracy 60
    pp 20
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_MAGIC_COAT | FLAG_PROTECT
    appeal APPEAL_KEEP_VOLTAGE_UP
    contesttype CONTEST_SMART
    terminatedata
    movedescription MOVE_HYPNOSIS, "The user employs\nhypnotic suggestion\nto make the target\nfall into a deep\nsleep."

movedata MOVE_MEDITATE, "Meditate"
    battleeffect MOVE_EFFECT_ATK_UP
    pss SPLIT_STATUS
    basepower 0
    type TYPE_PSYCHIC
    accuracy 0
    pp 40
    effectchance 0
    target RANGE_USER
    priority 0
    flags FLAG_SNATCH | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9
    appeal APPEAL_DOUBLE_NEXT_SCORE
    contesttype CONTEST_BEAUTY
    terminatedata
    movedescription MOVE_MEDITATE, "The user meditates\nto awaken the power\ndeep within its body\nand raise its Attack\nstat."

movedata MOVE_AGILITY, "Agility"
    battleeffect MOVE_EFFECT_SPEED_UP_2
    pss SPLIT_STATUS
    basepower 0
    type TYPE_PSYCHIC
    accuracy 0
    pp 30
    effectchance 0
    target RANGE_USER
    priority 0
    flags FLAG_HIDE_SHADOW | FLAG_SNATCH
    appeal APPEAL_FIRST_NEXT_TURN
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_AGILITY, "The user relaxes and\nlightens its body to\nmove faster.\nIt sharply boosts\nthe Speed stat."

movedata MOVE_QUICK_ATTACK, "Quick Attack"
    battleeffect MOVE_EFFECT_PRIORITY_1
    pss SPLIT_PHYSICAL
    basepower 40
    type TYPE_NORMAL
    accuracy 100
    pp 30
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 1
    flags FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal APPEAL_FIRST_NEXT_TURN
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_QUICK_ATTACK, "The user lunges at\nthe foe at a speed\nthat makes it almost\ninvisible. It is sure\nto strike first."

movedata MOVE_RAGE, "Rage"
    battleeffect MOVE_EFFECT_RAISE_ATK_WHEN_HIT
    pss SPLIT_PHYSICAL
    basepower 20
    type TYPE_NORMAL
    accuracy 100
    pp 20
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9
    appeal APPEAL_DOUBLE_NEXT_SCORE
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_RAGE, "While this move is in\nuse, it gains attack\npower each time the\nuser is hit in battle.\n"

movedata MOVE_TELEPORT, "Teleport"
    battleeffect MOVE_EFFECT_FLEE_FROM_WILD_BATTLE
    pss SPLIT_STATUS
    basepower 0
    type TYPE_PSYCHIC
    accuracy 0
    pp 20
    effectchance 0
    target RANGE_USER
    priority -6
    flags 0
    appeal APPEAL_FIRST_NEXT_TURN
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_TELEPORT, "Use it to flee from\nany wild Pokémon.\nIt can also warp to\nthe last Pokémon\nCenter visited."

movedata MOVE_NIGHT_SHADE, "Night Shade"
    battleeffect MOVE_EFFECT_LEVEL_DAMAGE_FLAT
    pss SPLIT_SPECIAL
    basepower 1
    type TYPE_GHOST
    accuracy 100
    pp 15
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal APPEAL_BASIC
    contesttype CONTEST_SMART
    terminatedata
    movedescription MOVE_NIGHT_SHADE, "The user makes the\nfoe see a mirage.\nIt inflicts damage\nmatching the user’s\nlevel."

movedata MOVE_MIMIC, "Mimic"
    battleeffect MOVE_EFFECT_COPY_MOVE_FOR_BATTLE
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy 0
    pp 10
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_PROTECT
    appeal APPEAL_STEAL_VOLTAGE
    contesttype CONTEST_CUTE
    terminatedata
    movedescription MOVE_MIMIC, "The user copies the\nmove last used by\nthe foe. The move can\nbe used for the rest\nof the battle."

movedata MOVE_SCREECH, "Screech"
    battleeffect MOVE_EFFECT_DEF_DOWN_2
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy 85
    pp 40
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_MAGIC_COAT | FLAG_PROTECT
    appeal APPEAL_LOWER_VOLTAGES
    contesttype CONTEST_SMART
    terminatedata
    movedescription MOVE_SCREECH, "An earsplitting\nscreech is emitted to\nsharply reduce the\nfoe’s Defense stat.\n"

movedata MOVE_DOUBLE_TEAM, "Double Team"
    battleeffect MOVE_EFFECT_EVA_UP
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy 0
    pp 15
    effectchance 0
    target RANGE_USER
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_SNATCH
    appeal APPEAL_FIRST_NEXT_TURN
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_DOUBLE_TEAM, "By moving rapidly, the\nuser makes illusory\ncopies of itself to\nraise its evasiveness.\n"

movedata MOVE_RECOVER, "Recover"
    battleeffect MOVE_EFFECT_RESTORE_HALF_HP
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy 0
    pp 5
    effectchance 0
    target RANGE_USER
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_SNATCH
    appeal APPEAL_SUCCESSIVE
    contesttype CONTEST_SMART
    terminatedata
    movedescription MOVE_RECOVER, "A self-healing move.\nThe user restores its\nown HP by up to half\nof its max HP.\n"

movedata MOVE_HARDEN, "Harden"
    battleeffect MOVE_EFFECT_DEF_UP
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy 0
    pp 30
    effectchance 0
    target RANGE_USER
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_SNATCH
    appeal APPEAL_KEEP_VOLTAGE_DOWN
    contesttype CONTEST_TOUGH
    terminatedata
    movedescription MOVE_HARDEN, "The user stiffens all\nthe muscles in its\nbody to raise its\nDefense stat.\n"

movedata MOVE_MINIMIZE, "Minimize"
    battleeffect MOVE_EFFECT_EVA_UP_2_MINIMIZE
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy 0
    pp 10
    effectchance 0
    target RANGE_USER
    priority 0
    flags FLAG_SNATCH
    appeal APPEAL_KEEP_VOLTAGE_DOWN
    contesttype CONTEST_CUTE
    terminatedata
    movedescription MOVE_MINIMIZE, "The user compresses\nits body to make\nitself look smaller.\nThe user’s evasion\nstat is boosted."

movedata MOVE_SMOKESCREEN, "Smokescreen"
    battleeffect MOVE_EFFECT_ACC_DOWN
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy 100
    pp 20
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_MAGIC_COAT | FLAG_PROTECT
    appeal APPEAL_LOWER_VOLTAGES
    contesttype CONTEST_SMART
    terminatedata
    movedescription MOVE_SMOKESCREEN, "The user releases an\nobscuring cloud of\nsmoke or ink.\nIt reduces the foe’s\naccuracy."

movedata MOVE_CONFUSE_RAY, "Confuse Ray"
    battleeffect MOVE_EFFECT_STATUS_CONFUSE
    pss SPLIT_STATUS
    basepower 0
    type TYPE_GHOST
    accuracy 100
    pp 10
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_MAGIC_COAT | FLAG_PROTECT
    appeal APPEAL_LOWER_VOLTAGES
    contesttype CONTEST_SMART
    terminatedata
    movedescription MOVE_CONFUSE_RAY, "The foe is exposed\nto a sinister ray\nthat triggers\nconfusion.\n"

movedata MOVE_WITHDRAW, "Withdraw"
    battleeffect MOVE_EFFECT_DEF_UP
    pss SPLIT_STATUS
    basepower 0
    type TYPE_WATER
    accuracy 0
    pp 40
    effectchance 0
    target RANGE_USER
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_SNATCH
    appeal APPEAL_KEEP_VOLTAGE_DOWN
    contesttype CONTEST_CUTE
    terminatedata
    movedescription MOVE_WITHDRAW, "The user withdraws\nits body into its hard\nshell, raising its\nDefense stat.\n"

movedata MOVE_DEFENSE_CURL, "Defense Curl"
    battleeffect MOVE_EFFECT_DEF_UP_DOUBLE_ROLLOUT_POWER
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy 0
    pp 40
    effectchance 0
    target RANGE_USER
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_SNATCH
    appeal APPEAL_KEEP_VOLTAGE_DOWN
    contesttype CONTEST_CUTE
    terminatedata
    movedescription MOVE_DEFENSE_CURL, "The user curls up to\nconceal weak spots\nand raise its Defense\nstat.\n"

movedata MOVE_BARRIER, "Barrier"
    battleeffect MOVE_EFFECT_DEF_UP_2
    pss SPLIT_STATUS
    basepower 0
    type TYPE_PSYCHIC
    accuracy 0
    pp 20
    effectchance 0
    target RANGE_USER
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_SNATCH | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9
    appeal APPEAL_KEEP_VOLTAGE_DOWN
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_BARRIER, "The user throws up a\nsturdy wall that\nsharply raises its\nDefense stat.\n"

movedata MOVE_LIGHT_SCREEN, "Light Screen"
    battleeffect MOVE_EFFECT_SET_LIGHT_SCREEN
    pss SPLIT_STATUS
    basepower 0
    type TYPE_PSYCHIC
    accuracy 0
    pp 30
    effectchance 0
    target RANGE_USER_SIDE
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_SNATCH
    appeal APPEAL_KEEP_VOLTAGE_DOWN
    contesttype CONTEST_BEAUTY
    terminatedata
    movedescription MOVE_LIGHT_SCREEN, "A wondrous wall of\nlight is put up to\nsuppress damage from\nspecial attacks for\nfive turns."

movedata MOVE_HAZE, "Haze"
    battleeffect MOVE_EFFECT_RESET_STAT_CHANGES
    pss SPLIT_STATUS
    basepower 0
    type TYPE_ICE
    accuracy 0
    pp 30
    effectchance 0
    target RANGE_FIELD
    priority 0
    flags 0
    appeal APPEAL_KEEP_VOLTAGE_DOWN
    contesttype CONTEST_BEAUTY
    terminatedata
    movedescription MOVE_HAZE, "The user creates a\nhaze that eliminates\nevery stat change\namong all the Pokémon\nengaged in battle."

movedata MOVE_REFLECT, "Reflect"
    battleeffect MOVE_EFFECT_SET_REFLECT
    pss SPLIT_STATUS
    basepower 0
    type TYPE_PSYCHIC
    accuracy 0
    pp 20
    effectchance 0
    target RANGE_USER_SIDE
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_SNATCH
    appeal APPEAL_KEEP_VOLTAGE_DOWN
    contesttype CONTEST_SMART
    terminatedata
    movedescription MOVE_REFLECT, "A wondrous wall of\nlight is put up to\nsuppress damage from\nphysical attacks for\nfive turns."

movedata MOVE_FOCUS_ENERGY, "Focus Energy"
    battleeffect MOVE_EFFECT_CRIT_UP_2
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy 0
    pp 30
    effectchance 0
    target RANGE_USER
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_SNATCH
    appeal APPEAL_DOUBLE_NEXT_SCORE
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_FOCUS_ENERGY, "The user takes a\ndeep breath and\nfocuses to raise the\ncritical-hit ratio of\nits attacks."

movedata MOVE_BIDE, "Bide"
    battleeffect MOVE_EFFECT_BIDE
    pss SPLIT_PHYSICAL
    basepower 1
    type TYPE_NORMAL
    accuracy 0
    pp 10
    effectchance 0
    target RANGE_USER
    priority 1
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_CONTACT | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9
    appeal APPEAL_DOUBLE_ON_FINALE
    contesttype CONTEST_TOUGH
    terminatedata
    movedescription MOVE_BIDE, "The user endures\nattacks for two\nturns, then strikes\nback to cause double\nthe damage taken."

movedata MOVE_METRONOME, "Metronome"
    battleeffect MOVE_EFFECT_CALL_RANDOM_MOVE
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy 0
    pp 10
    effectchance 0
    target RANGE_SINGLE_TARGET_SPECIAL
    priority 0
    flags FLAG_KEEP_HP_BAR
    appeal APPEAL_RANDOMIZE_NEXT_TURN
    contesttype CONTEST_CUTE
    terminatedata
    movedescription MOVE_METRONOME, "The user waggles a\nfinger and stimulates\nthe brain into\nrandomly using nearly\nany move."

movedata MOVE_MIRROR_MOVE, "Mirror Move"
    battleeffect MOVE_EFFECT_COPY_MOVE
    pss SPLIT_STATUS
    basepower 0
    type TYPE_FLYING
    accuracy 0
    pp 20
    effectchance 0
    target RANGE_SINGLE_TARGET_SPECIAL
    priority 0
    flags FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9
    appeal APPEAL_DOUBLE_ON_FINALE
    contesttype CONTEST_SMART
    terminatedata
    movedescription MOVE_MIRROR_MOVE, "The user counters\nthe foe by mimicking\nthe move last used\nby the foe."

movedata MOVE_SELF_DESTRUCT, "Self-Destruct"
    battleeffect MOVE_EFFECT_HALVE_DEFENSE
    pss SPLIT_PHYSICAL
    basepower 200
    type TYPE_NORMAL
    accuracy 100
    pp 5
    effectchance 0
    target RANGE_ALL_ADJACENT
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal APPEAL_ALL_SAME_JUDGE
    contesttype CONTEST_BEAUTY
    terminatedata
    movedescription MOVE_SELF_DESTRUCT, "The user blows up to\ninflict damage on all\nPokémon in battle.\nThe user faints upon\nusing this move."

movedata MOVE_EGG_BOMB, "Egg Bomb"
    battleeffect MOVE_EFFECT_HIT
    pss SPLIT_PHYSICAL
    basepower 100
    type TYPE_NORMAL
    accuracy 75
    pp 10
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9
    appeal APPEAL_BASIC
    contesttype CONTEST_TOUGH
    terminatedata
    movedescription MOVE_EGG_BOMB, "A large egg is hurled\nwith maximum force at\nthe foe to inflict\ndamage.\n"

movedata MOVE_LICK, "Lick"
    battleeffect MOVE_EFFECT_PARALYZE_HIT
    pss SPLIT_PHYSICAL
    basepower 30
    type TYPE_GHOST
    accuracy 100
    pp 30
    effectchance 30
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal APPEAL_LOW_VOLTAGE_BOOST
    contesttype CONTEST_TOUGH
    terminatedata
    movedescription MOVE_LICK, "The foe is licked with\na long tongue, causing\ndamage.\nIt may also paralyze\nthe target."

movedata MOVE_SMOG, "Smog"
    battleeffect MOVE_EFFECT_POISON_HIT
    pss SPLIT_SPECIAL
    basepower 30
    type TYPE_POISON
    accuracy 70
    pp 20
    effectchance 40
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal APPEAL_BASIC
    contesttype CONTEST_TOUGH
    terminatedata
    movedescription MOVE_SMOG, "The foe is attacked\nwith a discharge of\nfilthy gases.\nIt may also poison\nthe target."

movedata MOVE_SLUDGE, "Sludge"
    battleeffect MOVE_EFFECT_POISON_HIT
    pss SPLIT_SPECIAL
    basepower 65
    type TYPE_POISON
    accuracy 100
    pp 20
    effectchance 30
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal APPEAL_LAST_HEARTS
    contesttype CONTEST_TOUGH
    terminatedata
    movedescription MOVE_SLUDGE, "Unsanitary sludge is\nhurled at the foe.\nIt may also poison\nthe target.\n"

movedata MOVE_BONE_CLUB, "Bone Club"
    battleeffect MOVE_EFFECT_FLINCH_HIT
    pss SPLIT_PHYSICAL
    basepower 65
    type TYPE_GROUND
    accuracy 85
    pp 20
    effectchance 10
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9
    appeal APPEAL_BASIC
    contesttype CONTEST_TOUGH
    terminatedata
    movedescription MOVE_BONE_CLUB, "The user clubs the\nfoe with a bone.\nIt may also make the\ntarget flinch.\n"

movedata MOVE_FIRE_BLAST, "Fire Blast"
    battleeffect MOVE_EFFECT_BURN_HIT
    pss SPLIT_SPECIAL
    basepower 110
    type TYPE_FIRE
    accuracy 85
    pp 5
    effectchance 10
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_HIDE_SHADOW | FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal APPEAL_FIRST_HEARTS
    contesttype CONTEST_BEAUTY
    terminatedata
    movedescription MOVE_FIRE_BLAST, "The foe is attacked\nwith an intense blast\nof all-consuming fire.\nIt may also leave the\ntarget with a burn."

movedata MOVE_WATERFALL, "Waterfall"
    battleeffect MOVE_EFFECT_FLINCH_HIT
    pss SPLIT_PHYSICAL
    basepower 80
    type TYPE_WATER
    accuracy 100
    pp 15
    effectchance 20
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_HIDE_SHADOW | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal APPEAL_BASIC
    contesttype CONTEST_TOUGH
    terminatedata
    movedescription MOVE_WATERFALL, "The user charges at\nthe foe rapidly, and\nmay make it flinch.\nIt can also be used\nto climb a waterfall."

movedata MOVE_CLAMP, "Clamp"
    battleeffect MOVE_EFFECT_BIND_HIT
    pss SPLIT_PHYSICAL
    basepower 35
    type TYPE_WATER
    accuracy 85
    pp 15
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9
    appeal APPEAL_BASIC
    contesttype CONTEST_TOUGH
    terminatedata
    movedescription MOVE_CLAMP, "The foe is clamped\nand squeezed by\nthe user’s very thick\nand sturdy shell for\ntwo to five turns."

movedata MOVE_SWIFT, "Swift"
    battleeffect MOVE_EFFECT_BYPASS_ACCURACY
    pss SPLIT_SPECIAL
    basepower 60
    type TYPE_NORMAL
    accuracy 0
    pp 20
    effectchance 0
    target RANGE_ADJACENT_OPPONENTS
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal APPEAL_FIRST_HEARTS
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_SWIFT, "Star-shaped rays are\nshot at the foe.\nThis attack never\nmisses.\n"

movedata MOVE_SKULL_BASH, "Skull Bash"
    battleeffect MOVE_EFFECT_CHARGE_TURN_DEF_UP
    pss SPLIT_PHYSICAL
    basepower 130
    type TYPE_NORMAL
    accuracy 100
    pp 10
    effectchance 100
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT | FLAG_UNUSABLE_IN_GEN_9
    appeal APPEAL_UNIQUE_JUDGE
    contesttype CONTEST_TOUGH
    terminatedata
    movedescription MOVE_SKULL_BASH, "The user tucks in its\nhead to raise its\nDefense in the first\nturn, then rams the\nfoe on the next turn."

movedata MOVE_SPIKE_CANNON, "Spike Cannon"
    battleeffect MOVE_EFFECT_MULTI_HIT
    pss SPLIT_PHYSICAL
    basepower 20
    type TYPE_NORMAL
    accuracy 100
    pp 15
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9
    appeal APPEAL_SUCCESSIVE
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_SPIKE_CANNON, "Sharp spikes are\nfired at the foe to\nstrike two to five\ntimes in rapid\nsuccession."

movedata MOVE_CONSTRICT, "Constrict"
    battleeffect MOVE_EFFECT_LOWER_SPEED_HIT
    pss SPLIT_PHYSICAL
    basepower 10
    type TYPE_NORMAL
    accuracy 100
    pp 35
    effectchance 10
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9
    appeal APPEAL_LATE_BOOST
    contesttype CONTEST_TOUGH
    terminatedata
    movedescription MOVE_CONSTRICT, "The foe is attacked\nwith long, creeping\ntentacles or vines.\nIt may also lower the\ntarget’s Speed."

movedata MOVE_AMNESIA, "Amnesia"
    battleeffect MOVE_EFFECT_SP_DEF_UP_2
    pss SPLIT_STATUS
    basepower 0
    type TYPE_PSYCHIC
    accuracy 0
    pp 20
    effectchance 0
    target RANGE_USER
    priority 0
    flags FLAG_SNATCH
    appeal APPEAL_DOUBLE_NEXT_SCORE
    contesttype CONTEST_CUTE
    terminatedata
    movedescription MOVE_AMNESIA, "The user temporarily\nempties its mind to\nforget its concerns.\nIt sharply raises the\nuser’s Sp. Def stat."

movedata MOVE_KINESIS, "Kinesis"
    battleeffect MOVE_EFFECT_ACC_DOWN
    pss SPLIT_STATUS
    basepower 0
    type TYPE_PSYCHIC
    accuracy 80
    pp 15
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_MAGIC_COAT | FLAG_PROTECT | FLAG_UNUSABLE_IN_GEN_9
    appeal APPEAL_DOUBLE_NEXT_SCORE
    contesttype CONTEST_SMART
    terminatedata
    movedescription MOVE_KINESIS, "The user distracts\nthe foe by bending a\nspoon.\nIt may lower the\ntarget’s accuracy."

movedata MOVE_SOFT_BOILED, "Soft-Boiled"
    battleeffect MOVE_EFFECT_RESTORE_HALF_HP
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy 0
    pp 5
    effectchance 0
    target RANGE_USER
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_SNATCH
    appeal APPEAL_SUCCESSIVE
    contesttype CONTEST_BEAUTY
    terminatedata
    movedescription MOVE_SOFT_BOILED, "The user restores its\nown HP by up to half\nof its maximum HP.\nIt may also be used\nto heal an ally’s HP."

movedata MOVE_HIGH_JUMP_KICK, "High Jump Kick"
    battleeffect MOVE_EFFECT_CRASH_ON_MISS
    pss SPLIT_PHYSICAL
    basepower 130
    type TYPE_FIGHTING
    accuracy 90
    pp 10
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal APPEAL_BASIC
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_HIGH_JUMP_KICK, "The foe is attacked\nwith a knee kick from\na jump. If it misses,\nthe user is hurt\ninstead."

movedata MOVE_GLARE, "Glare"
    battleeffect MOVE_EFFECT_STATUS_PARALYZE
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy 100
    pp 30
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_MAGIC_COAT | FLAG_PROTECT
    appeal APPEAL_KEEP_VOLTAGE_UP
    contesttype CONTEST_TOUGH
    terminatedata
    movedescription MOVE_GLARE, "The user intimidates\nthe foe with the\npattern on its belly\nto cause paralysis.\n"

movedata MOVE_DREAM_EATER, "Dream Eater"
    battleeffect MOVE_EFFECT_RECOVER_DAMAGE_SLEEP
    pss SPLIT_SPECIAL
    basepower 100
    type TYPE_PSYCHIC
    accuracy 100
    pp 15
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal APPEAL_VOLTAGE_CHAIN_HEARTS
    contesttype CONTEST_SMART
    terminatedata
    movedescription MOVE_DREAM_EATER, "An attack that works\nonly on a sleeping\nfoe. It absorbs half\nthe damage caused to\nheal the user’s HP."

movedata MOVE_POISON_GAS, "Poison Gas"
    battleeffect MOVE_EFFECT_STATUS_POISON
    pss SPLIT_STATUS
    basepower 0
    type TYPE_POISON
    accuracy 90
    pp 40
    effectchance 0
    target RANGE_ADJACENT_OPPONENTS
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_MAGIC_COAT | FLAG_PROTECT
    appeal APPEAL_BASIC
    contesttype CONTEST_SMART
    terminatedata
    movedescription MOVE_POISON_GAS, "A cloud of poison gas\nis sprayed in the\nfoe’s face.\nIt may poison the\ntarget."

movedata MOVE_BARRAGE, "Barrage"
    battleeffect MOVE_EFFECT_MULTI_HIT
    pss SPLIT_PHYSICAL
    basepower 15
    type TYPE_NORMAL
    accuracy 85
    pp 20
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9
    appeal APPEAL_SUCCESSIVE
    contesttype CONTEST_TOUGH
    terminatedata
    movedescription MOVE_BARRAGE, "Round objects are\nhurled at the foe to\nstrike two to five\ntimes in a row.\n"

movedata MOVE_LEECH_LIFE, "Leech Life"
    battleeffect MOVE_EFFECT_RECOVER_HALF_DAMAGE_DEALT
    pss SPLIT_PHYSICAL
    basepower 80
    type TYPE_BUG
    accuracy 100
    pp 10
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal APPEAL_VOLTAGE_CHAIN_HEARTS
    contesttype CONTEST_SMART
    terminatedata
    movedescription MOVE_LEECH_LIFE, "A blood-draining\nattack. The user’s\nHP is restored by\nhalf the damage taken\nby the target."

movedata MOVE_LOVELY_KISS, "Lovely Kiss"
    battleeffect MOVE_EFFECT_STATUS_SLEEP
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy 75
    pp 10
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_MAGIC_COAT | FLAG_PROTECT
    appeal APPEAL_KEEP_VOLTAGE_UP
    contesttype CONTEST_BEAUTY
    terminatedata
    movedescription MOVE_LOVELY_KISS, "With a scary face, the\nuser tries to force a\nkiss on the foe. If it\nsucceeds, the target\nfalls asleep."

movedata MOVE_SKY_ATTACK, "Sky Attack"
    battleeffect MOVE_EFFECT_CHARGE_TURN_HIGH_CRIT_FLINCH
    pss SPLIT_PHYSICAL
    basepower 140
    type TYPE_FLYING
    accuracy 90
    pp 5
    effectchance 30
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal APPEAL_UNIQUE_JUDGE
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_SKY_ATTACK, "A second-turn attack\nmove with a high\ncritical-hit ratio.\nIt may also make the\ntarget flinch."

movedata MOVE_TRANSFORM, "Transform"
    battleeffect MOVE_EFFECT_TRANSFORM
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy 0
    pp 10
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR
    appeal APPEAL_PITY_HEARTS
    contesttype CONTEST_SMART
    terminatedata
    movedescription MOVE_TRANSFORM, "The user transforms\ninto a copy of the\nfoe right down to\nhaving the same move\nset."

movedata MOVE_BUBBLE, "Bubble"
    battleeffect MOVE_EFFECT_LOWER_SPEED_HIT
    pss SPLIT_SPECIAL
    basepower 20
    type TYPE_WATER
    accuracy 100
    pp 30
    effectchance 10
    target RANGE_ADJACENT_OPPONENTS
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9
    appeal APPEAL_LAST_NEXT_TURN
    contesttype CONTEST_CUTE
    terminatedata
    movedescription MOVE_BUBBLE, "A spray of countless\nbubbles is jetted at\nthe foe.\nIt may also lower the\ntarget’s Speed stat."

movedata MOVE_DIZZY_PUNCH, "Dizzy Punch"
    battleeffect MOVE_EFFECT_CONFUSE_HIT
    pss SPLIT_PHYSICAL
    basepower 70
    type TYPE_NORMAL
    accuracy 100
    pp 10
    effectchance 20
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9
    appeal APPEAL_LOW_VOLTAGE_BOOST
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_DIZZY_PUNCH, "The foe is hit with\nrhythmically launched\npunches that may also\nleave it confused.\n"

movedata MOVE_SPORE, "Spore"
    battleeffect MOVE_EFFECT_STATUS_SLEEP
    pss SPLIT_STATUS
    basepower 0
    type TYPE_GRASS
    accuracy 100
    pp 15
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_MAGIC_COAT | FLAG_PROTECT
    appeal APPEAL_LOWER_VOLTAGES
    contesttype CONTEST_BEAUTY
    terminatedata
    movedescription MOVE_SPORE, "The user scatters\nbursts of spores\nthat induce sleep.\n\n"

movedata MOVE_FLASH, "Flash"
    battleeffect MOVE_EFFECT_ACC_DOWN
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy 100
    pp 20
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_HIDE_SHADOW | FLAG_MIRROR_MOVE | FLAG_MAGIC_COAT | FLAG_PROTECT | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9
    appeal APPEAL_LOWER_VOLTAGES
    contesttype CONTEST_BEAUTY
    terminatedata
    movedescription MOVE_FLASH, "The user flashes a\nlight that cuts the\nfoe’s accuracy.\nIt can also be used\nto illuminate caves."

movedata MOVE_PSYWAVE, "Psywave"
    battleeffect MOVE_EFFECT_RANDOM_DAMAGE_1_TO_150_LEVEL
    pss SPLIT_SPECIAL
    basepower 1
    type TYPE_PSYCHIC
    accuracy 100
    pp 15
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9
    appeal APPEAL_BASIC
    contesttype CONTEST_SMART
    terminatedata
    movedescription MOVE_PSYWAVE, "The foe is attacked\nwith an odd, hot\nenergy wave.\nThe attack varies in\nintensity."

movedata MOVE_SPLASH, "Splash"
    battleeffect MOVE_EFFECT_DO_NOTHING
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy 0
    pp 40
    effectchance 0
    target RANGE_USER
    priority 0
    flags FLAG_KEEP_HP_BAR
    appeal APPEAL_LOW_VOLTAGE_BOOST
    contesttype CONTEST_CUTE
    terminatedata
    movedescription MOVE_SPLASH, "The user just flops\nand splashes around\nto no effect at all...\n\n"

movedata MOVE_ACID_ARMOR, "Acid Armor"
    battleeffect MOVE_EFFECT_DEF_UP_2
    pss SPLIT_STATUS
    basepower 0
    type TYPE_POISON
    accuracy 0
    pp 20
    effectchance 0
    target RANGE_USER
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_SNATCH
    appeal APPEAL_DOUBLE_NEXT_SCORE
    contesttype CONTEST_TOUGH
    terminatedata
    movedescription MOVE_ACID_ARMOR, "The user alters its\ncellular structure to\nliquefy itself,\nsharply raising its\nDefense stat."

movedata MOVE_CRABHAMMER, "Crabhammer"
    battleeffect MOVE_EFFECT_HIGH_CRITICAL
    pss SPLIT_PHYSICAL
    basepower 100
    type TYPE_WATER
    accuracy 90
    pp 10
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal APPEAL_LAST_HEARTS
    contesttype CONTEST_TOUGH
    terminatedata
    movedescription MOVE_CRABHAMMER, "The foe is hammered\nwith a large pincer.\nThis move has a high\ncritical-hit ratio.\n"

movedata MOVE_EXPLOSION, "Explosion"
    battleeffect MOVE_EFFECT_HALVE_DEFENSE
    pss SPLIT_PHYSICAL
    basepower 250
    type TYPE_NORMAL
    accuracy 100
    pp 5
    effectchance 0
    target RANGE_ALL_ADJACENT
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal APPEAL_ALL_SAME_JUDGE
    contesttype CONTEST_BEAUTY
    terminatedata
    movedescription MOVE_EXPLOSION, "The user explodes to\ninflict damage on all\nPokémon in battle.\nThe user faints upon\nusing this move."

movedata MOVE_FURY_SWIPES, "Fury Swipes"
    battleeffect MOVE_EFFECT_MULTI_HIT
    pss SPLIT_PHYSICAL
    basepower 18
    type TYPE_NORMAL
    accuracy 80
    pp 15
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal APPEAL_SUCCESSIVE
    contesttype CONTEST_TOUGH
    terminatedata
    movedescription MOVE_FURY_SWIPES, "The foe is raked with\nsharp claws or\nscythes for two to\nfive times in quick\nsuccession."

movedata MOVE_BONEMERANG, "Bonemerang"
    battleeffect MOVE_EFFECT_HIT_TWICE
    pss SPLIT_PHYSICAL
    basepower 50
    type TYPE_GROUND
    accuracy 90
    pp 10
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal APPEAL_SUCCESSIVE
    contesttype CONTEST_TOUGH
    terminatedata
    movedescription MOVE_BONEMERANG, "The user throws the\nbone it holds. The\nbone loops to hit the\nfoe twice, coming and\ngoing."

movedata MOVE_REST, "Rest"
    battleeffect MOVE_EFFECT_RECOVER_HEALTH_AND_SLEEP
    pss SPLIT_STATUS
    basepower 0
    type TYPE_PSYCHIC
    accuracy 0
    pp 5
    effectchance 0
    target RANGE_USER
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_SNATCH
    appeal APPEAL_SUCCESSIVE
    contesttype CONTEST_CUTE
    terminatedata
    movedescription MOVE_REST, "The user goes to\nsleep for two turns.\nIt fully restores the\nuser’s HP and heals\nany status problem."

movedata MOVE_ROCK_SLIDE, "Rock Slide"
    battleeffect MOVE_EFFECT_FLINCH_HIT
    pss SPLIT_PHYSICAL
    basepower 75
    type TYPE_ROCK
    accuracy 90
    pp 10
    effectchance 30
    target RANGE_ADJACENT_OPPONENTS
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal APPEAL_BASIC
    contesttype CONTEST_TOUGH
    terminatedata
    movedescription MOVE_ROCK_SLIDE, "Large boulders are\nhurled at the foe to\ninflict damage.\nIt may also make the\ntarget flinch."

movedata MOVE_HYPER_FANG, "Hyper Fang"
    battleeffect MOVE_EFFECT_FLINCH_HIT
    pss SPLIT_PHYSICAL
    basepower 80
    type TYPE_NORMAL
    accuracy 90
    pp 15
    effectchance 10
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9
    appeal APPEAL_LAST_HEARTS
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_HYPER_FANG, "The user bites hard\non the foe with its\nsharp front fangs.\nIt may also make the\ntarget flinch."

movedata MOVE_SHARPEN, "Sharpen"
    battleeffect MOVE_EFFECT_ATK_UP
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy 0
    pp 30
    effectchance 0
    target RANGE_USER
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_SNATCH | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9
    appeal APPEAL_DOUBLE_NEXT_SCORE
    contesttype CONTEST_CUTE
    terminatedata
    movedescription MOVE_SHARPEN, "The user reduces its\npolygon count to\nmake itself more\njagged, raising the\nAttack stat."

movedata MOVE_CONVERSION, "Conversion"
    battleeffect MOVE_EFFECT_CONVERSION
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy 0
    pp 30
    effectchance 0
    target RANGE_USER
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_SNATCH
    appeal APPEAL_PITY_HEARTS
    contesttype CONTEST_BEAUTY
    terminatedata
    movedescription MOVE_CONVERSION, "The user changes its\ntype to become the\nsame type as one of\nits moves.\n"

movedata MOVE_TRI_ATTACK, "Tri Attack"
    battleeffect MOVE_EFFECT_RANDOM_PRIMARY_STATUS_HIT
    pss SPLIT_SPECIAL
    basepower 80
    type TYPE_NORMAL
    accuracy 100
    pp 10
    effectchance 20
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal APPEAL_BASIC
    contesttype CONTEST_BEAUTY
    terminatedata
    movedescription MOVE_TRI_ATTACK, "The user strikes with\na simultaneous three-\nbeam attack. May also\nparalyze, burn, or\nfreeze the target."

movedata MOVE_SUPER_FANG, "Super Fang"
    battleeffect MOVE_EFFECT_HALVE_HP
    pss SPLIT_PHYSICAL
    basepower 1
    type TYPE_NORMAL
    accuracy 90
    pp 10
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal APPEAL_BASIC
    contesttype CONTEST_TOUGH
    terminatedata
    movedescription MOVE_SUPER_FANG, "The user chomps hard\non the foe with its\nsharp front fangs.\nIt cuts the target’s\nHP to half."

movedata MOVE_SLASH, "Slash"
    battleeffect MOVE_EFFECT_HIGH_CRITICAL
    pss SPLIT_PHYSICAL
    basepower 70
    type TYPE_NORMAL
    accuracy 100
    pp 20
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal APPEAL_BASIC
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_SLASH, "The foe is attacked\nwith a slash of\nclaws, etc.\nIt has a high\ncritical-hit ratio."

movedata MOVE_SUBSTITUTE, "Substitute"
    battleeffect MOVE_EFFECT_SET_SUBSTITUTE
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy 0
    pp 10
    effectchance 0
    target RANGE_USER
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_SNATCH
    appeal APPEAL_PITY_HEARTS
    contesttype CONTEST_SMART
    terminatedata
    movedescription MOVE_SUBSTITUTE, "The user makes a\ncopy of itself using\nsome of its HP.\nThe copy serves as\nthe user’s decoy."

movedata MOVE_STRUGGLE, "Struggle"
    battleeffect MOVE_EFFECT_STRUGGLE
    pss SPLIT_PHYSICAL
    basepower 50
    type TYPE_NORMAL
    accuracy 0
    pp 1
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_CONTACT
    appeal APPEAL_BASIC
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_STRUGGLE, "An attack that is\nused in desperation\nonly if the user has\nno PP. It also hurts\nthe user slightly."

movedata MOVE_SKETCH, "Sketch"
    battleeffect MOVE_EFFECT_LEARN_MOVE_PERMANENT
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy 0
    pp 1
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_UNUSABLE_IN_GEN_8
    appeal APPEAL_PITY_HEARTS
    contesttype CONTEST_SMART
    terminatedata
    movedescription MOVE_SKETCH, "It enables the user\nto permanently learn\nthe move last used by\nthe foe. Once used,\nSketch disappears."

movedata MOVE_TRIPLE_KICK, "Triple Kick"
    battleeffect MOVE_EFFECT_HIT_THREE_TIMES_INCREMENT_BASE_POWER_10
    pss SPLIT_PHYSICAL
    basepower 10
    type TYPE_FIGHTING
    accuracy 90
    pp 10
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal APPEAL_SUCCESSIVE
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_TRIPLE_KICK, "A consecutive three-\nkick attack that\nbecomes more\npowerful with each \nsuccessive hit."

movedata MOVE_THIEF, "Thief"
    battleeffect MOVE_EFFECT_STEAL_HELD_ITEM
    pss SPLIT_PHYSICAL
    basepower 60
    type TYPE_DARK
    accuracy 100
    pp 25
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal APPEAL_STEAL_VOLTAGE
    contesttype CONTEST_TOUGH
    terminatedata
    movedescription MOVE_THIEF, "The user attacks and\nsteals the foe’s held\nitem simultaneously.\nIt can’t steal if the\nuser holds an item."

movedata MOVE_SPIDER_WEB, "Spider Web"
    battleeffect MOVE_EFFECT_PREVENT_ESCAPE
    pss SPLIT_STATUS
    basepower 0
    type TYPE_BUG
    accuracy 0
    pp 10
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_MAGIC_COAT | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9
    appeal APPEAL_KEEP_VOLTAGE_DOWN
    contesttype CONTEST_SMART
    terminatedata
    movedescription MOVE_SPIDER_WEB, "The user ensnares\nthe foe with a thin,\ngooey silk so it can’t\nflee from battle.\n"

movedata MOVE_MIND_READER, "Mind Reader"
    battleeffect MOVE_EFFECT_NEXT_ATTACK_ALWAYS_HITS
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy 0
    pp 5
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_UNUSABLE_IN_GEN_9
    appeal APPEAL_VOLTAGE_CHAIN_HEARTS
    contesttype CONTEST_SMART
    terminatedata
    movedescription MOVE_MIND_READER, "The user senses the\nfoe’s movements\nwith its mind to\nensure its next\nattack does not miss."

movedata MOVE_NIGHTMARE, "Nightmare"
    battleeffect MOVE_EFFECT_STATUS_NIGHTMARE
    pss SPLIT_STATUS
    basepower 0
    type TYPE_GHOST
    accuracy 100
    pp 15
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9
    appeal APPEAL_KEEP_VOLTAGE_UP
    contesttype CONTEST_SMART
    terminatedata
    movedescription MOVE_NIGHTMARE, "A sleeping foe is\nshown a nightmare\nthat inflicts some\ndamage every turn.\n"

movedata MOVE_FLAME_WHEEL, "Flame Wheel"
    battleeffect MOVE_EFFECT_THAW_AND_BURN_HIT
    pss SPLIT_PHYSICAL
    basepower 60
    type TYPE_FIRE
    accuracy 100
    pp 25
    effectchance 10
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal APPEAL_SUCCESSIVE
    contesttype CONTEST_BEAUTY
    terminatedata
    movedescription MOVE_FLAME_WHEEL, "The user cloaks\nitself in fire and\ncharges at the foe.\nIt may also leave the\ntarget with a burn."

movedata MOVE_SNORE, "Snore"
    battleeffect MOVE_EFFECT_DAMAGE_WHILE_ASLEEP
    pss SPLIT_SPECIAL
    basepower 50
    type TYPE_NORMAL
    accuracy 100
    pp 15
    effectchance 30
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal APPEAL_BASIC
    contesttype CONTEST_CUTE
    terminatedata
    movedescription MOVE_SNORE, "An attack that can\nbe used only if the\nuser is asleep. The\nharsh noise may also\nmake the foe flinch."

movedata MOVE_CURSE, "Curse"
    battleeffect MOVE_EFFECT_CURSE
    pss SPLIT_STATUS
    basepower 0
    type TYPE_GHOST
    accuracy 0
    pp 10
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR
    appeal APPEAL_LATE_BOOST
    contesttype CONTEST_TOUGH
    terminatedata
    movedescription MOVE_CURSE, "A move that works\ndifferently for the\nGhost type than for\nall the other types.\n"

movedata MOVE_FLAIL, "Flail"
    battleeffect MOVE_EFFECT_INCREASE_POWER_WITH_LESS_HP
    pss SPLIT_PHYSICAL
    basepower 1
    type TYPE_NORMAL
    accuracy 100
    pp 15
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal APPEAL_DOUBLE_ON_FINALE
    contesttype CONTEST_CUTE
    terminatedata
    movedescription MOVE_FLAIL, "The user flails about\naimlessly to attack.\nIt becomes more\npowerful the less HP\nthe user has."

movedata MOVE_CONVERSION_2, "Conversion 2"
    battleeffect MOVE_EFFECT_CONVERSION2
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy 0
    pp 30
    effectchance 0
    target DEBUG_NEEDS_TESTING ? RANGE_ALL_ADJACENT : RANGE_USER
    priority 0
    flags 0
    appeal APPEAL_PITY_HEARTS
    contesttype CONTEST_BEAUTY
    terminatedata
    movedescription MOVE_CONVERSION_2, "The user changes its\ntype to make itself\nresistant to the type\nof the attack it\nlast took."

movedata MOVE_AEROBLAST, "Aeroblast"
    battleeffect MOVE_EFFECT_HIGH_CRITICAL
    pss SPLIT_SPECIAL
    basepower 100
    type TYPE_FLYING
    accuracy 95
    pp 5
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_HIDE_SHADOW | FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal APPEAL_AFTER_MAX_VOLTAGE_HEARTS
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_AEROBLAST, "A vortex of air is\nshot at the foe to\ninflict damage.\nIt has a high\ncritical-hit ratio."

movedata MOVE_COTTON_SPORE, "Cotton Spore"
    battleeffect MOVE_EFFECT_SPEED_DOWN_2
    pss SPLIT_STATUS
    basepower 0
    type TYPE_GRASS
    accuracy 100
    pp 40
    effectchance 0
    target RANGE_ADJACENT_OPPONENTS
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_MAGIC_COAT | FLAG_PROTECT
    appeal APPEAL_FIRST_NEXT_TURN
    contesttype CONTEST_BEAUTY
    terminatedata
    movedescription MOVE_COTTON_SPORE, "The user releases\ncottonlike spores\nthat cling to the\nfoe, sharply reducing\nits Speed stat."

movedata MOVE_REVERSAL, "Reversal"
    battleeffect MOVE_EFFECT_INCREASE_POWER_WITH_LESS_HP
    pss SPLIT_PHYSICAL
    basepower 1
    type TYPE_FIGHTING
    accuracy 100
    pp 15
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal APPEAL_DOUBLE_ON_FINALE
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_REVERSAL, "An all-out attack\nthat becomes more\npowerful the less\nHP the user has.\n"

movedata MOVE_SPITE, "Spite"
    battleeffect MOVE_EFFECT_DECREASE_LAST_MOVE_PP
    pss SPLIT_STATUS
    basepower 0
    type TYPE_GHOST
    accuracy 100
    pp 10
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT
    appeal APPEAL_KEEP_VOLTAGE_UP
    contesttype CONTEST_TOUGH
    terminatedata
    movedescription MOVE_SPITE, "The user looses its\ngrudge on the move\nlast used by the foe\nby cutting 4 PP from\nit."

movedata MOVE_POWDER_SNOW, "Powder Snow"
    battleeffect MOVE_EFFECT_FREEZE_HIT
    pss SPLIT_SPECIAL
    basepower 40
    type TYPE_ICE
    accuracy 100
    pp 25
    effectchance 10
    target RANGE_ADJACENT_OPPONENTS
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal APPEAL_BASIC
    contesttype CONTEST_BEAUTY
    terminatedata
    movedescription MOVE_POWDER_SNOW, "The user attacks with\na chilling gust of\npowdery snow.\nIt may also freeze\nthe target."

movedata MOVE_PROTECT, "Protect"
    battleeffect MOVE_EFFECT_PROTECT
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy 0
    pp 10
    effectchance 0
    target RANGE_USER
    priority 4
    flags 0
    appeal APPEAL_LOW_VOLTAGE_BOOST
    contesttype CONTEST_CUTE
    terminatedata
    movedescription MOVE_PROTECT, "It enables the user\nto evade all attacks.\nIts chance of failing\nrises if it is used in\nsuccession."

movedata MOVE_MACH_PUNCH, "Mach Punch"
    battleeffect MOVE_EFFECT_PRIORITY_1
    pss SPLIT_PHYSICAL
    basepower 40
    type TYPE_FIGHTING
    accuracy 100
    pp 30
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 1
    flags FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal APPEAL_FIRST_NEXT_TURN
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_MACH_PUNCH, "The user throws a\npunch at blinding\nspeed.\nIt is certain to\nstrike first."

movedata MOVE_SCARY_FACE, "Scary Face"
    battleeffect MOVE_EFFECT_SPEED_DOWN_2
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy 100
    pp 10
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_MAGIC_COAT | FLAG_PROTECT
    appeal APPEAL_LAST_NEXT_TURN
    contesttype CONTEST_TOUGH
    terminatedata
    movedescription MOVE_SCARY_FACE, "The user frightens\nthe foe with a scary\nface to sharply\nreduce its Speed\nstat."

movedata MOVE_FEINT_ATTACK, "Feint Attack"
    battleeffect MOVE_EFFECT_BYPASS_ACCURACY
    pss SPLIT_PHYSICAL
    basepower 60
    type TYPE_DARK
    accuracy 0
    pp 20
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9
    appeal APPEAL_LAST_HEARTS
    contesttype CONTEST_SMART
    terminatedata
    movedescription MOVE_FEINT_ATTACK, "The user draws up to\nthe foe disarmingly,\nthen throws a sucker\npunch.\nIt hits without fail."

movedata MOVE_SWEET_KISS, "Sweet Kiss"
    battleeffect MOVE_EFFECT_STATUS_CONFUSE
    pss SPLIT_STATUS
    basepower 0
    type FAIRY_TYPE_IMPLEMENTED ? TYPE_FAIRY : TYPE_NORMAL
    accuracy 75
    pp 10
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_MAGIC_COAT | FLAG_PROTECT
    appeal APPEAL_KEEP_VOLTAGE_UP
    contesttype CONTEST_CUTE
    terminatedata
    movedescription MOVE_SWEET_KISS, "The user kisses the\nfoe with a sweet,\nangelic cuteness that\ncauses confusion.\n"

movedata MOVE_BELLY_DRUM, "Belly Drum"
    battleeffect MOVE_EFFECT_MAX_ATK_LOSE_HALF_MAX_HP
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy 0
    pp 10
    effectchance 0
    target RANGE_USER
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_SNATCH
    appeal APPEAL_DOUBLE_NEXT_SCORE
    contesttype CONTEST_CUTE
    terminatedata
    movedescription MOVE_BELLY_DRUM, "The user maximizes\nits Attack stat in\nexchange for HP\nequal to half its max\nHP."

movedata MOVE_SLUDGE_BOMB, "Sludge Bomb"
    battleeffect MOVE_EFFECT_POISON_HIT
    pss SPLIT_SPECIAL
    basepower 90
    type TYPE_POISON
    accuracy 100
    pp 10
    effectchance 30
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal APPEAL_LAST_HEARTS
    contesttype CONTEST_TOUGH
    terminatedata
    movedescription MOVE_SLUDGE_BOMB, "The user attacks by\nhurling filthy sludge\nat the foe.\nIt may also poison\nthe target."

movedata MOVE_MUD_SLAP, "Mud-Slap"
    battleeffect MOVE_EFFECT_LOWER_ACCURACY_HIT
    pss SPLIT_SPECIAL
    basepower 20
    type TYPE_GROUND
    accuracy 100
    pp 10
    effectchance 100
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal APPEAL_BASIC
    contesttype CONTEST_CUTE
    terminatedata
    movedescription MOVE_MUD_SLAP, "The user hurls mud in\nthe foe’s face to\ninflict damage and\nlower its accuracy.\n"

movedata MOVE_OCTAZOOKA, "Octazooka"
    battleeffect MOVE_EFFECT_LOWER_ACCURACY_HIT
    pss SPLIT_SPECIAL
    basepower 65
    type TYPE_WATER
    accuracy 85
    pp 10
    effectchance 50
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal APPEAL_VOLTAGE_HEARTS
    contesttype CONTEST_TOUGH
    terminatedata
    movedescription MOVE_OCTAZOOKA, "The user attacks by\nspraying ink in the\nfoe’s face or eyes.\nIt may also lower the\ntarget’s accuracy."

movedata MOVE_SPIKES, "Spikes"
    battleeffect MOVE_EFFECT_SET_SPIKES
    pss SPLIT_STATUS
    basepower 0
    type TYPE_GROUND
    accuracy 0
    pp 20
    effectchance 0
    target RANGE_OPPONENT_SIDE
    priority 0
    flags FLAG_MAGIC_COAT
    appeal APPEAL_KEEP_VOLTAGE_DOWN
    contesttype CONTEST_SMART
    terminatedata
    movedescription MOVE_SPIKES, "The user lays a trap\nof spikes at the\nfoe’s feet. The trap\nhurts foes that\nswitch into battle."

movedata MOVE_ZAP_CANNON, "Zap Cannon"
    battleeffect MOVE_EFFECT_PARALYZE_HIT
    pss SPLIT_SPECIAL
    basepower 120
    type TYPE_ELECTRIC
    accuracy 50
    pp 5
    effectchance 100
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_HIDE_SHADOW | FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal APPEAL_VOLTAGE_HEARTS
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_ZAP_CANNON, "The user fires an\nelectric blast like a\ncannon to inflict\ndamage and cause\nparalysis."

movedata MOVE_FORESIGHT, "Foresight"
    battleeffect MOVE_EFFECT_IGNORE_EVASION_REMOVE_GHOST_IMMUNE
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy 0
    pp 40
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9
    appeal APPEAL_VOLTAGE_CHAIN_HEARTS
    contesttype CONTEST_SMART
    terminatedata
    movedescription MOVE_FORESIGHT, "Enables the user to\nhit a Ghost type with\nany type of move. It\nalso enables the user\nto hit an evasive foe."

movedata MOVE_DESTINY_BOND, "Destiny Bond"
    battleeffect MOVE_EFFECT_KO_MON_THAT_DEFEATED_USER
    pss SPLIT_STATUS
    basepower 0
    type TYPE_GHOST
    accuracy 0
    pp 5
    effectchance 0
    target RANGE_USER
    priority 0
    flags 0
    appeal APPEAL_ALL_SAME_JUDGE
    contesttype CONTEST_SMART
    terminatedata
    movedescription MOVE_DESTINY_BOND, "When this move is\nused, if the user\nfaints, the foe that\nlanded the knockout\nhit also faints."

movedata MOVE_PERISH_SONG, "Perish Song"
    battleeffect MOVE_EFFECT_ALL_FAINT_3_TURNS
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy 0
    pp 5
    effectchance 0
    target RANGE_FIELD
    priority 0
    flags FLAG_HIDE_SHADOW
    appeal APPEAL_LOWER_VOLTAGES
    contesttype CONTEST_BEAUTY
    terminatedata
    movedescription MOVE_PERISH_SONG, "Any Pokémon that\nhears this song\nfaints in three turns,\nunless it switches\nout of battle."

movedata MOVE_ICY_WIND, "Icy Wind"
    battleeffect MOVE_EFFECT_LOWER_SPEED_HIT
    pss SPLIT_SPECIAL
    basepower 55
    type TYPE_ICE
    accuracy 95
    pp 15
    effectchance 100
    target RANGE_ADJACENT_OPPONENTS
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal APPEAL_LAST_NEXT_TURN
    contesttype CONTEST_BEAUTY
    terminatedata
    movedescription MOVE_ICY_WIND, "The user attacks with\na gust of chilled air.\nIt also lowers the\ntarget’s Speed stat.\n"

movedata MOVE_DETECT, "Detect"
    battleeffect MOVE_EFFECT_PROTECT
    pss SPLIT_STATUS
    basepower 0
    type TYPE_FIGHTING
    accuracy 0
    pp 5
    effectchance 0
    target RANGE_USER
    priority 4
    flags 0
    appeal APPEAL_LOW_VOLTAGE_BOOST
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_DETECT, "It enables the user\nto evade all attacks.\nIts chance of failing\nrises if it is used in\nsuccession."

movedata MOVE_BONE_RUSH, "Bone Rush"
    battleeffect MOVE_EFFECT_MULTI_HIT
    pss SPLIT_PHYSICAL
    basepower 25
    type TYPE_GROUND
    accuracy 90
    pp 10
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal APPEAL_SUCCESSIVE
    contesttype CONTEST_TOUGH
    terminatedata
    movedescription MOVE_BONE_RUSH, "The user strikes at\nthe foe with a hard\nbone two to five\ntimes in a row.\n"

movedata MOVE_LOCK_ON, "Lock-On"
    battleeffect MOVE_EFFECT_NEXT_ATTACK_ALWAYS_HITS
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy 0
    pp 5
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal APPEAL_VOLTAGE_CHAIN_HEARTS
    contesttype CONTEST_SMART
    terminatedata
    movedescription MOVE_LOCK_ON, "The user takes sure\naim at the foe.\nIt ensures the next\nattack does not fail\nto hit the target."

movedata MOVE_OUTRAGE, "Outrage"
    battleeffect MOVE_EFFECT_CONTINUE_AND_CONFUSE_SELF
    pss SPLIT_PHYSICAL
    basepower 120
    type TYPE_DRAGON
    accuracy 100
    pp 10
    effectchance 0
    target RANGE_RANDOM_OPPONENT
    priority 0
    flags FLAG_HIDE_SHADOW | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal APPEAL_SUCCESSIVE
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_OUTRAGE, "The user rampages\nand attacks for two\nto three turns.\nHowever, it then\nbecomes confused."

movedata MOVE_SANDSTORM, "Sandstorm"
    battleeffect MOVE_EFFECT_WEATHER_SANDSTORM
    pss SPLIT_STATUS
    basepower 0
    type TYPE_ROCK
    accuracy 0
    pp 10
    effectchance 0
    target RANGE_FIELD
    priority 0
    flags 0
    appeal APPEAL_KEEP_VOLTAGE_DOWN
    contesttype CONTEST_TOUGH
    terminatedata
    movedescription MOVE_SANDSTORM, "A five-turn sand-\nstorm is summoned\nto hurt all combatant\ntypes except Rock, \nGround, and Steel."

movedata MOVE_GIGA_DRAIN, "Giga Drain"
    battleeffect MOVE_EFFECT_RECOVER_HALF_DAMAGE_DEALT
    pss SPLIT_SPECIAL
    basepower 75
    type TYPE_GRASS
    accuracy 100
    pp 10
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal APPEAL_VOLTAGE_CHAIN_HEARTS
    contesttype CONTEST_SMART
    terminatedata
    movedescription MOVE_GIGA_DRAIN, "A nutrient-draining\nattack. The user’s\nHP is restored by\nhalf the damage taken\nby the target."

movedata MOVE_ENDURE, "Endure"
    battleeffect MOVE_EFFECT_SURVIVE_WITH_1_HP
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy 0
    pp 10
    effectchance 0
    target RANGE_USER
    priority 4
    flags FLAG_KEEP_HP_BAR
    appeal APPEAL_KEEP_VOLTAGE_DOWN
    contesttype CONTEST_TOUGH
    terminatedata
    movedescription MOVE_ENDURE, "The user endures any\nattack with at least\n1 HP. Its chance of\nfailing rises if it is\nused in succession."

movedata MOVE_CHARM, "Charm"
    battleeffect MOVE_EFFECT_ATK_DOWN_2
    pss SPLIT_STATUS
    basepower 0
    type FAIRY_TYPE_IMPLEMENTED ? TYPE_FAIRY : TYPE_NORMAL
    accuracy 100
    pp 20
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_MAGIC_COAT | FLAG_PROTECT
    appeal APPEAL_KEEP_VOLTAGE_UP
    contesttype CONTEST_CUTE
    terminatedata
    movedescription MOVE_CHARM, "The user charmingly\nstares at the foe,\nmaking it less wary.\nThe target’s Attack\nis sharply lowered."

movedata MOVE_ROLLOUT, "Rollout"
    battleeffect MOVE_EFFECT_DOUBLE_POWER_EACH_TURN_LOCK_INTO
    pss SPLIT_PHYSICAL
    basepower 30
    type TYPE_ROCK
    accuracy 90
    pp 20
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal APPEAL_SUCCESSIVE
    contesttype CONTEST_TOUGH
    terminatedata
    movedescription MOVE_ROLLOUT, "The user continually\nrolls into the foe\nover five turns. It\nbecomes stronger\neach time it hits."

movedata MOVE_FALSE_SWIPE, "False Swipe"
    battleeffect MOVE_EFFECT_LEAVE_WITH_1_HP
    pss SPLIT_PHYSICAL
    basepower 40
    type TYPE_NORMAL
    accuracy 100
    pp 40
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal APPEAL_LOW_VOLTAGE_BOOST
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_FALSE_SWIPE, "A restrained attack\nthat prevents the\nfoe from fainting.\nThe target is left\nwith at least 1 HP."

movedata MOVE_SWAGGER, "Swagger"
    battleeffect MOVE_EFFECT_ATK_UP_2_STATUS_CONFUSION
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy 85
    pp 15
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_MAGIC_COAT | FLAG_PROTECT
    appeal APPEAL_KEEP_VOLTAGE_UP
    contesttype CONTEST_CUTE
    terminatedata
    movedescription MOVE_SWAGGER, "The user enrages the\nfoe into confusion.\nHowever, it also\nsharply raises the\nfoe’s Attack stat."

movedata MOVE_MILK_DRINK, "Milk Drink"
    battleeffect MOVE_EFFECT_RESTORE_HALF_HP
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy 0
    pp 5
    effectchance 0
    target RANGE_USER
    priority 0
    flags FLAG_SNATCH
    appeal APPEAL_SUCCESSIVE
    contesttype CONTEST_CUTE
    terminatedata
    movedescription MOVE_MILK_DRINK, "The user restores its\nown HP by up to half\nof its maximum HP.\nIt may also be used\nto heal an ally’s HP."

movedata MOVE_SPARK, "Spark"
    battleeffect MOVE_EFFECT_PARALYZE_HIT
    pss SPLIT_PHYSICAL
    basepower 65
    type TYPE_ELECTRIC
    accuracy 100
    pp 20
    effectchance 30
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal APPEAL_BASIC
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_SPARK, "The user throws an\nelectrically charged\ntackle at the foe.\nIt may also leave the\ntarget paralyzed."

movedata MOVE_FURY_CUTTER, "Fury Cutter"
    battleeffect MOVE_EFFECT_DOUBLE_POWER_EACH_TURN
    pss SPLIT_PHYSICAL
    basepower 40
    type TYPE_BUG
    accuracy 95
    pp 20
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal APPEAL_SUCCESSIVE
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_FURY_CUTTER, "The foe is slashed\nwith scythes or\nclaws. Its power\nincreases if it hits\nin succession."

movedata MOVE_STEEL_WING, "Steel Wing"
    battleeffect MOVE_EFFECT_RAISE_DEF_HIT
    pss SPLIT_PHYSICAL
    basepower 70
    type TYPE_STEEL
    accuracy 90
    pp 25
    effectchance 10
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal APPEAL_BASIC
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_STEEL_WING, "The foe is hit with\nwings of steel.\nIt may also raise the\nuser’s Defense stat.\n"

movedata MOVE_MEAN_LOOK, "Mean Look"
    battleeffect MOVE_EFFECT_PREVENT_ESCAPE
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy 0
    pp 5
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_MAGIC_COAT
    appeal APPEAL_LOWER_VOLTAGES
    contesttype CONTEST_BEAUTY
    terminatedata
    movedescription MOVE_MEAN_LOOK, "The user affixes the\nfoe with a dark,\narresting look.\nThe target becomes\nunable to flee."

movedata MOVE_ATTRACT, "Attract"
    battleeffect MOVE_EFFECT_INFATUATE
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy 100
    pp 15
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_MAGIC_COAT | FLAG_PROTECT
    appeal APPEAL_KEEP_VOLTAGE_UP
    contesttype CONTEST_CUTE
    terminatedata
    movedescription MOVE_ATTRACT, "If it is the opposite\ngender of the user,\nthe foe becomes\ninfatuated and less\nlikely to attack."

movedata MOVE_SLEEP_TALK, "Sleep Talk"
    battleeffect MOVE_EFFECT_USE_RANDOM_LEARNED_MOVE_SLEEP
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy 0
    pp 10
    effectchance 0
    target RANGE_SINGLE_TARGET_SPECIAL
    priority 0
    flags 0
    appeal APPEAL_BASIC
    contesttype CONTEST_CUTE
    terminatedata
    movedescription MOVE_SLEEP_TALK, "While it is asleep, the\nuser randomly uses\none of the moves it\nknows.\n"

movedata MOVE_HEAL_BELL, "Heal Bell"
    battleeffect MOVE_EFFECT_CURE_PARTY_STATUS
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy 0
    pp 5
    effectchance 0
    target RANGE_USER_SIDE
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_SNATCH
    appeal APPEAL_SUCCESSIVE
    contesttype CONTEST_BEAUTY
    terminatedata
    movedescription MOVE_HEAL_BELL, "The user makes a\nsoothing bell chime\nto heal the status\nproblems of all the\nparty Pokémon."

movedata MOVE_RETURN, "Return"
    battleeffect MOVE_EFFECT_POWER_BASED_ON_FRIENDSHIP
    pss SPLIT_PHYSICAL
    basepower 1
    type TYPE_NORMAL
    accuracy 100
    pp 20
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9
    appeal APPEAL_FIRST_HEARTS
    contesttype CONTEST_CUTE
    terminatedata
    movedescription MOVE_RETURN, "A full-power attack\nthat grows more\npowerful the more\nthe user likes its\nTrainer."

movedata MOVE_PRESENT, "Present"
    battleeffect MOVE_EFFECT_RANDOM_POWER_MAYBE_HEAL
    pss SPLIT_PHYSICAL
    basepower 1
    type TYPE_NORMAL
    accuracy 90
    pp 15
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal APPEAL_LOW_VOLTAGE_BOOST
    contesttype CONTEST_CUTE
    terminatedata
    movedescription MOVE_PRESENT, "The user attacks by\ngiving the foe a\nbooby-trapped gift.\nIt restores HP\nsometimes, however."

movedata MOVE_FRUSTRATION, "Frustration"
    battleeffect MOVE_EFFECT_POWER_BASED_ON_LOW_FRIENDSHIP
    pss SPLIT_PHYSICAL
    basepower 1
    type TYPE_NORMAL
    accuracy 100
    pp 20
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9
    appeal APPEAL_LAST_HEARTS
    contesttype CONTEST_CUTE
    terminatedata
    movedescription MOVE_FRUSTRATION, "A full-power attack\nthat grows more\npowerful the less\nthe user likes its\nTrainer."

movedata MOVE_SAFEGUARD, "Safeguard"
    battleeffect MOVE_EFFECT_PREVENT_STATUS
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy 0
    pp 25
    effectchance 0
    target RANGE_USER_SIDE
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_SNATCH
    appeal APPEAL_KEEP_VOLTAGE_DOWN
    contesttype CONTEST_BEAUTY
    terminatedata
    movedescription MOVE_SAFEGUARD, "The user creates a\nprotective field that\nprevents status\nproblems for five\nturns."

movedata MOVE_PAIN_SPLIT, "Pain Split"
    battleeffect MOVE_EFFECT_AVERAGE_HP
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy 0
    pp 20
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal APPEAL_LOWER_VOLTAGES
    contesttype CONTEST_SMART
    terminatedata
    movedescription MOVE_PAIN_SPLIT, "The user adds its HP\nto the foe’s HP, then\nequally shares the\ncombined HP with the\nfoe."

movedata MOVE_SACRED_FIRE, "Sacred Fire"
    battleeffect MOVE_EFFECT_THAW_AND_BURN_HIT
    pss SPLIT_PHYSICAL
    basepower 100
    type TYPE_FIRE
    accuracy 95
    pp 5
    effectchance 50
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_HIDE_SHADOW | FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal APPEAL_AFTER_MAX_VOLTAGE_HEARTS
    contesttype CONTEST_BEAUTY
    terminatedata
    movedescription MOVE_SACRED_FIRE, "The foe is razed with\na mystical fire of\ngreat intensity.\nIt may also leave the\ntarget with a burn."

movedata MOVE_MAGNITUDE, "Magnitude"
    battleeffect MOVE_EFFECT_RANDOM_POWER_10_CASES
    pss SPLIT_PHYSICAL
    basepower 1
    type TYPE_GROUND
    accuracy 100
    pp 30
    effectchance 0
    target RANGE_ALL_ADJACENT
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9
    appeal APPEAL_LAST_HEARTS
    contesttype CONTEST_TOUGH
    terminatedata
    movedescription MOVE_MAGNITUDE, "The user looses a\nground-shaking quake\naffecting everyone in\nbattle. Its power\nvaries."

movedata MOVE_DYNAMIC_PUNCH, "Dynamic Punch"
    battleeffect MOVE_EFFECT_CONFUSE_HIT
    pss SPLIT_PHYSICAL
    basepower 100
    type TYPE_FIGHTING
    accuracy 50
    pp 5
    effectchance 100
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_HIDE_SHADOW | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal APPEAL_LAST_HEARTS
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_DYNAMIC_PUNCH, "The foe is punched\nwith the user’s full,\nconcentrated power.\nIt confuses the foe\nif it hits."

movedata MOVE_MEGAHORN, "Megahorn"
    battleeffect MOVE_EFFECT_HIT
    pss SPLIT_PHYSICAL
    basepower 120
    type TYPE_BUG
    accuracy 85
    pp 10
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_HIDE_SHADOW | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal APPEAL_LAST_HEARTS
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_MEGAHORN, "Using its tough\nand impressive\nhorn, the user\nrams into the foe \nwith no letup.\n"

movedata MOVE_DRAGON_BREATH, "Dragon Breath"
    battleeffect MOVE_EFFECT_PARALYZE_HIT
    pss SPLIT_SPECIAL
    basepower 60
    type TYPE_DRAGON
    accuracy 100
    pp 20
    effectchance 30
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal APPEAL_FIRST_HEARTS
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_DRAGON_BREATH, "The user exhales\na mighty gust that\ninflicts damage.\nIt may also paralyze\nthe target."

movedata MOVE_BATON_PASS, "Baton Pass"
    battleeffect MOVE_EFFECT_PASS_STATS_AND_STATUS
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy 0
    pp 40
    effectchance 0
    target RANGE_USER
    priority 0
    flags 0
    appeal APPEAL_LOW_VOLTAGE_BOOST
    contesttype CONTEST_CUTE
    terminatedata
    movedescription MOVE_BATON_PASS, "The user switches\nplaces with a party\nPokémon in waiting,\npassing along any\nstat changes."

movedata MOVE_ENCORE, "Encore"
    battleeffect MOVE_EFFECT_ENCORE
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy 100
    pp 5
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT
    appeal APPEAL_VOLTAGE_CHAIN_HEARTS
    contesttype CONTEST_CUTE
    terminatedata
    movedescription MOVE_ENCORE, "The user compels the\nfoe to keep using\nonly the move it last\nused for three to\nseven turns."

movedata MOVE_PURSUIT, "Pursuit"
    battleeffect MOVE_EFFECT_HIT_BEFORE_SWITCH
    pss SPLIT_PHYSICAL
    basepower 40
    type TYPE_DARK
    accuracy 100
    pp 20
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_HIDE_SHADOW | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9
    appeal APPEAL_VOLTAGE_CHAIN_HEARTS
    contesttype CONTEST_SMART
    terminatedata
    movedescription MOVE_PURSUIT, "An attack move that\ninflicts double damage\nif used on a foe that\nis switching out of\nbattle."

movedata MOVE_RAPID_SPIN, "Rapid Spin"
    battleeffect MOVE_EFFECT_REMOVE_HAZARDS_AND_BINDING
    pss SPLIT_PHYSICAL
    basepower 50
    type TYPE_NORMAL
    accuracy 100
    pp 40
    effectchance 100
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal APPEAL_FIRST_HEARTS
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_RAPID_SPIN, "A spin attack that\ncan also eliminate\nsuch moves as Bind,\nWrap, Leech Seed,\nand Spikes."

movedata MOVE_SWEET_SCENT, "Sweet Scent"
    battleeffect MOVE_EFFECT_EVA_DOWN_2
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy 100
    pp 20
    effectchance 0
    target RANGE_ADJACENT_OPPONENTS
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_MAGIC_COAT | FLAG_PROTECT
    appeal APPEAL_KEEP_VOLTAGE_UP
    contesttype CONTEST_CUTE
    terminatedata
    movedescription MOVE_SWEET_SCENT, "A sweet scent that\nlowers the foe’s\nevasiveness. It also\nlures wild Pokémon\nif used in grass, etc."

movedata MOVE_IRON_TAIL, "Iron Tail"
    battleeffect MOVE_EFFECT_LOWER_DEFENSE_HIT
    pss SPLIT_PHYSICAL
    basepower 100
    type TYPE_STEEL
    accuracy 75
    pp 15
    effectchance 30
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal APPEAL_LAST_HEARTS
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_IRON_TAIL, "The foe is slammed\nwith a steel-hard\ntail. It may also\nlower the target’s\nDefense stat."

movedata MOVE_METAL_CLAW, "Metal Claw"
    battleeffect MOVE_EFFECT_RAISE_ATTACK_HIT
    pss SPLIT_PHYSICAL
    basepower 50
    type TYPE_STEEL
    accuracy 95
    pp 35
    effectchance 10
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal APPEAL_LAST_HEARTS
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_METAL_CLAW, "The foe is raked\nwith steel claws.\nIt may also raise the\nuser’s Attack stat.\n"

movedata MOVE_VITAL_THROW, "Vital Throw"
    battleeffect MOVE_EFFECT_PRIORITY_NEG_1_BYPASS_ACCURACY
    pss SPLIT_PHYSICAL
    basepower 70
    type TYPE_FIGHTING
    accuracy 0
    pp 10
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority -1
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT | FLAG_UNUSABLE_IN_GEN_9
    appeal APPEAL_LAST_NEXT_TURN
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_VITAL_THROW, "The user allows the\nfoe to attack first.\nIn return, this throw\nmove is guaranteed\nnot to miss."

movedata MOVE_MORNING_SUN, "Morning Sun"
    battleeffect MOVE_EFFECT_HEAL_HALF_DIFFERENT_IN_WEATHER
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy 0
    pp 5
    effectchance 0
    target RANGE_USER
    priority 0
    flags FLAG_SNATCH
    appeal APPEAL_SUCCESSIVE
    contesttype CONTEST_BEAUTY
    terminatedata
    movedescription MOVE_MORNING_SUN, "The user restores its\nown HP.\nThe amount of HP\nregained varies with\nthe weather."

movedata MOVE_SYNTHESIS, "Synthesis"
    battleeffect MOVE_EFFECT_HEAL_HALF_DIFFERENT_IN_WEATHER
    pss SPLIT_STATUS
    basepower 0
    type TYPE_GRASS
    accuracy 0
    pp 5
    effectchance 0
    target RANGE_USER
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_SNATCH
    appeal APPEAL_SUCCESSIVE
    contesttype CONTEST_SMART
    terminatedata
    movedescription MOVE_SYNTHESIS, "The user restores its\nown HP.\nThe amount of HP\nregained varies with\nthe weather."

movedata MOVE_MOONLIGHT, "Moonlight"
    battleeffect MOVE_EFFECT_HEAL_HALF_DIFFERENT_IN_WEATHER
    pss SPLIT_STATUS
    basepower 0
    type FAIRY_TYPE_IMPLEMENTED ? TYPE_FAIRY : TYPE_NORMAL
    accuracy 0
    pp 5
    effectchance 0
    target RANGE_USER
    priority 0
    flags FLAG_HIDE_SHADOW | FLAG_SNATCH
    appeal APPEAL_SUCCESSIVE
    contesttype CONTEST_BEAUTY
    terminatedata
    movedescription MOVE_MOONLIGHT, "The user restores its\nown HP.\nThe amount of HP\nregained varies with\nthe weather."

movedata MOVE_HIDDEN_POWER, "Hidden Power"
    battleeffect MOVE_EFFECT_RANDOM_TYPE_BASED_ON_IVS
    pss SPLIT_SPECIAL
    basepower 60
    type TYPE_NORMAL
    accuracy 100
    pp 15
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9
    appeal APPEAL_PITY_HEARTS
    contesttype CONTEST_SMART
    terminatedata
    movedescription MOVE_HIDDEN_POWER, "A unique attack that\nvaries in type\ndepending on the\nPokémon using it."

movedata MOVE_CROSS_CHOP, "Cross Chop"
    battleeffect MOVE_EFFECT_HIGH_CRITICAL
    pss SPLIT_PHYSICAL
    basepower 100
    type TYPE_FIGHTING
    accuracy 80
    pp 5
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal APPEAL_LAST_HEARTS
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_CROSS_CHOP, "The user delivers a\ndouble chop with its\nforearms crossed.\nIt has a high\ncritical-hit ratio."

movedata MOVE_TWISTER, "Twister"
    battleeffect MOVE_EFFECT_FLINCH_DOUBLE_DAMAGE_FLY_OR_BOUNCE
    pss SPLIT_SPECIAL
    basepower 40
    type TYPE_DRAGON
    accuracy 100
    pp 20
    effectchance 20
    target RANGE_ADJACENT_OPPONENTS
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal APPEAL_BASIC
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_TWISTER, "The user whips up a\nvicious tornado to\ntear at the foe.\nIt may also make the\nfoe flinch."

movedata MOVE_RAIN_DANCE, "Rain Dance"
    battleeffect MOVE_EFFECT_WEATHER_RAIN
    pss SPLIT_STATUS
    basepower 0
    type TYPE_WATER
    accuracy 0
    pp 5
    effectchance 0
    target RANGE_FIELD
    priority 0
    flags 0
    appeal APPEAL_KEEP_VOLTAGE_DOWN
    contesttype CONTEST_TOUGH
    terminatedata
    movedescription MOVE_RAIN_DANCE, "The user summons a\nheavy rain that falls\nfor five turns,\npowering up Water-\ntype moves."

movedata MOVE_SUNNY_DAY, "Sunny Day"
    battleeffect MOVE_EFFECT_WEATHER_SUN
    pss SPLIT_STATUS
    basepower 0
    type TYPE_FIRE
    accuracy 0
    pp 5
    effectchance 0
    target RANGE_FIELD
    priority 0
    flags 0
    appeal APPEAL_KEEP_VOLTAGE_DOWN
    contesttype CONTEST_BEAUTY
    terminatedata
    movedescription MOVE_SUNNY_DAY, "The user intensifies\nthe sun for five\nturns, powering up\nFire-type moves.\n"

movedata MOVE_CRUNCH, "Crunch"
    battleeffect MOVE_EFFECT_LOWER_DEFENSE_HIT
    pss SPLIT_PHYSICAL
    basepower 80
    type TYPE_DARK
    accuracy 100
    pp 15
    effectchance 20
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal APPEAL_LAST_HEARTS
    contesttype CONTEST_TOUGH
    terminatedata
    movedescription MOVE_CRUNCH, "The user crunches up\nthe foe with sharp\nfangs. It may also\nlower the target’s\nDefense stat."

movedata MOVE_MIRROR_COAT, "Mirror Coat"
    battleeffect MOVE_EFFECT_MIRROR_COAT
    pss SPLIT_SPECIAL
    basepower 1
    type TYPE_PSYCHIC
    accuracy 100
    pp 20
    effectchance 0
    target RANGE_SINGLE_TARGET_SPECIAL
    priority -5
    flags FLAG_PROTECT
    appeal APPEAL_DOUBLE_ON_FINALE
    contesttype CONTEST_BEAUTY
    terminatedata
    movedescription MOVE_MIRROR_COAT, "A retaliation move\nthat counters any\nspecial attack,\ninflicting double the\ndamage taken."

movedata MOVE_PSYCH_UP, "Psych Up"
    battleeffect MOVE_EFFECT_COPY_STAT_CHANGES
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy 0
    pp 10
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR
    appeal APPEAL_DOUBLE_NEXT_SCORE
    contesttype CONTEST_SMART
    terminatedata
    movedescription MOVE_PSYCH_UP, "The user hypnotizes\nitself into copying\nany stat change\nmade by the foe.\n"

movedata MOVE_EXTREME_SPEED, "Extreme Speed"
    battleeffect MOVE_EFFECT_PRIORITY_1
    pss SPLIT_PHYSICAL
    basepower 80
    type TYPE_NORMAL
    accuracy 100
    pp 5
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 2
    flags FLAG_HIDE_SHADOW | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal APPEAL_FIRST_NEXT_TURN
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_EXTREME_SPEED, "The user charges the\nfoe at blinding speed.\nThis attack always\ngoes before any\nother move."

movedata MOVE_ANCIENT_POWER, "Ancient Power"
    battleeffect MOVE_EFFECT_RAISE_ALL_STATS_HIT
    pss SPLIT_SPECIAL
    basepower 60
    type TYPE_ROCK
    accuracy 100
    pp 5
    effectchance 10
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal APPEAL_LAST_HEARTS
    contesttype CONTEST_TOUGH
    terminatedata
    movedescription MOVE_ANCIENT_POWER, "The user attacks with\na prehistoric power.\nIt may also raise all\nthe user’s stats at\nonce."

movedata MOVE_SHADOW_BALL, "Shadow Ball"
    battleeffect MOVE_EFFECT_LOWER_SP_DEF_HIT
    pss SPLIT_SPECIAL
    basepower 80
    type TYPE_GHOST
    accuracy 100
    pp 15
    effectchance 20
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal APPEAL_FIRST_HEARTS
    contesttype CONTEST_SMART
    terminatedata
    movedescription MOVE_SHADOW_BALL, "The user hurls a\nshadowy blob at the\nfoe. It may also\nlower the foe’s\nSp. Def stat."

movedata MOVE_FUTURE_SIGHT, "Future Sight"
    battleeffect MOVE_EFFECT_HIT_IN_3_TURNS
    pss SPLIT_SPECIAL
    basepower 120
    type TYPE_PSYCHIC
    accuracy 100
    pp 10
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags 0
    appeal APPEAL_FIRST_HEARTS
    contesttype CONTEST_SMART
    terminatedata
    movedescription MOVE_FUTURE_SIGHT, "Two turns after this\nmove is used, the foe\nis attacked with a\nhunk of psychic\nenergy."

movedata MOVE_ROCK_SMASH, "Rock Smash"
    battleeffect MOVE_EFFECT_LOWER_DEFENSE_HIT
    pss SPLIT_PHYSICAL
    basepower 40
    type TYPE_FIGHTING
    accuracy 100
    pp 15
    effectchance 50
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal APPEAL_LAST_HEARTS
    contesttype CONTEST_TOUGH
    terminatedata
    movedescription MOVE_ROCK_SMASH, "The user hits with a\npunch that may lower\nthe target’s Defense.\nIt can also smash\ncracked boulders."

movedata MOVE_WHIRLPOOL, "Whirlpool"
    battleeffect MOVE_EFFECT_WHIRLPOOL
    pss SPLIT_SPECIAL
    basepower 35
    type TYPE_WATER
    accuracy 85
    pp 15
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_HIDE_SHADOW | FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal APPEAL_LATE_BOOST
    contesttype CONTEST_BEAUTY
    terminatedata
    movedescription MOVE_WHIRLPOOL, "Traps the foe inside a\nwhirlpool that lasts\nfor two to five turns.\nThe user can pass\nthrough whirlpools."

movedata MOVE_BEAT_UP, "Beat Up"
    battleeffect MOVE_EFFECT_BEAT_UP
    pss SPLIT_PHYSICAL
    basepower 1
    type TYPE_DARK
    accuracy 100
    pp 10
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal APPEAL_SUCCESSIVE
    contesttype CONTEST_SMART
    terminatedata
    movedescription MOVE_BEAT_UP, "The user gets all the\nparty Pokémon to\nattack the foe. The\nmore party Pokémon,\nthe more damage."

movedata MOVE_FAKE_OUT, "Fake Out"
    battleeffect MOVE_EFFECT_ALWAYS_FLINCH_FIRST_TURN_ONLY
    pss SPLIT_PHYSICAL
    basepower 40
    type TYPE_NORMAL
    accuracy 100
    pp 10
    effectchance 100
    target RANGE_SINGLE_TARGET
    priority 3
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal APPEAL_FIRST_HEARTS
    contesttype CONTEST_CUTE
    terminatedata
    movedescription MOVE_FAKE_OUT, "An attack that hits\nfirst and makes the\ntarget flinch. It only\nworks the first turn\nthe user is in battle."

movedata MOVE_UPROAR, "Uproar"
    battleeffect MOVE_EFFECT_UPROAR
    pss SPLIT_SPECIAL
    basepower 90
    type TYPE_NORMAL
    accuracy 100
    pp 10
    effectchance 0
    target RANGE_RANDOM_OPPONENT
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal APPEAL_LOWER_VOLTAGES
    contesttype CONTEST_CUTE
    terminatedata
    movedescription MOVE_UPROAR, "The user attacks in\nan uproar for two to\nfive turns. Over that\ntime, no one can fall\nasleep."

movedata MOVE_STOCKPILE, "Stockpile"
    battleeffect MOVE_EFFECT_STOCKPILE
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy 0
    pp 20
    effectchance 0
    target RANGE_USER
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_SNATCH
    appeal APPEAL_DOUBLE_NEXT_SCORE
    contesttype CONTEST_TOUGH
    terminatedata
    movedescription MOVE_STOCKPILE, "The user charges\nup power, and raises\nboth its Defense and\nSp. Def. The move can\nbe used three times."

movedata MOVE_SPIT_UP, "Spit Up"
    battleeffect MOVE_EFFECT_SPIT_UP
    pss SPLIT_SPECIAL
    basepower 1
    type TYPE_NORMAL
    accuracy 100
    pp 10
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_PROTECT
    appeal APPEAL_LAST_HEARTS
    contesttype CONTEST_TOUGH
    terminatedata
    movedescription MOVE_SPIT_UP, "The power stored\nusing the move\nStockpile is released\nat once in an attack.\n"

movedata MOVE_SWALLOW, "Swallow"
    battleeffect MOVE_EFFECT_SWALLOW
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy 0
    pp 10
    effectchance 0
    target RANGE_USER
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_SNATCH
    appeal APPEAL_SUCCESSIVE
    contesttype CONTEST_TOUGH
    terminatedata
    movedescription MOVE_SWALLOW, "The power stored\nusing the move\nStockpile is absorbed\nby the user to heal\nits HP."

movedata MOVE_HEAT_WAVE, "Heat Wave"
    battleeffect MOVE_EFFECT_BURN_HIT
    pss SPLIT_SPECIAL
    basepower 95
    type TYPE_FIRE
    accuracy 90
    pp 10
    effectchance 10
    target RANGE_ADJACENT_OPPONENTS
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal APPEAL_FIRST_HEARTS
    contesttype CONTEST_BEAUTY
    terminatedata
    movedescription MOVE_HEAT_WAVE, "The user exhales a\nheated breath on the\nfoe to attack. It may\nalso leave the target\nwith a burn."

movedata MOVE_HAIL, "Hail"
    battleeffect MOVE_EFFECT_WEATHER_HAIL
    pss SPLIT_STATUS
    basepower 0
    type TYPE_ICE
    accuracy 0
    pp 10
    effectchance 0
    target RANGE_FIELD
    priority 0
    flags FLAG_UNUSABLE_IN_GEN_9
    appeal APPEAL_KEEP_VOLTAGE_DOWN
    contesttype CONTEST_BEAUTY
    terminatedata
    movedescription MOVE_HAIL, "The user summons a\nhailstorm lasting five\nturns. It damages all\nPokémon except the\nIce type."

movedata MOVE_TORMENT, "Torment"
    battleeffect MOVE_EFFECT_TORMENT
    pss SPLIT_STATUS
    basepower 0
    type TYPE_DARK
    accuracy 100
    pp 15
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT
    appeal APPEAL_LOW_VOLTAGE_BOOST
    contesttype CONTEST_TOUGH
    terminatedata
    movedescription MOVE_TORMENT, "The user torments\nand enrages the foe,\nmaking it incapable of\nusing the same move\ntwice in a row."

movedata MOVE_FLATTER, "Flatter"
    battleeffect MOVE_EFFECT_SP_ATK_UP_CAUSE_CONFUSION
    pss SPLIT_STATUS
    basepower 0
    type TYPE_DARK
    accuracy 100
    pp 15
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_MAGIC_COAT | FLAG_PROTECT
    appeal APPEAL_KEEP_VOLTAGE_UP
    contesttype CONTEST_SMART
    terminatedata
    movedescription MOVE_FLATTER, "Flattery is used to\nconfuse the foe.\nHowever, it also\nraises the target’s\nSp. Atk stat."

movedata MOVE_WILL_O_WISP, "Will-O-Wisp"
    battleeffect MOVE_EFFECT_STATUS_BURN
    pss SPLIT_STATUS
    basepower 0
    type TYPE_FIRE
    accuracy 85
    pp 15
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_MAGIC_COAT | FLAG_PROTECT
    appeal APPEAL_FIRST_HEARTS
    contesttype CONTEST_BEAUTY
    terminatedata
    movedescription MOVE_WILL_O_WISP, "The user shoots a\nsinister, bluish white\nflame at the foe to\ninflict a burn.\n"

movedata MOVE_MEMENTO, "Memento"
    battleeffect MOVE_EFFECT_FAINT_AND_ATK_SP_ATK_DOWN_2
    pss SPLIT_STATUS
    basepower 0
    type TYPE_DARK
    accuracy 100
    pp 10
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal APPEAL_ALL_SAME_JUDGE
    contesttype CONTEST_TOUGH
    terminatedata
    movedescription MOVE_MEMENTO, "The user faints upon\nusing this move.\nIn return, it sharply\nlowers the target’s\nAttack and Sp. Atk."

movedata MOVE_FACADE, "Facade"
    battleeffect MOVE_EFFECT_DOUBLE_POWER_WHEN_STATUSED
    pss SPLIT_PHYSICAL
    basepower 70
    type TYPE_NORMAL
    accuracy 100
    pp 20
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal APPEAL_DOUBLE_ON_FINALE
    contesttype CONTEST_CUTE
    terminatedata
    movedescription MOVE_FACADE, "An attack move that\ndoubles its power if\nthe user is poisoned,\nparalyzed, or has a\nburn."

movedata MOVE_FOCUS_PUNCH, "Focus Punch"
    battleeffect MOVE_EFFECT_HIT_LAST_WHIFF_IF_HIT
    pss SPLIT_PHYSICAL
    basepower 150
    type TYPE_FIGHTING
    accuracy 100
    pp 20
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority -3
    flags FLAG_HIDE_SHADOW | FLAG_PROTECT | FLAG_CONTACT
    appeal APPEAL_UNIQUE_JUDGE
    contesttype CONTEST_TOUGH
    terminatedata
    movedescription MOVE_FOCUS_PUNCH, "The user focuses its\nmind before launching\na punch. It will fail\nif the user is hit\nbefore it is used."

movedata MOVE_SMELLING_SALTS, "Smelling Salts"
    battleeffect MOVE_EFFECT_DOUBLE_POWER_AND_CURE_PARALYSIS
    pss SPLIT_PHYSICAL
    basepower 70
    type TYPE_NORMAL
    accuracy 100
    pp 10
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9
    appeal APPEAL_LOW_VOLTAGE_BOOST
    contesttype CONTEST_SMART
    terminatedata
    movedescription MOVE_SMELLING_SALTS, "This attack inflicts\ndouble damage on a\nparalyzed foe. It\nalso cures the foe’s\nparalysis, however."

movedata MOVE_FOLLOW_ME, "Follow Me"
    battleeffect MOVE_EFFECT_MAKE_GLOBAL_TARGET
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy 0
    pp 20
    effectchance 0
    target RANGE_USER
    priority 2
    flags 0
    appeal APPEAL_RANDOMIZE_NEXT_TURN
    contesttype CONTEST_CUTE
    terminatedata
    movedescription MOVE_FOLLOW_ME, "The user draws\nattention to itself,\nmaking all foes take\naim only at the user.\n"

movedata MOVE_NATURE_POWER, "Nature Power"
    battleeffect MOVE_EFFECT_NATURE_POWER
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy 0
    pp 20
    effectchance 0
    target RANGE_SINGLE_TARGET_SPECIAL
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_UNUSABLE_IN_GEN_9
    appeal APPEAL_RANDOMIZE_NEXT_TURN
    contesttype CONTEST_BEAUTY
    terminatedata
    movedescription MOVE_NATURE_POWER, "An attack that makes\nuse of nature’s\npower. Its effects\nvary depending on the\nuser’s environment."

movedata MOVE_CHARGE, "Charge"
    battleeffect MOVE_EFFECT_SP_DEF_UP_DOUBLE_ELECTRIC_POWER
    pss SPLIT_STATUS
    basepower 0
    type TYPE_ELECTRIC
    accuracy 0
    pp 20
    effectchance 0
    target RANGE_USER
    priority 0
    flags FLAG_SNATCH
    appeal APPEAL_DOUBLE_NEXT_SCORE
    contesttype CONTEST_SMART
    terminatedata
    movedescription MOVE_CHARGE, "The user boosts the\npower of the Electric\nmove it uses next.\nIt also raises the\nuser’s Sp. Def stat."

movedata MOVE_TAUNT, "Taunt"
    battleeffect MOVE_EFFECT_TAUNT
    pss SPLIT_STATUS
    basepower 0
    type TYPE_DARK
    accuracy 100
    pp 20
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT
    appeal APPEAL_LOW_VOLTAGE_BOOST
    contesttype CONTEST_SMART
    terminatedata
    movedescription MOVE_TAUNT, "The foe is taunted\ninto a rage that\nallows it to use only\nattack moves for two\nto four turns."

movedata MOVE_HELPING_HAND, "Helping Hand"
    battleeffect MOVE_EFFECT_BOOST_ALLY_POWER_BY_50_PERCENT
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy 0
    pp 20
    effectchance 0
    target RANGE_ALLY
    priority 5
    flags 0
    appeal APPEAL_VOLTAGE_CHAIN_HEARTS
    contesttype CONTEST_SMART
    terminatedata
    movedescription MOVE_HELPING_HAND, "A move that boosts\nthe power of the\nally’s attack in a\nDouble Battle.\n"

movedata MOVE_TRICK, "Trick"
    battleeffect MOVE_EFFECT_SWITCH_HELD_ITEMS
    pss SPLIT_STATUS
    basepower 0
    type TYPE_PSYCHIC
    accuracy 100
    pp 10
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal APPEAL_STEAL_VOLTAGE
    contesttype CONTEST_SMART
    terminatedata
    movedescription MOVE_TRICK, "The user catches the\nfoe off guard and\nswaps the foe’s held\nitem with its own.\n"

movedata MOVE_ROLE_PLAY, "Role Play"
    battleeffect MOVE_EFFECT_COPY_ABILITY
    pss SPLIT_STATUS
    basepower 0
    type TYPE_PSYCHIC
    accuracy 0
    pp 10
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags 0
    appeal APPEAL_PITY_HEARTS
    contesttype CONTEST_CUTE
    terminatedata
    movedescription MOVE_ROLE_PLAY, "The user mimics the\nfoe completely,\ncopying the foe’s\nnatural ability.\n"

movedata MOVE_WISH, "Wish"
    battleeffect MOVE_EFFECT_HEAL_IN_3_TURNS
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy 0
    pp 10
    effectchance 0
    target RANGE_USER
    priority 0
    flags FLAG_HIDE_SHADOW | FLAG_SNATCH
    appeal APPEAL_SUCCESSIVE
    contesttype CONTEST_CUTE
    terminatedata
    movedescription MOVE_WISH, "A self-healing move.\nThe user restores its\nown HP by up to half\nof its maximum HP\nin the next turn."

movedata MOVE_ASSIST, "Assist"
    battleeffect MOVE_EFFECT_USE_RANDOM_ALLY_MOVE
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy 0
    pp 20
    effectchance 0
    target RANGE_SINGLE_TARGET_SPECIAL
    priority 0
    flags FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9
    appeal APPEAL_RANDOMIZE_NEXT_TURN
    contesttype CONTEST_CUTE
    terminatedata
    movedescription MOVE_ASSIST, "The user hurriedly\nand randomly uses a\nmove among those\nknown by other\nPokémon in the party."

movedata MOVE_INGRAIN, "Ingrain"
    battleeffect MOVE_EFFECT_GROUND_TRAP_USER_CONTINUOUS_HEAL
    pss SPLIT_STATUS
    basepower 0
    type TYPE_GRASS
    accuracy 0
    pp 20
    effectchance 0
    target RANGE_USER
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_SNATCH
    appeal APPEAL_LATE_BOOST
    contesttype CONTEST_SMART
    terminatedata
    movedescription MOVE_INGRAIN, "The user lays roots\nthat restore HP on\nevery turn.\nBecause it is rooted,\nit can’t switch out."

movedata MOVE_SUPERPOWER, "Superpower"
    battleeffect MOVE_EFFECT_USER_ATK_DEF_DOWN_HIT
    pss SPLIT_PHYSICAL
    basepower 120
    type TYPE_FIGHTING
    accuracy 100
    pp 5
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_HIDE_SHADOW | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal APPEAL_LAST_HEARTS
    contesttype CONTEST_TOUGH
    terminatedata
    movedescription MOVE_SUPERPOWER, "The user attacks the\nfoe with great power.\nHowever, it also\nlowers the user’s\nAttack and Defense."

movedata MOVE_MAGIC_COAT, "Magic Coat"
    battleeffect MOVE_EFFECT_MAGIC_COAT
    pss SPLIT_STATUS
    basepower 0
    type TYPE_PSYCHIC
    accuracy 0
    pp 15
    effectchance 0
    target RANGE_SINGLE_TARGET_SPECIAL
    priority 4
    flags FLAG_UNUSABLE_IN_GEN_9
    appeal APPEAL_DOUBLE_ON_FINALE
    contesttype CONTEST_BEAUTY
    terminatedata
    movedescription MOVE_MAGIC_COAT, "A barrier reflects\nback to the foe\nmoves like Leech\nSeed and moves\nthat damage status."

movedata MOVE_RECYCLE, "Recycle"
    battleeffect MOVE_EFFECT_RECYCLE
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy 0
    pp 10
    effectchance 0
    target RANGE_USER
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_SNATCH
    appeal APPEAL_STEAL_VOLTAGE
    contesttype CONTEST_SMART
    terminatedata
    movedescription MOVE_RECYCLE, "The user recycles a\nheld item that\nhas been used in\nbattle so it can be\nused again."

movedata MOVE_REVENGE, "Revenge"
    battleeffect MOVE_EFFECT_DOUBLE_DAMAGE_IF_HIT
    pss SPLIT_PHYSICAL
    basepower 60
    type TYPE_FIGHTING
    accuracy 100
    pp 10
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority -4
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT | FLAG_UNUSABLE_IN_GEN_9
    appeal APPEAL_DOUBLE_ON_FINALE
    contesttype CONTEST_TOUGH
    terminatedata
    movedescription MOVE_REVENGE, "An attack move that\ninflicts double the\ndamage if the user\nhas been hurt by the\nfoe in the same turn."

movedata MOVE_BRICK_BREAK, "Brick Break"
    battleeffect MOVE_EFFECT_REMOVE_SCREENS
    pss SPLIT_PHYSICAL
    basepower 75
    type TYPE_FIGHTING
    accuracy 100
    pp 15
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal APPEAL_BASIC
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_BRICK_BREAK, "The user attacks with\ntough fists, etc. It\ncan also break any\nbarrier such as Light\nScreen and Reflect."

movedata MOVE_YAWN, "Yawn"
    battleeffect MOVE_EFFECT_STATUS_SLEEP_NEXT_TURN
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy 0
    pp 10
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_MAGIC_COAT | FLAG_PROTECT
    appeal APPEAL_KEEP_VOLTAGE_UP
    contesttype CONTEST_CUTE
    terminatedata
    movedescription MOVE_YAWN, "The user lets loose a\nhuge yawn that lulls\nthe foe into falling\nasleep on the next\nturn."

movedata MOVE_KNOCK_OFF, "Knock Off"
    battleeffect MOVE_EFFECT_REMOVE_HELD_ITEM
    pss SPLIT_PHYSICAL
    basepower 65
    type TYPE_DARK
    accuracy 100
    pp 20
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal APPEAL_BASIC
    contesttype CONTEST_SMART
    terminatedata
    movedescription MOVE_KNOCK_OFF, "The user slaps down\nthe foe’s held item,\npreventing the item\nfrom being used\nduring the battle."

movedata MOVE_ENDEAVOR, "Endeavor"
    battleeffect MOVE_EFFECT_SET_HP_EQUAL_TO_USER
    pss SPLIT_PHYSICAL
    basepower 1
    type TYPE_NORMAL
    accuracy 100
    pp 5
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal APPEAL_DOUBLE_ON_FINALE
    contesttype CONTEST_TOUGH
    terminatedata
    movedescription MOVE_ENDEAVOR, "An attack move that\ncuts down the foe’s\nHP to equal the\nuser’s HP.\n"

movedata MOVE_ERUPTION, "Eruption"
    battleeffect MOVE_EFFECT_DECREASE_POWER_WITH_LESS_USER_HP
    pss SPLIT_SPECIAL
    basepower 150
    type TYPE_FIRE
    accuracy 100
    pp 5
    effectchance 0
    target RANGE_ADJACENT_OPPONENTS
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal APPEAL_LAST_HEARTS
    contesttype CONTEST_BEAUTY
    terminatedata
    movedescription MOVE_ERUPTION, "The user attacks in\nan explosive fury.\nThe lower the user’s\nHP, the less powerful\nthis attack becomes."

movedata MOVE_SKILL_SWAP, "Skill Swap"
    battleeffect MOVE_EFFECT_SWITCH_ABILITIES
    pss SPLIT_STATUS
    basepower 0
    type TYPE_PSYCHIC
    accuracy 0
    pp 10
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal APPEAL_STEAL_VOLTAGE
    contesttype CONTEST_SMART
    terminatedata
    movedescription MOVE_SKILL_SWAP, "The user employs its\npsychic power to\nexchange abilities\nwith the foe.\n"

movedata MOVE_IMPRISON, "Imprison"
    battleeffect MOVE_EFFECT_MAKE_SHARED_MOVES_UNUSEABLE
    pss SPLIT_STATUS
    basepower 0
    type TYPE_PSYCHIC
    accuracy 0
    pp 10
    effectchance 0
    target RANGE_USER
    priority 0
    flags FLAG_SNATCH
    appeal APPEAL_VOLTAGE_CHAIN_HEARTS
    contesttype CONTEST_SMART
    terminatedata
    movedescription MOVE_IMPRISON, "If the foe knows any\nmove also known by\nthe user, the foe\nis prevented\nfrom using it."

movedata MOVE_REFRESH, "Refresh"
    battleeffect MOVE_EFFECT_HEAL_STATUS
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy 0
    pp 20
    effectchance 0
    target RANGE_USER
    priority 0
    flags FLAG_SNATCH | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9
    appeal APPEAL_SUCCESSIVE
    contesttype CONTEST_CUTE
    terminatedata
    movedescription MOVE_REFRESH, "The user rests\nto cure itself of a\npoisoning, burn, or\nparalysis.\n"

movedata MOVE_GRUDGE, "Grudge"
    battleeffect MOVE_EFFECT_REMOVE_ALL_PP_ON_DEFEAT
    pss SPLIT_STATUS
    basepower 0
    type TYPE_GHOST
    accuracy 0
    pp 5
    effectchance 0
    target RANGE_USER
    priority 0
    flags FLAG_UNUSABLE_IN_GEN_9
    appeal APPEAL_LOWER_VOLTAGES
    contesttype CONTEST_TOUGH
    terminatedata
    movedescription MOVE_GRUDGE, "If the user faints,\nthe user’s grudge\nfully depletes the PP\nof the foe’s move\nthat knocked it out."

movedata MOVE_SNATCH, "Snatch"
    battleeffect MOVE_EFFECT_STEAL_STATUS_MOVE
    pss SPLIT_STATUS
    basepower 0
    type TYPE_DARK
    accuracy 0
    pp 10
    effectchance 0
    target RANGE_SINGLE_TARGET_SPECIAL
    priority 4
    flags FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9
    appeal APPEAL_STEAL_VOLTAGE
    contesttype CONTEST_SMART
    terminatedata
    movedescription MOVE_SNATCH, "The user steals the\neffects of any\nhealing or stat-\nchanging move the foe\nattempts to use."

movedata MOVE_SECRET_POWER, "Secret Power"
    battleeffect MOVE_EFFECT_SECRET_POWER
    pss SPLIT_PHYSICAL
    basepower 70
    type TYPE_NORMAL
    accuracy 100
    pp 20
    effectchance 30
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9
    appeal APPEAL_RANDOMIZE_NEXT_TURN
    contesttype CONTEST_SMART
    terminatedata
    movedescription MOVE_SECRET_POWER, "The user attacks with\na secret power. Its\nadded effects vary\ndepending on the\nuser’s environment."

movedata MOVE_DIVE, "Dive"
    battleeffect MOVE_EFFECT_DIVE
    pss SPLIT_PHYSICAL
    basepower 80
    type TYPE_WATER
    accuracy 100
    pp 10
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal APPEAL_UNIQUE_JUDGE
    contesttype CONTEST_BEAUTY
    terminatedata
    movedescription MOVE_DIVE, "A two-turn attack.\nThe user dives\nunderwater on the\nfirst turn, then hits\non the next turn."

movedata MOVE_ARM_THRUST, "Arm Thrust"
    battleeffect MOVE_EFFECT_MULTI_HIT
    pss SPLIT_PHYSICAL
    basepower 15
    type TYPE_FIGHTING
    accuracy 100
    pp 20
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal APPEAL_SUCCESSIVE
    contesttype CONTEST_TOUGH
    terminatedata
    movedescription MOVE_ARM_THRUST, "The user looses a\nflurry of open-palmed\narm thrusts that hit\ntwo to five times in a\nrow."

movedata MOVE_CAMOUFLAGE, "Camouflage"
    battleeffect MOVE_EFFECT_CAMOUFLAGE
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy 0
    pp 20
    effectchance 0
    target RANGE_USER
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_SNATCH | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9
    appeal APPEAL_KEEP_VOLTAGE_DOWN
    contesttype CONTEST_SMART
    terminatedata
    movedescription MOVE_CAMOUFLAGE, "The user’s type is\nchanged depending on\nits environment, such\nas at water’s edge, in\ngrass, or in a cave."

movedata MOVE_TAIL_GLOW, "Tail Glow"
    battleeffect MOVE_EFFECT_SP_ATK_UP_3
    pss SPLIT_STATUS
    basepower 0
    type TYPE_BUG
    accuracy 0
    pp 20
    effectchance 0
    target RANGE_USER
    priority 0
    flags FLAG_SNATCH | FLAG_UNUSABLE_IN_GEN_8
    appeal APPEAL_DOUBLE_NEXT_SCORE
    contesttype CONTEST_BEAUTY
    terminatedata
    movedescription MOVE_TAIL_GLOW, "The user stares at\nflashing lights to\nfocus its mind,\nsharply raising its\nSp. Atk stat."

movedata MOVE_LUSTER_PURGE, "Luster Purge"
    battleeffect MOVE_EFFECT_LOWER_SP_DEF_HIT
    pss SPLIT_SPECIAL
    basepower 95
    type TYPE_PSYCHIC
    accuracy 100
    pp 5
    effectchance 50
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal APPEAL_AFTER_MAX_VOLTAGE_HEARTS
    contesttype CONTEST_SMART
    terminatedata
    movedescription MOVE_LUSTER_PURGE, "The user looses a\ndamaging burst of\nlight. It may also\nreduce the target’s\nSp. Def stat."

movedata MOVE_MIST_BALL, "Mist Ball"
    battleeffect MOVE_EFFECT_LOWER_SP_ATK_HIT
    pss SPLIT_SPECIAL
    basepower 95
    type TYPE_PSYCHIC
    accuracy 100
    pp 5
    effectchance 50
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_HIDE_SHADOW | FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal APPEAL_AFTER_MAX_VOLTAGE_HEARTS
    contesttype CONTEST_SMART
    terminatedata
    movedescription MOVE_MIST_BALL, "A mistlike flurry of\ndown envelops and\ndamages the foe. It\nmay also lower the\ntarget’s Sp. Atk."

movedata MOVE_FEATHER_DANCE, "Feather Dance"
    battleeffect MOVE_EFFECT_ATK_DOWN_2
    pss SPLIT_STATUS
    basepower 0
    type TYPE_FLYING
    accuracy 100
    pp 15
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_MAGIC_COAT | FLAG_PROTECT
    appeal APPEAL_KEEP_VOLTAGE_UP
    contesttype CONTEST_BEAUTY
    terminatedata
    movedescription MOVE_FEATHER_DANCE, "The user covers the\nfoe with a mass of\ndown that sharply\nlowers the Attack\nstat."

movedata MOVE_TEETER_DANCE, "Teeter Dance"
    battleeffect MOVE_EFFECT_CONFUSE_ALL_ADJACENT
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy 100
    pp 20
    effectchance 0
    target RANGE_ALL_ADJACENT
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal APPEAL_RANDOMIZE_NEXT_TURN
    contesttype CONTEST_CUTE
    terminatedata
    movedescription MOVE_TEETER_DANCE, "The user performs a\nwobbly dance that\nconfuses all the\nPokémon in battle.\n"

movedata MOVE_BLAZE_KICK, "Blaze Kick"
    battleeffect MOVE_EFFECT_HIGH_CRITICAL_BURN_HIT
    pss SPLIT_PHYSICAL
    basepower 85
    type TYPE_FIRE
    accuracy 90
    pp 10
    effectchance 10
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal APPEAL_FIRST_HEARTS
    contesttype CONTEST_BEAUTY
    terminatedata
    movedescription MOVE_BLAZE_KICK, "The user launches a\nkick with a high\ncritical-hit ratio.\nIt may also leave the\ntarget with a burn."

movedata MOVE_MUD_SPORT, "Mud Sport"
    battleeffect MOVE_EFFECT_HALVE_ELECTRIC_DAMAGE
    pss SPLIT_STATUS
    basepower 0
    type TYPE_GROUND
    accuracy 0
    pp 15
    effectchance 0
    target RANGE_FIELD
    priority 0
    flags FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9
    appeal APPEAL_KEEP_VOLTAGE_DOWN
    contesttype CONTEST_CUTE
    terminatedata
    movedescription MOVE_MUD_SPORT, "The user covers\nitself with mud. It\nweakens Electric-\ntype moves while the\nuser is in the battle."

movedata MOVE_ICE_BALL, "Ice Ball"
    battleeffect MOVE_EFFECT_DOUBLE_POWER_EACH_TURN_LOCK_INTO
    pss SPLIT_PHYSICAL
    basepower 30
    type TYPE_ICE
    accuracy 90
    pp 20
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9
    appeal APPEAL_SUCCESSIVE
    contesttype CONTEST_BEAUTY
    terminatedata
    movedescription MOVE_ICE_BALL, "The user continually\nrolls into the foe\nover five turns. It\nbecomes stronger\neach time it hits."

movedata MOVE_NEEDLE_ARM, "Needle Arm"
    battleeffect MOVE_EFFECT_FLINCH_HIT
    pss SPLIT_PHYSICAL
    basepower 60
    type TYPE_GRASS
    accuracy 100
    pp 15
    effectchance 30
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9
    appeal APPEAL_BASIC
    contesttype CONTEST_SMART
    terminatedata
    movedescription MOVE_NEEDLE_ARM, "The user attacks by\nwildly swinging its\nthorny arms.\nIt may also make the\ntarget flinch."

movedata MOVE_SLACK_OFF, "Slack Off"
    battleeffect MOVE_EFFECT_RESTORE_HALF_HP
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy 0
    pp 5
    effectchance 0
    target RANGE_USER
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_SNATCH
    appeal APPEAL_SUCCESSIVE
    contesttype CONTEST_CUTE
    terminatedata
    movedescription MOVE_SLACK_OFF, "The user slacks off,\nrestoring its own HP\nby up to half of its\nmaximum HP.\n"

movedata MOVE_HYPER_VOICE, "Hyper Voice"
    battleeffect MOVE_EFFECT_HIT
    pss SPLIT_SPECIAL
    basepower 90
    type TYPE_NORMAL
    accuracy 100
    pp 10
    effectchance 0
    target RANGE_ADJACENT_OPPONENTS
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal APPEAL_BASIC
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_HYPER_VOICE, "The user lets loose\na horribly echoing\nshout with the\npower to inflict\ndamage."

movedata MOVE_POISON_FANG, "Poison Fang"
    battleeffect MOVE_EFFECT_BADLY_POISON_HIT
    pss SPLIT_PHYSICAL
    basepower 50
    type TYPE_POISON
    accuracy 100
    pp 15
    effectchance 50
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal APPEAL_VOLTAGE_HEARTS
    contesttype CONTEST_SMART
    terminatedata
    movedescription MOVE_POISON_FANG, "The user bites the\nfoe with toxic fangs.\nIt may also leave the\nfoe badly poisoned.\n"

movedata MOVE_CRUSH_CLAW, "Crush Claw"
    battleeffect MOVE_EFFECT_LOWER_DEFENSE_HIT
    pss SPLIT_PHYSICAL
    basepower 75
    type TYPE_NORMAL
    accuracy 95
    pp 10
    effectchance 50
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal APPEAL_BASIC
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_CRUSH_CLAW, "The user slashes the\nfoe with hard and\nsharp claws.\nIt may also lower the\ntarget’s Defense."

movedata MOVE_BLAST_BURN, "Blast Burn"
    battleeffect MOVE_EFFECT_RECHARGE_AFTER
    pss SPLIT_SPECIAL
    basepower 150
    type TYPE_FIRE
    accuracy 90
    pp 5
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal APPEAL_AFTER_MAX_VOLTAGE_HEARTS
    contesttype CONTEST_BEAUTY
    terminatedata
    movedescription MOVE_BLAST_BURN, "The foe is razed by\na fiery explosion.\nThe user must rest\non the next turn,\nhowever."

movedata MOVE_HYDRO_CANNON, "Hydro Cannon"
    battleeffect MOVE_EFFECT_RECHARGE_AFTER
    pss SPLIT_SPECIAL
    basepower 150
    type TYPE_WATER
    accuracy 90
    pp 5
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_HIDE_SHADOW | FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal APPEAL_AFTER_MAX_VOLTAGE_HEARTS
    contesttype CONTEST_BEAUTY
    terminatedata
    movedescription MOVE_HYDRO_CANNON, "The foe is hit with\na watery blast.\nThe user must rest\non the next turn,\nhowever."

movedata MOVE_METEOR_MASH, "Meteor Mash"
    battleeffect MOVE_EFFECT_RAISE_ATTACK_HIT
    pss SPLIT_PHYSICAL
    basepower 90
    type TYPE_STEEL
    accuracy 90
    pp 10
    effectchance 20
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal APPEAL_LAST_HEARTS
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_METEOR_MASH, "The foe is hit with a\nhard punch fired\nlike a meteor.\nIt may also raise\nthe user’s Attack."

movedata MOVE_ASTONISH, "Astonish"
    battleeffect MOVE_EFFECT_FLINCH_HIT
    pss SPLIT_PHYSICAL
    basepower 30
    type TYPE_GHOST
    accuracy 100
    pp 15
    effectchance 30
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal APPEAL_BASIC
    contesttype CONTEST_SMART
    terminatedata
    movedescription MOVE_ASTONISH, "The user attacks the\nfoe while shouting in\na startling fashion.\nIt may also make the\ntarget flinch."

movedata MOVE_WEATHER_BALL, "Weather Ball"
    battleeffect MOVE_EFFECT_CHANGE_TYPE_WITH_WEATHER
    pss SPLIT_SPECIAL
    basepower 50
    type TYPE_NORMAL
    accuracy 100
    pp 10
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal APPEAL_VOLTAGE_HEARTS
    contesttype CONTEST_SMART
    terminatedata
    movedescription MOVE_WEATHER_BALL, "An attack move that\nvaries in power and\ntype depending on\nthe weather.\n"

movedata MOVE_AROMATHERAPY, "Aromatherapy"
    battleeffect MOVE_EFFECT_CURE_PARTY_STATUS
    pss SPLIT_STATUS
    basepower 0
    type TYPE_GRASS
    accuracy 0
    pp 5
    effectchance 0
    target RANGE_USER_SIDE
    priority FLAG_UNUSABLE_IN_GEN_9
    flags FLAG_SNATCH
    appeal APPEAL_SUCCESSIVE
    contesttype CONTEST_SMART
    terminatedata
    movedescription MOVE_AROMATHERAPY, "The user releases a\nsoothing scent that\nheals all status\nproblems affecting\nthe user’s party."

movedata MOVE_FAKE_TEARS, "Fake Tears"
    battleeffect MOVE_EFFECT_SP_DEF_DOWN_2
    pss SPLIT_STATUS
    basepower 0
    type TYPE_DARK
    accuracy 100
    pp 20
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_MAGIC_COAT | FLAG_PROTECT
    appeal APPEAL_KEEP_VOLTAGE_UP
    contesttype CONTEST_SMART
    terminatedata
    movedescription MOVE_FAKE_TEARS, "The user feigns\ncrying to make the\nfoe feel flustered,\nsharply lowering its\nSp. Def stat."

movedata MOVE_AIR_CUTTER, "Air Cutter"
    battleeffect MOVE_EFFECT_HIGH_CRITICAL
    pss SPLIT_SPECIAL
    basepower 60
    type TYPE_FLYING
    accuracy 95
    pp 25
    effectchance 0
    target RANGE_ADJACENT_OPPONENTS
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal APPEAL_BASIC
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_AIR_CUTTER, "The user launches\nrazorlike wind to\nslash the foe.\nIt has a high\ncritical-hit ratio."

movedata MOVE_OVERHEAT, "Overheat"
    battleeffect MOVE_EFFECT_USER_SP_ATK_DOWN_2
    pss SPLIT_SPECIAL
    basepower 130
    type TYPE_FIRE
    accuracy 90
    pp 5
    effectchance 100
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_HIDE_SHADOW | FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal APPEAL_AFTER_MAX_VOLTAGE_HEARTS
    contesttype CONTEST_BEAUTY
    terminatedata
    movedescription MOVE_OVERHEAT, "The user attacks the\nfoe at full power.\nThe attack’s recoil\nsharply reduces the\nuser’s Sp. Atk stat."

movedata MOVE_ODOR_SLEUTH, "Odor Sleuth"
    battleeffect MOVE_EFFECT_IGNORE_EVASION_REMOVE_GHOST_IMMUNE
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy 0
    pp 40
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9
    appeal APPEAL_VOLTAGE_CHAIN_HEARTS
    contesttype CONTEST_SMART
    terminatedata
    movedescription MOVE_ODOR_SLEUTH, "Enables the user to\nhit a Ghost type with\nany type of move. It\nalso enables the user\nto hit an evasive foe."

movedata MOVE_ROCK_TOMB, "Rock Tomb"
    battleeffect MOVE_EFFECT_LOWER_SPEED_HIT
    pss SPLIT_PHYSICAL
    basepower 60
    type TYPE_ROCK
    accuracy 95
    pp 15
    effectchance 100
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal APPEAL_LAST_NEXT_TURN
    contesttype CONTEST_SMART
    terminatedata
    movedescription MOVE_ROCK_TOMB, "Boulders are hurled\nat the foe. It also\nlowers the foe’s\nSpeed by preventing\nits movement."

movedata MOVE_SILVER_WIND, "Silver Wind"
    battleeffect MOVE_EFFECT_RAISE_ALL_STATS_HIT
    pss SPLIT_SPECIAL
    basepower 60
    type TYPE_BUG
    accuracy 100
    pp 5
    effectchance 10
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9
    appeal APPEAL_VOLTAGE_HEARTS
    contesttype CONTEST_BEAUTY
    terminatedata
    movedescription MOVE_SILVER_WIND, "The foe is attacked\nwith powdery scales\nblown by wind.\nIt may also raise all\nthe user’s stats."

movedata MOVE_METAL_SOUND, "Metal Sound"
    battleeffect MOVE_EFFECT_SP_DEF_DOWN_2
    pss SPLIT_STATUS
    basepower 0
    type TYPE_STEEL
    accuracy 85
    pp 40
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_MAGIC_COAT | FLAG_PROTECT
    appeal APPEAL_LOWER_VOLTAGES
    contesttype CONTEST_SMART
    terminatedata
    movedescription MOVE_METAL_SOUND, "A horrible sound like\nscraping metal is\nemitted to sharply\nreduce the foe’s\nSp. Def stat."

movedata MOVE_GRASS_WHISTLE, "Grass Whistle"
    battleeffect MOVE_EFFECT_STATUS_SLEEP
    pss SPLIT_STATUS
    basepower 0
    type TYPE_GRASS
    accuracy 55
    pp 15
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_MAGIC_COAT | FLAG_PROTECT | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9
    appeal APPEAL_KEEP_VOLTAGE_UP
    contesttype CONTEST_SMART
    terminatedata
    movedescription MOVE_GRASS_WHISTLE, "The user plays a\npleasant melody that\nlulls the foe into a\ndeep sleep.\n"

movedata MOVE_TICKLE, "Tickle"
    battleeffect MOVE_EFFECT_ATK_DEF_DOWN
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy 100
    pp 20
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_MAGIC_COAT | FLAG_PROTECT
    appeal APPEAL_KEEP_VOLTAGE_UP
    contesttype CONTEST_CUTE
    terminatedata
    movedescription MOVE_TICKLE, "The user tickles the\nfoe into laughing,\nreducing its Attack\nand Defense stats.\n"

movedata MOVE_COSMIC_POWER, "Cosmic Power"
    battleeffect MOVE_EFFECT_DEF_SP_DEF_UP
    pss SPLIT_STATUS
    basepower 0
    type TYPE_PSYCHIC
    accuracy 0
    pp 20
    effectchance 0
    target RANGE_USER
    priority 0
    flags FLAG_HIDE_SHADOW | FLAG_SNATCH
    appeal APPEAL_DOUBLE_NEXT_SCORE
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_COSMIC_POWER, "The user absorbs a\nmystical power from\nspace to raise its\nDefense and Sp. Def\nstats."

movedata MOVE_WATER_SPOUT, "Water Spout"
    battleeffect MOVE_EFFECT_DECREASE_POWER_WITH_LESS_USER_HP
    pss SPLIT_SPECIAL
    basepower 150
    type TYPE_WATER
    accuracy 100
    pp 5
    effectchance 0
    target RANGE_ADJACENT_OPPONENTS
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal APPEAL_AFTER_MAX_VOLTAGE_HEARTS
    contesttype CONTEST_BEAUTY
    terminatedata
    movedescription MOVE_WATER_SPOUT, "The user spouts\nwater to damage the\nfoe. The lower the\nuser’s HP, the less\npowerful it becomes."

movedata MOVE_SIGNAL_BEAM, "Signal Beam"
    battleeffect MOVE_EFFECT_CONFUSE_HIT
    pss SPLIT_SPECIAL
    basepower 75
    type TYPE_BUG
    accuracy 100
    pp 15
    effectchance 10
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9
    appeal APPEAL_VOLTAGE_HEARTS
    contesttype CONTEST_BEAUTY
    terminatedata
    movedescription MOVE_SIGNAL_BEAM, "The user attacks with\na sinister beam of\nlight. It may also\nconfuse the target.\n"

movedata MOVE_SHADOW_PUNCH, "Shadow Punch"
    battleeffect MOVE_EFFECT_BYPASS_ACCURACY
    pss SPLIT_PHYSICAL
    basepower 60
    type TYPE_GHOST
    accuracy 0
    pp 20
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal APPEAL_FIRST_HEARTS
    contesttype CONTEST_SMART
    terminatedata
    movedescription MOVE_SHADOW_PUNCH, "The user throws a\npunch at the foe from\nthe shadows.\nThe punch lands\nwithout fail."

movedata MOVE_EXTRASENSORY, "Extrasensory"
    battleeffect MOVE_EFFECT_FLINCH_HIT
    pss SPLIT_SPECIAL
    basepower 80
    type TYPE_PSYCHIC
    accuracy 100
    pp 20
    effectchance 10
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal APPEAL_FIRST_HEARTS
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_EXTRASENSORY, "The user attacks with\nan odd, unseeable\npower.\nIt may also make the\nfoe flinch."

movedata MOVE_SKY_UPPERCUT, "Sky Uppercut"
    battleeffect MOVE_EFFECT_HIT_FLY
    pss SPLIT_PHYSICAL
    basepower 85
    type TYPE_FIGHTING
    accuracy 90
    pp 15
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_HIDE_SHADOW | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9
    appeal APPEAL_FIRST_HEARTS
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_SKY_UPPERCUT, "The user attacks the\nfoe with an uppercut\nthrown skyward\nwith force.\n"

movedata MOVE_SAND_TOMB, "Sand Tomb"
    battleeffect MOVE_EFFECT_BIND_HIT
    pss SPLIT_PHYSICAL
    basepower 35
    type TYPE_GROUND
    accuracy 85
    pp 15
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal APPEAL_LATE_BOOST
    contesttype CONTEST_SMART
    terminatedata
    movedescription MOVE_SAND_TOMB, "The user traps the\nfoe inside a harshly\nraging sandstorm for\ntwo to five turns.\n"

movedata MOVE_SHEER_COLD, "Sheer Cold"
    battleeffect MOVE_EFFECT_ONE_HIT_KO
    pss SPLIT_SPECIAL
    basepower 1
    type TYPE_ICE
    accuracy 30
    pp 5
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal APPEAL_ALL_SAME_JUDGE
    contesttype CONTEST_BEAUTY
    terminatedata
    movedescription MOVE_SHEER_COLD, "The foe is attacked\nwith a blast of\nabsolute-zero cold.\nThe foe instantly\nfaints if it hits."

movedata MOVE_MUDDY_WATER, "Muddy Water"
    battleeffect MOVE_EFFECT_LOWER_ACCURACY_HIT
    pss SPLIT_SPECIAL
    basepower 90
    type TYPE_WATER
    accuracy 85
    pp 10
    effectchance 30
    target RANGE_ADJACENT_OPPONENTS
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal APPEAL_LAST_HEARTS
    contesttype CONTEST_TOUGH
    terminatedata
    movedescription MOVE_MUDDY_WATER, "The user attacks by\nshooting out muddy\nwater.\nIt may also lower the\nfoe’s accuracy."

movedata MOVE_BULLET_SEED, "Bullet Seed"
    battleeffect MOVE_EFFECT_MULTI_HIT
    pss SPLIT_PHYSICAL
    basepower 25
    type TYPE_GRASS
    accuracy 100
    pp 30
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal APPEAL_SUCCESSIVE
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_BULLET_SEED, "The user forcefully\nshoots seeds at the\nfoe. Two to five\nseeds are shot in\nrapid succession."

movedata MOVE_AERIAL_ACE, "Aerial Ace"
    battleeffect MOVE_EFFECT_BYPASS_ACCURACY
    pss SPLIT_PHYSICAL
    basepower 60
    type TYPE_FLYING
    accuracy 0
    pp 20
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal APPEAL_FIRST_HEARTS
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_AERIAL_ACE, "The user confounds\nthe foe with speed,\nthen slashes.\nThe attack lands\nwithout fail."

movedata MOVE_ICICLE_SPEAR, "Icicle Spear"
    battleeffect MOVE_EFFECT_MULTI_HIT
    pss SPLIT_PHYSICAL
    basepower 25
    type TYPE_ICE
    accuracy 100
    pp 30
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal APPEAL_SUCCESSIVE
    contesttype CONTEST_BEAUTY
    terminatedata
    movedescription MOVE_ICICLE_SPEAR, "The user launches\nsharp icicles at the\nfoe. It strikes two\nto five times in a\nrow."

movedata MOVE_IRON_DEFENSE, "Iron Defense"
    battleeffect MOVE_EFFECT_DEF_UP_2
    pss SPLIT_STATUS
    basepower 0
    type TYPE_STEEL
    accuracy 0
    pp 15
    effectchance 0
    target RANGE_USER
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_SNATCH
    appeal APPEAL_KEEP_VOLTAGE_DOWN
    contesttype CONTEST_TOUGH
    terminatedata
    movedescription MOVE_IRON_DEFENSE, "The user hardens\nits body’s surface\nlike iron, sharply\nraising its Defense\nstat."

movedata MOVE_BLOCK, "Block"
    battleeffect MOVE_EFFECT_PREVENT_ESCAPE
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy 0
    pp 5
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_MAGIC_COAT
    appeal APPEAL_KEEP_VOLTAGE_DOWN
    contesttype CONTEST_CUTE
    terminatedata
    movedescription MOVE_BLOCK, "The user blocks the\nfoe’s way with arms\nspread wide to\nprevent escape.\n"

movedata MOVE_HOWL, "Howl"
    battleeffect MOVE_EFFECT_ATK_UP
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy 0
    pp 40
    effectchance 0
    target RANGE_USER
    priority 0
    flags FLAG_SNATCH
    appeal APPEAL_DOUBLE_NEXT_SCORE
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_HOWL, "The user howls loudly\nto raise its spirit,\nboosting its Attack\nstat.\n"

movedata MOVE_DRAGON_CLAW, "Dragon Claw"
    battleeffect MOVE_EFFECT_HIT
    pss SPLIT_PHYSICAL
    basepower 80
    type TYPE_DRAGON
    accuracy 100
    pp 15
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal APPEAL_FIRST_HEARTS
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_DRAGON_CLAW, "The user slashes the\nfoe with huge, sharp\nclaws.\n\n"

movedata MOVE_FRENZY_PLANT, "Frenzy Plant"
    battleeffect MOVE_EFFECT_RECHARGE_AFTER
    pss SPLIT_SPECIAL
    basepower 150
    type TYPE_GRASS
    accuracy 90
    pp 5
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_HIDE_SHADOW | FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal APPEAL_AFTER_MAX_VOLTAGE_HEARTS
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_FRENZY_PLANT, "The foe is slammed\nwith an enormous\ntree.\nThe user can’t move\non the next turn."

movedata MOVE_BULK_UP, "Bulk Up"
    battleeffect MOVE_EFFECT_ATK_DEF_UP
    pss SPLIT_STATUS
    basepower 0
    type TYPE_FIGHTING
    accuracy 0
    pp 20
    effectchance 0
    target RANGE_USER
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_SNATCH
    appeal APPEAL_DOUBLE_NEXT_SCORE
    contesttype CONTEST_BEAUTY
    terminatedata
    movedescription MOVE_BULK_UP, "The user tenses its\nmuscles to bulk up\nits body, boosting\nboth its Attack and\nDefense stats."

movedata MOVE_BOUNCE, "Bounce"
    battleeffect MOVE_EFFECT_BOUNCE
    pss SPLIT_PHYSICAL
    basepower 85
    type TYPE_FLYING
    accuracy 85
    pp 5
    effectchance 30
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal APPEAL_UNIQUE_JUDGE
    contesttype CONTEST_CUTE
    terminatedata
    movedescription MOVE_BOUNCE, "The user bounces up\nhigh, then drops on\nthe foe on the second\nturn. It may also\nparalyze the foe."

movedata MOVE_MUD_SHOT, "Mud Shot"
    battleeffect MOVE_EFFECT_LOWER_SPEED_HIT
    pss SPLIT_SPECIAL
    basepower 55
    type TYPE_GROUND
    accuracy 95
    pp 15
    effectchance 100
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal APPEAL_LAST_NEXT_TURN
    contesttype CONTEST_TOUGH
    terminatedata
    movedescription MOVE_MUD_SHOT, "The user attacks by\nhurling a blob of mud\nat the foe.\nIt also reduces the\ntarget’s Speed."

movedata MOVE_POISON_TAIL, "Poison Tail"
    battleeffect MOVE_EFFECT_HIGH_CRITICAL_POISON_HIT
    pss SPLIT_PHYSICAL
    basepower 50
    type TYPE_POISON
    accuracy 100
    pp 25
    effectchance 10
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal APPEAL_VOLTAGE_HEARTS
    contesttype CONTEST_SMART
    terminatedata
    movedescription MOVE_POISON_TAIL, "An attack with a\nhigh critical-hit\nratio. This tail \nattack may also \npoison the foe."

movedata MOVE_COVET, "Covet"
    battleeffect MOVE_EFFECT_STEAL_HELD_ITEM
    pss SPLIT_PHYSICAL
    basepower 60
    type TYPE_NORMAL
    accuracy 100
    pp 25
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal APPEAL_STEAL_VOLTAGE
    contesttype CONTEST_CUTE
    terminatedata
    movedescription MOVE_COVET, "The user endearingly\napproaches the foe,\nthen steals the item\nthe foe is holding.\n"

movedata MOVE_VOLT_TACKLE, "Volt Tackle"
    battleeffect MOVE_EFFECT_RECOIL_PARALYZE_HIT
    pss SPLIT_PHYSICAL
    basepower 120
    type TYPE_ELECTRIC
    accuracy 100
    pp 15
    effectchance 10
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_HIDE_SHADOW | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal APPEAL_AFTER_MAX_VOLTAGE_HEARTS
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_VOLT_TACKLE, "The user electrifies\nitself, then charges\nat the foe. It causes\nconsiderable damage\nto the user as well."

movedata MOVE_MAGICAL_LEAF, "Magical Leaf"
    battleeffect MOVE_EFFECT_BYPASS_ACCURACY
    pss SPLIT_SPECIAL
    basepower 60
    type TYPE_GRASS
    accuracy 0
    pp 20
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal APPEAL_FIRST_HEARTS
    contesttype CONTEST_BEAUTY
    terminatedata
    movedescription MOVE_MAGICAL_LEAF, "The user scatters\ncurious leaves that\nchase the foe.\nThis attack will not\nmiss."

movedata MOVE_WATER_SPORT, "Water Sport"
    battleeffect MOVE_EFFECT_HALVE_FIRE_DAMAGE
    pss SPLIT_STATUS
    basepower 0
    type TYPE_WATER
    accuracy 0
    pp 15
    effectchance 0
    target RANGE_FIELD
    priority 0
    flags FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9
    appeal APPEAL_KEEP_VOLTAGE_DOWN
    contesttype CONTEST_CUTE
    terminatedata
    movedescription MOVE_WATER_SPORT, "The user soaks itself\nwith water. The move\nweakens Fire-type\nmoves while the user\nis in the battle."

movedata MOVE_CALM_MIND, "Calm Mind"
    battleeffect MOVE_EFFECT_SP_ATK_SP_DEF_UP
    pss SPLIT_STATUS
    basepower 0
    type TYPE_PSYCHIC
    accuracy 0
    pp 20
    effectchance 0
    target RANGE_USER
    priority 0
    flags FLAG_SNATCH
    appeal APPEAL_DOUBLE_NEXT_SCORE
    contesttype CONTEST_SMART
    terminatedata
    movedescription MOVE_CALM_MIND, "The user quietly\nfocuses its mind and\ncalms its spirit to\nraise its Sp. Atk and\nSp. Def stats."

movedata MOVE_LEAF_BLADE, "Leaf Blade"
    battleeffect MOVE_EFFECT_HIGH_CRITICAL
    pss SPLIT_PHYSICAL
    basepower 90
    type TYPE_GRASS
    accuracy 100
    pp 15
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal APPEAL_FIRST_HEARTS
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_LEAF_BLADE, "The foe is slashed\nwith a sharp leaf.\nIt has a high\ncritical-hit ratio.\n"

movedata MOVE_DRAGON_DANCE, "Dragon Dance"
    battleeffect MOVE_EFFECT_ATK_SPEED_UP
    pss SPLIT_STATUS
    basepower 0
    type TYPE_DRAGON
    accuracy 0
    pp 20
    effectchance 0
    target RANGE_USER
    priority 0
    flags FLAG_SNATCH
    appeal APPEAL_DOUBLE_NEXT_SCORE
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_DRAGON_DANCE, "The user vigorously\nperforms a mystic,\npowerful dance that\nboosts its Attack and\nSpeed stats."

movedata MOVE_ROCK_BLAST, "Rock Blast"
    battleeffect MOVE_EFFECT_MULTI_HIT
    pss SPLIT_PHYSICAL
    basepower 25
    type TYPE_ROCK
    accuracy 90
    pp 10
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal APPEAL_SUCCESSIVE
    contesttype CONTEST_TOUGH
    terminatedata
    movedescription MOVE_ROCK_BLAST, "The user hurls hard\nrocks at the foe.\nTwo to five rocks are\nlaunched in quick\nsuccession."

movedata MOVE_SHOCK_WAVE, "Shock Wave"
    battleeffect MOVE_EFFECT_BYPASS_ACCURACY
    pss SPLIT_SPECIAL
    basepower 60
    type TYPE_ELECTRIC
    accuracy 0
    pp 20
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal APPEAL_FIRST_HEARTS
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_SHOCK_WAVE, "The user strikes the\nfoe with a quick jolt\nof electricity.\nThis attack cannot be\nevaded."

movedata MOVE_WATER_PULSE, "Water Pulse"
    battleeffect MOVE_EFFECT_CONFUSE_HIT
    pss SPLIT_SPECIAL
    basepower 60
    type TYPE_WATER
    accuracy 100
    pp 20
    effectchance 20
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_HIDE_SHADOW | FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal APPEAL_FIRST_HEARTS
    contesttype CONTEST_BEAUTY
    terminatedata
    movedescription MOVE_WATER_PULSE, "The user attacks the\nfoe with a pulsing\nblast of water.\nIt may also confuse\nthe foe."

movedata MOVE_DOOM_DESIRE, "Doom Desire"
    battleeffect MOVE_EFFECT_HIT_IN_3_TURNS
    pss SPLIT_SPECIAL
    basepower 140
    type TYPE_STEEL
    accuracy 100
    pp 5
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_HIDE_SHADOW
    appeal APPEAL_FIRST_HEARTS
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_DOOM_DESIRE, "Two turns after this\nmove is used, the\nuser blasts the foe\nwith a concentrated\nbundle of light."

movedata MOVE_PSYCHO_BOOST, "Psycho Boost"
    battleeffect MOVE_EFFECT_USER_SP_ATK_DOWN_2
    pss SPLIT_SPECIAL
    basepower 140
    type TYPE_PSYCHIC
    accuracy 90
    pp 5
    effectchance 100
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_HIDE_SHADOW | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_UNUSABLE_IN_GEN_8
    appeal APPEAL_AFTER_MAX_VOLTAGE_HEARTS
    contesttype CONTEST_SMART
    terminatedata
    movedescription MOVE_PSYCHO_BOOST, "The user attacks the\nfoe at full power.\nThe attack’s recoil\nsharply reduces the\nuser’s Sp. Atk stat."

movedata MOVE_ROOST, "Roost"
    battleeffect MOVE_EFFECT_HEAL_HALF_REMOVE_FLYING_TYPE
    pss SPLIT_STATUS
    basepower 0
    type TYPE_FLYING
    accuracy 0
    pp 5
    effectchance 0
    target RANGE_USER
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_SNATCH
    appeal APPEAL_SUCCESSIVE
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_ROOST, "The user lands and\nrests its body.\nIt restores the\nuser’s HP by up to\nhalf of its max HP."

movedata MOVE_GRAVITY, "Gravity"
    battleeffect MOVE_EFFECT_GRAVITY
    pss SPLIT_STATUS
    basepower 0
    type TYPE_PSYCHIC
    accuracy 0
    pp 5
    effectchance 0
    target RANGE_FIELD
    priority 0
    flags 0
    appeal APPEAL_KEEP_VOLTAGE_DOWN
    contesttype CONTEST_BEAUTY
    terminatedata
    movedescription MOVE_GRAVITY, "Gravity is intensified\nfor five turns, making\nmoves involving flying\nunusable and\nnegating Levitation."

movedata MOVE_MIRACLE_EYE, "Miracle Eye"
    battleeffect MOVE_EFFECT_IGNORE_EVATION_REMOVE_DARK_IMMUNE
    pss SPLIT_STATUS
    basepower 0
    type TYPE_PSYCHIC
    accuracy 0
    pp 40
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9
    appeal APPEAL_VOLTAGE_CHAIN_HEARTS
    contesttype CONTEST_CUTE
    terminatedata
    movedescription MOVE_MIRACLE_EYE, "Enables the user to\nhit a Dark type with\nany type of move. It\nalso enables the user\nto hit an evasive foe."

movedata MOVE_WAKE_UP_SLAP, "Wake-Up Slap"
    battleeffect MOVE_EFFECT_DOUBLE_POWER_HEAL_SLEEP
    pss SPLIT_PHYSICAL
    basepower 70
    type TYPE_FIGHTING
    accuracy 100
    pp 10
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9
    appeal APPEAL_LOW_VOLTAGE_BOOST
    contesttype CONTEST_SMART
    terminatedata
    movedescription MOVE_WAKE_UP_SLAP, "This attack inflicts\nhigh damage on a\nsleeping foe. It\nalso wakes the foe\nup, however."

movedata MOVE_HAMMER_ARM, "Hammer Arm"
    battleeffect MOVE_EFFECT_USER_SPEED_DOWN_HIT
    pss SPLIT_PHYSICAL
    basepower 100
    type TYPE_FIGHTING
    accuracy 90
    pp 10
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal APPEAL_LAST_NEXT_TURN
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_HAMMER_ARM, "The user swings and\nhits with its strong\nand heavy fist.\nIt lowers the user’s\nSpeed, however."

movedata MOVE_GYRO_BALL, "Gyro Ball"
    battleeffect MOVE_EFFECT_POWER_BASED_ON_LOW_SPEED
    pss SPLIT_PHYSICAL
    basepower 1
    type TYPE_STEEL
    accuracy 100
    pp 5
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal APPEAL_DOUBLE_ON_FINALE
    contesttype CONTEST_BEAUTY
    terminatedata
    movedescription MOVE_GYRO_BALL, "The user tackles the\nfoe with a high-speed\nspin. The slower the\nuser, the greater\nthe damage."

movedata MOVE_HEALING_WISH, "Healing Wish"
    battleeffect MOVE_EFFECT_FAINT_AND_FULL_HEAL_NEXT_MON
    pss SPLIT_STATUS
    basepower 0
    type TYPE_PSYCHIC
    accuracy 0
    pp 10
    effectchance 0
    target RANGE_USER
    priority 0
    flags FLAG_SNATCH
    appeal APPEAL_SUCCESSIVE
    contesttype CONTEST_CUTE
    terminatedata
    movedescription MOVE_HEALING_WISH, "The user faints. In\nreturn, the Pokémon\ntaking its place will\nhave its HP restored\nand status cured."

movedata MOVE_BRINE, "Brine"
    battleeffect MOVE_EFFECT_DOUBLE_POWER_WHEN_BELOW_HALF
    pss SPLIT_SPECIAL
    basepower 65
    type TYPE_WATER
    accuracy 100
    pp 10
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal APPEAL_VOLTAGE_HEARTS
    contesttype CONTEST_SMART
    terminatedata
    movedescription MOVE_BRINE, "If the foe’s HP is\ndown to about half,\nthis attack will hit\nwith double the\npower."

movedata MOVE_NATURAL_GIFT, "Natural Gift"
    battleeffect MOVE_EFFECT_NATURAL_GIFT
    pss SPLIT_PHYSICAL
    basepower 1
    type TYPE_NORMAL
    accuracy 100
    pp 15
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9
    appeal APPEAL_LAST_HEARTS
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_NATURAL_GIFT, "The user draws power\nto attack by using\nits held Berry.\nThe Berry determines\nits type and power."

movedata MOVE_FEINT, "Feint"
    battleeffect MOVE_EFFECT_REMOVE_PROTECT
    pss SPLIT_PHYSICAL
    basepower 30
    type TYPE_NORMAL
    accuracy 100
    pp 10
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 2
    flags FLAG_MIRROR_MOVE
    appeal APPEAL_LOW_VOLTAGE_BOOST
    contesttype CONTEST_BEAUTY
    terminatedata
    movedescription MOVE_FEINT, "An attack that hits a\nfoe using Protect or\nDetect. It also lifts\nthe effects of those\nmoves."

movedata MOVE_PLUCK, "Pluck"
    battleeffect MOVE_EFFECT_EAT_BERRY
    pss SPLIT_PHYSICAL
    basepower 60
    type TYPE_FLYING
    accuracy 100
    pp 20
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal APPEAL_STEAL_VOLTAGE
    contesttype CONTEST_CUTE
    terminatedata
    movedescription MOVE_PLUCK, "The user pecks the\nfoe. If the foe is\nholding a Berry, the\nuser plucks it and\ngains its effect."

movedata MOVE_TAILWIND, "Tailwind"
    battleeffect MOVE_EFFECT_DOUBLE_SPEED_3_TURNS
    pss SPLIT_STATUS
    basepower 0
    type TYPE_FLYING
    accuracy 0
    pp 15
    effectchance 0
    target RANGE_USER_SIDE
    priority 0
    flags FLAG_SNATCH
    appeal APPEAL_FIRST_NEXT_TURN
    contesttype CONTEST_SMART
    terminatedata
    movedescription MOVE_TAILWIND, "The user whips up a\nturbulent whirlwind\nthat ups the Speed\nof all party Pokémon\nfor three turns."

movedata MOVE_ACUPRESSURE, "Acupressure"
    battleeffect MOVE_EFFECT_RANDOM_STAT_UP_2
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy 0
    pp 30
    effectchance 0
    target RANGE_SINGLE_TARGET_USER_SIDE
    priority 0
    flags FLAG_KEEP_HP_BAR
    appeal APPEAL_DOUBLE_NEXT_SCORE
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_ACUPRESSURE, "The user applies\npressure to stress\npoints, sharply\nboosting one of its\nstats."

movedata MOVE_METAL_BURST, "Metal Burst"
    battleeffect MOVE_EFFECT_METAL_BURST
    pss SPLIT_PHYSICAL
    basepower 1
    type TYPE_STEEL
    accuracy 100
    pp 10
    effectchance 0
    target RANGE_SINGLE_TARGET_SPECIAL
    priority 0
    flags FLAG_PROTECT | FLAG_MIRROR_MOVE
    appeal APPEAL_DOUBLE_ON_FINALE
    contesttype CONTEST_BEAUTY
    terminatedata
    movedescription MOVE_METAL_BURST, "The user retaliates\nagainst the foe that\nlast inflicted damage\non it with much\ngreater power."

movedata MOVE_U_TURN, "U-turn"
    battleeffect MOVE_EFFECT_SWITCH_HIT
    pss SPLIT_PHYSICAL
    basepower 70
    type TYPE_BUG
    accuracy 100
    pp 20
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal APPEAL_LOW_VOLTAGE_BOOST
    contesttype CONTEST_CUTE
    terminatedata
    movedescription MOVE_U_TURN, "After making its\nattack, the user\nrushes back to switch\nplaces with a party\nPokémon in waiting."

movedata MOVE_CLOSE_COMBAT, "Close Combat"
    battleeffect MOVE_EFFECT_USER_DEF_SP_DEF_DOWN_HIT
    pss SPLIT_PHYSICAL
    basepower 120
    type TYPE_FIGHTING
    accuracy 100
    pp 5
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_HIDE_SHADOW | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal APPEAL_AFTER_MAX_VOLTAGE_HEARTS
    contesttype CONTEST_SMART
    terminatedata
    movedescription MOVE_CLOSE_COMBAT, "The user fights the\nfoe up close without\nguarding itself. It\nalso cuts the user’s\nDefense and Sp. Def."

movedata MOVE_PAYBACK, "Payback"
    battleeffect MOVE_EFFECT_DOUBLE_POWER_IF_HIT
    pss SPLIT_PHYSICAL
    basepower 50
    type TYPE_DARK
    accuracy 100
    pp 10
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal APPEAL_UNIQUE_JUDGE
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_PAYBACK, "If the user can use\nthis attack after the\nfoe attacks, its\npower is doubled.\n"

movedata MOVE_ASSURANCE, "Assurance"
    battleeffect MOVE_EFFECT_DOUBLE_POWER_IF_TARGET_HIT
    pss SPLIT_PHYSICAL
    basepower 60
    type TYPE_DARK
    accuracy 100
    pp 10
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal APPEAL_DOUBLE_ON_FINALE
    contesttype CONTEST_BEAUTY
    terminatedata
    movedescription MOVE_ASSURANCE, "If the foe has\nalready taken some\ndamage in the same\nturn, this attack’s\npower is doubled."

movedata MOVE_EMBARGO, "Embargo"
    battleeffect MOVE_EFFECT_PREVENT_ITEM_USE
    pss SPLIT_STATUS
    basepower 0
    type TYPE_DARK
    accuracy 100
    pp 15
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9
    appeal APPEAL_KEEP_VOLTAGE_DOWN
    contesttype CONTEST_CUTE
    terminatedata
    movedescription MOVE_EMBARGO, "It prevents the foe\nfrom using its held\nitem. Its Trainer is\nalso prevented from\nusing items on it."

movedata MOVE_FLING, "Fling"
    battleeffect MOVE_EFFECT_FLING
    pss SPLIT_PHYSICAL
    basepower 1
    type TYPE_DARK
    accuracy 100
    pp 10
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal APPEAL_PITY_HEARTS
    contesttype CONTEST_TOUGH
    terminatedata
    movedescription MOVE_FLING, "The user flings its\nheld item at the foe\nto attack. Its power\nand effects depend\non the item."

movedata MOVE_PSYCHO_SHIFT, "Psycho Shift"
    battleeffect MOVE_EFFECT_TRANSFER_STATUS
    pss SPLIT_STATUS
    basepower 0
    type TYPE_PSYCHIC
    accuracy 100
    pp 10
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_UNUSABLE_IN_GEN_9
    appeal APPEAL_LOW_VOLTAGE_BOOST
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_PSYCHO_SHIFT, "Using its psychic\npower of suggestion,\nthe user transfers\nits status problems\nto the target."

movedata MOVE_TRUMP_CARD, "Trump Card"
    battleeffect MOVE_EFFECT_HIGHER_POWER_WHEN_LOW_PP
    pss SPLIT_SPECIAL
    basepower 1
    type TYPE_NORMAL
    accuracy 0
    pp 5
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9
    appeal APPEAL_LATE_BOOST
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_TRUMP_CARD, "The fewer PP this\nmove has, the more\npower it has for\nattack.\n"

movedata MOVE_HEAL_BLOCK, "Heal Block"
    battleeffect MOVE_EFFECT_PREVENT_HEALING
    pss SPLIT_STATUS
    basepower 0
    type TYPE_PSYCHIC
    accuracy 100
    pp 15
    effectchance 0
    target RANGE_ADJACENT_OPPONENTS
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9
    appeal APPEAL_KEEP_VOLTAGE_DOWN
    contesttype CONTEST_CUTE
    terminatedata
    movedescription MOVE_HEAL_BLOCK, "The user prevents\nthe foe from using\nany HP-recovery\nmoves for five turns.\n"

movedata MOVE_WRING_OUT, "Wring Out"
    battleeffect MOVE_EFFECT_INCREASE_POWER_WITH_MORE_HP
    pss SPLIT_SPECIAL
    basepower 1
    type TYPE_NORMAL
    accuracy 100
    pp 5
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9
    appeal APPEAL_AFTER_MAX_VOLTAGE_HEARTS
    contesttype CONTEST_SMART
    terminatedata
    movedescription MOVE_WRING_OUT, "The user powerfully\nwrings the foe.\nThe more HP the foe\nhas, the greater this\nattack’s power."

movedata MOVE_POWER_TRICK, "Power Trick"
    battleeffect MOVE_EFFECT_SWAP_ATK_DEF
    pss SPLIT_STATUS
    basepower 0
    type TYPE_PSYCHIC
    accuracy 0
    pp 10
    effectchance 0
    target RANGE_USER
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_SNATCH
    appeal APPEAL_LOW_VOLTAGE_BOOST
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_POWER_TRICK, "The user employs its\npsychic power to\nswitch its Attack\nwith its Defense\nstat."

movedata MOVE_GASTRO_ACID, "Gastro Acid"
    battleeffect MOVE_EFFECT_SUPRESS_ABILITY
    pss SPLIT_STATUS
    basepower 0
    type TYPE_POISON
    accuracy 100
    pp 10
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_MAGIC_COAT | FLAG_PROTECT
    appeal APPEAL_KEEP_VOLTAGE_DOWN
    contesttype CONTEST_BEAUTY
    terminatedata
    movedescription MOVE_GASTRO_ACID, "The user hurls up its\nstomach acids on\nthe foe. The fluid\neliminates the effect\nof the foe’s ability."

movedata MOVE_LUCKY_CHANT, "Lucky Chant"
    battleeffect MOVE_EFFECT_PREVENT_CRITS
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy 0
    pp 30
    effectchance 0
    target RANGE_USER_SIDE
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_SNATCH | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9
    appeal APPEAL_KEEP_VOLTAGE_DOWN
    contesttype CONTEST_CUTE
    terminatedata
    movedescription MOVE_LUCKY_CHANT, "The user chants an\nincantation toward\nthe sky, preventing\nthe foe from landing\ncritical hits."

movedata MOVE_ME_FIRST, "Me First"
    battleeffect MOVE_EFFECT_USE_MOVE_FIRST
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy 0
    pp 20
    effectchance 0
    target RANGE_FRONT
    priority 0
    flags FLAG_PROTECT | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9
    appeal APPEAL_FIRST_NEXT_TURN
    contesttype CONTEST_CUTE
    terminatedata
    movedescription MOVE_ME_FIRST, "The user tries to cut\nahead of the foe to\nsteal and use the\nfoe’s intended move\nwith greater power."

movedata MOVE_COPYCAT, "Copycat"
    battleeffect MOVE_EFFECT_USE_LAST_USED_MOVE
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy 0
    pp 20
    effectchance 0
    target RANGE_SINGLE_TARGET_SPECIAL
    priority 0
    flags 0
    appeal APPEAL_STEAL_VOLTAGE
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_COPYCAT, "The user mimics the\nmove used immediately\nbefore it. The move\nfails if no other move\nhas been used yet."

movedata MOVE_POWER_SWAP, "Power Swap"
    battleeffect MOVE_EFFECT_SWAP_ATK_SP_ATK_STAT_CHANGES
    pss SPLIT_STATUS
    basepower 0
    type TYPE_PSYCHIC
    accuracy 0
    pp 10
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal APPEAL_LOW_VOLTAGE_BOOST
    contesttype CONTEST_BEAUTY
    terminatedata
    movedescription MOVE_POWER_SWAP, "The user employs its\npsychic power to\nswitch changes to\nits Attack and\nSp. Atk with the foe."

movedata MOVE_GUARD_SWAP, "Guard Swap"
    battleeffect MOVE_EFFECT_SWAP_DEF_SP_DEF_STAT_CHANGES
    pss SPLIT_STATUS
    basepower 0
    type TYPE_PSYCHIC
    accuracy 0
    pp 10
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal APPEAL_LOW_VOLTAGE_BOOST
    contesttype CONTEST_CUTE
    terminatedata
    movedescription MOVE_GUARD_SWAP, "The user employs its\npsychic power to\nswitch changes to\nits Defense and\nSp. Def with the foe."

movedata MOVE_PUNISHMENT, "Punishment"
    battleeffect MOVE_EFFECT_INCREASE_POWER_WITH_MORE_STAT_UP
    pss SPLIT_PHYSICAL
    basepower 1
    type TYPE_DARK
    accuracy 100
    pp 5
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9
    appeal APPEAL_PITY_HEARTS
    contesttype CONTEST_SMART
    terminatedata
    movedescription MOVE_PUNISHMENT, "This attack’s power\nincreases the more\nthe foe has powered\nup with stat changes.\n"

movedata MOVE_LAST_RESORT, "Last Resort"
    battleeffect MOVE_EFFECT_FAIL_IF_NOT_USED_ALL_OTHER_MOVES
    pss SPLIT_PHYSICAL
    basepower 140
    type TYPE_NORMAL
    accuracy 100
    pp 5
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal APPEAL_LATE_BOOST
    contesttype CONTEST_CUTE
    terminatedata
    movedescription MOVE_LAST_RESORT, "This move can be used\nonly after the user\nhas used all the\nother moves it knows\nin the battle."

movedata MOVE_WORRY_SEED, "Worry Seed"
    battleeffect MOVE_EFFECT_SET_ABILITY_TO_INSOMNIA
    pss SPLIT_STATUS
    basepower 0
    type TYPE_GRASS
    accuracy 100
    pp 10
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_MAGIC_COAT | FLAG_PROTECT
    appeal APPEAL_KEEP_VOLTAGE_UP
    contesttype CONTEST_BEAUTY
    terminatedata
    movedescription MOVE_WORRY_SEED, "A seed that causes\nworry is planted on\nthe foe. It prevents\nsleep by making its\nability Insomnia."

movedata MOVE_SUCKER_PUNCH, "Sucker Punch"
    battleeffect MOVE_EFFECT_HIT_FIRST_IF_TARGET_ATTACKING
    pss SPLIT_PHYSICAL
    basepower 70
    type TYPE_DARK
    accuracy 100
    pp 5
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 1
    flags FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal APPEAL_FIRST_NEXT_TURN
    contesttype CONTEST_SMART
    terminatedata
    movedescription MOVE_SUCKER_PUNCH, "This move enables the\nuser to attack first.\nIt fails if the foe is\nnot readying an\nattack, however."

movedata MOVE_TOXIC_SPIKES, "Toxic Spikes"
    battleeffect MOVE_EFFECT_TOXIC_SPIKES
    pss SPLIT_STATUS
    basepower 0
    type TYPE_POISON
    accuracy 0
    pp 20
    effectchance 0
    target RANGE_OPPONENT_SIDE
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_MAGIC_COAT
    appeal APPEAL_KEEP_VOLTAGE_DOWN
    contesttype CONTEST_SMART
    terminatedata
    movedescription MOVE_TOXIC_SPIKES, "The user lays a trap\nof poison spikes at\nthe foe’s feet. They\npoison foes that\nswitch into battle."

movedata MOVE_HEART_SWAP, "Heart Swap"
    battleeffect MOVE_EFFECT_SWAP_STAT_CHANGES
    pss SPLIT_STATUS
    basepower 0
    type TYPE_PSYCHIC
    accuracy 0
    pp 10
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_UNUSABLE_IN_GEN_8
    appeal APPEAL_LOW_VOLTAGE_BOOST
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_HEART_SWAP, "The user employs its\npsychic power to\nswitch stat changes\nwith the foe.\n"

movedata MOVE_AQUA_RING, "Aqua Ring"
    battleeffect MOVE_EFFECT_RESTORE_HP_EVERY_TURN
    pss SPLIT_STATUS
    basepower 0
    type TYPE_WATER
    accuracy 0
    pp 20
    effectchance 0
    target RANGE_USER
    priority 0
    flags FLAG_SNATCH
    appeal APPEAL_SUCCESSIVE
    contesttype CONTEST_BEAUTY
    terminatedata
    movedescription MOVE_AQUA_RING, "The user envelops\nitself in a veil made\nof water. It regains\nsome HP on every\nturn."

movedata MOVE_MAGNET_RISE, "Magnet Rise"
    battleeffect MOVE_EFFECT_GIVE_GROUND_IMMUNITY
    pss SPLIT_STATUS
    basepower 0
    type TYPE_ELECTRIC
    accuracy 0
    pp 10
    effectchance 0
    target RANGE_USER
    priority 0
    flags FLAG_SNATCH
    appeal APPEAL_KEEP_VOLTAGE_DOWN
    contesttype CONTEST_CUTE
    terminatedata
    movedescription MOVE_MAGNET_RISE, "The user levitates\nusing electrically\ngenerated magnetism\nfor five turns.\n"

movedata MOVE_FLARE_BLITZ, "Flare Blitz"
    battleeffect MOVE_EFFECT_RECOIL_BURN_HIT
    pss SPLIT_PHYSICAL
    basepower 120
    type TYPE_FIRE
    accuracy 100
    pp 15
    effectchance 10
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_HIDE_SHADOW | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal APPEAL_AFTER_MAX_VOLTAGE_HEARTS
    contesttype CONTEST_SMART
    terminatedata
    movedescription MOVE_FLARE_BLITZ, "The user cloaks\nitself in fire and\ncharges at the foe.\nThe user sustains\nserious damage, too."

movedata MOVE_FORCE_PALM, "Force Palm"
    battleeffect MOVE_EFFECT_PARALYZE_HIT
    pss SPLIT_PHYSICAL
    basepower 60
    type TYPE_FIGHTING
    accuracy 100
    pp 10
    effectchance 30
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal APPEAL_LAST_HEARTS
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_FORCE_PALM, "The foe is attacked\nwith a shock wave.\nIt may also leave the\ntarget paralyzed.\n"

movedata MOVE_AURA_SPHERE, "Aura Sphere"
    battleeffect MOVE_EFFECT_BYPASS_ACCURACY
    pss SPLIT_SPECIAL
    basepower 80
    type TYPE_FIGHTING
    accuracy 0
    pp 20
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_HIDE_SHADOW | FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal APPEAL_FIRST_HEARTS
    contesttype CONTEST_BEAUTY
    terminatedata
    movedescription MOVE_AURA_SPHERE, "The user looses a\nblast of aura power\nfrom deep within its\nbody. This move is\ncertain to hit."

movedata MOVE_ROCK_POLISH, "Rock Polish"
    battleeffect MOVE_EFFECT_SPEED_UP_2
    pss SPLIT_STATUS
    basepower 0
    type TYPE_ROCK
    accuracy 0
    pp 20
    effectchance 0
    target RANGE_USER
    priority 0
    flags FLAG_SNATCH
    appeal APPEAL_FIRST_NEXT_TURN
    contesttype CONTEST_TOUGH
    terminatedata
    movedescription MOVE_ROCK_POLISH, "The user polishes its\nbody to reduce drag.\nIt can sharply raise\nthe Speed stat.\n"

movedata MOVE_POISON_JAB, "Poison Jab"
    battleeffect MOVE_EFFECT_POISON_HIT
    pss SPLIT_PHYSICAL
    basepower 80
    type TYPE_POISON
    accuracy 100
    pp 20
    effectchance 30
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal APPEAL_VOLTAGE_HEARTS
    contesttype CONTEST_SMART
    terminatedata
    movedescription MOVE_POISON_JAB, "The foe is stabbed\nwith a tentacle or\narm steeped in\npoison. It may also\npoison the foe."

movedata MOVE_DARK_PULSE, "Dark Pulse"
    battleeffect MOVE_EFFECT_FLINCH_HIT
    pss SPLIT_SPECIAL
    basepower 80
    type TYPE_DARK
    accuracy 100
    pp 15
    effectchance 20
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal APPEAL_FIRST_HEARTS
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_DARK_PULSE, "The user releases a\nhorrible aura imbued\nwith dark thoughts.\nIt may also make the\ntarget flinch."

movedata MOVE_NIGHT_SLASH, "Night Slash"
    battleeffect MOVE_EFFECT_HIGH_CRITICAL
    pss SPLIT_PHYSICAL
    basepower 70
    type TYPE_DARK
    accuracy 100
    pp 15
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal APPEAL_BASIC
    contesttype CONTEST_BEAUTY
    terminatedata
    movedescription MOVE_NIGHT_SLASH, "The user slashes the\nfoe the instant an\nopportunity arises.\nIt has a high\ncritical-hit ratio."

movedata MOVE_AQUA_TAIL, "Aqua Tail"
    battleeffect MOVE_EFFECT_HIT
    pss SPLIT_PHYSICAL
    basepower 90
    type TYPE_WATER
    accuracy 90
    pp 10
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal APPEAL_BASIC
    contesttype CONTEST_CUTE
    terminatedata
    movedescription MOVE_AQUA_TAIL, "The user attacks by\nswinging its tail as if\nit were a vicious wave\nin a raging storm.\n"

movedata MOVE_SEED_BOMB, "Seed Bomb"
    battleeffect MOVE_EFFECT_HIT
    pss SPLIT_PHYSICAL
    basepower 80
    type TYPE_GRASS
    accuracy 100
    pp 15
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal APPEAL_BASIC
    contesttype CONTEST_SMART
    terminatedata
    movedescription MOVE_SEED_BOMB, "The user slams a\nbarrage of hard-\nshelled seeds\ndown on the foe\nfrom above."

movedata MOVE_AIR_SLASH, "Air Slash"
    battleeffect MOVE_EFFECT_FLINCH_HIT
    pss SPLIT_SPECIAL
    basepower 75
    type TYPE_FLYING
    accuracy 95
    pp 15
    effectchance 30
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal APPEAL_FIRST_HEARTS
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_AIR_SLASH, "The user attacks with\na blade of air that\nslices even the sky.\nIt may also make the\ntarget flinch."

movedata MOVE_X_SCISSOR, "X-Scissor"
    battleeffect MOVE_EFFECT_HIT
    pss SPLIT_PHYSICAL
    basepower 80
    type TYPE_BUG
    accuracy 100
    pp 15
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal APPEAL_FIRST_HEARTS
    contesttype CONTEST_BEAUTY
    terminatedata
    movedescription MOVE_X_SCISSOR, "The user slashes at\nthe foe by crossing\nits scythes or claws\nas if they were a pair\nof scissors."

movedata MOVE_BUG_BUZZ, "Bug Buzz"
    battleeffect MOVE_EFFECT_LOWER_SP_DEF_HIT
    pss SPLIT_SPECIAL
    basepower 90
    type TYPE_BUG
    accuracy 100
    pp 10
    effectchance 10
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal APPEAL_VOLTAGE_HEARTS
    contesttype CONTEST_CUTE
    terminatedata
    movedescription MOVE_BUG_BUZZ, "The user vibrates its\nwings to generate a\ndamaging sound wave.\nIt may also lower the\nfoe’s Sp. Def stat."

movedata MOVE_DRAGON_PULSE, "Dragon Pulse"
    battleeffect MOVE_EFFECT_HIT
    pss SPLIT_SPECIAL
    basepower 85
    type TYPE_DRAGON
    accuracy 100
    pp 10
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal APPEAL_VOLTAGE_HEARTS
    contesttype CONTEST_SMART
    terminatedata
    movedescription MOVE_DRAGON_PULSE, "The foe is attacked\nwith a shock wave\ngenerated by the\nuser’s gaping mouth.\n"

movedata MOVE_DRAGON_RUSH, "Dragon Rush"
    battleeffect MOVE_EFFECT_FLINCH_HIT
    pss SPLIT_PHYSICAL
    basepower 100
    type TYPE_DRAGON
    accuracy 75
    pp 10
    effectchance 20
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal APPEAL_LAST_HEARTS
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_DRAGON_RUSH, "The user tackles the\nfoe while exhibiting\noverwhelming menace.\nIt may also make the\ntarget flinch."

movedata MOVE_POWER_GEM, "Power Gem"
    battleeffect MOVE_EFFECT_HIT
    pss SPLIT_SPECIAL
    basepower 80
    type TYPE_ROCK
    accuracy 100
    pp 20
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal APPEAL_BASIC
    contesttype CONTEST_BEAUTY
    terminatedata
    movedescription MOVE_POWER_GEM, "The user attacks with\na ray of light that\nsparkles as if it were\nmade of gemstones.\n"

movedata MOVE_DRAIN_PUNCH, "Drain Punch"
    battleeffect MOVE_EFFECT_RECOVER_HALF_DAMAGE_DEALT
    pss SPLIT_PHYSICAL
    basepower 75
    type TYPE_FIGHTING
    accuracy 100
    pp 10
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal APPEAL_VOLTAGE_CHAIN_HEARTS
    contesttype CONTEST_BEAUTY
    terminatedata
    movedescription MOVE_DRAIN_PUNCH, "An energy-draining\npunch. The user’s\nHP is restored by\nhalf the damage taken\nby the target."

movedata MOVE_VACUUM_WAVE, "Vacuum Wave"
    battleeffect MOVE_EFFECT_PRIORITY_1
    pss SPLIT_SPECIAL
    basepower 40
    type TYPE_FIGHTING
    accuracy 100
    pp 30
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 1
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal APPEAL_FIRST_NEXT_TURN
    contesttype CONTEST_SMART
    terminatedata
    movedescription MOVE_VACUUM_WAVE, "The user whirls its\nfists to send a wave\nof pure vacuum at\nthe foe. This move\nalways goes first."

movedata MOVE_FOCUS_BLAST, "Focus Blast"
    battleeffect MOVE_EFFECT_LOWER_SP_DEF_HIT
    pss SPLIT_SPECIAL
    basepower 120
    type TYPE_FIGHTING
    accuracy 70
    pp 5
    effectchance 10
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_HIDE_SHADOW | FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal APPEAL_FIRST_HEARTS
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_FOCUS_BLAST, "The user heightens\nits mental focus and\nunleashes its power.\nIt may also lower the\ntarget’s Sp. Def."

movedata MOVE_ENERGY_BALL, "Energy Ball"
    battleeffect MOVE_EFFECT_LOWER_SP_DEF_HIT
    pss SPLIT_SPECIAL
    basepower 90
    type TYPE_GRASS
    accuracy 100
    pp 10
    effectchance 10
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal APPEAL_FIRST_HEARTS
    contesttype CONTEST_BEAUTY
    terminatedata
    movedescription MOVE_ENERGY_BALL, "The user draws power\nfrom nature and\nfires it at the foe.\nIt may also lower the\ntarget’s Sp. Def."

movedata MOVE_BRAVE_BIRD, "Brave Bird"
    battleeffect MOVE_EFFECT_RECOIL_THIRD
    pss SPLIT_PHYSICAL
    basepower 120
    type TYPE_FLYING
    accuracy 100
    pp 15
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_HIDE_SHADOW | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal APPEAL_LAST_HEARTS
    contesttype CONTEST_CUTE
    terminatedata
    movedescription MOVE_BRAVE_BIRD, "The user tucks in\nits wings and charges\nfrom a low altitude.\nThe user also takes\nserious damage."

movedata MOVE_EARTH_POWER, "Earth Power"
    battleeffect MOVE_EFFECT_LOWER_SP_DEF_HIT
    pss SPLIT_SPECIAL
    basepower 90
    type TYPE_GROUND
    accuracy 100
    pp 10
    effectchance 10
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal APPEAL_LAST_HEARTS
    contesttype CONTEST_SMART
    terminatedata
    movedescription MOVE_EARTH_POWER, "The user makes the\nground under the foe\nerupt with power.\nIt may also lower the\ntarget’s Sp. Def."

movedata MOVE_SWITCHEROO, "Switcheroo"
    battleeffect MOVE_EFFECT_SWITCH_HELD_ITEMS
    pss SPLIT_STATUS
    basepower 0
    type TYPE_DARK
    accuracy 100
    pp 10
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal APPEAL_STEAL_VOLTAGE
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_SWITCHEROO, "The user trades held\nitems with the foe\nfaster than the eye\ncan follow.\n"

movedata MOVE_GIGA_IMPACT, "Giga Impact"
    battleeffect MOVE_EFFECT_RECHARGE_AFTER
    pss SPLIT_PHYSICAL
    basepower 150
    type TYPE_NORMAL
    accuracy 90
    pp 5
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_HIDE_SHADOW | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal APPEAL_AFTER_MAX_VOLTAGE_HEARTS
    contesttype CONTEST_BEAUTY
    terminatedata
    movedescription MOVE_GIGA_IMPACT, "The user charges at\nthe foe using every\nbit of its power.\nThe user must rest\non the next turn."

movedata MOVE_NASTY_PLOT, "Nasty Plot"
    battleeffect MOVE_EFFECT_SP_ATK_UP_2
    pss SPLIT_STATUS
    basepower 0
    type TYPE_DARK
    accuracy 0
    pp 20
    effectchance 0
    target RANGE_USER
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_SNATCH
    appeal APPEAL_DOUBLE_NEXT_SCORE
    contesttype CONTEST_CUTE
    terminatedata
    movedescription MOVE_NASTY_PLOT, "The user stimulates\nits brain by thinking\nbad thoughts.\nIt sharply raises the\nuser’s Sp. Atk."

movedata MOVE_BULLET_PUNCH, "Bullet Punch"
    battleeffect MOVE_EFFECT_PRIORITY_1
    pss SPLIT_PHYSICAL
    basepower 40
    type TYPE_STEEL
    accuracy 100
    pp 30
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 1
    flags FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal APPEAL_FIRST_NEXT_TURN
    contesttype CONTEST_SMART
    terminatedata
    movedescription MOVE_BULLET_PUNCH, "The user strikes\nwith a tough punch as\nfast as a bullet.\nThis move always goes\nfirst."

movedata MOVE_AVALANCHE, "Avalanche"
    battleeffect MOVE_EFFECT_DOUBLE_DAMAGE_IF_HIT
    pss SPLIT_PHYSICAL
    basepower 60
    type TYPE_ICE
    accuracy 100
    pp 10
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority -4
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal APPEAL_DOUBLE_ON_FINALE
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_AVALANCHE, "An attack move that\ninflicts double the\ndamage if the user\nhas been hurt by the\nfoe in the same turn."

movedata MOVE_ICE_SHARD, "Ice Shard"
    battleeffect MOVE_EFFECT_PRIORITY_1
    pss SPLIT_PHYSICAL
    basepower 40
    type TYPE_ICE
    accuracy 100
    pp 30
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 1
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal APPEAL_FIRST_NEXT_TURN
    contesttype CONTEST_BEAUTY
    terminatedata
    movedescription MOVE_ICE_SHARD, "The user flash\nfreezes chunks of\nice and hurls them.\nThis move always goes\nfirst."

movedata MOVE_SHADOW_CLAW, "Shadow Claw"
    battleeffect MOVE_EFFECT_HIGH_CRITICAL
    pss SPLIT_PHYSICAL
    basepower 70
    type TYPE_GHOST
    accuracy 100
    pp 15
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal APPEAL_FIRST_HEARTS
    contesttype CONTEST_CUTE
    terminatedata
    movedescription MOVE_SHADOW_CLAW, "The user slashes with\na sharp claw made\nfrom shadows.\nIt has a high\ncritical-hit ratio."

movedata MOVE_THUNDER_FANG, "Thunder Fang"
    battleeffect MOVE_EFFECT_FLINCH_PARALYZE_HIT
    pss SPLIT_PHYSICAL
    basepower 65
    type TYPE_ELECTRIC
    accuracy 95
    pp 15
    effectchance 10
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal APPEAL_BASIC
    contesttype CONTEST_SMART
    terminatedata
    movedescription MOVE_THUNDER_FANG, "The user bites with\nelectrified fangs.\nIt may also make the\nfoe flinch or become\nparalyzed."

movedata MOVE_ICE_FANG, "Ice Fang"
    battleeffect MOVE_EFFECT_FLINCH_FREEZE_HIT
    pss SPLIT_PHYSICAL
    basepower 65
    type TYPE_ICE
    accuracy 95
    pp 15
    effectchance 10
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal APPEAL_BASIC
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_ICE_FANG, "The user bites with\ncold-infused fangs.\nIt may also make the\nfoe flinch or freeze.\n"

movedata MOVE_FIRE_FANG, "Fire Fang"
    battleeffect MOVE_EFFECT_FLINCH_BURN_HIT
    pss SPLIT_PHYSICAL
    basepower 65
    type TYPE_FIRE
    accuracy 95
    pp 15
    effectchance 10
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal APPEAL_BASIC
    contesttype CONTEST_BEAUTY
    terminatedata
    movedescription MOVE_FIRE_FANG, "The user bites with\nflame-cloaked fangs.\nIt may also make the\nfoe flinch or sustain\na burn."

movedata MOVE_SHADOW_SNEAK, "Shadow Sneak"
    battleeffect MOVE_EFFECT_PRIORITY_1
    pss SPLIT_PHYSICAL
    basepower 40
    type TYPE_GHOST
    accuracy 100
    pp 30
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 1
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal APPEAL_FIRST_NEXT_TURN
    contesttype CONTEST_SMART
    terminatedata
    movedescription MOVE_SHADOW_SNEAK, "The user extends its\nshadow and attacks\nthe foe from behind.\nThis move always goes\nfirst."

movedata MOVE_MUD_BOMB, "Mud Bomb"
    battleeffect MOVE_EFFECT_LOWER_ACCURACY_HIT
    pss SPLIT_SPECIAL
    basepower 65
    type TYPE_GROUND
    accuracy 85
    pp 10
    effectchance 30
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9
    appeal APPEAL_LAST_HEARTS
    contesttype CONTEST_SMART
    terminatedata
    movedescription MOVE_MUD_BOMB, "The user launches a\nhard-packed mud ball\nto attack.\nIt may also lower the\ntarget’s accuracy."

movedata MOVE_PSYCHO_CUT, "Psycho Cut"
    battleeffect MOVE_EFFECT_HIGH_CRITICAL
    pss SPLIT_PHYSICAL
    basepower 70
    type TYPE_PSYCHIC
    accuracy 100
    pp 20
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal APPEAL_FIRST_HEARTS
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_PSYCHO_CUT, "The user tears at\nthe foe with blades\nformed by psychic\npower. It has a high\ncritical-hit ratio."

movedata MOVE_ZEN_HEADBUTT, "Zen Headbutt"
    battleeffect MOVE_EFFECT_FLINCH_HIT
    pss SPLIT_PHYSICAL
    basepower 80
    type TYPE_PSYCHIC
    accuracy 90
    pp 15
    effectchance 20
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal APPEAL_LAST_HEARTS
    contesttype CONTEST_BEAUTY
    terminatedata
    movedescription MOVE_ZEN_HEADBUTT, "The user focuses its\nwillpower to its head\nand rams the foe.\nIt may also make the\ntarget flinch."

movedata MOVE_MIRROR_SHOT, "Mirror Shot"
    battleeffect MOVE_EFFECT_LOWER_ACCURACY_HIT
    pss SPLIT_SPECIAL
    basepower 65
    type TYPE_STEEL
    accuracy 85
    pp 10
    effectchance 30
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9
    appeal APPEAL_FIRST_HEARTS
    contesttype CONTEST_CUTE
    terminatedata
    movedescription MOVE_MIRROR_SHOT, "The user looses a\nflash of energy from\nits polished body.\nIt may also lower the\ntarget’s accuracy."

movedata MOVE_FLASH_CANNON, "Flash Cannon"
    battleeffect MOVE_EFFECT_LOWER_SP_DEF_HIT
    pss SPLIT_SPECIAL
    basepower 80
    type TYPE_STEEL
    accuracy 100
    pp 10
    effectchance 10
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal APPEAL_FIRST_HEARTS
    contesttype CONTEST_SMART
    terminatedata
    movedescription MOVE_FLASH_CANNON, "The user gathers all\nits light energy and\nreleases it at once.\nIt may also lower the\nfoe’s Sp. Def stat."

movedata MOVE_ROCK_CLIMB, "Rock Climb"
    battleeffect MOVE_EFFECT_CONFUSE_HIT
    pss SPLIT_PHYSICAL
    basepower 90
    type TYPE_NORMAL
    accuracy 85
    pp 20
    effectchance 20
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9
    appeal APPEAL_LAST_HEARTS
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_ROCK_CLIMB, "A charging attack\nthat may also leave\nthe foe confused.\nIt can also be used\nto scale rocky walls."

movedata MOVE_DEFOG, "Defog"
    battleeffect MOVE_EFFECT_REMOVE_HAZARDS_SCREENS_EVA_DOWN
    pss SPLIT_STATUS
    basepower 0
    type TYPE_FLYING
    accuracy 0
    pp 15
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT
    appeal APPEAL_KEEP_VOLTAGE_DOWN
    contesttype CONTEST_BEAUTY
    terminatedata
    movedescription MOVE_DEFOG, "It reduces the foe’s\nevasion stat. It also\nremoves spikes,\nlight screens, etc."

movedata MOVE_TRICK_ROOM, "Trick Room"
    battleeffect MOVE_EFFECT_TRICK_ROOM
    pss SPLIT_STATUS
    basepower 0
    type TYPE_PSYCHIC
    accuracy 0
    pp 5
    effectchance 0
    target RANGE_FIELD
    priority -7
    flags FLAG_MIRROR_MOVE
    appeal APPEAL_RANDOMIZE_NEXT_TURN
    contesttype CONTEST_CUTE
    terminatedata
    movedescription MOVE_TRICK_ROOM, "The user creates a\nbizarre area in which\nslower Pokémon get\nto move first for five\nturns."

movedata MOVE_DRACO_METEOR, "Draco Meteor"
    battleeffect MOVE_EFFECT_USER_SP_ATK_DOWN_2
    pss SPLIT_SPECIAL
    basepower 130
    type TYPE_DRAGON
    accuracy 90
    pp 5
    effectchance 100
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal APPEAL_AFTER_MAX_VOLTAGE_HEARTS
    contesttype CONTEST_SMART
    terminatedata
    movedescription MOVE_DRACO_METEOR, "Comets are summoned\ndown from the sky.\nThe attack’s recoil\nsharply reduces the\nuser’s Sp. Atk stat."

movedata MOVE_DISCHARGE, "Discharge"
    battleeffect MOVE_EFFECT_PARALYZE_HIT
    pss SPLIT_SPECIAL
    basepower 80
    type TYPE_ELECTRIC
    accuracy 100
    pp 15
    effectchance 30
    target RANGE_ALL_ADJACENT
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal APPEAL_FIRST_HEARTS
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_DISCHARGE, "A flare of electricity\nis loosed to strike\nall Pokémon in battle.\nIt may also cause\nparalysis."

movedata MOVE_LAVA_PLUME, "Lava Plume"
    battleeffect MOVE_EFFECT_BURN_HIT
    pss SPLIT_SPECIAL
    basepower 80
    type TYPE_FIRE
    accuracy 100
    pp 15
    effectchance 30
    target RANGE_ALL_ADJACENT
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal APPEAL_FIRST_HEARTS
    contesttype CONTEST_TOUGH
    terminatedata
    movedescription MOVE_LAVA_PLUME, "An inferno of scarlet\nflames washes over\nall Pokémon in battle.\nIt may also inflict\nburns."

movedata MOVE_LEAF_STORM, "Leaf Storm"
    battleeffect MOVE_EFFECT_USER_SP_ATK_DOWN_2
    pss SPLIT_SPECIAL
    basepower 130
    type TYPE_GRASS
    accuracy 90
    pp 5
    effectchance 100
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_HIDE_SHADOW | FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal APPEAL_AFTER_MAX_VOLTAGE_HEARTS
    contesttype CONTEST_CUTE
    terminatedata
    movedescription MOVE_LEAF_STORM, "A storm of sharp\nleaves is whipped up.\nThe attack’s recoil\nsharply reduces the\nuser’s Sp. Atk stat."

movedata MOVE_POWER_WHIP, "Power Whip"
    battleeffect MOVE_EFFECT_HIT
    pss SPLIT_PHYSICAL
    basepower 120
    type TYPE_GRASS
    accuracy 85
    pp 10
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_HIDE_SHADOW | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal APPEAL_BASIC
    contesttype CONTEST_BEAUTY
    terminatedata
    movedescription MOVE_POWER_WHIP, "The user violently\nwhirls its vines or\ntentacles to harshly\nlash the foe.\n"

movedata MOVE_ROCK_WRECKER, "Rock Wrecker"
    battleeffect MOVE_EFFECT_RECHARGE_AFTER
    pss SPLIT_PHYSICAL
    basepower 150
    type TYPE_ROCK
    accuracy 90
    pp 5
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_HIDE_SHADOW | FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal APPEAL_AFTER_MAX_VOLTAGE_HEARTS
    contesttype CONTEST_TOUGH
    terminatedata
    movedescription MOVE_ROCK_WRECKER, "The user launches a\nhuge boulder at the\nfoe to attack.\nIt must rest on the\nnext turn, however."

movedata MOVE_CROSS_POISON, "Cross Poison"
    battleeffect MOVE_EFFECT_HIGH_CRITICAL_POISON_HIT
    pss SPLIT_PHYSICAL
    basepower 70
    type TYPE_POISON
    accuracy 100
    pp 20
    effectchance 10
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal APPEAL_BASIC
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_CROSS_POISON, "A slashing attack\nthat may also leave\nthe target poisoned.\nIt has a high\ncritical-hit ratio."

movedata MOVE_GUNK_SHOT, "Gunk Shot"
    battleeffect MOVE_EFFECT_POISON_HIT
    pss SPLIT_PHYSICAL
    basepower 120
    type TYPE_POISON
    accuracy 80
    pp 5
    effectchance 30
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_HIDE_SHADOW | FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal APPEAL_BASIC
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_GUNK_SHOT, "The user shoots\nfilthy garbage at the\nfoe to attack.\nIt may also poison\nthe target."

movedata MOVE_IRON_HEAD, "Iron Head"
    battleeffect MOVE_EFFECT_FLINCH_HIT
    pss SPLIT_PHYSICAL
    basepower 80
    type TYPE_STEEL
    accuracy 100
    pp 15
    effectchance 30
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal APPEAL_LAST_HEARTS
    contesttype CONTEST_TOUGH
    terminatedata
    movedescription MOVE_IRON_HEAD, "The foe slams the\ntarget with its\nsteel-hard head.\nIt may also make the\ntarget flinch."

movedata MOVE_MAGNET_BOMB, "Magnet Bomb"
    battleeffect MOVE_EFFECT_BYPASS_ACCURACY
    pss SPLIT_PHYSICAL
    basepower 60
    type TYPE_STEEL
    accuracy 0
    pp 20
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9
    appeal APPEAL_BASIC
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_MAGNET_BOMB, "The user launches a\nsteel bomb that\nsticks to the target.\nThis attack will not\nmiss."

movedata MOVE_STONE_EDGE, "Stone Edge"
    battleeffect MOVE_EFFECT_HIGH_CRITICAL
    pss SPLIT_PHYSICAL
    basepower 100
    type TYPE_ROCK
    accuracy 80
    pp 5
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal APPEAL_VOLTAGE_HEARTS
    contesttype CONTEST_TOUGH
    terminatedata
    movedescription MOVE_STONE_EDGE, "The user stabs the\nfoe with a sharpened\nstone. It has a high\ncritical-hit ratio.\n"

movedata MOVE_CAPTIVATE, "Captivate"
    battleeffect MOVE_EFFECT_SP_ATK_DOWN_2_OPPOSITE_GENDER
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy 100
    pp 20
    effectchance 0
    target RANGE_ADJACENT_OPPONENTS
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_MAGIC_COAT | FLAG_PROTECT | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9
    appeal APPEAL_KEEP_VOLTAGE_UP
    contesttype CONTEST_BEAUTY
    terminatedata
    movedescription MOVE_CAPTIVATE, "If it is the opposite\ngender of the user,\nthe foe is charmed\ninto sharply lowering\nits Sp. Atk stat."

movedata MOVE_STEALTH_ROCK, "Stealth Rock"
    battleeffect MOVE_EFFECT_STEALTH_ROCK
    pss SPLIT_STATUS
    basepower 0
    type TYPE_ROCK
    accuracy 0
    pp 20
    effectchance 0
    target RANGE_OPPONENT_SIDE
    priority 0
    flags FLAG_MAGIC_COAT
    appeal APPEAL_KEEP_VOLTAGE_DOWN
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_STEALTH_ROCK, "The user lays a trap\nof levitating stones\naround the foe. The\ntrap hurts foes that\nswitch into battle."

movedata MOVE_GRASS_KNOT, "Grass Knot"
    battleeffect MOVE_EFFECT_INCREASE_POWER_WITH_WEIGHT
    pss SPLIT_SPECIAL
    basepower 1
    type TYPE_GRASS
    accuracy 100
    pp 20
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal APPEAL_VOLTAGE_HEARTS
    contesttype CONTEST_SMART
    terminatedata
    movedescription MOVE_GRASS_KNOT, "The user snares the\nfoe with grass and\ntrips it. The heavier\nthe foe, the greater\nthe damage."

movedata MOVE_CHATTER, "Chatter"
    battleeffect MOVE_EFFECT_CONFUSE_HIT
    pss SPLIT_SPECIAL
    basepower 65
    type TYPE_FLYING
    accuracy 100
    pp 20
    effectchance 100 // always confuse
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9
    appeal APPEAL_PITY_HEARTS
    contesttype CONTEST_SMART
    terminatedata
    movedescription MOVE_CHATTER, "The user attacks\nusing a sound wave\nbased on words it has\nlearned. It may also\nconfuse the foe."

movedata MOVE_JUDGMENT, "Judgment"
    battleeffect MOVE_EFFECT_JUDGMENT
    pss SPLIT_SPECIAL
    basepower 100
    type TYPE_NORMAL
    accuracy 100
    pp 10
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal APPEAL_RANDOMIZE_NEXT_TURN
    contesttype CONTEST_SMART
    terminatedata
    movedescription MOVE_JUDGMENT, "The user releases\ncountless shots of\nlight. Its type varies\nwith the kind of Plate\nthe user is holding."

movedata MOVE_BUG_BITE, "Bug Bite"
    battleeffect MOVE_EFFECT_EAT_BERRY
    pss SPLIT_PHYSICAL
    basepower 60
    type TYPE_BUG
    accuracy 100
    pp 20
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal APPEAL_STEAL_VOLTAGE
    contesttype CONTEST_TOUGH
    terminatedata
    movedescription MOVE_BUG_BITE, "The user bites the\nfoe. If the foe is\nholding a Berry, the\nuser eats it and\ngains its effect."

movedata MOVE_CHARGE_BEAM, "Charge Beam"
    battleeffect MOVE_EFFECT_RAISE_SP_ATK_HIT
    pss SPLIT_SPECIAL
    basepower 50
    type TYPE_ELECTRIC
    accuracy 90
    pp 10
    effectchance 70
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal APPEAL_FIRST_HEARTS
    contesttype CONTEST_BEAUTY
    terminatedata
    movedescription MOVE_CHARGE_BEAM, "The user fires a\nconcentrated bundle\nof electricity. It may\nalso raise the user’s\nSp. Atk stat."

movedata MOVE_WOOD_HAMMER, "Wood Hammer"
    battleeffect MOVE_EFFECT_RECOIL_THIRD
    pss SPLIT_PHYSICAL
    basepower 120
    type TYPE_GRASS
    accuracy 100
    pp 15
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal APPEAL_LAST_HEARTS
    contesttype CONTEST_TOUGH
    terminatedata
    movedescription MOVE_WOOD_HAMMER, "The user slams its\nrugged body into the\nfoe to attack. The\nuser also sustains\nserious damage."

movedata MOVE_AQUA_JET, "Aqua Jet"
    battleeffect MOVE_EFFECT_PRIORITY_1
    pss SPLIT_PHYSICAL
    basepower 40
    type TYPE_WATER
    accuracy 100
    pp 20
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 1
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal APPEAL_FIRST_NEXT_TURN
    contesttype CONTEST_BEAUTY
    terminatedata
    movedescription MOVE_AQUA_JET, "The user lunges at\nthe foe at a speed\nthat makes it almost\ninvisible. It is sure\nto strike first."

movedata MOVE_ATTACK_ORDER, "Attack Order"
    battleeffect MOVE_EFFECT_HIGH_CRITICAL
    pss SPLIT_PHYSICAL
    basepower 90
    type TYPE_BUG
    accuracy 100
    pp 15
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal APPEAL_VOLTAGE_HEARTS
    contesttype CONTEST_SMART
    terminatedata
    movedescription MOVE_ATTACK_ORDER, "The user calls out\nits underlings to\npummel the foe.\nIt has a high\ncritical-hit ratio."

movedata MOVE_DEFEND_ORDER, "Defend Order"
    battleeffect MOVE_EFFECT_DEF_SP_DEF_UP
    pss SPLIT_STATUS
    basepower 0
    type TYPE_BUG
    accuracy 0
    pp 10
    effectchance 0
    target RANGE_USER
    priority 0
    flags FLAG_SNATCH
    appeal APPEAL_DOUBLE_NEXT_SCORE
    contesttype CONTEST_SMART
    terminatedata
    movedescription MOVE_DEFEND_ORDER, "The user calls out\nits underlings to\nshield its body,\nraising its Defense\nand Sp. Def stats."

movedata MOVE_HEAL_ORDER, "Heal Order"
    battleeffect MOVE_EFFECT_RESTORE_HALF_HP
    pss SPLIT_STATUS
    basepower 0
    type TYPE_BUG
    accuracy 0
    pp 10
    effectchance 0
    target RANGE_USER
    priority 0
    flags FLAG_SNATCH | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9
    appeal APPEAL_SUCCESSIVE
    contesttype CONTEST_SMART
    terminatedata
    movedescription MOVE_HEAL_ORDER, "The user calls out\nits underlings to heal\nit. The user regains\nup to half of its\nmax HP."

movedata MOVE_HEAD_SMASH, "Head Smash"
    battleeffect MOVE_EFFECT_RECOIL_HALF
    pss SPLIT_PHYSICAL
    basepower 150
    type TYPE_ROCK
    accuracy 80
    pp 5
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_HIDE_SHADOW | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal APPEAL_AFTER_MAX_VOLTAGE_HEARTS
    contesttype CONTEST_TOUGH
    terminatedata
    movedescription MOVE_HEAD_SMASH, "The user delivers a\nlife-endangering\nattack at full power.\nThe user also takes\nterrible damage."

movedata MOVE_DOUBLE_HIT, "Double Hit"
    battleeffect MOVE_EFFECT_HIT_TWICE
    pss SPLIT_PHYSICAL
    basepower 35
    type TYPE_NORMAL
    accuracy 90
    pp 10
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal APPEAL_SUCCESSIVE
    contesttype CONTEST_SMART
    terminatedata
    movedescription MOVE_DOUBLE_HIT, "The user slams the\nfoe with a long tail,\nvines, etc. The\ntarget is hit\ntwice in a row."

movedata MOVE_ROAR_OF_TIME, "Roar of Time"
    battleeffect MOVE_EFFECT_RECHARGE_AFTER
    pss SPLIT_SPECIAL
    basepower 150
    type TYPE_DRAGON
    accuracy 90
    pp 5
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal APPEAL_AFTER_MAX_VOLTAGE_HEARTS
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_ROAR_OF_TIME, "The user blasts the\nfoe with power that\ndistorts even time.\nThe user must rest\non the next turn."

movedata MOVE_SPACIAL_REND, "Spacial Rend"
    battleeffect MOVE_EFFECT_HIGH_CRITICAL
    pss SPLIT_SPECIAL
    basepower 100
    type TYPE_DRAGON
    accuracy 95
    pp 5
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_HIDE_SHADOW | FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal APPEAL_VOLTAGE_HEARTS
    contesttype CONTEST_TOUGH
    terminatedata
    movedescription MOVE_SPACIAL_REND, "The user tears the\nfoe along with the\nspace around it.\nThis move has a high\ncritical-hit ratio."

movedata MOVE_LUNAR_DANCE, "Lunar Dance"
    battleeffect MOVE_EFFECT_FAINT_FULL_RESTORE_NEXT_MON
    pss SPLIT_STATUS
    basepower 0
    type TYPE_PSYCHIC
    accuracy 0
    pp 10
    effectchance 0
    target RANGE_USER
    priority 0
    flags FLAG_HIDE_SHADOW | FLAG_SNATCH
    appeal APPEAL_SUCCESSIVE
    contesttype CONTEST_BEAUTY
    terminatedata
    movedescription MOVE_LUNAR_DANCE, "The user faints. In\nreturn, the Pokémon\ntaking its place will\nhave its status and\nHP fully restored."

movedata MOVE_CRUSH_GRIP, "Crush Grip"
    battleeffect MOVE_EFFECT_INCREASE_POWER_WITH_MORE_HP
    pss SPLIT_PHYSICAL
    basepower 1
    type TYPE_NORMAL
    accuracy 100
    pp 5
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal APPEAL_DOUBLE_ON_FINALE
    contesttype CONTEST_TOUGH
    terminatedata
    movedescription MOVE_CRUSH_GRIP, "The foe is crushed\nwith great force.\nThe attack is more\npowerful the more HP\nthe foe has left."

movedata MOVE_MAGMA_STORM, "Magma Storm"
    battleeffect MOVE_EFFECT_BIND_HIT
    pss SPLIT_SPECIAL
    basepower 100
    type TYPE_FIRE
    accuracy 75
    pp 5
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_HIDE_SHADOW | FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal APPEAL_SUCCESSIVE
    contesttype CONTEST_TOUGH
    terminatedata
    movedescription MOVE_MAGMA_STORM, "The foe becomes\ntrapped within a\nmaelstrom of fire\nthat rages for two\nto five turns."

movedata MOVE_DARK_VOID, "Dark Void"
    battleeffect MOVE_EFFECT_STATUS_SLEEP
    pss SPLIT_STATUS
    basepower 0
    type TYPE_DARK
    accuracy 50
    pp 10
    effectchance 0
    target RANGE_ADJACENT_OPPONENTS
    priority 0
    flags FLAG_HIDE_SHADOW | FLAG_MIRROR_MOVE | FLAG_MAGIC_COAT | FLAG_PROTECT | FLAG_UNUSABLE_IN_GEN_8
    appeal APPEAL_KEEP_VOLTAGE_UP
    contesttype CONTEST_SMART
    terminatedata
    movedescription MOVE_DARK_VOID, "The foe is dragged\ninto a world of total\ndarkness that puts it\nto sleep.\n"

movedata MOVE_SEED_FLARE, "Seed Flare"
    battleeffect MOVE_EFFECT_LOWER_SP_DEF_2_HIT
    pss SPLIT_SPECIAL
    basepower 120
    type TYPE_GRASS
    accuracy 85
    pp 5
    effectchance 40
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_HIDE_SHADOW | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_UNUSABLE_IN_GEN_8
    appeal APPEAL_AFTER_MAX_VOLTAGE_HEARTS
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_SEED_FLARE, "The user generates\na shock wave from\nwithin its body.\nIt may also lower the\ntarget’s Sp. Def."

movedata MOVE_OMINOUS_WIND, "Ominous Wind"
    battleeffect MOVE_EFFECT_RAISE_ALL_STATS_HIT
    pss SPLIT_SPECIAL
    basepower 60
    type TYPE_GHOST
    accuracy 100
    pp 5
    effectchance 10
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9
    appeal APPEAL_DOUBLE_NEXT_SCORE
    contesttype CONTEST_SMART
    terminatedata
    movedescription MOVE_OMINOUS_WIND, "The user creates a\ngust of repulsive\nwind. It may also\nraise all the user’s\nstats at once."

movedata MOVE_SHADOW_FORCE, "Shadow Force"
    battleeffect MOVE_EFFECT_SHADOW_FORCE
    pss SPLIT_PHYSICAL
    basepower 120
    type TYPE_GHOST
    accuracy 100
    pp 5
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_CONTACT
    appeal APPEAL_AFTER_MAX_VOLTAGE_HEARTS
    contesttype CONTEST_SMART
    terminatedata
    movedescription MOVE_SHADOW_FORCE, "The user disappears,\nthen strikes the foe\non the second turn.\nIt hits even if the\nfoe protects itself."

movedata MOVE_468, "MOVE_468"
    battleeffect MOVE_EFFECT_HIT
    pss SPLIT_SPECIAL
    basepower 100
    type TYPE_NORMAL
    accuracy 100
    pp 10
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal APPEAL_LOW_VOLTAGE_BOOST
    contesttype CONTEST_BEAUTY
    terminatedata
    movedescription MOVE_SHADOW_FORCE+1, "--"

movedata MOVE_469, "MOVE_469"
    battleeffect MOVE_EFFECT_HIT
    pss SPLIT_SPECIAL
    basepower 100
    type TYPE_NORMAL
    accuracy 100
    pp 10
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal APPEAL_FIRST_HEARTS
    contesttype CONTEST_CUTE
    terminatedata
    movedescription MOVE_SHADOW_FORCE+2, "--"

movedata MOVE_470, "MOVE_470"
    battleeffect MOVE_EFFECT_HIT
    pss SPLIT_SPECIAL
    basepower 100
    type TYPE_NORMAL
    accuracy 100
    pp 10
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT
    appeal APPEAL_LAST_HEARTS
    contesttype CONTEST_SMART
    terminatedata
    movedescription MOVE_SHADOW_FORCE+3, "--"

// Moves introduced in Generation V:
movedata MOVE_HONE_CLAWS, "Hone Claws"
    battleeffect MOVE_EFFECT_ATK_ACC_UP
    pss SPLIT_STATUS
    basepower 0
    type TYPE_DARK
    accuracy 0
    pp 15
    effectchance 0
    target RANGE_USER
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_SNATCH
    appeal 0x00
    contesttype CONTEST_CUTE
    terminatedata
    movedescription MOVE_HONE_CLAWS, "The user sharpens\nits claws to boost\nits Attack and\nAccuracy."

movedata MOVE_WIDE_GUARD, "Wide Guard"
    battleeffect MOVE_EFFECT_PROTECT_USER_SIDE
    pss SPLIT_STATUS
    basepower 0
    type TYPE_ROCK
    accuracy 0
    pp 10
    effectchance 0
    target RANGE_USER_SIDE
    priority 3
    flags FLAG_KEEP_HP_BAR | FLAG_SNATCH
    appeal 0x00
    contesttype CONTEST_TOUGH
    terminatedata
    movedescription MOVE_WIDE_GUARD, "The user protects\nitself and its\nallies from wide-\nranged attacks."

movedata MOVE_GUARD_SPLIT, "Guard Split"
    battleeffect MOVE_EFFECT_GUARD_SPLIT
    pss SPLIT_STATUS
    basepower 0
    type TYPE_PSYCHIC
    accuracy 0
    pp 10
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_PROTECT
    appeal 0x00
    contesttype CONTEST_SMART
    terminatedata
    movedescription MOVE_GUARD_SPLIT, "The user employs its\npsychic power to\naverage its Defense\nand Sp. Def stats\nwith the target."

movedata MOVE_POWER_SPLIT, "Power Split"
    battleeffect MOVE_EFFECT_POWER_SPLIT
    pss SPLIT_STATUS
    basepower 0
    type TYPE_PSYCHIC
    accuracy 0
    pp 10
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_PROTECT
    appeal 0x00
    contesttype CONTEST_SMART
    terminatedata
    movedescription MOVE_POWER_SPLIT, "The user employs its\npsychic power to\naverage its Attack\nand Sp. Atk stats\nwith the target."

movedata MOVE_WONDER_ROOM, "Wonder Room"
    battleeffect MOVE_EFFECT_HIT
    pss SPLIT_STATUS
    basepower 0
    type TYPE_PSYCHIC
    accuracy 0
    pp 10
    effectchance 0
    target RANGE_USER
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_UNUSABLE_UNIMPLEMENTED
    appeal 0x00
    contesttype CONTEST_SMART
    terminatedata
    movedescription MOVE_WONDER_ROOM, "The user creates a\nbizarre area where\nPokémon’s Defense\nand Sp. Def swap\nfor five turns."

movedata MOVE_PSYSHOCK, "Psyshock"
    battleeffect MOVE_EFFECT_HIT
    pss SPLIT_SPECIAL
    basepower 80
    type TYPE_PSYCHIC
    accuracy 100
    pp 10
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_PROTECT | FLAG_MIRROR_MOVE
    appeal 0x00
    contesttype CONTEST_BEAUTY
    terminatedata
    movedescription MOVE_PSYSHOCK, "An odd psychic wave\nattacks the target.\nThis attack does\nphysical damage."

movedata MOVE_VENOSHOCK, "Venoshock"
    battleeffect MOVE_EFFECT_DOUBLE_POWER_ON_POISONED
    pss SPLIT_SPECIAL
    basepower 65
    type TYPE_POISON
    accuracy 100
    pp 10
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_PROTECT | FLAG_MIRROR_MOVE
    appeal 0x00
    contesttype CONTEST_BEAUTY
    terminatedata
    movedescription MOVE_VENOSHOCK, "The foe is soaked\nby a special acid.\nIts power doubles if\nthe foe is poisoned."

movedata MOVE_AUTOTOMIZE, "Autotomize"
    battleeffect MOVE_EFFECT_AUTOTOMIZE
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy 0
    pp 15
    effectchance 0
    target RANGE_USER
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_SNATCH | FLAG_UNUSABLE_IN_GEN_9
    appeal 0x00
    contesttype CONTEST_BEAUTY
    terminatedata
    movedescription MOVE_AUTOTOMIZE, "The user sheds part\nof its body to make\nitself lighter and\nsharply raise its\nSpeed stat."

movedata MOVE_RAGE_POWDER, "Rage Powder"
    battleeffect MOVE_EFFECT_MAKE_GLOBAL_TARGET
    pss SPLIT_STATUS
    basepower 0
    type TYPE_BUG
    accuracy 100
    pp 20
    effectchance 0
    target RANGE_USER
    priority 2
    flags 0
    appeal 0x00
    contesttype CONTEST_SMART
    terminatedata
    movedescription MOVE_RAGE_POWDER, "The user scatters\na cloud of powder,\nmaking foes attack\nonly the user."

movedata MOVE_TELEKINESIS, "Telekinesis"
    battleeffect MOVE_EFFECT_HIT
    pss SPLIT_STATUS
    basepower 0
    type TYPE_PSYCHIC
    accuracy 0
    pp 15
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_PROTECT | FLAG_MAGIC_COAT | FLAG_MIRROR_MOVE | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9 | FLAG_UNUSABLE_UNIMPLEMENTED
    appeal 0x00
    contesttype CONTEST_SMART
    terminatedata
    movedescription MOVE_TELEKINESIS, "The user makes the\ntarget float with\npsychic power. The\ntarget is easier to\nhit for three turns."

movedata MOVE_MAGIC_ROOM, "Magic Room"
    battleeffect MOVE_EFFECT_HIT
    pss SPLIT_STATUS
    basepower 0
    type TYPE_PSYCHIC
    accuracy 0
    pp 10
    effectchance 0
    target RANGE_USER
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_UNUSABLE_UNIMPLEMENTED
    appeal 0x00
    contesttype CONTEST_SMART
    terminatedata
    movedescription MOVE_MAGIC_ROOM, "The user creates a\nbizarre area in\nwhich Pokémon’s held\nitems lose effect\nfor five turns."

movedata MOVE_SMACK_DOWN, "Smack Down"
    battleeffect MOVE_EFFECT_HIT
    pss SPLIT_PHYSICAL
    basepower 50
    type TYPE_ROCK
    accuracy 100
    pp 15
    effectchance 100
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_UNUSABLE_UNIMPLEMENTED
    appeal 0x00
    contesttype CONTEST_TOUGH
    terminatedata
    movedescription MOVE_SMACK_DOWN, "A projectile is\nthrown at the\nopponent. A flying\nPokémon will fall\nto the ground."

movedata MOVE_STORM_THROW, "Storm Throw"
    battleeffect MOVE_EFFECT_ALWAYS_CRITICAL
    pss SPLIT_PHYSICAL
    basepower 60
    type TYPE_FIGHTING
    accuracy 100
    pp 10
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_CONTACT | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_UNUSABLE_IN_GEN_9
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_STORM_THROW, "The user strikes\nthe foe fiercely.\nIt always results in\na critical hit."

movedata MOVE_FLAME_BURST, "Flame Burst"
    battleeffect MOVE_EFFECT_HIT
    pss SPLIT_SPECIAL
    basepower 70
    type TYPE_FIRE
    accuracy 100
    pp 15
    effectchance 100
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9
    appeal 0x00
    contesttype CONTEST_BEAUTY
    terminatedata
    movedescription MOVE_FLAME_BURST, "The user attacks\nthe foe with a\nbursting flame."

movedata MOVE_SLUDGE_WAVE, "Sludge Wave"
    battleeffect MOVE_EFFECT_POISON_HIT
    pss SPLIT_SPECIAL
    basepower 95
    type TYPE_POISON
    accuracy 100
    pp 10
    effectchance 10
    target RANGE_ALL_ADJACENT
    priority 0
    flags FLAG_PROTECT | FLAG_MIRROR_MOVE
    appeal 0x00
    contesttype CONTEST_TOUGH
    terminatedata
    movedescription MOVE_SLUDGE_WAVE, "The area around the\nuser is swamped by\na giant sludge wave.\nIt may also poison\nthose hit."

movedata MOVE_QUIVER_DANCE, "Quiver Dance"
    battleeffect MOVE_EFFECT_SP_ATK_SP_DEF_SPEED_UP
    pss SPLIT_STATUS
    basepower 0
    type TYPE_BUG
    accuracy 0
    pp 20
    effectchance 0
    target RANGE_USER
    priority 0
    flags FLAG_SNATCH
    appeal 0x00
    contesttype CONTEST_BEAUTY
    terminatedata
    movedescription MOVE_QUIVER_DANCE, "The user mystically\ndances, raising its\nSp. Atk, Sp. Def,\nand Speed."

movedata MOVE_HEAVY_SLAM, "Heavy Slam"
    battleeffect MOVE_EFFECT_HEAVY_SLAM
    pss SPLIT_PHYSICAL
    basepower 1
    type TYPE_STEEL
    accuracy 100
    pp 10
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_CONTACT | FLAG_PROTECT | FLAG_MIRROR_MOVE
    appeal 0x00
    contesttype CONTEST_TOUGH
    terminatedata
    movedescription MOVE_HEAVY_SLAM, "The user slams into\nthe target. The\ngreater the weight\ndifference, the\ngreater the damage."

movedata MOVE_SYNCHRONOISE, "Synchronoise"
    battleeffect MOVE_EFFECT_HIT
    pss SPLIT_SPECIAL
    basepower 120
    type TYPE_PSYCHIC
    accuracy 100
    pp 10
    effectchance 0
    target RANGE_ALL_ADJACENT
    priority 0
    flags FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9 | FLAG_UNUSABLE_UNIMPLEMENTED
    appeal 0x00
    contesttype CONTEST_SMART
    terminatedata
    movedescription MOVE_SYNCHRONOISE, "Using an odd shock\nwave, the user\ndamages same-type\nPokémon in the\nsurrounding area."

movedata MOVE_ELECTRO_BALL, "Electro Ball"
    battleeffect MOVE_EFFECT_HIT
    pss SPLIT_SPECIAL
    basepower 1
    type TYPE_ELECTRIC
    accuracy 100
    pp 10
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_ELECTRO_BALL, "The user hurls an\nelectric orb. The\nfaster the user is\nthan the foe, the\ngreater the damage."

movedata MOVE_SOAK, "Soak"
    battleeffect MOVE_EFFECT_CHANGE_TO_WATER_TYPE
    pss SPLIT_STATUS
    basepower 0
    type TYPE_WATER
    accuracy 100
    pp 20
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_PROTECT | FLAG_MAGIC_COAT | FLAG_MIRROR_MOVE
    appeal 0x00
    contesttype CONTEST_CUTE
    terminatedata
    movedescription MOVE_SOAK, "The user shoots a\ntorrent of water at\nthe target and\nchanges the target’s\ntype to Water."

movedata MOVE_FLAME_CHARGE, "Flame Charge"
    battleeffect MOVE_EFFECT_RAISE_SPEED_HIT
    pss SPLIT_PHYSICAL
    basepower 50
    type TYPE_FIRE
    accuracy 100
    pp 20
    effectchance 100
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_PROTECT | FLAG_CONTACT | FLAG_MIRROR_MOVE
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_FLAME_CHARGE, "The user cloaks\nitself in flames and\nattacks. It also ups\nthe user’s Speed."

movedata MOVE_COIL, "Coil"
    battleeffect MOVE_EFFECT_ATK_DEF_ACC_UP
    pss SPLIT_STATUS
    basepower 0
    type TYPE_POISON
    accuracy 0
    pp 20
    effectchance 0
    target RANGE_USER
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_SNATCH
    appeal 0x00
    contesttype CONTEST_TOUGH
    terminatedata
    movedescription MOVE_COIL, "The user coils up,\nraising its Attack,\nDefense, and\naccuracy."

movedata MOVE_LOW_SWEEP, "Low Sweep"
    battleeffect MOVE_EFFECT_LOWER_SPEED_HIT
    pss SPLIT_PHYSICAL
    basepower 65
    type TYPE_FIGHTING
    accuracy 100
    pp 20
    effectchance 100
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_CONTACT | FLAG_PROTECT | FLAG_MIRROR_MOVE
    appeal 0x00
    contesttype CONTEST_SMART
    terminatedata
    movedescription MOVE_LOW_SWEEP, "The user attacks\nthe foe’s legs,\nlowering its\nSpeed stat."

movedata MOVE_ACID_SPRAY, "Acid Spray"
    battleeffect MOVE_EFFECT_LOWER_SP_DEF_2_HIT
    pss SPLIT_SPECIAL
    basepower 40
    type TYPE_POISON
    accuracy 100
    pp 20
    effectchance 100
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_PROTECT | FLAG_MIRROR_MOVE
    appeal 0x00
    contesttype CONTEST_BEAUTY
    terminatedata
    movedescription MOVE_ACID_SPRAY, "The user spits fluid\nthat melts the foe.\nIt harshly lowers\nthe foe’s Sp. Def."

movedata MOVE_FOUL_PLAY, "Foul Play"
    battleeffect MOVE_EFFECT_HIT
    pss SPLIT_PHYSICAL
    basepower 95
    type TYPE_DARK
    accuracy 100
    pp 15
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_CONTACT | FLAG_PROTECT | FLAG_MIRROR_MOVE
    appeal 0x00
    contesttype CONTEST_SMART
    terminatedata
    movedescription MOVE_FOUL_PLAY, "The user turns the\ntarget’s power\nagainst it. Power\nincreases with the\nfoe’s Attack stat."

movedata MOVE_SIMPLE_BEAM, "Simple Beam"
    battleeffect MOVE_EFFECT_SET_ABILITY_TO_SIMPLE
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy 100
    pp 15
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_PROTECT | FLAG_MAGIC_COAT | FLAG_MIRROR_MOVE
    appeal 0x00
    contesttype CONTEST_CUTE
    terminatedata
    movedescription MOVE_SIMPLE_BEAM, "The user’s\nmysterious psychic\nwave changes the\ntarget’s Ability to\nSimple."

movedata MOVE_ENTRAINMENT, "Entrainment"
    battleeffect MOVE_EFFECT_ENTRAINMENT
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy 100
    pp 15
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MAGIC_COAT | FLAG_MIRROR_MOVE
    appeal 0x00
    contesttype CONTEST_CUTE
    terminatedata
    movedescription MOVE_ENTRAINMENT, "The user dances\nwith an odd rhythm,\nmaking the target’s\nAbility the same as\nthe user’s Ability."

movedata MOVE_AFTER_YOU, "After You"
    battleeffect MOVE_EFFECT_AFTER_YOU
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy 0
    pp 15
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR
    appeal 0x00
    contesttype CONTEST_CUTE
    terminatedata
    movedescription MOVE_AFTER_YOU, "The user helps the\ntarget and makes it\nuse its move right\nafter the user."

movedata MOVE_ROUND, "Round"
    battleeffect MOVE_EFFECT_HIT
    pss SPLIT_SPECIAL
    basepower 60
    type TYPE_NORMAL
    accuracy 100
    pp 15
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_UNUSABLE_UNIMPLEMENTED
    appeal 0x00
    contesttype CONTEST_BEAUTY
    terminatedata
    movedescription MOVE_ROUND, "The user attacks\nwith a song. Others\ncan join in, doing\nmore damage."

movedata MOVE_ECHOED_VOICE, "Echoed Voice"
    battleeffect MOVE_EFFECT_HIT
    pss SPLIT_SPECIAL
    basepower 40
    type TYPE_NORMAL
    accuracy 100
    pp 15
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_UNUSABLE_UNIMPLEMENTED
    appeal 0x00
    contesttype CONTEST_BEAUTY
    terminatedata
    movedescription MOVE_ECHOED_VOICE, "The user attacks\nthe target with a\nharsh echo.\nIf used every turn,\npower increases."

movedata MOVE_CHIP_AWAY, "Chip Away"
    battleeffect MOVE_EFFECT_HIT
    pss SPLIT_PHYSICAL
    basepower 70
    type TYPE_NORMAL
    accuracy 100
    pp 20
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_CONTACT | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9
    appeal 0x00
    contesttype CONTEST_TOUGH
    terminatedata
    movedescription MOVE_CHIP_AWAY, "An attack which is\nnot affected by the\ntarget’s stat\nchanges."

movedata MOVE_CLEAR_SMOG, "Clear Smog"
    battleeffect MOVE_EFFECT_CLEAR_SMOG
    pss SPLIT_SPECIAL
    basepower 50
    type TYPE_POISON
    accuracy 0
    pp 15
    effectchance 100
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_PROTECT | FLAG_MIRROR_MOVE
    appeal 0x00
    contesttype CONTEST_BEAUTY
    terminatedata
    movedescription MOVE_CLEAR_SMOG, "The user throws a\nclump of special\nmud that reverts\nall stat changes."

movedata MOVE_STORED_POWER, "Stored Power"
    battleeffect MOVE_EFFECT_HIT
    pss SPLIT_SPECIAL
    basepower 20
    type TYPE_PSYCHIC
    accuracy 100
    pp 10
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_PROTECT | FLAG_MIRROR_MOVE
    appeal 0x00
    contesttype CONTEST_SMART
    terminatedata
    movedescription MOVE_STORED_POWER, "The user attacks\nwith a stored power\nthat grows with\neach raised stat."

movedata MOVE_QUICK_GUARD, "Quick Guard"
    battleeffect MOVE_EFFECT_PROTECT_USER_SIDE
    pss SPLIT_STATUS
    basepower 0
    type TYPE_FIGHTING
    accuracy 0
    pp 15
    effectchance 0
    target RANGE_USER_SIDE
    priority 3
    flags FLAG_SNATCH
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_QUICK_GUARD, "The user protects\nitself and its\nallies from priority\nmoves."

movedata MOVE_ALLY_SWITCH, "Ally Switch"
    battleeffect MOVE_EFFECT_HIT
    pss SPLIT_STATUS
    basepower 0
    type TYPE_PSYCHIC
    accuracy 0
    pp 15
    effectchance 0
    target RANGE_USER
    priority 2
    flags FLAG_KEEP_HP_BAR | FLAG_UNUSABLE_UNIMPLEMENTED
    appeal 0x00
    contesttype CONTEST_SMART
    terminatedata
    movedescription MOVE_ALLY_SWITCH, "The user teleports\nusing a strange\npower and switches\nplaces with one of\nits allies."

movedata MOVE_SCALD, "Scald"
    battleeffect MOVE_EFFECT_THAW_AND_BURN_HIT
    pss SPLIT_SPECIAL
    basepower 80
    type TYPE_WATER
    accuracy 100
    pp 15
    effectchance 30
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE
    appeal 0x00
    contesttype CONTEST_TOUGH
    terminatedata
    movedescription MOVE_SCALD, "Boiling water is\nshot at the foe.\nIt may also cause\na burn."

movedata MOVE_SHELL_SMASH, "Shell Smash"
    battleeffect MOVE_EFFECT_ATK_SP_ATK_SPEED_UP_2_DEF_SP_DEF_DOWN
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy 0
    pp 15
    effectchance 0
    target RANGE_USER
    priority 0
    flags FLAG_SNATCH
    appeal 0x00
    contesttype CONTEST_TOUGH
    terminatedata
    movedescription MOVE_SHELL_SMASH, "Sharply raises\nAttack, Sp. Atk, and\nSpeed, but lowers\nDefense and Sp. Def."

movedata MOVE_HEAL_PULSE, "Heal Pulse"
    battleeffect MOVE_EFFECT_HEAL_TARGET
    pss SPLIT_STATUS
    basepower 0
    type TYPE_PSYCHIC
    accuracy 0
    pp 10
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MAGIC_COAT
    appeal 0x00
    contesttype CONTEST_BEAUTY
    terminatedata
    movedescription MOVE_HEAL_PULSE, "The user emits a\nhealing pulse that\nrestores a target’s\nHP by up to half."

movedata MOVE_HEX, "Hex"
    battleeffect MOVE_EFFECT_DOUBLE_DAMAGE_ON_STATUS
    pss SPLIT_SPECIAL
    basepower 65
    type TYPE_GHOST
    accuracy 100
    pp 10
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_PROTECT | FLAG_MIRROR_MOVE
    appeal 0x00
    contesttype CONTEST_SMART
    terminatedata
    movedescription MOVE_HEX, "This attack does\ndouble damage to a\ntarget affected by\na status problem."

movedata MOVE_SKY_DROP, "Sky Drop"
    battleeffect MOVE_EFFECT_HIT
    pss SPLIT_PHYSICAL
    basepower 60
    type TYPE_FLYING
    accuracy 100
    pp 10
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_CONTACT | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9 | FLAG_UNUSABLE_UNIMPLEMENTED
    appeal 0x00
    contesttype CONTEST_TOUGH
    terminatedata
    movedescription MOVE_SKY_DROP, "It takes the enemy\ninto the sky,\nwhere it can’t\nattack. It is\ndropped next turn."

movedata MOVE_SHIFT_GEAR, "Shift Gear"
    battleeffect MOVE_EFFECT_SPEED_UP_2_ATK_UP
    pss SPLIT_STATUS
    basepower 0
    type TYPE_STEEL
    accuracy 0
    pp 10
    effectchance 0
    target RANGE_USER
    priority 0
    flags FLAG_SNATCH
    appeal 0x00
    contesttype CONTEST_SMART
    terminatedata
    movedescription MOVE_SHIFT_GEAR, "Rotating its gears,\nthe user raises its\nAttack and sharply\nraises its Speed."

movedata MOVE_CIRCLE_THROW, "Circle Throw"
    battleeffect MOVE_EFFECT_FORCE_SWITCH_HIT
    pss SPLIT_PHYSICAL
    basepower 60
    type TYPE_FIGHTING
    accuracy 90
    pp 10
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority -6
    flags FLAG_KEEP_HP_BAR | FLAG_CONTACT | FLAG_PROTECT | FLAG_MIRROR_MOVE
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_CIRCLE_THROW, "The foe is made to\nswitch out with an\nally. In the wild,\nthe battle ends."

movedata MOVE_INCINERATE, "Incinerate"
    battleeffect MOVE_EFFECT_INCINERATE
    pss SPLIT_SPECIAL
    basepower 60
    type TYPE_FIRE
    accuracy 100
    pp 15
    effectchance 100
    target RANGE_ADJACENT_OPPONENTS
    priority 0
    flags FLAG_PROTECT | FLAG_MIRROR_MOVE
    appeal 0x00
    contesttype CONTEST_TOUGH
    terminatedata
    movedescription MOVE_INCINERATE, "The user burns\nthe foe completely,\nrendering a held\nBerry useless."

movedata MOVE_QUASH, "Quash"
    battleeffect MOVE_EFFECT_QUASH
    pss SPLIT_STATUS
    basepower 0
    type TYPE_DARK
    accuracy 100
    pp 15
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MAGIC_COAT | FLAG_MIRROR_MOVE
    appeal 0x00
    contesttype CONTEST_SMART
    terminatedata
    movedescription MOVE_QUASH, "The user suppresses\nthe target and makes\nits move go last."

movedata MOVE_ACROBATICS, "Acrobatics"
    battleeffect MOVE_EFFECT_DOUBLE_POWER_WITHOUT_ITEM
    pss SPLIT_PHYSICAL
    basepower 55
    type TYPE_FLYING
    accuracy 100
    pp 15
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_CONTACT | FLAG_PROTECT | FLAG_MIRROR_MOVE
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_ACROBATICS, "A nimble attack\nthat does double\ndamage if the user\nhas no held item."

movedata MOVE_REFLECT_TYPE, "Reflect Type"
    battleeffect MOVE_EFFECT_HIT
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy 0
    pp 15
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_SNATCH | FLAG_UNUSABLE_UNIMPLEMENTED
    appeal 0x00
    contesttype CONTEST_SMART
    terminatedata
    movedescription MOVE_REFLECT_TYPE, "The user reflects\nthe target’s type,\nmaking it the same\ntype as the target."

movedata MOVE_RETALIATE, "Retaliate"
    battleeffect MOVE_EFFECT_HIT
    pss SPLIT_PHYSICAL
    basepower 70
    type TYPE_NORMAL
    accuracy 100
    pp 5
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_CONTACT | FLAG_PROTECT | FLAG_MIRROR_MOVE
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_RETALIATE, "If an ally fainted\nin the previous\nturn, this attack’s\ndamage increases."

movedata MOVE_FINAL_GAMBIT, "Final Gambit"
    battleeffect MOVE_EFFECT_HIT
    pss SPLIT_SPECIAL
    basepower 1
    type TYPE_FIGHTING
    accuracy 100
    pp 5
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_PROTECT | FLAG_UNUSABLE_UNIMPLEMENTED
    appeal 0x00
    contesttype CONTEST_TOUGH
    terminatedata
    movedescription MOVE_FINAL_GAMBIT, "The user risks all,\ndealing damage\nequal to its HP\nand then fainting\nfrom exhaustion."

movedata MOVE_BESTOW, "Bestow"
    battleeffect MOVE_EFFECT_HIT
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy 0
    pp 15
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9 | FLAG_UNUSABLE_UNIMPLEMENTED
    appeal 0x00
    contesttype CONTEST_CUTE
    terminatedata
    movedescription MOVE_BESTOW, "The user passes its\nheld item to the\ntarget when the\ntarget isn’t\nholding an item."

movedata MOVE_INFERNO, "Inferno"
    battleeffect MOVE_EFFECT_BURN_HIT
    pss SPLIT_SPECIAL
    basepower 100
    type TYPE_FIRE
    accuracy 50
    pp 5
    effectchance 100
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE
    appeal 0x00
    contesttype CONTEST_BEAUTY
    terminatedata
    movedescription MOVE_INFERNO, "The foe is engulfed\nby an intense fire\nthat is sure to\nleave a burn."

movedata MOVE_WATER_PLEDGE, "Water Pledge"
    battleeffect MOVE_EFFECT_HIT
    pss SPLIT_SPECIAL
    basepower 80
    type TYPE_WATER
    accuracy 100
    pp 10
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_UNUSABLE_UNIMPLEMENTED
    appeal 0x00
    contesttype CONTEST_BEAUTY
    terminatedata
    movedescription MOVE_WATER_PLEDGE, "When combined with\nits fire equivalent,\nits power increases\nand a rainbow\nappears."

movedata MOVE_FIRE_PLEDGE, "Fire Pledge"
    battleeffect MOVE_EFFECT_HIT
    pss SPLIT_SPECIAL
    basepower 80
    type TYPE_FIRE
    accuracy 100
    pp 10
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_UNUSABLE_UNIMPLEMENTED
    appeal 0x00
    contesttype CONTEST_BEAUTY
    terminatedata
    movedescription MOVE_FIRE_PLEDGE, "When used with its\ngrass equivalent,\nits power increases\nand a vast sea of\nfire appears."

movedata MOVE_GRASS_PLEDGE, "Grass Pledge"
    battleeffect MOVE_EFFECT_HIT
    pss SPLIT_SPECIAL
    basepower 80
    type TYPE_GRASS
    accuracy 100
    pp 10
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_UNUSABLE_UNIMPLEMENTED
    appeal 0x00
    contesttype CONTEST_BEAUTY
    terminatedata
    movedescription MOVE_GRASS_PLEDGE, "When used with its\nwater equivalent,\nits power increases\nand a vast swamp\nappears."

movedata MOVE_VOLT_SWITCH, "Volt Switch"
    battleeffect MOVE_EFFECT_SWITCH_HIT
    pss SPLIT_SPECIAL
    basepower 70
    type TYPE_ELECTRIC
    accuracy 100
    pp 20
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_PROTECT | FLAG_MIRROR_MOVE
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_VOLT_SWITCH, "After attacking,\nthe user switches\nplaces with a\nparty Pokémon."

movedata MOVE_STRUGGLE_BUG, "Struggle Bug"
    battleeffect MOVE_EFFECT_LOWER_SP_ATK_HIT
    pss SPLIT_SPECIAL
    basepower 50
    type TYPE_BUG
    accuracy 100
    pp 20
    effectchance 100
    target RANGE_ADJACENT_OPPONENTS
    priority 0
    flags FLAG_PROTECT | FLAG_MIRROR_MOVE
    appeal 0x00
    contesttype CONTEST_CUTE
    terminatedata
    movedescription MOVE_STRUGGLE_BUG, "While resisting, the\nuser attacks the\nfoe, lowering its\nSp. Atk stat."

movedata MOVE_BULLDOZE, "Bulldoze"
    battleeffect MOVE_EFFECT_LOWER_SPEED_HIT
    pss SPLIT_PHYSICAL
    basepower 60
    type TYPE_GROUND
    accuracy 100
    pp 20
    effectchance 100
    target RANGE_ALL_ADJACENT
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE
    appeal 0x00
    contesttype CONTEST_TOUGH
    terminatedata
    movedescription MOVE_BULLDOZE, "The user hits all\nPokémon in battle\nby stomping. Lowers\nSpeed of those hit."

movedata MOVE_FROST_BREATH, "Frost Breath"
    battleeffect MOVE_EFFECT_ALWAYS_CRITICAL
    pss SPLIT_SPECIAL
    basepower 60
    type TYPE_ICE
    accuracy 90
    pp 10
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE
    appeal 0x00
    contesttype CONTEST_BEAUTY
    terminatedata
    movedescription MOVE_FROST_BREATH, "The user blows\ncold air at the foe.\nIt always results in\na critical hit."

movedata MOVE_DRAGON_TAIL, "Dragon Tail"
    battleeffect MOVE_EFFECT_FORCE_SWITCH_HIT
    pss SPLIT_PHYSICAL
    basepower 60
    type TYPE_DRAGON
    accuracy 90
    pp 10
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority -6
    flags FLAG_CONTACT | FLAG_PROTECT | FLAG_MIRROR_MOVE
    appeal 0x00
    contesttype CONTEST_TOUGH
    terminatedata
    movedescription MOVE_DRAGON_TAIL, "The foe is made to\nswitch out with an\nally. In the wild,\nthe battle ends."

movedata MOVE_WORK_UP, "Work Up"
    battleeffect MOVE_EFFECT_ATK_SP_ATK_UP
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy 0
    pp 30
    effectchance 0
    target RANGE_USER
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_SNATCH
    appeal 0x00
    contesttype CONTEST_TOUGH
    terminatedata
    movedescription MOVE_WORK_UP, "The user rouses\nitself to raise\nits Attack and\nSp. Atk stats."

movedata MOVE_ELECTROWEB, "Electroweb"
    battleeffect MOVE_EFFECT_LOWER_SPEED_HIT
    pss SPLIT_SPECIAL
    basepower 55
    type TYPE_ELECTRIC
    accuracy 95
    pp 15
    effectchance 100
    target RANGE_ADJACENT_OPPONENTS
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE
    appeal 0x00
    contesttype CONTEST_BEAUTY
    terminatedata
    movedescription MOVE_ELECTROWEB, "The user traps the\nfoe in an electric\nnet. It also lowers\nthe foe’s Speed."

movedata MOVE_WILD_CHARGE, "Wild Charge"
    battleeffect MOVE_EFFECT_RECOIL_THIRD
    pss SPLIT_PHYSICAL
    basepower 90
    type TYPE_ELECTRIC
    accuracy 100
    pp 15
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_CONTACT | FLAG_PROTECT | FLAG_MIRROR_MOVE
    appeal 0x00
    contesttype CONTEST_TOUGH
    terminatedata
    movedescription MOVE_WILD_CHARGE, "The user throws an\nelectrified tackle.\nIt hurts the user\na little."

movedata MOVE_DRILL_RUN, "Drill Run"
    battleeffect MOVE_EFFECT_HIGH_CRITICAL
    pss SPLIT_PHYSICAL
    basepower 80
    type TYPE_GROUND
    accuracy 95
    pp 10
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_CONTACT | FLAG_PROTECT | FLAG_MIRROR_MOVE
    appeal 0x00
    contesttype CONTEST_TOUGH
    terminatedata
    movedescription MOVE_DRILL_RUN, "The user rotates\nits body like a\ndrill. It has a high\ncritical-hit ratio."

movedata MOVE_DUAL_CHOP, "Dual Chop"
    battleeffect MOVE_EFFECT_HIT_TWICE
    pss SPLIT_PHYSICAL
    basepower 40
    type TYPE_DRAGON
    accuracy 90
    pp 15
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_CONTACT | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_UNUSABLE_IN_GEN_9
    appeal 0x00
    contesttype CONTEST_TOUGH
    terminatedata
    movedescription MOVE_DUAL_CHOP, "The user hits\nthe foe with two\nbrutal strikes\nin one turn."

movedata MOVE_HEART_STAMP, "Heart Stamp"
    battleeffect MOVE_EFFECT_FLINCH_HIT
    pss SPLIT_PHYSICAL
    basepower 60
    type TYPE_PSYCHIC
    accuracy 100
    pp 25
    effectchance 30
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_CONTACT | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9
    appeal 0x00
    contesttype CONTEST_CUTE
    terminatedata
    movedescription MOVE_HEART_STAMP, "The foe is hit\nafter a cute act.\nIt may also make\nthe foe flinch."

movedata MOVE_HORN_LEECH, "Horn Leech"
    battleeffect MOVE_EFFECT_RECOVER_HALF_DAMAGE_DEALT
    pss SPLIT_PHYSICAL
    basepower 75
    type TYPE_GRASS
    accuracy 100
    pp 10
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_CONTACT | FLAG_PROTECT | FLAG_MIRROR_MOVE
    appeal 0x00
    contesttype CONTEST_TOUGH
    terminatedata
    movedescription MOVE_HORN_LEECH, "A harsh attack that\nabsorbs half the\ndamage it inflicted\nto restore HP."

movedata MOVE_SACRED_SWORD, "Sacred Sword"
    battleeffect MOVE_EFFECT_HIT
    pss SPLIT_PHYSICAL
    basepower 90
    type TYPE_FIGHTING
    accuracy 100
    pp 15
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_CONTACT | FLAG_PROTECT | FLAG_MIRROR_MOVE
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_SACRED_SWORD, "The user attacks by\nslicing with a long\nhorn. The target’s\nstat changes are\nignored."

movedata MOVE_RAZOR_SHELL, "Razor Shell"
    battleeffect MOVE_EFFECT_LOWER_DEFENSE_HIT
    pss SPLIT_PHYSICAL
    basepower 75
    type TYPE_WATER
    accuracy 95
    pp 10
    effectchance 50
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_CONTACT | FLAG_PROTECT | FLAG_MIRROR_MOVE
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_RAZOR_SHELL, "The foe is cut\nby sharp shells.\nIt may also lower\nthe foe’s Defense."

movedata MOVE_HEAT_CRASH, "Heat Crash"
    battleeffect MOVE_EFFECT_HEAVY_SLAM
    pss SPLIT_PHYSICAL
    basepower 1
    type TYPE_FIRE
    accuracy 100
    pp 10
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_CONTACT | FLAG_PROTECT | FLAG_MIRROR_MOVE
    appeal 0x00
    contesttype CONTEST_TOUGH
    terminatedata
    movedescription MOVE_HEAT_CRASH, "The user slams down\nwith fire. The more\nthe user outweighs\nthe foe, the greater\nthe damage."

movedata MOVE_LEAF_TORNADO, "Leaf Tornado"
    battleeffect MOVE_EFFECT_LOWER_ACCURACY_HIT
    pss SPLIT_SPECIAL
    basepower 65
    type TYPE_GRASS
    accuracy 90
    pp 10
    effectchance 50
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_UNUSABLE_IN_GEN_9
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_LEAF_TORNADO, "Sharp leaves circle\nthe foe. It may also\nlower the foe’s\naccuracy."

movedata MOVE_STEAMROLLER, "Steamroller"
    battleeffect MOVE_EFFECT_FLINCH_MINIMIZE_DOUBLE_HIT
    pss SPLIT_PHYSICAL
    basepower 65
    type TYPE_BUG
    accuracy 100
    pp 20
    effectchance 30
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_CONTACT | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9
    appeal 0x00
    contesttype CONTEST_TOUGH
    terminatedata
    movedescription MOVE_STEAMROLLER, "The user crushes\nthe foe with its\nbody. It may also\nmake the foe flinch."

movedata MOVE_COTTON_GUARD, "Cotton Guard"
    battleeffect MOVE_EFFECT_DEF_UP_3
    pss SPLIT_STATUS
    basepower 0
    type TYPE_GRASS
    accuracy 0
    pp 10
    effectchance 0
    target RANGE_USER
    priority 0
    flags FLAG_SNATCH
    appeal 0x00
    contesttype CONTEST_CUTE
    terminatedata
    movedescription MOVE_COTTON_GUARD, "The user protects\nitself with cotton,\ndrastically raising\nits Defense."

movedata MOVE_NIGHT_DAZE, "Night Daze"
    battleeffect MOVE_EFFECT_LOWER_ACCURACY_HIT
    pss SPLIT_SPECIAL
    basepower 85
    type TYPE_DARK
    accuracy 95
    pp 10
    effectchance 40
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_PROTECT | FLAG_MIRROR_MOVE
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_NIGHT_DAZE, "The user releases a\npitch-black blast\nat its target. May\nalso lower target’s\naccuracy."

movedata MOVE_PSYSTRIKE, "Psystrike"
    battleeffect MOVE_EFFECT_HIT
    pss SPLIT_SPECIAL
    basepower 100
    type TYPE_PSYCHIC
    accuracy 100
    pp 10
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_PROTECT | FLAG_MIRROR_MOVE
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_PSYSTRIKE, "An odd psychic wave\nattacks the target.\nThis attack does\nphysical damage."

movedata MOVE_TAIL_SLAP, "Tail Slap"
    battleeffect MOVE_EFFECT_MULTI_HIT
    pss SPLIT_PHYSICAL
    basepower 25
    type TYPE_NORMAL
    accuracy 85
    pp 10
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_CONTACT | FLAG_PROTECT | FLAG_MIRROR_MOVE
    appeal 0x00
    contesttype CONTEST_CUTE
    terminatedata
    movedescription MOVE_TAIL_SLAP, "The use attacks by\nhitting the target\nwith its hard tail.\nIt hits two to five\ntimes in a row."

movedata MOVE_HURRICANE, "Hurricane"
    battleeffect MOVE_EFFECT_HURRICANE // Accuracy in rain & sun handled in other_battle_calculators.c.
    pss SPLIT_SPECIAL
    basepower 110
    type TYPE_FLYING
    accuracy 70
    pp 10
    effectchance 30
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_PROTECT | FLAG_MIRROR_MOVE
    appeal 0x00
    contesttype CONTEST_TOUGH
    terminatedata
    movedescription MOVE_HURRICANE, "The user attacks by\nwrapping its opponent\nin a fierce wind.\nThis may also confuse\nthe target."

movedata MOVE_HEAD_CHARGE, "Head Charge"
    battleeffect MOVE_EFFECT_RECOIL_THIRD
    pss SPLIT_PHYSICAL
    basepower 120
    type TYPE_NORMAL
    accuracy 100
    pp 15
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_CONTACT | FLAG_PROTECT | FLAG_MIRROR_MOVE
    appeal 0x00
    contesttype CONTEST_TOUGH
    terminatedata
    movedescription MOVE_HEAD_CHARGE, "The user charges its\nhead into its foe,\nusing its guard hair.\nIt slightly damages\nthe user."

movedata MOVE_GEAR_GRIND, "Gear Grind"
    battleeffect MOVE_EFFECT_HIT_TWICE
    pss SPLIT_PHYSICAL
    basepower 50
    type TYPE_STEEL
    accuracy 85
    pp 15
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_CONTACT | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_UNUSABLE_IN_GEN_9
    appeal 0x00
    contesttype CONTEST_SMART
    terminatedata
    movedescription MOVE_GEAR_GRIND, "The user attacks by\nthrowing two steel\ngears at it target.\nThis attack hits\ntwice in a row."

movedata MOVE_SEARING_SHOT, "Searing Shot"
    battleeffect MOVE_EFFECT_BURN_HIT
    pss SPLIT_SPECIAL
    basepower 100
    type TYPE_FIRE
    accuracy 100
    pp 5
    effectchance 30
    target RANGE_ALL_ADJACENT
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_SEARING_SHOT, "The user torches\neverything around it\nin an inferno of\nscarlet flames. It\nmay burn the foes."

movedata MOVE_TECHNO_BLAST, "Techno Blast"
    battleeffect MOVE_EFFECT_TECHNO_BLAST
    pss SPLIT_SPECIAL
    basepower 120
    type TYPE_NORMAL
    accuracy 100
    pp 5
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_TECHNO_BLAST, "The user fires a beam\nof light at its foe.\nThe type changes\ndepending on the\nDrive held."

movedata MOVE_RELIC_SONG, "Relic Song"
    battleeffect MOVE_EFFECT_SLEEP_HIT
    pss SPLIT_SPECIAL
    basepower 75
    type TYPE_NORMAL
    accuracy 100
    pp 10
    effectchance 10
    target RANGE_ADJACENT_OPPONENTS
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE
    appeal 0x00
    contesttype CONTEST_BEAUTY
    terminatedata
    movedescription MOVE_RELIC_SONG, "The user sings an\nancient song and\nattacks the hearts of\nthe listeners. It\nmay induce sleep."

movedata MOVE_SECRET_SWORD, "Secret Sword"
    battleeffect MOVE_EFFECT_HIT
    pss SPLIT_SPECIAL
    basepower 85
    type TYPE_FIGHTING
    accuracy 100
    pp 10
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE
    appeal 0x00
    contesttype CONTEST_BEAUTY
    terminatedata
    movedescription MOVE_SECRET_SWORD, "The user cuts with\nits long horn. The\nodd power in the\nhorn does physical\ndamage to the foe."

movedata MOVE_GLACIATE, "Glaciate"
    battleeffect MOVE_EFFECT_LOWER_SPEED_HIT
    pss SPLIT_SPECIAL
    basepower 65
    type TYPE_ICE
    accuracy 95
    pp 10
    effectchance 100
    target RANGE_ADJACENT_OPPONENTS
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE
    appeal 0x00
    contesttype CONTEST_BEAUTY
    terminatedata
    movedescription MOVE_GLACIATE, "The user attacks by\nblowing freezing cold\nair at opposing\nPokémon. This lowers\ntheir Speed."

movedata MOVE_BOLT_STRIKE, "Bolt Strike"
    battleeffect MOVE_EFFECT_PARALYZE_HIT
    pss SPLIT_SPECIAL
    basepower 130
    type TYPE_ELECTRIC
    accuracy 85
    pp 5
    effectchance 20
    target RANGE_SINGLE_TARGET
    priority 0
    flags  FLAG_CONTACT | FLAG_PROTECT | FLAG_MIRROR_MOVE
    appeal 0x00
    contesttype CONTEST_BEAUTY
    terminatedata
    movedescription MOVE_BOLT_STRIKE, "The user surrounds\nitself with abundant\nelectricity that can\nparalyze and charges\nits target."

movedata MOVE_BLUE_FLARE, "Blue Flare"
    battleeffect MOVE_EFFECT_BURN_HIT
    pss SPLIT_SPECIAL
    basepower 130
    type TYPE_FIRE
    accuracy 85
    pp 5
    effectchance 20
    target RANGE_SINGLE_TARGET
    priority 0
    flags  FLAG_PROTECT | FLAG_MIRROR_MOVE
    appeal 0x00
    contesttype CONTEST_BEAUTY
    terminatedata
    movedescription MOVE_BLUE_FLARE, "The user attacks by\nengulfing the foe in\na severe, beautiful,\nblue flame. It may\nburn the foe."

movedata MOVE_FIERY_DANCE, "Fiery Dance"
    battleeffect MOVE_EFFECT_RAISE_SP_ATK_HIT
    pss SPLIT_SPECIAL
    basepower 80
    type TYPE_FIRE
    accuracy 100
    pp 10
    effectchance 50
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_PROTECT | FLAG_MIRROR_MOVE
    appeal 0x00
    contesttype CONTEST_BEAUTY
    terminatedata
    movedescription MOVE_FIERY_DANCE, "Cloaked in flames,\nthe user dances.\nIt may also raise\nthe user’s Sp. Atk."

movedata MOVE_FREEZE_SHOCK, "Freeze Shock"
    battleeffect MOVE_EFFECT_CHARGE_TURN_PARALYZE_HIT
    pss SPLIT_SPECIAL
    basepower 140
    type TYPE_ICE
    accuracy 90
    pp 5
    effectchance 30
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE
    appeal 0x00
    contesttype CONTEST_BEAUTY
    terminatedata
    movedescription MOVE_FREEZE_SHOCK, "A two-turn attack\nthat hits the foe\nwith electrically\ncharged ice. It may\nparalyze the foe."

movedata MOVE_ICE_BURN, "Ice Burn"
    battleeffect MOVE_EFFECT_CHARGE_TURN_BURN_HIT
    pss SPLIT_SPECIAL
    basepower 140
    type TYPE_ICE
    accuracy 90
    pp 5
    effectchance 30
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE
    appeal 0x00
    contesttype CONTEST_BEAUTY
    terminatedata
    movedescription MOVE_ICE_BURN, "A two-turn attack\nthat surrounds the\nfoe with ultracold,\nfreezing wind. It\nmay burn the foe."

movedata MOVE_SNARL, "Snarl"
    battleeffect MOVE_EFFECT_LOWER_SP_ATK_HIT
    pss SPLIT_SPECIAL
    basepower 55
    type TYPE_DARK
    accuracy 95
    pp 15
    effectchance 100
    target RANGE_ADJACENT_OPPONENTS
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE
    appeal 0x00
    contesttype CONTEST_TOUGH
    terminatedata
    movedescription MOVE_SNARL, "The user barks\nmenacingly. It\nalso lowers the\nfoe’s Sp. Atk."

movedata MOVE_ICICLE_CRASH, "Icicle Crash"
    battleeffect MOVE_EFFECT_FLINCH_HIT
    pss SPLIT_PHYSICAL
    basepower 85
    type TYPE_ICE
    accuracy 90
    pp 10
    effectchance 30
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE
    appeal 0x00
    contesttype CONTEST_BEAUTY
    terminatedata
    movedescription MOVE_ICICLE_CRASH, "Icicles are dropped\non the foe. It may\nalso make the foe\nflinch."

movedata MOVE_V_CREATE, "V-create"
    battleeffect MOVE_EFFECT_USER_DEF_SP_DEF_SPEED_DOWN_HIT
    pss SPLIT_PHYSICAL
    basepower 180
    type TYPE_FIRE
    accuracy 95
    pp 5
    effectchance 100
    target RANGE_SINGLE_TARGET
    priority 0
    flags  FLAG_CONTACT | FLAG_PROTECT | FLAG_MIRROR_MOVE
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_V_CREATE, "The user hurls the\nhot flame on its\nforehead. It lowers\nthe user’s Def, Sp.\nDef, and Speed."

movedata MOVE_FUSION_FLARE, "Fusion Flare"
    battleeffect MOVE_EFFECT_HIT
    pss SPLIT_SPECIAL
    basepower 100
    type TYPE_FIRE
    accuracy 100
    pp 5
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags  FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_UNUSABLE_UNIMPLEMENTED
    appeal 0x00
    contesttype CONTEST_BEAUTY
    terminatedata
    movedescription MOVE_FUSION_FLARE, "The user brings down\na giant flame.\nIt does more damage\nwhen influenced by\nan enormous bolt."

movedata MOVE_FUSION_BOLT, "Fusion Bolt"
    battleeffect MOVE_EFFECT_HIT
    pss SPLIT_SPECIAL
    basepower 100
    type TYPE_ELECTRIC
    accuracy 100
    pp 5
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags  FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_UNUSABLE_UNIMPLEMENTED
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_FUSION_BOLT, "The user throws down\na giant bolt.\nIt does more damage\nwhen influenced by\nan enormous flame."

movedata MOVE_FLYING_PRESS, "Flying Press"
    battleeffect MOVE_EFFECT_HIT
    pss SPLIT_PHYSICAL
    basepower 100
    type TYPE_FIGHTING
    accuracy 95
    pp 10
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_CONTACT | FLAG_UNUSABLE_UNIMPLEMENTED
    appeal 0x00
    contesttype CONTEST_TOUGH
    terminatedata
    movedescription MOVE_FLYING_PRESS, "The user dives down\nonto the target from\nthe sky. This move is\nFighting and Flying\ntype simultaneously."

movedata MOVE_MAT_BLOCK, "Mat Block"
    battleeffect MOVE_EFFECT_PROTECT_USER_SIDE
    pss SPLIT_STATUS
    basepower 0
    type TYPE_FIGHTING
    accuracy 0
    pp 10
    effectchance 0
    target RANGE_USER_SIDE
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT | FLAG_UNUSABLE_IN_GEN_9
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_MAT_BLOCK, "Using a pulled-up mat\nas a shield, the user\nprotects itself and\nits allies from\ndamaging moves."

movedata MOVE_BELCH, "Belch"
    battleeffect MOVE_EFFECT_BELCH
    pss SPLIT_SPECIAL
    basepower 120
    type TYPE_POISON
    accuracy 90
    pp 10
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE
    appeal 0x00
    contesttype CONTEST_TOUGH
    terminatedata
    movedescription MOVE_BELCH, "The user lets out a\ndamaging belch at the\ntarget. The user must\neat a held Berry to\nuse this move."

movedata MOVE_ROTOTILLER, "Rototiller"
    battleeffect MOVE_EFFECT_HIT
    pss SPLIT_STATUS
    basepower 0
    type TYPE_GROUND
    accuracy 0
    pp 10
    effectchance 100
    target RANGE_USER | RANGE_ALL_ADJACENT
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_MAGIC_COAT | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9 | FLAG_UNUSABLE_UNIMPLEMENTED
    appeal 0x00
    contesttype CONTEST_TOUGH
    terminatedata
    movedescription MOVE_ROTOTILLER, "By making it easier\nfor plants to grow,\nthe user raises the\nAttack and Sp. Atk\nstats of Grass-types."

movedata MOVE_STICKY_WEB, "Sticky Web"
    battleeffect MOVE_EFFECT_STICKY_WEB
    pss SPLIT_STATUS
    basepower 0
    type TYPE_BUG
    accuracy 0
    pp 20
    effectchance 0
    target RANGE_OPPONENT_SIDE
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT
    appeal 0x00
    contesttype CONTEST_TOUGH
    terminatedata
    movedescription MOVE_STICKY_WEB, "The user weaves a web\naround the opposing\nteam, which lowers\ntheir Speed stat upon\nswitching into battle."

movedata MOVE_FELL_STINGER, "Fell Stinger"
    battleeffect MOVE_EFFECT_FELL_STINGER
    pss SPLIT_PHYSICAL
    basepower 50
    type TYPE_BUG
    accuracy 100
    pp 25
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_CONTACT
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_FELL_STINGER, "When the user knocks\nout a target with\nthis move, the\nuser's Attack stat\nrises drastically."

movedata MOVE_PHANTOM_FORCE, "Phantom Force"
    battleeffect MOVE_EFFECT_SHADOW_FORCE
    pss SPLIT_PHYSICAL
    basepower 90
    type TYPE_GHOST
    accuracy 100
    pp 10
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_CONTACT
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_PHANTOM_FORCE, "The user disappears,\nthen strikes the foe\non the second turn.\nIt hits even if the\nfoe protects itself."

movedata MOVE_TRICK_OR_TREAT, "Trick-or-Treat"
    battleeffect MOVE_EFFECT_ADD_TYPE_GHOST
    pss SPLIT_STATUS
    basepower 0
    type TYPE_GHOST
    accuracy 100
    pp 20
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT
    appeal 0x00
    contesttype CONTEST_CUTE
    terminatedata
    movedescription MOVE_TRICK_OR_TREAT, "The user takes the\ntarget\ntrick-or-treating.\nThis adds Ghost type\nto the target's type."

movedata MOVE_NOBLE_ROAR, "Noble Roar"
    battleeffect MOVE_EFFECT_ATK_SP_ATK_DOWN
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy 100
    pp 30
    effectchance 100
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT
    appeal 0x00
    contesttype CONTEST_TOUGH
    terminatedata
    movedescription MOVE_NOBLE_ROAR, "Letting out a noble\nroar, the user\nintimidates the target\nand lowers its Attack\nand Sp. Atk stats."

movedata MOVE_ION_DELUGE, "Ion Deluge"
    battleeffect MOVE_EFFECT_ION_DELUGE
    pss SPLIT_STATUS
    basepower 0
    type TYPE_ELECTRIC
    accuracy 0
    pp 25
    effectchance 0
    target RANGE_FIELD
    priority 1
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9
    appeal 0x00
    contesttype CONTEST_BEAUTY
    terminatedata
    movedescription MOVE_ION_DELUGE, "The user disperses\nelectrically charged\nparticles, which\nchanges Normal-type\nmoves to Electric."

movedatalongname MOVE_PARABOLIC_CHARGE, "ParabolicCharge", "Parabolic Charge"
    battleeffect MOVE_EFFECT_RECOVER_HALF_DAMAGE_DEALT
    pss SPLIT_SPECIAL
    basepower 65
    type TYPE_ELECTRIC
    accuracy 100
    pp 20
    effectchance 0
    target RANGE_ALL_ADJACENT
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE
    appeal 0x00
    contesttype CONTEST_SMART
    terminatedata
    movedescription MOVE_PARABOLIC_CHARGE, "An energy-draining\nshockwave. The user’s\nHP is restored by\nhalf the damage taken\nby those hit."

movedata MOVE_FORESTS_CURSE, "Forest’s Curse"
    battleeffect MOVE_EFFECT_ADD_TYPE_GRASS
    pss SPLIT_STATUS
    basepower 0
    type TYPE_GRASS
    accuracy 100
    pp 20
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT
    appeal 0x00
    contesttype CONTEST_SMART
    terminatedata
    movedescription MOVE_FORESTS_CURSE, "The user puts a forest\ncurse on the target.\nThis adds Grass type\nto the target's type."

movedata MOVE_PETAL_BLIZZARD, "Petal Blizzard"
    battleeffect MOVE_EFFECT_HIT
    pss SPLIT_PHYSICAL
    basepower 90
    type TYPE_GRASS
    accuracy 100
    pp 15
    effectchance 0
    target RANGE_ALL_ADJACENT
    priority 0
    flags FLAG_PROTECT | FLAG_MIRROR_MOVE
    appeal 0x00
    contesttype CONTEST_BEAUTY
    terminatedata
    movedescription MOVE_PETAL_BLIZZARD, "The user stirs up a\nviolent petal blizzard\nand attacks everything\naround it."

movedata MOVE_FREEZE_DRY, "Freeze-Dry"
    battleeffect MOVE_EFFECT_HIT
    pss SPLIT_SPECIAL
    basepower 70
    type TYPE_ICE
    accuracy 100
    pp 20
    effectchance 10
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_PROTECT | FLAG_MIRROR_MOVE
    appeal 0x00
    contesttype CONTEST_BEAUTY
    terminatedata
    movedescription MOVE_FREEZE_DRY, "The user rapidly cools\nthe target, possibly\nleaving them frozen.\nThis move is super\neffective on Water."

movedata MOVE_DISARMING_VOICE, "Disarming Voice"
    battleeffect MOVE_EFFECT_BYPASS_ACCURACY
    pss SPLIT_SPECIAL
    basepower 40
    type (FAIRY_TYPE_IMPLEMENTED) ? TYPE_FAIRY : TYPE_NORMAL
    accuracy 0
    pp 15
    effectchance 0
    target RANGE_ADJACENT_OPPONENTS
    priority 0
    flags FLAG_PROTECT | FLAG_MIRROR_MOVE
    appeal 0x00
    contesttype CONTEST_CUTE
    terminatedata
    movedescription MOVE_DISARMING_VOICE, "Letting out a charming\ncry, the user does\nemotional damage to\nopposing Pokémon. This\nattack never misses."

movedata MOVE_PARTING_SHOT, "Parting Shot"
    battleeffect MOVE_EFFECT_PARTING_SHOT
    pss SPLIT_STATUS
    basepower 0
    type TYPE_DARK
    accuracy 100
    pp 20
    effectchance 100
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_PARTING_SHOT, "With a parting threat,\nthe user lowers the\ntarget's Attack and\nSp. Atk stats.\nThen it switches out."

movedata MOVE_TOPSY_TURVY, "Topsy-Turvy"
    battleeffect MOVE_EFFECT_HIT
    pss SPLIT_STATUS
    basepower 0
    type TYPE_DARK
    accuracy 0
    pp 20
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT | FLAG_UNUSABLE_UNIMPLEMENTED
    appeal 0x00
    contesttype CONTEST_SMART
    terminatedata
    movedescription MOVE_TOPSY_TURVY, "All stat changes\naffecting the target\nturn topsy-turvy and\nbecome the opposite of\nwhat they were."

movedata MOVE_DRAINING_KISS, "Draining Kiss"
    battleeffect MOVE_EFFECT_RECOVER_THREE_QUARTERS_DAMAGE_DEALT
    pss SPLIT_SPECIAL
    basepower 50
    type (FAIRY_TYPE_IMPLEMENTED) ? TYPE_FAIRY : TYPE_NORMAL
    accuracy 100
    pp 10
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_CONTACT
    appeal 0x00
    contesttype CONTEST_CUTE
    terminatedata
    movedescription MOVE_DRAINING_KISS, "An energy-stealing\nkiss. The user’s\nHP is restored by\nhalf the damage taken\nby the target."

movedata MOVE_CRAFTY_SHIELD, "Crafty Shield"
    battleeffect MOVE_EFFECT_PROTECT_USER_SIDE
    pss SPLIT_STATUS
    basepower 0
    type (FAIRY_TYPE_IMPLEMENTED) ? TYPE_FAIRY : TYPE_NORMAL
    accuracy 0
    pp 10
    effectchance 0
    target RANGE_USER_SIDE
    priority 3
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT | FLAG_UNUSABLE_IN_GEN_9
    appeal 0x00
    contesttype CONTEST_SMART
    terminatedata
    movedescription MOVE_CRAFTY_SHIELD, "The user protects\nitself and its allies\nfrom status moves\nwith a mysterious\npower."

movedata MOVE_FLOWER_SHIELD, "Flower Shield"
    battleeffect MOVE_EFFECT_HIT
    pss SPLIT_STATUS
    basepower 0
    type (FAIRY_TYPE_IMPLEMENTED) ? TYPE_FAIRY : TYPE_NORMAL
    accuracy 0
    pp 10
    effectchance 100
    target RANGE_USER | RANGE_ALL_ADJACENT
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_MAGIC_COAT | FLAG_UNUSABLE_IN_GEN_9 | FLAG_UNUSABLE_UNIMPLEMENTED
    appeal 0x00
    contesttype CONTEST_BEAUTY
    terminatedata
    movedescription MOVE_FLOWER_SHIELD, "The user raises the\nDefense stats of all\nGrass-type Pokémon\nin battle with a\nmysterious power."

movedata MOVE_GRASSY_TERRAIN, "Grassy Terrain"
    battleeffect MOVE_EFFECT_APPLY_TERRAINS
    pss SPLIT_STATUS
    basepower 0
    type TYPE_GRASS
    accuracy 0
    pp 10
    effectchance 0
    target RANGE_FIELD
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT
    appeal APPEAL_BASIC
    contesttype CONTEST_BEAUTY
    terminatedata
    movedescription MOVE_GRASSY_TERRAIN, "The user turns the\nground into Grassy\nTerrain for five\nturns. This powers up\nGrass-type moves."

movedata MOVE_MISTY_TERRAIN, "Misty Terrain"
    battleeffect MOVE_EFFECT_APPLY_TERRAINS
    pss SPLIT_STATUS
    basepower 0
    type (FAIRY_TYPE_IMPLEMENTED) ? TYPE_FAIRY : TYPE_NORMAL
    accuracy 0
    pp 10
    effectchance 0
    target RANGE_FIELD
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT
    appeal APPEAL_BASIC
    contesttype CONTEST_BEAUTY
    terminatedata
    movedescription MOVE_MISTY_TERRAIN, "Sets a Misty Terrain\nfor five turns. This\nprevents status\nailments and weakens\nDragon-Type moves."

movedata MOVE_ELECTRIFY, "Electrify"
    battleeffect MOVE_EFFECT_HIT
    pss SPLIT_STATUS
    basepower 0
    type TYPE_ELECTRIC
    accuracy 0
    pp 20
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT | FLAG_UNUSABLE_UNIMPLEMENTED
    appeal 0x00
    contesttype CONTEST_SMART
    terminatedata
    movedescription MOVE_ELECTRIFY, "If the target is\nelectrified, their\nmoves become Electric\ntype for the rest of\nthat turn."

movedata MOVE_PLAY_ROUGH, "Play Rough"
    battleeffect MOVE_EFFECT_LOWER_ATTACK_HIT
    pss SPLIT_PHYSICAL
    basepower 90
    type (FAIRY_TYPE_IMPLEMENTED) ? TYPE_FAIRY : TYPE_NORMAL
    accuracy 90
    pp 10
    effectchance 10
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_CONTACT
    appeal 0x00
    contesttype CONTEST_CUTE
    terminatedata
    movedescription MOVE_PLAY_ROUGH, "The user attacks by\nplaying rough with the\ntarget. This may also\nlower the target's\nAttack stat."

movedata MOVE_FAIRY_WIND, "Fairy Wind"
    battleeffect MOVE_EFFECT_HIT
    pss SPLIT_SPECIAL
    basepower 40
    type (FAIRY_TYPE_IMPLEMENTED) ? TYPE_FAIRY : TYPE_NORMAL
    accuracy 100
    pp 30
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE
    appeal 0x00
    contesttype CONTEST_BEAUTY
    terminatedata
    movedescription MOVE_FAIRY_WIND, "The user attacks by\nstirring up a fairy\nwind to strike the\ntarget."

movedata MOVE_MOONBLAST, "Moonblast"
    battleeffect MOVE_EFFECT_LOWER_SP_ATK_HIT
    pss SPLIT_SPECIAL
    basepower 95
    type (FAIRY_TYPE_IMPLEMENTED) ? TYPE_FAIRY : TYPE_NORMAL
    accuracy 100
    pp 15
    effectchance 30
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE
    appeal 0x00
    contesttype CONTEST_BEAUTY
    terminatedata
    movedescription MOVE_MOONBLAST, "Borrowing the power of\nthe moon, the user\nattacks the target.\nThis may also lower the\ntarget's Sp. Atk stat."

movedata MOVE_BOOMBURST, "Boomburst"
    battleeffect MOVE_EFFECT_HIT
    pss SPLIT_SPECIAL
    basepower 140
    type TYPE_NORMAL
    accuracy 100
    pp 10
    effectchance 0
    target RANGE_ALL_ADJACENT
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE
    appeal 0x00
    contesttype CONTEST_TOUGH
    terminatedata
    movedescription MOVE_BOOMBURST, "The user attacks\neverything around it\nwith the destructive\npower of a terrible\nexplosive sound."

movedata MOVE_FAIRY_LOCK, "Fairy Lock"
    battleeffect MOVE_EFFECT_HIT
    pss SPLIT_STATUS
    basepower 0
    type (FAIRY_TYPE_IMPLEMENTED) ? TYPE_FAIRY : TYPE_NORMAL
    accuracy 0
    pp 10
    effectchance 0
    target RANGE_FIELD
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT | FLAG_UNUSABLE_UNIMPLEMENTED
    appeal 0x00
    contesttype CONTEST_SMART
    terminatedata
    movedescription MOVE_FAIRY_LOCK, "By locking down the\nbattlefield, the user\nkeeps all Pokémon\nfrom fleeing during\nthe next turn."

movedata MOVE_KINGS_SHIELD, "King’s Shield"
    battleeffect MOVE_EFFECT_PROTECT
    pss SPLIT_STATUS
    basepower 0
    type TYPE_STEEL
    accuracy 0
    pp 10
    effectchance 0
    target RANGE_USER
    priority 4
    flags 0
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_KINGS_SHIELD, "The user protects\nitself from damage\nwhile lowering the\nAttack of any attacker\nthat makes contact."

movedata MOVE_PLAY_NICE, "Play Nice"
    battleeffect MOVE_EFFECT_ATK_DOWN
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy 0
    pp 20
    effectchance 100
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_MAGIC_COAT
    appeal 0x00
    contesttype CONTEST_CUTE
    terminatedata
    movedescription MOVE_PLAY_NICE, "The user and the\ntarget become pals,\nlowering the target's\nAttack stat.\nBypasses Protect."

movedata MOVE_CONFIDE, "Confide"
    battleeffect MOVE_EFFECT_HIT
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy 0
    pp 20
    effectchance 100
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_MAGIC_COAT | FLAG_UNUSABLE_UNIMPLEMENTED
    appeal 0x00
    contesttype CONTEST_CUTE
    terminatedata
    movedescription MOVE_CONFIDE, "The user tells the\ntarget a secret,\nmaking it lose focus.\nThis lowers the\ntarget's Sp. Atk stat."

movedata MOVE_DIAMOND_STORM, "Diamond Storm"
    battleeffect MOVE_EFFECT_RAISE_DEF_2_HIT
    pss SPLIT_PHYSICAL
    basepower 100
    type TYPE_ROCK
    accuracy 95
    pp 5
    effectchance 50
    target RANGE_ADJACENT_OPPONENTS
    priority 0
    flags  FLAG_PROTECT | FLAG_MIRROR_MOVE
    appeal 0x00
    contesttype CONTEST_BEAUTY
    terminatedata
    movedescription MOVE_DIAMOND_STORM, "A storm of diamonds\nwhips opposing\nPokémon. This may also\nsharply boost the\nuser's Defense stat."

movedata MOVE_STEAM_ERUPTION, "Steam Eruption"
    battleeffect MOVE_EFFECT_THAW_AND_BURN_HIT
    pss SPLIT_SPECIAL
    basepower 110
    type TYPE_WATER
    accuracy 95
    pp 5
    effectchance 30
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE
    appeal 0x00
    contesttype CONTEST_BEAUTY
    terminatedata
    movedescription MOVE_STEAM_ERUPTION, "The user immerses the\ntarget in superheated\nsteam.\nThis may also leave\nthe target with a burn."

movedata MOVE_HYPERSPACE_HOLE, "Hyperspace Hole"
    battleeffect MOVE_EFFECT_REMOVE_PROTECT
    pss SPLIT_SPECIAL
    basepower 80
    type TYPE_PSYCHIC
    accuracy 0
    pp 5
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_UNUSABLE_IN_GEN_8
    appeal 0x00
    contesttype CONTEST_SMART
    terminatedata
    movedescription MOVE_HYPERSPACE_HOLE, "Using a hyperspace\nhole, the user strikes\nfrom far away. This\ncan hit a target using\nProtect or Detect."

movedata MOVE_WATER_SHURIKEN, "Water Shuriken"
    battleeffect MOVE_EFFECT_MULTI_HIT
    pss SPLIT_SPECIAL
    basepower 15
    type TYPE_WATER
    accuracy 100
    pp 20
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 1
    flags FLAG_PROTECT | FLAG_MIRROR_MOVE
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_WATER_SHURIKEN, "The user hits the\ntarget with throwing\nstars two to five\ntimes. This move\nalways goes first."

movedata MOVE_MYSTICAL_FIRE, "Mystical Fire"
    battleeffect MOVE_EFFECT_LOWER_SP_ATK_HIT
    pss SPLIT_SPECIAL
    basepower 75
    type TYPE_FIRE
    accuracy 100
    pp 10
    effectchance 100
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE
    appeal 0x00
    contesttype CONTEST_BEAUTY
    terminatedata
    movedescription MOVE_MYSTICAL_FIRE, "The user attacks by\nbreathing a special,\nhot fire.\nThis also lowers the\ntarget's Sp. Atk stat."

movedata MOVE_SPIKY_SHIELD, "Spiky Shield"
    battleeffect MOVE_EFFECT_PROTECT
    pss SPLIT_STATUS
    basepower 0
    type TYPE_GRASS
    accuracy 0
    pp 10
    effectchance 0
    target RANGE_USER
    priority 4
    flags 0
    appeal 0x00
    contesttype CONTEST_TOUGH
    terminatedata
    movedescription MOVE_SPIKY_SHIELD, "The user is protected\nfrom attacks, while\nalso damaging any\nattacker who makes\ndirect contact."

movedata MOVE_AROMATIC_MIST, "Aromatic Mist"
    battleeffect MOVE_EFFECT_HIT
    pss SPLIT_STATUS
    basepower 0
    type (FAIRY_TYPE_IMPLEMENTED) ? TYPE_FAIRY : TYPE_NORMAL
    accuracy 0
    pp 20
    effectchance 0
    target RANGE_ALLY
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_MAGIC_COAT | FLAG_UNUSABLE_UNIMPLEMENTED
    appeal 0x00
    contesttype CONTEST_BEAUTY
    terminatedata
    movedescription MOVE_AROMATIC_MIST, "The user boosts the\nSp. Def stat of an\nally Pokémon by using\na mysterious aroma."

movedata MOVE_EERIE_IMPULSE, "Eerie Impulse"
    battleeffect MOVE_EFFECT_SP_ATK_DOWN_2
    pss SPLIT_STATUS
    basepower 0
    type TYPE_ELECTRIC
    accuracy 100
    pp 15
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT
    appeal 0x00
    contesttype CONTEST_SMART
    terminatedata
    movedescription MOVE_EERIE_IMPULSE, "The user emits an\neerie impulse from its\nbody, harshly lowering\nthe target's Sp. Atk\nstat."

movedata MOVE_VENOM_DRENCH, "Venom Drench"
    battleeffect MOVE_EFFECT_VENOM_DRENCH
    pss SPLIT_STATUS
    basepower 0
    type TYPE_POISON
    accuracy 100
    pp 20
    effectchance 100
    target RANGE_ADJACENT_OPPONENTS
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT | FLAG_UNUSABLE_IN_GEN_9
    appeal 0x00
    contesttype CONTEST_SMART
    terminatedata
    movedescription MOVE_VENOM_DRENCH, "Foes are drenched in\na poisonous liquid.\nThis lowers the Attack,\nSp. Atk, and Speed of\na poisoned target."

movedata MOVE_POWDER, "Powder"
    battleeffect MOVE_EFFECT_POWDER
    pss SPLIT_STATUS
    basepower 0
    type TYPE_BUG
    accuracy 100
    pp 20
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 1
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9
    appeal 0x00
    contesttype CONTEST_SMART
    terminatedata
    movedescription MOVE_POWDER, "The user covers the\ntarget in an explosive\npowder that damages\nthe target if they use\na Fire-type move."

movedata MOVE_GEOMANCY, "Geomancy"
    battleeffect MOVE_EFFECT_CHARGE_TURN_ATK_SP_ATK_SPEED_UP_2
    pss SPLIT_STATUS
    basepower 0
    type (FAIRY_TYPE_IMPLEMENTED) ? TYPE_FAIRY : TYPE_NORMAL
    accuracy 0
    pp 10
    effectchance 0
    target RANGE_USER
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT
    appeal 0x00
    contesttype CONTEST_BEAUTY
    terminatedata
    movedescription MOVE_GEOMANCY, "The user absorbs energy\nand sharply boosts its\nSp. Atk, Sp. Def, and\nSpeed stats on the next\nturn."

movedata MOVE_MAGNETIC_FLUX, "Magnetic Flux"
    battleeffect MOVE_EFFECT_HIT
    pss SPLIT_STATUS
    basepower 0
    type TYPE_ELECTRIC
    accuracy 0
    pp 20
    effectchance 0
    target RANGE_USER_SIDE
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT | FLAG_UNUSABLE_UNIMPLEMENTED
    appeal 0x00
    contesttype CONTEST_SMART
    terminatedata
    movedescription MOVE_MAGNETIC_FLUX, "Magnetic fields boost\nthe Defense and Sp. Def\nstats of ally Pokémon\nwith the Plus or Minus\nAbility."

movedata MOVE_HAPPY_HOUR, "Happy Hour"
    battleeffect MOVE_EFFECT_DO_NOTHING
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy 0
    pp 30
    effectchance 0
    target RANGE_USER_SIDE
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT
    appeal 0x00
    contesttype CONTEST_CUTE
    terminatedata
    movedescription MOVE_HAPPY_HOUR, "Using Happy Hour\ndoubles the amount of\nprize money received\nafter battle."

movedatalongname MOVE_ELECTRIC_TERRAIN, "ElectricTerrain", "Electric Terrain"
    battleeffect MOVE_EFFECT_APPLY_TERRAINS
    pss SPLIT_STATUS
    basepower 0
    type TYPE_ELECTRIC
    accuracy 0
    pp 10
    effectchance 0
    target RANGE_FIELD
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT
    appeal APPEAL_BASIC
    contesttype CONTEST_SMART
    terminatedata
    movedescription MOVE_ELECTRIC_TERRAIN, "For five turns, Pokémon\non the ground have\npowered up Electric-type\nmoves and can no longer\nfall asleep."

movedata MOVE_DAZZLING_GLEAM, "Dazzling Gleam"
    battleeffect MOVE_EFFECT_HIT
    pss SPLIT_SPECIAL
    basepower 80
    type (FAIRY_TYPE_IMPLEMENTED) ? TYPE_FAIRY : TYPE_NORMAL
    accuracy 100
    pp 10
    effectchance 0
    target RANGE_ADJACENT_OPPONENTS
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE
    appeal 0x00
    contesttype CONTEST_BEAUTY
    terminatedata
    movedescription MOVE_DAZZLING_GLEAM, "The user damages\nopposing Pokémon by\nemitting a powerful\nflash."

movedata MOVE_CELEBRATE, "Celebrate"
    battleeffect MOVE_EFFECT_DO_NOTHING
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy 0
    pp 40
    effectchance 0
    target RANGE_USER
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT
    appeal 0x00
    contesttype CONTEST_CUTE
    terminatedata
    movedescription MOVE_CELEBRATE, "The Pokémon\ncongratulates you on\nyour special day!"

movedata MOVE_HOLD_HANDS, "Hold Hands"
    battleeffect MOVE_EFFECT_DO_NOTHING
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy 0
    pp 40
    effectchance 0
    target RANGE_ALLY
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_MAGIC_COAT
    appeal 0x00
    contesttype CONTEST_CUTE
    terminatedata
    movedescription MOVE_HOLD_HANDS, "The user and an ally\nhold hands.\nThis makes them very\nhappy."

movedata MOVE_BABY_DOLL_EYES, "Baby-Doll Eyes"
    battleeffect MOVE_EFFECT_ATK_DOWN
    pss SPLIT_STATUS
    basepower 0
    type (FAIRY_TYPE_IMPLEMENTED) ? TYPE_FAIRY : TYPE_NORMAL
    accuracy 100
    pp 30
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 1
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT
    appeal 0x00
    contesttype CONTEST_CUTE
    terminatedata
    movedescription MOVE_BABY_DOLL_EYES, "The user stares at\nthe target with its\nbaby-eyes, lowering\nits Attack stat.\nAlways goes first."

movedata MOVE_NUZZLE, "Nuzzle"
    battleeffect MOVE_EFFECT_PARALYZE_HIT
    pss SPLIT_PHYSICAL
    basepower 20
    type TYPE_ELECTRIC
    accuracy 100
    pp 20
    effectchance 100
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_CONTACT
    appeal 0x00
    contesttype CONTEST_CUTE
    terminatedata
    movedescription MOVE_NUZZLE, "The user nuzzles its\nelectrified cheeks\nagainst the target.\nThis also leaves the\ntarget with paralysis."

movedata MOVE_HOLD_BACK, "Hold Back"
    battleeffect MOVE_EFFECT_LEAVE_WITH_1_HP
    pss SPLIT_PHYSICAL
    basepower 40
    type TYPE_NORMAL
    accuracy 100
    pp 40
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_CONTACT
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_HOLD_BACK, "The user holds back\nwhen it attacks, and\nthe target is left\nwith at least 1 HP."

movedata MOVE_INFESTATION, "Infestation"
    battleeffect MOVE_EFFECT_BIND_HIT
    pss SPLIT_SPECIAL
    basepower 20
    type TYPE_BUG
    accuracy 100
    pp 20
    effectchance 100
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_CONTACT
    appeal 0x00
    contesttype CONTEST_CUTE
    terminatedata
    movedescription MOVE_INFESTATION, "The target is infested\nand attacked for four\nto five turns.\nThe target can't flee\nduring this time."

movedata MOVE_POWER_UP_PUNCH, "Power-Up Punch"
    battleeffect MOVE_EFFECT_RAISE_ATTACK_HIT
    pss SPLIT_PHYSICAL
    basepower 40
    type TYPE_FIGHTING
    accuracy 100
    pp 20
    effectchance 100
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_CONTACT | FLAG_UNUSABLE_IN_GEN_9
    appeal 0x00
    contesttype CONTEST_TOUGH
    terminatedata
    movedescription MOVE_POWER_UP_PUNCH, "Striking opponents\nover and over makes\nthe user's fists\nharder. Hitting a\ntarget raises Attack."

movedata MOVE_OBLIVION_WING, "Oblivion Wing"
    battleeffect MOVE_EFFECT_RECOVER_THREE_QUARTERS_DAMAGE_DEALT
    pss SPLIT_SPECIAL
    basepower 80
    type TYPE_FLYING
    accuracy 100
    pp 10
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags  FLAG_PROTECT | FLAG_MIRROR_MOVE
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_OBLIVION_WING, "The user absorbs the\ntarget's HP. The user's\nHP is restored by over\nhalf the damage taken\nby the target."

movedata MOVE_THOUSAND_ARROWS, "Thousand Arrows"
    battleeffect MOVE_EFFECT_HIT
    pss SPLIT_PHYSICAL
    basepower 90
    type TYPE_GROUND
    accuracy 100
    pp 10
    effectchance 100
    target RANGE_ADJACENT_OPPONENTS
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_UNUSABLE_UNIMPLEMENTED
    appeal 0x00
    contesttype CONTEST_BEAUTY
    terminatedata
    movedescription MOVE_THOUSAND_ARROWS, "This move can hit\nopposing Pokémon that\nare in the air. Those\nPokémon are knocked\ndown to the ground."

movedata MOVE_THOUSAND_WAVES, "Thousand Waves"
    battleeffect MOVE_EFFECT_PREVENT_ESCAPE_HIT
    pss SPLIT_PHYSICAL
    basepower 90
    type TYPE_GROUND
    accuracy 100
    pp 10
    effectchance 0
    target RANGE_ADJACENT_OPPONENTS
    priority 0
    flags FLAG_PROTECT | FLAG_MIRROR_MOVE
    appeal 0x00
    contesttype CONTEST_TOUGH
    terminatedata
    movedescription MOVE_THOUSAND_WAVES, "The user attacks with\na wave that crawls\nalong the ground.\nThose it hits can't\nflee from battle."

movedata MOVE_LANDS_WRATH, "Land’s Wrath"
    battleeffect MOVE_EFFECT_HIT
    pss SPLIT_PHYSICAL
    basepower 90
    type TYPE_GROUND
    accuracy 100
    pp 10
    effectchance 0
    target RANGE_ADJACENT_OPPONENTS
    priority 0
    flags FLAG_PROTECT | FLAG_MIRROR_MOVE
    appeal 0x00
    contesttype CONTEST_BEAUTY
    terminatedata
    movedescription MOVE_LANDS_WRATH, "The user gathers the\nenergy of the land and\nfocuses that power on\nopposing Pokémon to\ninflict damage."

movedata MOVE_LIGHT_OF_RUIN, "Light of Ruin"
    battleeffect MOVE_EFFECT_RECOIL_HALF
    pss SPLIT_SPECIAL
    basepower 140
    type (FAIRY_TYPE_IMPLEMENTED) ? TYPE_FAIRY : TYPE_NORMAL
    accuracy 90
    pp 5
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_UNUSABLE_IN_GEN_8
    appeal 0x00
    contesttype CONTEST_BEAUTY
    terminatedata
    movedescription MOVE_LIGHT_OF_RUIN, "Drawing power from the\nEternal Flower, the user\nfires a powerful beam of\nlight. This also damages\nthe user terribly."

movedata MOVE_ORIGIN_PULSE, "Origin Pulse"
    battleeffect MOVE_EFFECT_HIT
    pss SPLIT_SPECIAL
    basepower 110
    type TYPE_WATER
    accuracy 85
    pp 10
    effectchance 0
    target RANGE_ADJACENT_OPPONENTS
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE
    appeal 0x00
    contesttype CONTEST_BEAUTY
    terminatedata
    movedescription MOVE_ORIGIN_PULSE, "The user attacks\nopposing Pokémon with\ncountless beams of\nlight that glow a deep\nand brilliant blue."

movedatalongname MOVE_PRECIPICE_BLADES, "PrecipiceBlades", "Precipice Blades"
    battleeffect MOVE_EFFECT_HIT
    pss SPLIT_PHYSICAL
    basepower 120
    type TYPE_GROUND
    accuracy 85
    pp 10
    effectchance 0
    target RANGE_ADJACENT_OPPONENTS
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_PRECIPICE_BLADES, "The user attacks\nopposing Pokémon by\nmanifesting the power\nof the land in\nfearsome stone blades"

movedata MOVE_DRAGON_ASCENT, "Dragon Ascent"
    battleeffect MOVE_EFFECT_USER_DEF_SP_DEF_DOWN_HIT
    pss SPLIT_PHYSICAL
    basepower 120
    type TYPE_FLYING
    accuracy 100
    pp 5
    effectchance 100
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_CONTACT
    appeal 0x00
    contesttype CONTEST_BEAUTY
    terminatedata
    movedescription MOVE_DRAGON_ASCENT, "The user attacks by\ndropping out of the sky\nat high speed. This also\nlowers the user's\nDefense and Sp. Def."

movedata MOVE_HYPERSPACE_FURY, "Hyperspace Fury"
    battleeffect MOVE_EFFECT_USER_DEF_DOWN_HIT_REMOVE_PROTECT
    pss SPLIT_PHYSICAL
    basepower 100
    type TYPE_DARK
    accuracy 0
    pp 5
    effectchance 100
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_UNUSABLE_IN_GEN_8
    appeal 0x00
    contesttype CONTEST_TOUGH
    terminatedata
    movedescription MOVE_HYPERSPACE_FURY, "The user unleashes a\nbarrage that ignores the\neffects of protection\nmoves. This also lowers\nthe user's Defense."

// Contest types after this point are purely speculative due to the lack of contests since Generation VII.
// Moves introduced in Generation VII:
movedata MOVE_BREAKNECK_BLITZ_PHYSICAL, "Breakneck Blitz"
    battleeffect MOVE_EFFECT_HIT
    pss SPLIT_PHYSICAL
    basepower 0
    type TYPE_NORMAL
    accuracy 0
    pp 1
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_BREAKNECK_BLITZ_PHYSICAL, "The user crashes into\nthe target at full speed\nusing its Z-Power. The\npower varies, depending\non the original move."

movedata MOVE_BREAKNECK_BLITZ_SPECIAL, "Breakneck Blitz"
    battleeffect MOVE_EFFECT_HIT
    pss SPLIT_SPECIAL
    basepower 0
    type TYPE_NORMAL
    accuracy 0
    pp 1
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_BREAKNECK_BLITZ_SPECIAL, "The user crashes into\nthe target at full speed\nusing its Z-Power. The\npower varies, depending\non the original move."

movedatalongname MOVE_ALL_OUT_PUMMELING_PHYSICAL, "All-Out Pummel", "All-Out Pummeling"
    battleeffect MOVE_EFFECT_HIT
    pss SPLIT_PHYSICAL
    basepower 0
    type TYPE_FIGHTING
    accuracy 0
    pp 1
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_ALL_OUT_PUMMELING_PHYSICAL, "The user fires an\nenergy orb created by\nits Z-Power. The power\nvaries, depending on\nthe original move."

movedatalongname MOVE_ALL_OUT_PUMMELING_SPECIAL, "All-Out Pummel", "All-Out Pummeling"
    battleeffect MOVE_EFFECT_HIT
    pss SPLIT_SPECIAL
    basepower 0
    type TYPE_FIGHTING
    accuracy 0
    pp 1
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_ALL_OUT_PUMMELING_SPECIAL, "The user fires an\nenergy orb created by\nits Z-Power. The power\nvaries, depending on\nthe original move."

movedatalongname MOVE_SUPERSONIC_SKYSTRIKE_PHYSICAL, "Super Skystrike", "Supersonic Skystrike"
    battleeffect MOVE_EFFECT_HIT
    pss SPLIT_PHYSICAL
    basepower 0
    type TYPE_FLYING
    accuracy 0
    pp 1
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_SUPERSONIC_SKYSTRIKE_PHYSICAL, "The user plummets toward\nthe target at full speed\nusing its Z-Power. The\npower varies, depending\non the original move."

movedatalongname MOVE_SUPERSONIC_SKYSTRIKE_SPECIAL, "Super Skystrike", "Supersonic Skystrike"
    battleeffect MOVE_EFFECT_HIT
    pss SPLIT_SPECIAL
    basepower 0
    type TYPE_FLYING
    accuracy 0
    pp 1
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_SUPERSONIC_SKYSTRIKE_SPECIAL, "The user plummets toward\nthe target at full speed\nusing its Z-Power. The\npower varies, depending\non the original move."

movedata MOVE_ACID_DOWNPOUR_PHYSICAL, "Acid Downpour"
    battleeffect MOVE_EFFECT_HIT
    pss SPLIT_PHYSICAL
    basepower 0
    type TYPE_POISON
    accuracy 0
    pp 1
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_ACID_DOWNPOUR_PHYSICAL, "The user creates a\npoisonous swamp using\nits Z-Power. The power\nvaries, depending on\nthe original move."

movedata MOVE_ACID_DOWNPOUR_SPECIAL, "Acid Downpour"
    battleeffect MOVE_EFFECT_HIT
    pss SPLIT_SPECIAL
    basepower 0
    type TYPE_POISON
    accuracy 0
    pp 1
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_ACID_DOWNPOUR_SPECIAL, "The user creates a\npoisonous swamp using\nits Z-Power. The power\nvaries, depending on\nthe original move."

movedata MOVE_TECTONIC_RAGE_PHYSICAL, "Tectonic Rage"
    battleeffect MOVE_EFFECT_HIT
    pss SPLIT_PHYSICAL
    basepower 0
    type TYPE_GROUND
    accuracy 0
    pp 1
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_TECTONIC_RAGE_PHYSICAL, "The user slams into the\ntarget from underground\nusing its Z-Power. The\npower varies, depending\non the original move."

movedata MOVE_TECTONIC_RAGE_SPECIAL, "Tectonic Rage"
    battleeffect MOVE_EFFECT_HIT
    pss SPLIT_SPECIAL
    basepower 0
    type TYPE_GROUND
    accuracy 0
    pp 1
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_TECTONIC_RAGE_SPECIAL, "The user slams into the\ntarget from underground\nusing its Z-Power. The\npower varies, depending\non the original move."

movedatalongname MOVE_CONTINENTAL_CRUSH_PHYSICAL, "Continent Crush", "Continental Crush"
    battleeffect MOVE_EFFECT_HIT
    pss SPLIT_PHYSICAL
    basepower 0
    type TYPE_ROCK
    accuracy 0
    pp 1
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_CONTINENTAL_CRUSH_PHYSICAL, "The user drops a huge\nmountain onto the target\nusing its Z-Power. The\npower varies, depending\non the original move."

movedatalongname MOVE_CONTINENTAL_CRUSH_SPECIAL, "Continent Crush", "Continental Crush"
    battleeffect MOVE_EFFECT_HIT
    pss SPLIT_SPECIAL
    basepower 0
    type TYPE_ROCK
    accuracy 0
    pp 1
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_CONTINENTAL_CRUSH_SPECIAL, "The user drops a huge\nmountain onto the target\nusing its Z-Power. The\npower varies, depending\non the original move."

movedata MOVE_SAVAGE_SPIN_OUT_PHYSICAL, "Savage Spin-Out"
    battleeffect MOVE_EFFECT_HIT
    pss SPLIT_PHYSICAL
    basepower 0
    type TYPE_BUG
    accuracy 0
    pp 1
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_SAVAGE_SPIN_OUT_PHYSICAL, "The user spits threads\nat the target made\nusing its Z-Power. The\npower varies, depending\non the original move."

movedata MOVE_SAVAGE_SPIN_OUT_SPECIAL, "Savage Spin-Out"
    battleeffect MOVE_EFFECT_HIT
    pss SPLIT_SPECIAL
    basepower 0
    type TYPE_BUG
    accuracy 0
    pp 1
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_SAVAGE_SPIN_OUT_SPECIAL, "The user spits threads\nat the target made\nusing its Z-Power. The\npower varies, depending\non the original move."

movedatalongname MOVE_NEVER_ENDING_NIGHTMARE_PHYSICAL, "EndlessNitemare", "Never-Ending Nightmare"
    battleeffect MOVE_EFFECT_HIT
    pss SPLIT_PHYSICAL
    basepower 0
    type TYPE_GHOST
    accuracy 0
    pp 1
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_NEVER_ENDING_NIGHTMARE_PHYSICAL, "Deep-seated grudges are\nsummoned by the user's\nZ-Power. The power\nvaries, depending on\nthe original move."

movedatalongname MOVE_NEVER_ENDING_NIGHTMARE_SPECIAL, "EndlessNitemare", "Never-Ending Nightmare"
    battleeffect MOVE_EFFECT_HIT
    pss SPLIT_SPECIAL
    basepower 0
    type TYPE_GHOST
    accuracy 0
    pp 1
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_NEVER_ENDING_NIGHTMARE_SPECIAL, "Deep-seated grudges are\nsummoned by the user's\nZ-Power. The power\nvaries, depending on\nthe original move."

movedata MOVE_CORKSCREW_CRASH_PHYSICAL, "Corkscrew Crash"
    battleeffect MOVE_EFFECT_HIT
    pss SPLIT_PHYSICAL
    basepower 0
    type TYPE_STEEL
    accuracy 0
    pp 1
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_CORKSCREW_CRASH_PHYSICAL, "The user spins very fast\nand rams into the target\nusing its Z-Power. The\npower varies, depending\non the original move."

movedata MOVE_CORKSCREW_CRASH_SPECIAL, "Corkscrew Crash"
    battleeffect MOVE_EFFECT_HIT
    pss SPLIT_SPECIAL
    basepower 0
    type TYPE_STEEL
    accuracy 0
    pp 1
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_CORKSCREW_CRASH_SPECIAL, "The user spins very fast\nand rams into the target\nusing its Z-Power. The\npower varies, depending\non the original move."

movedatalongname MOVE_INFERNO_OVERDRIVE_PHYSICAL, "Inferno Drive", "Inferno Overdrive"
    battleeffect MOVE_EFFECT_HIT
    pss SPLIT_PHYSICAL
    basepower 0
    type TYPE_FIRE
    accuracy 0
    pp 1
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_INFERNO_OVERDRIVE_PHYSICAL, "The user breathes a\nstream of intense fire\nusing its Z-Power. The\npower varies depending\non the original move."

movedatalongname MOVE_INFERNO_OVERDRIVE_SPECIAL, "Inferno Drive", "Inferno Overdrive"
    battleeffect MOVE_EFFECT_HIT
    pss SPLIT_SPECIAL
    basepower 0
    type TYPE_FIRE
    accuracy 0
    pp 1
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_INFERNO_OVERDRIVE_SPECIAL, "The user breathes a\nstream of intense fire\nusing its Z-Power. The\npower varies depending\non the original move."

movedata MOVE_HYDRO_VORTEX_PHYSICAL, "Hydro Vortex"
    battleeffect MOVE_EFFECT_HIT
    pss SPLIT_PHYSICAL
    basepower 0
    type TYPE_WATER
    accuracy 0
    pp 1
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_HYDRO_VORTEX_PHYSICAL, "The user creates a huge\nwhirling current using\nits Z-Power. The power\nvaries, depending on\nthe original move."

movedata MOVE_HYDRO_VORTEX_SPECIAL, "Hydro Vortex"
    battleeffect MOVE_EFFECT_HIT
    pss SPLIT_SPECIAL
    basepower 0
    type TYPE_WATER
    accuracy 0
    pp 1
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_HYDRO_VORTEX_SPECIAL, "The user creates a huge\nwhirling current using\nits Z-Power. The power\nvaries, depending on\nthe original move."

movedata MOVE_BLOOM_DOOM_PHYSICAL, "Bloom Doom"
    battleeffect MOVE_EFFECT_HIT
    pss SPLIT_PHYSICAL
    basepower 0
    type TYPE_GRASS
    accuracy 0
    pp 1
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_BLOOM_DOOM_PHYSICAL, "The user attacks with\nenergy drawn from plants\nusing its Z-Power. The\npower varies, depending\non the original move."

movedata MOVE_BLOOM_DOOM_SPECIAL, "Bloom Doom"
    battleeffect MOVE_EFFECT_HIT
    pss SPLIT_SPECIAL
    basepower 0
    type TYPE_GRASS
    accuracy 0
    pp 1
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_BLOOM_DOOM_SPECIAL, "The user attacks with\nenergy drawn from plants\nusing its Z-Power. The\npower varies, depending\non the original move."

movedata MOVE_GIGAVOLT_HAVOC_PHYSICAL, "Gigavolt Havoc"
    battleeffect MOVE_EFFECT_HIT
    pss SPLIT_PHYSICAL
    basepower 0
    type TYPE_ELECTRIC
    accuracy 0
    pp 1
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_GIGAVOLT_HAVOC_PHYSICAL, "The user summons a\nstrong electric current\nusing its Z-Power. The\npower varies, depending\non the original move."

movedata MOVE_GIGAVOLT_HAVOC_SPECIAL, "Gigavolt Havoc"
    battleeffect MOVE_EFFECT_HIT
    pss SPLIT_SPECIAL
    basepower 0
    type TYPE_ELECTRIC
    accuracy 0
    pp 1
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_GIGAVOLT_HAVOC_SPECIAL, "The user summons a\nstrong electric current\nusing its Z-Power. The\npower varies, depending\non the original move."

movedatalongname MOVE_SHATTERED_PSYCHE_PHYSICAL, "ShatteredPsyche", "Shattered Psyche"
    battleeffect MOVE_EFFECT_HIT
    pss SPLIT_PHYSICAL
    basepower 0
    type TYPE_PSYCHIC
    accuracy 0
    pp 1
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_SHATTERED_PSYCHE_PHYSICAL, "The user hurts the\ntarget's mind using\nits Z-Power. The power\nvaries, depending on\nthe original move."

movedatalongname MOVE_SHATTERED_PSYCHE_SPECIAL, "ShatteredPsyche", "Shattered Psyche"
    battleeffect MOVE_EFFECT_HIT
    pss SPLIT_SPECIAL
    basepower 0
    type TYPE_PSYCHIC
    accuracy 0
    pp 1
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_SHATTERED_PSYCHE_SPECIAL, "The user hurts the\ntarget's mind using\nits Z-Power. The power\nvaries, depending on\nthe original move."

movedata MOVE_SUBZERO_SLAMMER_PHYSICAL, "Subzero Slammer"
    battleeffect MOVE_EFFECT_HIT
    pss SPLIT_PHYSICAL
    basepower 0
    type TYPE_ICE
    accuracy 0
    pp 1
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_SUBZERO_SLAMMER_PHYSICAL, "The user freezes the\ntarget using its\nZ-Power. The power\nvaries, depending on\nthe original move."

movedata MOVE_SUBZERO_SLAMMER_SPECIAL, "Subzero Slammer"
    battleeffect MOVE_EFFECT_HIT
    pss SPLIT_SPECIAL
    basepower 0
    type TYPE_ICE
    accuracy 0
    pp 1
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_SUBZERO_SLAMMER_SPECIAL, "The user freezes the\ntarget using its\nZ-Power. The power\nvaries, depending on\nthe original move."

movedatalongname MOVE_DEVASTATING_DRAKE_PHYSICAL, "Ultimate Drake", "Devastating Drake"
    battleeffect MOVE_EFFECT_HIT
    pss SPLIT_PHYSICAL
    basepower 0
    type TYPE_DRAGON
    accuracy 0
    pp 1
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_DEVASTATING_DRAKE_PHYSICAL, "The user materializes\nand projects its aura\nusing its Z-Power. The\npower varies, depending\non the original move."

movedatalongname MOVE_DEVASTATING_DRAKE_SPECIAL, "Ultimate Drake", "Devastating Drake"
    battleeffect MOVE_EFFECT_HIT
    pss SPLIT_SPECIAL
    basepower 0
    type TYPE_DRAGON
    accuracy 0
    pp 1
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_DEVASTATING_DRAKE_SPECIAL, "The user materializes\nand projects its aura\nusing its Z-Power. The\npower varies, depending\non the original move."

movedatalongname MOVE_BLACK_HOLE_ECLIPSE_PHYSICAL, "Black Eclipse", "Black Hole Eclipse"
    battleeffect MOVE_EFFECT_HIT
    pss SPLIT_PHYSICAL
    basepower 0
    type TYPE_DARK
    accuracy 0
    pp 1
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_BLACK_HOLE_ECLIPSE_PHYSICAL, "The user sucks the\ntarget into dark energy\nusing its Z-Power. The\npower varies, depending\non the original move."

movedatalongname MOVE_BLACK_HOLE_ECLIPSE_SPECIAL, "Black Eclipse", "Black Hole Eclipse"
    battleeffect MOVE_EFFECT_HIT
    pss SPLIT_SPECIAL
    basepower 0
    type TYPE_DARK
    accuracy 0
    pp 1
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_BLACK_HOLE_ECLIPSE_SPECIAL, "The user sucks the\ntarget into dark energy\nusing its Z-Power. The\npower varies, depending\non the original move."

movedata MOVE_TWINKLE_TACKLE_PHYSICAL, "Twinkle Tackle"
    battleeffect MOVE_EFFECT_HIT
    pss SPLIT_PHYSICAL
    basepower 0
    type (FAIRY_TYPE_IMPLEMENTED) ? TYPE_FAIRY : TYPE_NORMAL
    accuracy 0
    pp 1
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_TWINKLE_TACKLE_PHYSICAL, "The user totally toys\nwith the target using\nits Z-Power. The power\nvaries, depending on\nthe original move."

movedata MOVE_TWINKLE_TACKLE_SPECIAL, "Twinkle Tackle"
    battleeffect MOVE_EFFECT_HIT
    pss SPLIT_SPECIAL
    basepower 0
    type (FAIRY_TYPE_IMPLEMENTED) ? TYPE_FAIRY : TYPE_NORMAL
    accuracy 0
    pp 1
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_TWINKLE_TACKLE_SPECIAL, "The user totally toys\nwith the target using\nits Z-Power. The power\nvaries, depending on\nthe original move."

movedata MOVE_CATASTROPIKA, "Catastropika"
    battleeffect MOVE_EFFECT_HIT
    pss SPLIT_PHYSICAL
    basepower 210
    type TYPE_ELECTRIC
    accuracy 0
    pp 1
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_CONTACT | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_CATASTROPIKA, "Pikachu surrounds\nitself with maximum\nelectricity using its\nZ-Power and pounces on\nits target."

movedata MOVE_SHORE_UP, "Shore Up"
    battleeffect MOVE_EFFECT_HEAL_HALF_DIFFERENT_IN_WEATHER
    pss SPLIT_STATUS
    basepower 0
    type TYPE_GROUND
    accuracy 0
    pp 5
    effectchance 0
    target RANGE_USER
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_SHORE_UP, "The user restores its\nown HP by up to half\nits max HP.\nIt regains more HP\nin a sandstorm."

movedatalongname MOVE_FIRST_IMPRESSION, "FirstImpression", "First Impression"
    battleeffect MOVE_EFFECT_FIRST_TURN_ONLY
    pss SPLIT_PHYSICAL
    basepower 90
    type TYPE_BUG
    accuracy 100
    pp 10
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 2
    flags FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_CONTACT
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_FIRST_IMPRESSION, "Although this move has\ngreat power, it works\nonly on the first turn\neach time the user\nenters battle."

movedata MOVE_BANEFUL_BUNKER, "Baneful Bunker"
    battleeffect MOVE_EFFECT_PROTECT
    pss SPLIT_STATUS
    basepower 0
    type TYPE_POISON
    accuracy 0
    pp 10
    effectchance 0
    target RANGE_USER
    priority 4
    flags 0
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_BANEFUL_BUNKER, "The user protects\nitself from attacks\nwhile poisoning any\nattacker that makes\ndirect contact."

movedata MOVE_SPIRIT_SHACKLE, "Spirit Shackle"
    battleeffect MOVE_EFFECT_PREVENT_ESCAPE_HIT
    pss SPLIT_PHYSICAL
    basepower 80
    type TYPE_GHOST
    accuracy 100
    pp 10
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_SPIRIT_SHACKLE, "The user attacks while\nsimultaneously stitching\nthe target's shadow to\nthe ground to prevent\nthe target from fleeing."

movedata MOVE_DARKEST_LARIAT, "Darkest Lariat"
    battleeffect MOVE_EFFECT_HIT // Defense is handled in CalcBaseDamage.c and Evasion is in other_battle_calculators.c.
    pss SPLIT_PHYSICAL
    basepower 85
    type TYPE_DARK
    accuracy 100
    pp 10
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_CONTACT
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_DARKEST_LARIAT, "The user swings both\narms and hits the\ntarget, ignoring changes\nto the target's Defense\nand Evasion."

movedata MOVE_SPARKLING_ARIA, "Sparkling Aria"
    battleeffect MOVE_EFFECT_HIT // Handled in BattleController_MoveEndInternal.
    pss SPLIT_SPECIAL
    basepower 90
    type TYPE_WATER
    accuracy 100
    pp 10
    effectchance 0
    target RANGE_ALL_ADJACENT
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_SPARKLING_ARIA, "The user bursts into\nsong, emitting bubbles.\nAny Pokémon suffering\nfrom a burn will be\ncured by their touch."

movedata MOVE_ICE_HAMMER, "Ice Hammer"
    battleeffect MOVE_EFFECT_USER_SPEED_DOWN_HIT
    pss SPLIT_PHYSICAL
    basepower 100
    type TYPE_ICE
    accuracy 90
    pp 10
    effectchance 100
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_CONTACT | FLAG_UNUSABLE_IN_GEN_8
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_ICE_HAMMER, "The user swings and\nhits with its strong,\nheavy fist.\nIt lowers the user's\nSpeed, however."

movedata MOVE_FLORAL_HEALING, "Floral Healing"
    battleeffect MOVE_EFFECT_HIT
    pss SPLIT_STATUS
    basepower 0
    type (FAIRY_TYPE_IMPLEMENTED) ? TYPE_FAIRY : TYPE_NORMAL
    accuracy 0
    pp 10
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT | FLAG_UNUSABLE_UNIMPLEMENTED
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_FLORAL_HEALING, "The user restores the\ntarget's HP by up to\nhalf of its max HP. It\nrestores more HP when\nthe terrain is grass."

movedata MOVE_HIGH_HORSEPOWER, "High Horsepower"
    battleeffect MOVE_EFFECT_HIT
    pss SPLIT_PHYSICAL
    basepower 95
    type TYPE_GROUND
    accuracy 95
    pp 10
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_CONTACT
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_HIGH_HORSEPOWER, "The user fiercely\nattacks the target\nusing its entire body."

movedata MOVE_STRENGTH_SAP, "Strength Sap"
    battleeffect MOVE_EFFECT_STRENGTH_SAP
    pss SPLIT_STATUS
    basepower 0
    type TYPE_GRASS
    accuracy 100
    pp 10
    effectchance 100
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_STRENGTH_SAP, "The user restores its\nHP by the same amount\nas the target's Attack\nstat. It also lowers the\ntarget's Attack stat."

movedata MOVE_SOLAR_BLADE, "Solar Blade"
    battleeffect MOVE_EFFECT_CHARGE_TURN_SUN_SKIPS
    pss SPLIT_PHYSICAL
    basepower 125
    type TYPE_GRASS
    accuracy 100
    pp 10
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_CONTACT
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_SOLAR_BLADE, "The user fills a blade\nwith light's energy on\nthe first turn, then\nattacks on the next\nturn."

movedata MOVE_LEAFAGE, "Leafage"
    battleeffect MOVE_EFFECT_HIT
    pss SPLIT_PHYSICAL
    basepower 40
    type TYPE_GRASS
    accuracy 100
    pp 40
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_PROTECT | FLAG_MIRROR_MOVE
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_LEAFAGE, "The user attacks by\npelting the target\nwith leaves."

movedata MOVE_SPOTLIGHT, "Spotlight"
    battleeffect MOVE_EFFECT_MAKE_GLOBAL_TARGET
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy 0
    pp 15
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 3
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_SPOTLIGHT, "The user shines a\nspotlight on the target\nso that only the target\nwill be attacked during\nthe turn."

movedata MOVE_TOXIC_THREAD, "Toxic Thread"
    battleeffect MOVE_EFFECT_TOXIC_THREAD
    pss SPLIT_STATUS
    basepower 0
    type TYPE_POISON
    accuracy 100
    pp 20
    effectchance 100
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT | FLAG_UNUSABLE_IN_GEN_8
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_TOXIC_THREAD, "The user shoots\npoisonous threads\nto poison the target\nand lower the\ntarget's Speed stat."

movedata MOVE_LASER_FOCUS, "Laser Focus"
    battleeffect MOVE_EFFECT_LASER_FOCUS
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy 0
    pp 30
    effectchance 0
    target RANGE_USER
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT | FLAG_UNUSABLE_IN_GEN_9
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_LASER_FOCUS, "The user concentrates\nintensely.\nThe attack on the next\nturn always results in\na critical hit."

movedata MOVE_GEAR_UP, "Gear Up"
    battleeffect MOVE_EFFECT_HIT
    pss SPLIT_STATUS
    basepower 0
    type TYPE_STEEL
    accuracy 0
    pp 20
    effectchance 0
    target RANGE_USER_SIDE
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT | FLAG_UNUSABLE_IN_GEN_9 | FLAG_UNUSABLE_UNIMPLEMENTED
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_GEAR_UP, "The user engages its\ngears to raise the\nAttack and Sp. Atk\nstats of ally Pokémon\nwith Plus or Minus."

movedata MOVE_THROAT_CHOP, "Throat Chop"
    battleeffect MOVE_EFFECT_THROAT_CHOP
    pss SPLIT_PHYSICAL
    basepower 80
    type TYPE_DARK
    accuracy 100
    pp 15
    effectchance 100
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_CONTACT
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_THROAT_CHOP, "The user attacks the\ntarget's throat,\npreventing the target\nfrom using sound-based\nmoves for two turns."

movedata MOVE_POLLEN_PUFF, "Pollen Puff"
    battleeffect MOVE_EFFECT_POLLEN_PUFF
    pss SPLIT_SPECIAL
    basepower 90
    type TYPE_BUG
    accuracy 100
    pp 15
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_PROTECT | FLAG_MIRROR_MOVE
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_POLLEN_PUFF, "The user attacks with\nan exploding pollen\npuff. If the target is\nan ally, it restores\nits HP instead."

movedata MOVE_ANCHOR_SHOT, "Anchor Shot"
    battleeffect MOVE_EFFECT_PREVENT_ESCAPE_HIT
    pss SPLIT_PHYSICAL
    basepower 80
    type TYPE_STEEL
    accuracy 100
    pp 20
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_CONTACT
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_ANCHOR_SHOT, "The user entangles the\ntarget with its anchor\nchain while attacking.\nThe target becomes\nunable to flee."

movedata MOVE_PSYCHIC_TERRAIN, "Psychic Terrain"
    battleeffect MOVE_EFFECT_APPLY_TERRAINS
    pss SPLIT_STATUS
    basepower 0
    type TYPE_PSYCHIC
    accuracy 0
    pp 10
    effectchance 0
    target RANGE_FIELD
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_PSYCHIC_TERRAIN, "This protects Pokémon\non the ground from\npriority moves and\npowers up Psychic-type\nmoves for five turns."

movedata MOVE_LUNGE, "Lunge"
    battleeffect MOVE_EFFECT_LOWER_ATTACK_HIT
    pss SPLIT_PHYSICAL
    basepower 80
    type TYPE_BUG
    accuracy 100
    pp 15
    effectchance 100
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_CONTACT
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_LUNGE, "The user makes a lunge\nat the target, attacking\nwith full force.\nThis also lowers the\ntarget's Attack stat."

movedata MOVE_FIRE_LASH, "Fire Lash"
    battleeffect MOVE_EFFECT_LOWER_DEFENSE_HIT
    pss SPLIT_PHYSICAL
    basepower 80
    type TYPE_FIRE
    accuracy 100
    pp 15
    effectchance 100
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_CONTACT
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_FIRE_LASH, "The user strikes the\ntarget with a burning\nlash.\nThis also lowers the\ntarget's Defense stat."

movedata MOVE_POWER_TRIP, "Power Trip"
    battleeffect MOVE_EFFECT_HIT
    pss SPLIT_PHYSICAL
    basepower 20
    type TYPE_DARK
    accuracy 100
    pp 10
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_CONTACT
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_POWER_TRIP, "The user flaunts its\nstrength. The more the\nuser's stats are\nboosted, the greater\nthe move's power."

movedata MOVE_BURN_UP, "Burn Up"
    battleeffect MOVE_EFFECT_REMOVE_USER_FIRE_TYPE_HIT
    pss SPLIT_SPECIAL
    basepower 130
    type TYPE_FIRE
    accuracy 100
    pp 5
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_BURN_UP, "To inflict massive\ndamage, the user burns\nitself out. After using\nthis move, the user will\nno longer be Fire type."

movedata MOVE_SPEED_SWAP, "Speed Swap"
    battleeffect MOVE_EFFECT_HIT
    pss SPLIT_STATUS
    basepower 0
    type TYPE_PSYCHIC
    accuracy 0
    pp 10
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT | FLAG_UNUSABLE_UNIMPLEMENTED
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_SPEED_SWAP, "The user exchanges\nSpeed stats with the\ntarget."

movedata MOVE_SMART_STRIKE, "Smart Strike"
    battleeffect MOVE_EFFECT_BYPASS_ACCURACY
    pss SPLIT_PHYSICAL
    basepower 70
    type TYPE_STEEL
    accuracy 0
    pp 10
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_CONTACT
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_SMART_STRIKE, "The user stabs the\ntarget with a sharp\nhorn.\nThis attack never\nmisses."

movedata MOVE_PURIFY, "Purify"
    battleeffect MOVE_EFFECT_HIT
    pss SPLIT_STATUS
    basepower 0
    type TYPE_POISON
    accuracy 0
    pp 20
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT | FLAG_UNUSABLE_UNIMPLEMENTED
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_PURIFY, "The user cures the\ntarget's status\ncondition. If the move\nsucceeds, it also\nrestores the user's HP."

movedatalongname MOVE_REVELATION_DANCE, "RevelationDance", "Revelation Dance"
    battleeffect MOVE_EFFECT_HIT
    pss SPLIT_SPECIAL
    basepower 90
    type TYPE_NORMAL
    accuracy 100
    pp 15
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_UNUSABLE_IN_GEN_8
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_REVELATION_DANCE, "The user attacks the\ntarget by dancing with\nall its might. This\nmove becomes the same\ntype as the user's type."

movedata MOVE_CORE_ENFORCER, "Core Enforcer"
    battleeffect MOVE_EFFECT_HIT
    pss SPLIT_SPECIAL
    basepower 100
    type TYPE_DRAGON
    accuracy 100
    pp 10
    effectchance 0
    target RANGE_ADJACENT_OPPONENTS
    priority 0
    flags  FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_UNUSABLE_UNIMPLEMENTED
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_CORE_ENFORCER, "If a target has already\nused their move this\nturn, this move\neliminates the effects\nof their Ability."

movedata MOVE_TROP_KICK, "Trop Kick"
    battleeffect MOVE_EFFECT_LOWER_ATTACK_HIT
    pss SPLIT_PHYSICAL
    basepower 70
    type TYPE_GRASS
    accuracy 100
    pp 15
    effectchance 100
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_CONTACT
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_TROP_KICK, "The user lands an\nintense kick of tropical\norigins on the target.\nThis also lowers the\ntarget's Attack stat."

movedata MOVE_INSTRUCT, "Instruct"
    battleeffect MOVE_EFFECT_HIT
    pss SPLIT_STATUS
    basepower 0
    type TYPE_PSYCHIC
    accuracy 0
    pp 15
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT | FLAG_UNUSABLE_UNIMPLEMENTED
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_INSTRUCT, "The user instructs the\ntarget to reuse the\nmove last used by the\ntarget."

movedata MOVE_BEAK_BLAST, "Beak Blast"
    battleeffect MOVE_EFFECT_HIT
    pss SPLIT_PHYSICAL
    basepower 100
    type TYPE_FLYING
    accuracy 100
    pp 15
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority -3
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_UNIMPLEMENTED
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_BEAK_BLAST, "The user heats up its\nbeak before attacking.\nMaking contact before\nthe user attacks\nresults in a burn."

movedata MOVE_CLANGING_SCALES, "Clanging Scales"
    battleeffect MOVE_EFFECT_USER_DEF_DOWN_HIT
    pss SPLIT_SPECIAL
    basepower 110
    type TYPE_DRAGON
    accuracy 100
    pp 5
    effectchance 100
    target RANGE_ADJACENT_OPPONENTS
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_CLANGING_SCALES, "The user rubs its\nscales to make a huge\nnoise. The user's\nDefense stat is lowered\nafter the attack."

movedata MOVE_DRAGON_HAMMER, "Dragon Hammer"
    battleeffect MOVE_EFFECT_HIT
    pss SPLIT_PHYSICAL
    basepower 90
    type TYPE_DRAGON
    accuracy 100
    pp 15
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_CONTACT
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_DRAGON_HAMMER, "The user wields its\nbody like a hammer to\nattack the target and\ninflict damage."

movedata MOVE_BRUTAL_SWING, "Brutal Swing"
    battleeffect MOVE_EFFECT_HIT
    pss SPLIT_PHYSICAL
    basepower 60
    type TYPE_DARK
    accuracy 100
    pp 20
    effectchance 0
    target RANGE_ALL_ADJACENT
    priority 0
    flags FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_CONTACT
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_BRUTAL_SWING, "The user swings its\nbody around violently\nto inflict damage on\neverything in its\nvicinity."

movedata MOVE_AURORA_VEIL, "Aurora Veil"
    battleeffect MOVE_EFFECT_SET_AURORA_VEIL
    pss SPLIT_STATUS
    basepower 0
    type TYPE_ICE
    accuracy 0
    pp 20
    effectchance 0
    target RANGE_USER_SIDE
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT
    appeal 0x00
    contesttype CONTEST_BEAUTY
    terminatedata
.if SNOW_WARNING_GENERATION >= 9
    movedescription MOVE_AURORA_VEIL, "This move reduces damage\nfrom most moves for five\nturns. It can be used\nonly when it is snowing."
.else
    movedescription MOVE_AURORA_VEIL, "This move reduces damage\nfrom most moves for five\nturns. It can be used\nonly in a hailstorm."
.endif

movedatalongname MOVE_SINISTER_ARROW_RAID, "Sinister Raid", "Sinister Arrow Raid"
    battleeffect MOVE_EFFECT_HIT
    pss SPLIT_PHYSICAL
    basepower 180
    type TYPE_GHOST
    accuracy 0
    pp 1
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_SINISTER_ARROW_RAID, "The user, Decidueye,\ncreates countless\narrows using its Z-Power\nand shoots the target\nwith full force."

movedatalongname MOVE_MALICIOUS_MOONSAULT, "Moonsault", "Malicious Moonsault"
    battleeffect MOVE_EFFECT_HIT
    pss SPLIT_PHYSICAL
    basepower 180
    type TYPE_DARK
    accuracy 0
    pp 1
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_CONTACT | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_MALICIOUS_MOONSAULT, "The user, Incineroar,\nstrengthens its body\nusing its Z-Power and\ncrashes into the target\nwith full force."

movedatalongname MOVE_OCEANIC_OPERETTA, "OceanicOperetta", "Oceanic Operetta"
    battleeffect MOVE_EFFECT_HIT
    pss SPLIT_SPECIAL
    basepower 195
    type TYPE_WATER
    accuracy 0
    pp 1
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_OCEANIC_OPERETTA, "The user, Primarina,\nsummons a massive\namount of water using its\nZ-Power and attacks the\ntarget with full force."

movedatalongname MOVE_GUARDIAN_OF_ALOLA, "Alolan Guardian", "Guardian of Alola"
    battleeffect MOVE_EFFECT_QUARTER_HP
    pss SPLIT_SPECIAL
    basepower 0
    type (FAIRY_TYPE_IMPLEMENTED) ? TYPE_FAIRY : TYPE_NORMAL
    accuracy 0
    pp 1
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_GUARDIAN_OF_ALOLA, "The Land Spirit Pokémon\nuses its Z-Power to\nattack with Alola's\nenergy. This reduces the\ntarget's HP greatly."

movedatalongname MOVE_SOUL_STEALING_7_STAR_STRIKE, "7-Star Strike", "Soul-Stealing 7-Star Strike"
    battleeffect MOVE_EFFECT_HIT
    pss SPLIT_PHYSICAL
    basepower 195
    type TYPE_GHOST
    accuracy 0
    pp 1
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_CONTACT | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_SOUL_STEALING_7_STAR_STRIKE, "After obtaining\nZ-Power, Marshadow\npunches and kicks the\ntarget consecutively\nwith full force."

movedatalongname MOVE_STOKED_SPARKSURFER, "Sparksurfer", "Stoked Sparksurfer"
    battleeffect MOVE_EFFECT_PARALYZE_HIT
    pss SPLIT_SPECIAL
    basepower 175
    type TYPE_ELECTRIC
    accuracy 0
    pp 1
    effectchance 100
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_STOKED_SPARKSURFER, "After obtaining\nZ-Power, Alolan Raichu\nattacks the target with\nfull force, leaving\nthem with paralysis."

movedatalongname MOVE_PULVERIZING_PANCAKE, "Pulver-Pancake", "Pulverizing Pancake"
    battleeffect MOVE_EFFECT_HIT
    pss SPLIT_PHYSICAL
    basepower 210
    type TYPE_NORMAL
    accuracy 0
    pp 1
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_CONTACT | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_PULVERIZING_PANCAKE, "Z-Power brings out the\ntrue capabilities of\nSnorlax, which excitedly\nmoves its enormous body\nto attack the target."

movedatalongname MOVE_EXTREME_EVOBOOST, "ExtremeEvoboost", "Extreme Evoboost"
    battleeffect MOVE_EFFECT_HIT
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy 0
    pp 1
    effectchance 100
    target RANGE_USER
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_EXTREME_EVOBOOST, "After obtaining\nZ-Power, Eevee gets\nenergy from its evolved\nfriends and boosts its\nstats sharply."

movedatalongname MOVE_GENESIS_SUPERNOVA, "OriginSupernova", "Genesis Supernova"
    battleeffect MOVE_EFFECT_HIT
    pss SPLIT_SPECIAL
    basepower 185
    type TYPE_PSYCHIC
    accuracy 0
    pp 1
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_GENESIS_SUPERNOVA, "After obtaining\nZ-Power, Mew attacks\nthe target and charges\nthe terrain with\npsychic energy."

movedata MOVE_SHELL_TRAP, "Shell Trap"
    battleeffect MOVE_EFFECT_HIT
    pss SPLIT_SPECIAL
    basepower 150
    type TYPE_FIRE
    accuracy 100
    pp 5
    effectchance 0
    target RANGE_ADJACENT_OPPONENTS
    priority -3
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_UNUSABLE_UNIMPLEMENTED
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_SHELL_TRAP, "The user sets a shell\ntrap. If hit by a\nphysical move, the\ntrap will explode and\ninflict damage."

movedata MOVE_FLEUR_CANNON, "Fleur Cannon"
    battleeffect MOVE_EFFECT_USER_SP_ATK_DOWN_2
    pss SPLIT_SPECIAL
    basepower 130
    type (FAIRY_TYPE_IMPLEMENTED) ? TYPE_FAIRY : TYPE_NORMAL
    accuracy 90
    pp 5
    effectchance 100
    target RANGE_SINGLE_TARGET
    priority 0
    flags  FLAG_PROTECT | FLAG_MIRROR_MOVE
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_FLEUR_CANNON, "The user unleashes a\nstrong beam.\nThe attack's recoil\nharshly lowers the\nuser's Sp. Atk stat."

movedata MOVE_PSYCHIC_FANGS, "Psychic Fangs"
    battleeffect MOVE_EFFECT_REMOVE_SCREENS
    pss SPLIT_PHYSICAL
    basepower 85
    type TYPE_PSYCHIC
    accuracy 100
    pp 10
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_CONTACT
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_PSYCHIC_FANGS, "The user bites the\ntarget with its psychic\ncapabilities. This can\nalso destroy Light\nScreen and Reflect."

movedatalongname MOVE_STOMPING_TANTRUM, "StompingTantrum", "Stomping Tantrum"
    battleeffect MOVE_EFFECT_HIT
    pss SPLIT_PHYSICAL
    basepower 75
    type TYPE_GROUND
    accuracy 100
    pp 10
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_CONTACT
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_STOMPING_TANTRUM, "Driven by frustration,\nthe user attacks. This\nmove's power is\ndoubled if the user's\nprevious move failed."

movedata MOVE_SHADOW_BONE, "Shadow Bone"
    battleeffect MOVE_EFFECT_LOWER_DEFENSE_HIT
    pss SPLIT_PHYSICAL
    basepower 85
    type TYPE_GHOST
    accuracy 100
    pp 10
    effectchance 20
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_PROTECT | FLAG_MIRROR_MOVE
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_SHADOW_BONE, "The user beats the\ntarget with a bone that\ncontains a spirit. This\nmay also lower the\ntarget's Defense stat."

movedata MOVE_ACCELEROCK, "Accelerock"
    battleeffect MOVE_EFFECT_PRIORITY_1
    pss SPLIT_PHYSICAL
    basepower 40
    type TYPE_ROCK
    accuracy 100
    pp 20
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 1
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_CONTACT
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_ACCELEROCK, "The user smashes into\nthe target at high\nspeed.\nThis move always goes\nfirst."

movedata MOVE_LIQUIDATION, "Liquidation"
    battleeffect MOVE_EFFECT_LOWER_DEFENSE_HIT
    pss SPLIT_PHYSICAL
    basepower 85
    type TYPE_WATER
    accuracy 100
    pp 10
    effectchance 20
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_CONTACT
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_LIQUIDATION, "The user slams into\nthe target using a\nblast of water. This\nmay also lower the\ntarget's Defense stat."

movedata MOVE_PRISMATIC_LASER, "Prismatic Laser"
    battleeffect MOVE_EFFECT_RECHARGE_AFTER
    pss SPLIT_SPECIAL
    basepower 160
    type TYPE_PSYCHIC
    accuracy 100
    pp 10
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags  FLAG_PROTECT | FLAG_MIRROR_MOVE
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_PRISMATIC_LASER, "The user shoots\npowerful lasers using\nthe power of a prism.\nThe user can't move on\nthe next turn."

movedata MOVE_SPECTRAL_THIEF, "Spectral Thief"
    battleeffect MOVE_EFFECT_HIT
    pss SPLIT_PHYSICAL
    basepower 90
    type TYPE_GHOST
    accuracy 100
    pp 10
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_CONTACT | FLAG_UNUSABLE_IN_GEN_9 | FLAG_UNUSABLE_UNIMPLEMENTED
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_SPECTRAL_THIEF, "The user hides in the\ntarget's shadow,\nsteals the target's\nstat boosts,\nand then attacks"

movedata MOVE_SUNSTEEL_STRIKE, "Sunsteel Strike"
    battleeffect MOVE_EFFECT_HIT
    pss SPLIT_PHYSICAL
    basepower 100
    type TYPE_STEEL
    accuracy 100
    pp 5
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_UNUSABLE_UNIMPLEMENTED
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_SUNSTEEL_STRIKE, "The user attacks with\nmeteoric force. This\nmove can be used on\nthe target regardless\nof its Ability."

movedata MOVE_MOONGEIST_BEAM, "Moongeist Beam"
    battleeffect MOVE_EFFECT_HIT
    pss SPLIT_SPECIAL
    basepower 100
    type TYPE_GHOST
    accuracy 100
    pp 5
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_UNUSABLE_UNIMPLEMENTED
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_MOONGEIST_BEAM, "The user emits a\nsinister ray. This\nmove can be used on\nthe target regardless\nof its Ability."

movedata MOVE_TEARFUL_LOOK, "Tearful Look"
    battleeffect MOVE_EFFECT_ATK_SP_ATK_DOWN
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy 0
    pp 20
    effectchance 100
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_MAGIC_COAT
    appeal 0x00
    contesttype CONTEST_CUTE
    terminatedata
    movedescription MOVE_TEARFUL_LOOK, "The user tears up,\nlowering the target's\nAttack and Sp. Atk\nstats.\nBypasses Protect."

movedata MOVE_ZING_ZAP, "Zing Zap"
    battleeffect MOVE_EFFECT_FLINCH_HIT
    pss SPLIT_PHYSICAL
    basepower 80
    type TYPE_ELECTRIC
    accuracy 100
    pp 10
    effectchance 30
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_CONTACT
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_ZING_ZAP, "The user crashes into\nthe target, delivering\na powerful electric\nshock. This may also\nmake the target flinch."

movedatalongname MOVE_NATURES_MADNESS, "Nature’sMadness", "Nature’s Madness"
    battleeffect MOVE_EFFECT_HALVE_HP
    pss SPLIT_SPECIAL
    basepower 0
    type (FAIRY_TYPE_IMPLEMENTED) ? TYPE_FAIRY : TYPE_NORMAL
    accuracy 90
    pp 10
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags  FLAG_PROTECT | FLAG_MIRROR_MOVE
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_NATURES_MADNESS, "The user hits the\ntarget with the full\nwrath of nature.\nThis cuts the target's\nHP in half."

movedata MOVE_MULTI_ATTACK, "Multi-Attack"
    battleeffect MOVE_EFFECT_MULTI_ATTACK
    pss SPLIT_PHYSICAL
    basepower 120
    type TYPE_NORMAL
    accuracy 100
    pp 10
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_CONTACT
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_MULTI_ATTACK, "Cloaking itself in high\nenergy, the user slams\ninto the target. The\nmemory held determines\nthe move's type."

movedatalongname MOVE_10_000_000_VOLT_THUNDERBOLT, "10,000,000 Bolt", "10,000,000 Volt Thunderbolt"
    battleeffect MOVE_EFFECT_HIT
    pss SPLIT_SPECIAL
    basepower 195
    type TYPE_ELECTRIC
    accuracy 0
    pp 1
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_10_000_000_VOLT_THUNDERBOLT, "Pikachu (wearing a\ncap) unleashes a jolt\nof electricity using\nits Z-Power. Critical\nhits land more easily."

movedata MOVE_MIND_BLOWN, "Mind Blown"
    battleeffect MOVE_EFFECT_HIT
    pss SPLIT_SPECIAL
    basepower 150
    type TYPE_FIRE
    accuracy 100
    pp 5
    effectchance 0
    target RANGE_ALL_ADJACENT
    priority 0
    flags FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_UNUSABLE_UNIMPLEMENTED
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_MIND_BLOWN, "The user attacks\neverything around it by\ncausing its own head to\nexplode. This also\ndamages the user."

movedata MOVE_PLASMA_FISTS, "Plasma Fists"
    battleeffect MOVE_EFFECT_ION_DELUGE_HIT
    pss SPLIT_PHYSICAL
    basepower 100
    type TYPE_ELECTRIC
    accuracy 100
    pp 15
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_CONTACT
    appeal 0x00
    contesttype CONTEST_BEAUTY // Reflects the contest type for Ion Deluge.
    terminatedata
    movedescription MOVE_PLASMA_FISTS, "The user attacks with\nelectrically charged\nfists. This move\nchanges Normal-type\nmoves to Electric."

movedata MOVE_PHOTON_GEYSER, "Photon Geyser"
    battleeffect MOVE_EFFECT_HIT
    pss SPLIT_SPECIAL
    basepower 100
    type TYPE_PSYCHIC
    accuracy 100
    pp 5
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags  FLAG_PROTECT | FLAG_MIRROR_MOVE
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_PHOTON_GEYSER, "The user attacks with a\npillar of light. This\ncan inflict damage using\nAttack or Sp. Atk-\nwhichever is higher."

movedatalongname MOVE_LIGHT_THAT_BURNS_THE_SKY, "LightBurnSky", "Light That Burns the Sky"
    battleeffect MOVE_EFFECT_HIT
    pss SPLIT_SPECIAL
    basepower 200
    type TYPE_PSYCHIC
    accuracy 0
    pp 1
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_LIGHT_THAT_BURNS_THE_SKY, "Necrozma inflicts damage\nusing Attack or Sp. Atk-\nwhichever is higher.\nThis move ignores the\ntarget's Ability."

movedatalongname MOVE_SEARING_SUNRAZE_SMASH, "Sunraze Smash", "Searing Sunraze Smash"
    battleeffect MOVE_EFFECT_HIT
    pss SPLIT_PHYSICAL
    basepower 200
    type TYPE_STEEL
    accuracy 0
    pp 1
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_CONTACT | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_SEARING_SUNRAZE_SMASH, "After obtaining Z-Power,\nSolgaleo attacks the\ntarget. This move can\nignore the effect of the\ntarget's Ability."

movedatalongname MOVE_MENACING_MOONRAZE_MAELSTROM, "Moonraze Storm", "Menacing Moonraze Maelstrom"
    battleeffect MOVE_EFFECT_HIT
    pss SPLIT_SPECIAL
    basepower 200
    type TYPE_GHOST
    accuracy 0
    pp 1
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_MENACING_MOONRAZE_MAELSTROM, "After obtaining Z-Power,\nLunala attacks the\ntarget. This move can\nignore the effect of the\ntarget's Ability."

movedatalongname MOVE_LETS_SNUGGLE_FOREVER, "Let’s Snuggle", "Let’s Snuggle Forever"
    battleeffect MOVE_EFFECT_HIT
    pss SPLIT_PHYSICAL
    basepower 190
    type (FAIRY_TYPE_IMPLEMENTED) ? TYPE_FAIRY : TYPE_NORMAL
    accuracy 0
    pp 1
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_CONTACT | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_LETS_SNUGGLE_FOREVER, "After obtaining\nZ-Power, the user,\nMimikyu, punches the\ntarget with full\nforce."

movedatalongname MOVE_SPLINTERED_STORMSHARDS, "Stormshards", "Splintered Stormshards"
    battleeffect MOVE_EFFECT_HIT
    pss SPLIT_PHYSICAL
    basepower 190
    type TYPE_ROCK
    accuracy 0
    pp 1
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_SPLINTERED_STORMSHARDS, "After obtaining\nZ-Power, Lycanroc\nattacks the target.\nThis move also\ndestroys terrain."

movedatalongname MOVE_CLANGOROUS_SOULBLAZE, "Soulblaze", "Clangorous Soulblaze"
    battleeffect MOVE_EFFECT_RAISE_ALL_STATS_HIT
    pss SPLIT_SPECIAL
    basepower 185
    type TYPE_DRAGON
    accuracy 0
    pp 1
    effectchance 100
    target RANGE_ADJACENT_OPPONENTS
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_CLANGOROUS_SOULBLAZE, "After obtaining Z-Power, Kommo-o attacks. This move boosts the all the user's stats at once."

movedata MOVE_ZIPPY_ZAP, "Zippy Zap"
    battleeffect MOVE_EFFECT_RAISE_EVA_HIT
    pss SPLIT_PHYSICAL
    basepower 80
    type TYPE_ELECTRIC
    accuracy 100
    pp 10
    effectchance 100
    target RANGE_SINGLE_TARGET
    priority 2
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_CONTACT | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_ZIPPY_ZAP, "The user attacks with\nhigh-speed bursts of\nelectricity. This move\nboosts Evasion and\nalways goes first."

movedata MOVE_SPLISHY_SPLASH, "Splishy Splash"
    battleeffect MOVE_EFFECT_PARALYZE_HIT
    pss SPLIT_SPECIAL
    basepower 90
    type TYPE_WATER
    accuracy 100
    pp 15
    effectchance 30
    target RANGE_ADJACENT_OPPONENTS
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_SPLISHY_SPLASH, "The user charges a huge\nwave with electricity.\nThis may also leave the\nopposing Pokémon with\nparalysis."

movedata MOVE_FLOATY_FALL, "Floaty Fall"
    battleeffect MOVE_EFFECT_FLINCH_HIT
    pss SPLIT_PHYSICAL
    basepower 90
    type TYPE_FLYING
    accuracy 95
    pp 15
    effectchance 30
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_CONTACT | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_FLOATY_FALL, "The user floats in the\nair, then dives at a\nsteep angle to attack.\nThis may also make the\ntarget flinch."

movedata MOVE_PIKA_PAPOW, "Pika Papow"
    battleeffect MOVE_EFFECT_POWER_BASED_ON_FRIENDSHIP
    pss SPLIT_SPECIAL
    basepower 0
    type TYPE_ELECTRIC
    accuracy 0
    pp 20
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_PIKA_PAPOW, "The more Pikachu\nloves its Trainer,\nthe greater the\nmove's power.\nIt never misses."

movedata MOVE_BOUNCY_BUBBLE, "Bouncy Bubble"
    battleeffect MOVE_EFFECT_RECOVER_FULL_DAMAGE_DEALT
    pss SPLIT_SPECIAL
    basepower 60
    type TYPE_WATER
    accuracy 100
    pp 20
    effectchance 100
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_BOUNCY_BUBBLE, "The user attacks by\nshooting water\nbubbles, which restore\nits HP by half the\ndamage dealt."

movedata MOVE_BUZZY_BUZZ, "Buzzy Buzz"
    battleeffect MOVE_EFFECT_PARALYZE_HIT
    pss SPLIT_SPECIAL
    basepower 60
    type TYPE_ELECTRIC
    accuracy 100
    pp 20
    effectchance 100
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_BUZZY_BUZZ, "The user shoots a jolt\nof electricity to\nattack the target.\nThis also leaves the\ntarget with paralysis."

movedata MOVE_SIZZLY_SLIDE, "Sizzly Slide"
    battleeffect MOVE_EFFECT_BURN_HIT
    pss SPLIT_PHYSICAL
    basepower 60
    type TYPE_FIRE
    accuracy 100
    pp 20
    effectchance 100
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_CONTACT | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_SIZZLY_SLIDE, "The user cloaks itself\nin fire and charges at\nthe target.\nThis also leaves the\ntarget with a burn."

movedata MOVE_GLITZY_GLOW, "Glitzy Glow"
    battleeffect MOVE_EFFECT_SET_LIGHT_SCREEN_HIT
    pss SPLIT_SPECIAL
    basepower 80
    type TYPE_PSYCHIC
    accuracy 95
    pp 15
    effectchance 100
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_GLITZY_GLOW, "The user bombards the\ntarget with\ntelekinetic force,\nsuppressing damage\nfrom special moves."

movedata MOVE_BADDY_BAD, "Baddy Bad"
    battleeffect MOVE_EFFECT_SET_REFLECT_HIT
    pss SPLIT_SPECIAL
    basepower 80
    type TYPE_DARK
    accuracy 95
    pp 15
    effectchance 100
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_BADDY_BAD, "The user acts bad and\nattacks the target,\nsuppressing damage\nfrom physical moves."

movedata MOVE_SAPPY_SEED, "Sappy Seed"
    battleeffect MOVE_EFFECT_LEECH_SEED_HIT
    pss SPLIT_PHYSICAL
    basepower 100
    type TYPE_GRASS
    accuracy 90
    pp 10
    effectchance 100
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_MAGIC_COAT | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_SAPPY_SEED, "The user scatters\nseeds to attack the\ntarget. The seeds\ndrain the target's HP\nevery turn."

movedata MOVE_FREEZY_FROST, "Freezy Frost"
    battleeffect MOVE_EFFECT_RESET_STAT_CHANGES_HIT
    pss SPLIT_SPECIAL
    basepower 100
    type TYPE_ICE
    accuracy 90
    pp 10
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_FREEZY_FROST, "The user attacks with a\ncrystal made of frozen\nhaze. It eliminates\nevery stat change among\nall Pokémon in battle."

movedata MOVE_SPARKLY_SWIRL, "Sparkly Swirl"
    battleeffect MOVE_EFFECT_CURE_PARTY_STATUS_HIT
    pss SPLIT_SPECIAL
    basepower 120
    type (FAIRY_TYPE_IMPLEMENTED) ? TYPE_FAIRY : TYPE_NORMAL
    accuracy 85
    pp 5
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_SPARKLY_SWIRL, "The user attacks with\nan overpowering scent.\nThis also heals all\nstatus conditions of\nthe user's party."

movedata MOVE_VEEVEE_VOLLEY, "Veevee Volley"
    battleeffect MOVE_EFFECT_POWER_BASED_ON_FRIENDSHIP
    pss SPLIT_PHYSICAL
    basepower 0
    type TYPE_NORMAL
    accuracy 0
    pp 20
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_CONTACT | FLAG_UNUSABLE_IN_GEN_8 | FLAG_UNUSABLE_IN_GEN_9
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_VEEVEE_VOLLEY, "The more Eevee\nloves its Trainer,\nthe greater the\nmove's power.\nIt never misses."

movedatalongname MOVE_DOUBLE_IRON_BASH, "Double IronBash", "Double Iron Bash"
    battleeffect MOVE_EFFECT_HIT_TWICE_AND_FLINCH
    pss SPLIT_PHYSICAL
    basepower 60
    type TYPE_STEEL
    accuracy 100
    pp 5
    effectchance 30
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_CONTACT
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_DOUBLE_IRON_BASH, "The user spins on its\nnut, striking the target\nwith its arms twice in a\nrow. This may also make\nthe target flinch."

// Moves introduced in Generation VIII:
movedata MOVE_MAX_GUARD, "Max Guard"
    battleeffect MOVE_EFFECT_PROTECT
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy 0
    pp 10
    effectchance 0
    target RANGE_USER
    priority 4
    flags FLAG_UNUSABLE_IN_GEN_9
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_MAX_GUARD, "This move protects the\nuser from all attacks.\nIts chance of failing\nrises if it is used in\nsuccession."

movedata MOVE_DYNAMAX_CANNON, "Dynamax Cannon"
    battleeffect MOVE_EFFECT_HIT
    pss SPLIT_SPECIAL
    basepower 100
    type TYPE_DRAGON
    accuracy 100
    pp 5
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags  FLAG_PROTECT | FLAG_MIRROR_MOVE
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_DYNAMAX_CANNON, "The user condenses\nenergy within its body\nand unleashes that\nenergy from its core\nto inflict damage."

movedata MOVE_SNIPE_SHOT, "Snipe Shot"
    battleeffect MOVE_EFFECT_HIGH_CRITICAL
    pss SPLIT_SPECIAL
    basepower 80
    type TYPE_WATER
    accuracy 100
    pp 15
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_SNIPE_SHOT, "The user ignores\nopposing Pokémon's moves\nand Abilities that draw\nin moves, allowing it to\nhit the chosen target."

movedata MOVE_JAW_LOCK, "Jaw Lock"
    battleeffect MOVE_EFFECT_PREVENT_ESCAPE_BOTH_HIT
    pss SPLIT_PHYSICAL
    basepower 80
    type TYPE_DARK
    accuracy 100
    pp 10
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_CONTACT
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_JAW_LOCK, "This move prevents the\nuser and the target from\nswitching out until\neither of them faints or\nleaves the field."

movedata MOVE_STUFF_CHEEKS, "Stuff Cheeks"
    battleeffect MOVE_EFFECT_STUFF_CHEEKS
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy 0
    pp 10
    effectchance 100
    target RANGE_USER
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_STUFF_CHEEKS, "The user eats its\nheld Berry, then\nsharply boosts its\nDefense stat."

movedata MOVE_NO_RETREAT, "No Retreat"
    battleeffect MOVE_EFFECT_HIT
    pss SPLIT_STATUS
    basepower 0
    type TYPE_FIGHTING
    accuracy 0
    pp 5
    effectchance 100
    target RANGE_USER
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT | FLAG_UNUSABLE_UNIMPLEMENTED
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_NO_RETREAT, "This move boosts all\nthe user's stats but\nprevents the user\nfrom switching out\nor fleeing."

movedata MOVE_TAR_SHOT, "Tar Shot"
    battleeffect MOVE_EFFECT_HIT
    pss SPLIT_STATUS
    basepower 0
    type TYPE_ROCK
    accuracy 100
    pp 15
    effectchance 100
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT | FLAG_UNUSABLE_UNIMPLEMENTED
    appeal 0x00
    contesttype CONTEST_SMART
    terminatedata
    movedescription MOVE_TAR_SHOT, "The user pours tar on\nthe target, dropping\ntheir Speed stat.\nFire attacks deal\nmore damage."

movedata MOVE_MAGIC_POWDER, "Magic Powder"
    battleeffect MOVE_EFFECT_CHANGE_TO_PSYCHIC_TYPE
    pss SPLIT_STATUS
    basepower 0
    type TYPE_PSYCHIC
    accuracy 100
    pp 20
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT
    appeal 0x00
    contesttype CONTEST_BEAUTY
    terminatedata
    movedescription MOVE_MAGIC_POWDER, "The user scatters a\ncloud of magic powder\nthat changes the\ntarget's type to\nPsychic."

movedata MOVE_DRAGON_DARTS, "Dragon Darts"
    battleeffect MOVE_EFFECT_HIT_TWICE
    pss SPLIT_PHYSICAL
    basepower 50
    type TYPE_DRAGON
    accuracy 100
    pp 10
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_UNUSABLE_UNIMPLEMENTED
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_DRAGON_DARTS, "The user attacks twice\nusing Dreepy. If there\nare two opposing\nPokémon, this move\nhits each of them once."

movedata MOVE_TEATIME, "Teatime"
    battleeffect MOVE_EFFECT_HIT
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy 0
    pp 10
    effectchance 0
    target RANGE_USER | RANGE_ALL_ADJACENT
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_MAGIC_COAT | FLAG_UNUSABLE_UNIMPLEMENTED
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_TEATIME, "The user has teatime\nwith all the Pokémon\ncurrently in the battle.\nEach Pokémon eats its\nheld Berry."

movedata MOVE_OCTOLOCK, "Octolock"
    battleeffect MOVE_EFFECT_HIT
    pss SPLIT_STATUS
    basepower 0
    type TYPE_FIGHTING
    accuracy 100
    pp 15
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT | FLAG_UNUSABLE_UNIMPLEMENTED
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_OCTOLOCK, "The user prevents the\ntarget from fleeing.\nThis move also lowers\nthe target's Defense\nand Sp. Def every turn."

movedata MOVE_BOLT_BEAK, "Bolt Beak"
    battleeffect MOVE_EFFECT_DOUBLE_POWER_IF_FASTER
    pss SPLIT_PHYSICAL
    basepower 85
    type TYPE_ELECTRIC
    accuracy 100
    pp 10
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_CONTACT
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_BOLT_BEAK, "The user stabs with its\nelectrified beak. This\nmove's power is doubled\nif the user moves before\nthe target."

movedata MOVE_FISHIOUS_REND, "Fishious Rend"
    battleeffect MOVE_EFFECT_DOUBLE_POWER_IF_FASTER
    pss SPLIT_PHYSICAL
    basepower 85
    type TYPE_WATER
    accuracy 100
    pp 10
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_CONTACT
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_FISHIOUS_REND, "The user rends with its\nhard gills. If the user\nattacks before the\ntarget, the power of\nthis move is doubled."

movedata MOVE_COURT_CHANGE, "Court Change"
    battleeffect MOVE_EFFECT_HIT
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy 100
    pp 10
    effectchance 0
    target RANGE_FIELD
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT | FLAG_UNUSABLE_UNIMPLEMENTED
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_COURT_CHANGE, "With its mysterious\npower, the user swaps\nthe effects on either\nside of the field."

// TODO: Implement dynamic base power for Max Moves.
movedata MOVE_MAX_FLARE, "Max Flare"
    battleeffect MOVE_EFFECT_HIT // TODO: Replace with MOVE_EFFECT_SUN_HIT once implemented.
    pss SPLIT_PHYSICAL
    basepower 100
    type TYPE_FIRE
    accuracy 0
    pp 10
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_UNUSABLE_IN_GEN_9 | FLAG_UNUSABLE_UNIMPLEMENTED
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_MAX_FLARE, "This is a Fire-type\nattack Dynamax Pokémon\nuse. The user\nintensifies the sun\nfor five turns."

movedata MOVE_MAX_FLUTTERBY, "Max Flutterby"
    battleeffect MOVE_EFFECT_LOWER_SP_ATK_HIT
    pss SPLIT_PHYSICAL
    basepower 10
    type TYPE_BUG
    accuracy 0
    pp 10
    effectchance 100
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_UNUSABLE_IN_GEN_9 | FLAG_UNUSABLE_UNIMPLEMENTED
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_MAX_FLUTTERBY, "This is a Bug-type\nattack Dynamax Pokémon\nuse. This lowers the\ntarget's Sp. Atk stat."

movedata MOVE_MAX_LIGHTNING, "Max Lightning"
    battleeffect MOVE_EFFECT_HIT // TODO: Replace with MOVE_EFFECT_ELECTRIC_TERRAIN_HIT once implemented.
    pss SPLIT_PHYSICAL
    basepower 10
    type TYPE_ELECTRIC
    accuracy 0
    pp 10
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_UNUSABLE_IN_GEN_9 | FLAG_UNUSABLE_UNIMPLEMENTED
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_MAX_LIGHTNING, "This is an Electric-type\nattack Dynamax Pokémon\nuse. The user turns the\nground into Electric\nTerrain for five turns."

movedata MOVE_MAX_STRIKE, "Max Strike"
    battleeffect MOVE_EFFECT_LOWER_SPEED_HIT
    pss SPLIT_PHYSICAL
    basepower 10
    type TYPE_NORMAL
    accuracy 0
    pp 10
    effectchance 100
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_UNUSABLE_IN_GEN_9 | FLAG_UNUSABLE_UNIMPLEMENTED
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_MAX_STRIKE, "This is a Normal-type\nattack Dynamax Pokémon\nuse. This lowers the\ntarget's Speed stat."

movedata MOVE_MAX_KNUCKLE, "Max Knuckle"
    battleeffect MOVE_EFFECT_RAISE_ATTACK_HIT
    pss SPLIT_PHYSICAL
    basepower 10
    type TYPE_FIGHTING
    accuracy 0
    pp 10
    effectchance 100
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_UNUSABLE_IN_GEN_9 | FLAG_UNUSABLE_UNIMPLEMENTED
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_MAX_KNUCKLE, "This is a Fighting-type\nattack Dynamax Pokémon\nuse. This boosts ally\nPokémon's Attack stats."

movedata MOVE_MAX_PHANTASM, "Max Phantasm"
    battleeffect MOVE_EFFECT_LOWER_DEFENSE_HIT
    pss SPLIT_PHYSICAL
    basepower 10
    type TYPE_GHOST
    accuracy 0
    pp 10
    effectchance 100
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_UNUSABLE_IN_GEN_9 | FLAG_UNUSABLE_UNIMPLEMENTED
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_MAX_PHANTASM, "This is a Ghost-type\nattack Dynamax Pokémon\nuse. This lowers the\ntarget's Defense stat."

movedata MOVE_MAX_HAILSTORM, "Max Hailstorm"
    battleeffect (SNOW_WARNING_GENERATION >= 9) ? MOVE_EFFECT_HIT : MOVE_EFFECT_HIT // TODO: Replace the left with MOVE_EFFECT_SNOW_HIT and right with MOVE_EFFECT_HAIL_HIT once implemented.
    pss SPLIT_PHYSICAL
    basepower 10
    type TYPE_ICE
    accuracy 0
    pp 10
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_UNUSABLE_IN_GEN_9 | FLAG_UNUSABLE_UNIMPLEMENTED
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_MAX_HAILSTORM, (SNOW_WARNING_GENERATION >= 9) ? "This is an Ice-type\nattack Dynamax Pokémon\nuse. The user summons\na snowstorm lasting\nfive turns." : "This is an Ice-type\nattack Dynamax Pokémon\nuse. The user summons\na hailstorm lasting\nfive turns."

movedata MOVE_MAX_OOZE, "Max Ooze"
    battleeffect MOVE_EFFECT_RAISE_SP_ATK_HIT
    pss SPLIT_PHYSICAL
    basepower 10
    type TYPE_POISON
    accuracy 0
    pp 10
    effectchance 100
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_UNUSABLE_IN_GEN_9 | FLAG_UNUSABLE_UNIMPLEMENTED
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_MAX_OOZE, "This is a Poison-type\nattack Dynamax Pokémon\nuse. This boosts ally\nPokémon's Sp. Atk\nstats."

movedata MOVE_MAX_GEYSER, "Max Geyser"
    battleeffect MOVE_EFFECT_HIT // TODO: Replace with MOVE_EFFECT_RAIN_HIT once implemented.
    pss SPLIT_PHYSICAL
    basepower 10
    type TYPE_WATER
    accuracy 0
    pp 10
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_UNUSABLE_IN_GEN_9 | FLAG_UNUSABLE_UNIMPLEMENTED
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_MAX_GEYSER, "This is a Water-type\nattack Dynamax Pokémon\nuse. The user summons\na heavy rain that\nfalls for five turns."

movedata MOVE_MAX_AIRSTREAM, "Max Airstream"
    battleeffect MOVE_EFFECT_RAISE_SPEED_HIT
    pss SPLIT_PHYSICAL
    basepower 10
    type TYPE_FLYING
    accuracy 0
    pp 10
    effectchance 100
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_UNUSABLE_IN_GEN_9 | FLAG_UNUSABLE_UNIMPLEMENTED
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_MAX_AIRSTREAM, "This is a Flying-type\nattack Dynamax Pokémon\nuse. This boosts ally\nPokémon's Speed stats."

movedata MOVE_MAX_STARFALL, "Max Starfall"
    battleeffect MOVE_EFFECT_HIT // TODO: Replace with MOVE_EFFECT_MISTY_TERRAIN_HIT once implemented.
    pss SPLIT_PHYSICAL
    basepower 10
    type (FAIRY_TYPE_IMPLEMENTED) ? TYPE_FAIRY : TYPE_NORMAL
    accuracy 0
    pp 10
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_UNUSABLE_IN_GEN_9 | FLAG_UNUSABLE_UNIMPLEMENTED
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_MAX_STARFALL, "This is a Fairy-type\nattack Dynamax Pokémon\nuse. The user turns the\nground into Misty\nTerrain for five turns."

movedata MOVE_MAX_WYRMWIND, "Max Wyrmwind"
    battleeffect MOVE_EFFECT_LOWER_ATTACK_HIT
    pss SPLIT_PHYSICAL
    basepower 10
    type TYPE_DRAGON
    accuracy 0
    pp 10
    effectchance 100
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_UNUSABLE_IN_GEN_9 | FLAG_UNUSABLE_UNIMPLEMENTED
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_MAX_WYRMWIND, "This is a Dragon-type\nattack Dynamax Pokémon\nuse. This lowers the\ntarget's Attack stat."

movedata MOVE_MAX_MINDSTORM, "Max Mindstorm"
    battleeffect MOVE_EFFECT_HIT // TODO: Replace with MOVE_EFFECT_PSYCHIC_TERRAIN_HIT once implemented.
    pss SPLIT_PHYSICAL
    basepower 10
    type TYPE_PSYCHIC
    accuracy 0
    pp 10
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_UNUSABLE_IN_GEN_9 | FLAG_UNUSABLE_UNIMPLEMENTED
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_MAX_MINDSTORM, "This is a Psychic-type\nattack Dynamax Pokémon\nuse. The user turns the\nground into Psychic\nTerrain for five turns."

movedata MOVE_MAX_ROCKFALL, "Max Rockfall"
    battleeffect MOVE_EFFECT_HIT // TODO: Replace with MOVE_EFFECT_SANDSTORM_HIT once implemented.
    pss SPLIT_PHYSICAL
    basepower 10
    type TYPE_ROCK
    accuracy 0
    pp 10
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_UNUSABLE_IN_GEN_9 | FLAG_UNUSABLE_UNIMPLEMENTED
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_MAX_ROCKFALL, "This is a Rock-type\nattack Dynamax Pokémon\nuse. The user summons\na sandstorm lasting\nfive turns."

movedata MOVE_MAX_QUAKE, "Max Quake"
    battleeffect MOVE_EFFECT_HIT
    pss SPLIT_PHYSICAL
    basepower 10
    type TYPE_GROUND
    accuracy 0
    pp 10
    effectchance 100
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_UNUSABLE_IN_GEN_9 | FLAG_UNUSABLE_UNIMPLEMENTED
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_MAX_QUAKE, "This is a Ground-type\nattack Dynamax Pokémon\nuse. This boosts ally\nPokémon's Sp. Def\nstats."

movedata MOVE_MAX_DARKNESS, "Max Darkness"
    battleeffect MOVE_EFFECT_LOWER_SP_DEF_HIT
    pss SPLIT_PHYSICAL
    basepower 10
    type TYPE_DARK
    accuracy 0
    pp 10
    effectchance 100
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_UNUSABLE_IN_GEN_9 | FLAG_UNUSABLE_UNIMPLEMENTED
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_MAX_DARKNESS, "This is a Dark-type\nattack Dynamax Pokémon\nuse. This lowers the\ntarget's Sp. Def stat."

movedata MOVE_MAX_OVERGROWTH, "Max Overgrowth"
    battleeffect MOVE_EFFECT_HIT // TODO: Replace with MOVE_EFFECT_GRASSY_TERRAIN_HIT once implemented.
    pss SPLIT_PHYSICAL
    basepower 10
    type TYPE_GRASS
    accuracy 0
    pp 10
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_UNUSABLE_IN_GEN_9 | FLAG_UNUSABLE_UNIMPLEMENTED
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_MAX_OVERGROWTH, "This is a Grass-type\nattack Dynamax Pokémon\nuse. The user turns the\nground into Grassy\nTerrain for five turns."

movedata MOVE_MAX_STEELSPIKE, "Max Steelspike"
    battleeffect MOVE_EFFECT_RAISE_DEF_HIT
    pss SPLIT_PHYSICAL
    basepower 10
    type TYPE_STEEL
    accuracy 0
    pp 10
    effectchance 100
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_UNUSABLE_IN_GEN_9 | FLAG_UNUSABLE_UNIMPLEMENTED
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_MAX_STEELSPIKE, "This is a Steel-type\nattack Dynamax Pokémon\nuse. This boosts ally\nPokémon's Defense\nstats."

movedata MOVE_CLANGOROUS_SOUL, "Clangorous Soul"
    battleeffect MOVE_EFFECT_RAISE_ALL_STATS_LOSE_THIRD_MAX_HP
    pss SPLIT_STATUS
    basepower 0
    type TYPE_DRAGON
    accuracy 100
    pp 5
    effectchance 100
    target RANGE_USER
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_CLANGOROUS_SOUL, "The user boosts all\nits stats by using\nsome of its own HP."

movedata MOVE_BODY_PRESS, "Body Press"
    battleeffect MOVE_EFFECT_HIT // Handled in CalcBaseDamage.c.
    pss SPLIT_PHYSICAL
    basepower 80
    type TYPE_FIGHTING
    accuracy 100
    pp 10
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_CONTACT
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_BODY_PRESS, "The user slams its\nbody into the target.\nThe higher the user's\nDefense stat, the\ngreater the damage."

movedata MOVE_DECORATE, "Decorate"
    battleeffect MOVE_EFFECT_DECORATE
    pss SPLIT_STATUS
    basepower 0
    type (FAIRY_TYPE_IMPLEMENTED) ? TYPE_FAIRY : TYPE_NORMAL
    accuracy 0
    pp 15
    effectchance 100
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_MAGIC_COAT
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_DECORATE, "The user sharply\nboosts the target's\nAttack and Sp. Atk\nstats by decorating\nthe target."

movedata MOVE_DRUM_BEATING, "Drum Beating"
    battleeffect MOVE_EFFECT_LOWER_SPEED_HIT
    pss SPLIT_PHYSICAL
    basepower 80
    type TYPE_GRASS
    accuracy 100
    pp 10
    effectchance 100
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_DRUM_BEATING, "The user plays its drum,\ncontrolling the drum's\nroots to attack the\ntarget. This also lowers\nthe target's Speed stat."

movedata MOVE_SNAP_TRAP, "Snap Trap"
    battleeffect MOVE_EFFECT_HIT
    pss SPLIT_PHYSICAL
    basepower 35
    type TYPE_GRASS
    accuracy 100
    pp 15
    effectchance 100
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_CONTACT | FLAG_UNUSABLE_UNIMPLEMENTED
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_SNAP_TRAP, "The user snares the\ntarget in a snap trap\nthat inflicts damage\nfor four to five\nturns."

movedata MOVE_PYRO_BALL, "Pyro Ball"
    battleeffect MOVE_EFFECT_BURN_HIT
    pss SPLIT_PHYSICAL
    basepower 120
    type TYPE_FIRE
    accuracy 90
    pp 5
    effectchance 10
    target RANGE_SINGLE_TARGET
    priority 0
    flags  FLAG_PROTECT | FLAG_MIRROR_MOVE
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_PYRO_BALL, "The user ignites a small\nstone and launches it as\na fiery ball. This may\nalso leave the target\nwith a burn."

movedata MOVE_BEHEMOTH_BLADE, "Behemoth Blade"
    battleeffect MOVE_EFFECT_HIT
    pss SPLIT_PHYSICAL
    basepower 100
    type TYPE_STEEL
    accuracy 100
    pp 5
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_PROTECT | FLAG_MIRROR_MOVE
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_BEHEMOTH_BLADE, "The user wields a\nlarge, powerful sword\nusing its whole body\nand cuts the target\nin a vigorous attack."

movedata MOVE_BEHEMOTH_BASH, "Behemoth Bash"
    battleeffect MOVE_EFFECT_HIT
    pss SPLIT_PHYSICAL
    basepower 100
    type TYPE_STEEL
    accuracy 100
    pp 5
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_CONTACT
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_BEHEMOTH_BASH, "The user's body\nbecomes a firm shield\nand slams into the\ntarget fiercely."

movedata MOVE_AURA_WHEEL, "Aura Wheel"
    battleeffect MOVE_EFFECT_HIT
    pss SPLIT_PHYSICAL
    basepower 110
    type TYPE_ELECTRIC
    accuracy 100
    pp 10
    effectchance 100
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_UNUSABLE_UNIMPLEMENTED
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_AURA_WHEEL, "Morpeko attacks and\nboosts its Speed stat.\nThis move's type\nchanges depending on\nthe user's form."

movedata MOVE_BREAKING_SWIPE, "Breaking Swipe"
    battleeffect MOVE_EFFECT_LOWER_ATTACK_HIT
    pss SPLIT_PHYSICAL
    basepower 60
    type TYPE_DRAGON
    accuracy 100
    pp 15
    effectchance 100
    target RANGE_ADJACENT_OPPONENTS
    priority 0
    flags FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_CONTACT
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_BREAKING_SWIPE, "The user swings its\ntough tail and attacks\nopposing Pokémon.\nThis also lowers their\nAttack stats."

movedata MOVE_BRANCH_POKE, "Branch Poke"
    battleeffect MOVE_EFFECT_HIT
    pss SPLIT_PHYSICAL
    basepower 40
    type TYPE_GRASS
    accuracy 100
    pp 40
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_CONTACT
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_BRANCH_POKE, "The user attacks the\ntarget by poking it\nwith a sharply\npointed branch."

movedata MOVE_OVERDRIVE, "Overdrive"
    battleeffect MOVE_EFFECT_HIT
    pss SPLIT_SPECIAL
    basepower 80
    type TYPE_ELECTRIC
    accuracy 100
    pp 10
    effectchance 0
    target RANGE_ADJACENT_OPPONENTS
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_OVERDRIVE, "The user attacks by\ntwanging a guitar or\nbass guitar, causing a\nhuge echo and strong\nvibration."

movedata MOVE_APPLE_ACID, "Apple Acid"
    battleeffect MOVE_EFFECT_LOWER_SP_DEF_HIT
    pss SPLIT_SPECIAL
    basepower 80
    type TYPE_GRASS
    accuracy 100
    pp 10
    effectchance 100
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_APPLE_ACID, "The user attacks with an\nacidic liquid created\nfrom tart apples. This\nalso lowers the target's\nSp. Def stat."

movedata MOVE_GRAV_APPLE, "Grav Apple"
    battleeffect MOVE_EFFECT_LOWER_DEFENSE_HIT // Damage portion handled in CalcBaseDamage.c.
    pss SPLIT_PHYSICAL
    basepower 80
    type TYPE_GRASS
    accuracy 100
    pp 10
    effectchance 100
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_GRAV_APPLE, "The user inflicts\ndamage by dropping\nan apple from above.\nThis also lowers the\ntarget's Defense stat."

movedata MOVE_SPIRIT_BREAK, "Spirit Break"
    battleeffect MOVE_EFFECT_LOWER_SP_ATK_HIT
    pss SPLIT_PHYSICAL
    basepower 75
    type (FAIRY_TYPE_IMPLEMENTED) ? TYPE_FAIRY : TYPE_NORMAL
    accuracy 100
    pp 15
    effectchance 100
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_CONTACT
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_SPIRIT_BREAK, "The user attacks with\nenough force to break\nthe target's spirit.\nThis also lowers the\ntarget's Sp. Atk stat."

movedata MOVE_STRANGE_STEAM, "Strange Steam"
    battleeffect MOVE_EFFECT_CONFUSE_HIT
    pss SPLIT_SPECIAL
    basepower 90
    type (FAIRY_TYPE_IMPLEMENTED) ? TYPE_FAIRY : TYPE_NORMAL
    accuracy 95
    pp 10
    effectchance 20
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_PROTECT | FLAG_MIRROR_MOVE
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_STRANGE_STEAM, "The user attacks the\ntarget by emitting\nsteam.\nThis may also\nconfuse the target."

movedata MOVE_LIFE_DEW, "Life Dew"
    battleeffect MOVE_EFFECT_LIFE_DEW
    pss SPLIT_STATUS
    basepower 0
    type TYPE_WATER
    accuracy 0
    pp 10
    effectchance 0
    target RANGE_USER_SIDE
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_LIFE_DEW, "The user scatters\nmysterious water around\nand restores the HP of\nitself and its allies\ncurrently in battle."

movedata MOVE_OBSTRUCT, "Obstruct"
    battleeffect MOVE_EFFECT_PROTECT
    pss SPLIT_STATUS
    basepower 0
    type TYPE_DARK
    accuracy 100
    pp 10
    effectchance 0
    target RANGE_USER
    priority 4
    flags 0
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_OBSTRUCT, "The user protects itself\nfrom damage while\nharshly lowering the\nDefense of any attacker\nthat makes contact."

movedata MOVE_FALSE_SURRENDER, "False Surrender"
    battleeffect MOVE_EFFECT_BYPASS_ACCURACY
    pss SPLIT_PHYSICAL
    basepower 80
    type TYPE_DARK
    accuracy 0
    pp 10
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_CONTACT
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_FALSE_SURRENDER, "The user pretends to\nbow its head, but then\nit stabs the target\nwith its hair. This\nattack never misses."

movedata MOVE_METEOR_ASSAULT, "Meteor Assault"
    battleeffect MOVE_EFFECT_RECHARGE_AFTER
    pss SPLIT_PHYSICAL
    basepower 150
    type TYPE_FIGHTING
    accuracy 100
    pp 5
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_PROTECT | FLAG_MIRROR_MOVE
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_METEOR_ASSAULT, "The user attacks\nwildly with its thick\nleek.\nThe user can't move\non the next turn."

movedata MOVE_ETERNABEAM, "Eternabeam"
    battleeffect MOVE_EFFECT_RECHARGE_AFTER
    pss SPLIT_SPECIAL
    basepower 160
    type TYPE_DRAGON
    accuracy 90
    pp 5
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags  FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_UNUSABLE_IN_GEN_9
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_ETERNABEAM, "This is Eternatus's\nmost powerful attack\nin its original form.\nThe user can't move\non the next turn."

movedata MOVE_STEEL_BEAM, "Steel Beam"
    battleeffect MOVE_EFFECT_HIT
    pss SPLIT_SPECIAL
    basepower 140
    type TYPE_STEEL
    accuracy 95
    pp 5
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_UNUSABLE_UNIMPLEMENTED
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_STEEL_BEAM, "The user fires a beam\nof steel that it\ncollected from its\nentire body. This also\ndamages the user."

movedata MOVE_EXPANDING_FORCE, "Expanding Force"
    battleeffect MOVE_EFFECT_HIT // Damage portion handled in CalcBaseDamage.c.
    pss SPLIT_SPECIAL
    basepower 80
    type TYPE_PSYCHIC
    accuracy 100
    pp 10
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_EXPANDING_FORCE, "The user attacks with\nits psychic power. This\nmove's power goes up and\ndamages all opponents on\nPsychic Terrain."

movedata MOVE_STEEL_ROLLER, "Steel Roller"
    battleeffect MOVE_EFFECT_END_TERRAIN
    pss SPLIT_PHYSICAL
    basepower 130
    type TYPE_STEEL
    accuracy 100
    pp 5
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_CONTACT
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_STEEL_ROLLER, "The user attacks while\ndestroying the terrain.\nThis move fails if the\nground hasn't turned\ninto a terrain."

movedata MOVE_SCALE_SHOT, "Scale Shot"
    battleeffect MOVE_EFFECT_MULTI_HIT // handled in endMove.c
    pss SPLIT_PHYSICAL
    basepower 25
    type TYPE_DRAGON
    accuracy 90
    pp 20
    effectchance 100
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_PROTECT | FLAG_MIRROR_MOVE
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_SCALE_SHOT, "The user attacks by\nshooting scales two to\nfive times in a row.\nThis raises Speed\nbut lowers Defense."

movedata MOVE_METEOR_BEAM, "Meteor Beam"
    battleeffect MOVE_EFFECT_CHARGE_TURN_SP_ATK_UP
    pss SPLIT_SPECIAL
    basepower 120
    type TYPE_ROCK
    accuracy 90
    pp 10
    effectchance 100
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_METEOR_BEAM, "The user gathers\nenergy from space to\nraise its Sp. Atk on\nthe first turn, then\nattacks on the next."

movedata MOVE_SHELL_SIDE_ARM, "Shell Side Arm"
    battleeffect MOVE_EFFECT_HIT
    pss SPLIT_SPECIAL
    basepower 90
    type TYPE_POISON
    accuracy 100
    pp 10
    effectchance 20
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_UNUSABLE_UNIMPLEMENTED
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_SHELL_SIDE_ARM, "This move is either\nphysical or special,\nwhichever will inflict\nmore damage. This may\nalso poison the target."

movedata MOVE_MISTY_EXPLOSION, "Misty Explosion"
    battleeffect MOVE_EFFECT_HALVE_DEFENSE // Damage portion handled in CalcBaseDamage.c.
    pss SPLIT_SPECIAL
    basepower 100
    type (FAIRY_TYPE_IMPLEMENTED) ? TYPE_FAIRY : TYPE_NORMAL
    accuracy 100
    pp 5
    effectchance 0
    target RANGE_ALL_ADJACENT
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_MISTY_EXPLOSION, "The user attacks\neverything around it\nand faints. This move's\npower is boosted on\nMisty Terrain."

movedata MOVE_GRASSY_GLIDE, "Grassy Glide"
    battleeffect MOVE_EFFECT_HIT // Priority handled in other_battle_calculators.c.
    pss SPLIT_PHYSICAL
    basepower 55
    type TYPE_GRASS
    accuracy 100
    pp 20
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_CONTACT
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_GRASSY_GLIDE, "Gliding on the ground,\nthe user attacks the\ntarget. This move\nalways goes first on\nGrassy Terrain."

movedata MOVE_RISING_VOLTAGE, "Rising Voltage"
    battleeffect MOVE_EFFECT_HIT // Damage portion handled in CalcBaseDamage.c.
    pss SPLIT_SPECIAL
    basepower 70
    type TYPE_ELECTRIC
    accuracy 100
    pp 20
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_RISING_VOLTAGE, "The user attacks with\nelectricity rising from\nthe ground. Its power is\ndoubled if the target is\non Electric Terrain."

movedata MOVE_TERRAIN_PULSE, "Terrain Pulse"
    battleeffect MOVE_EFFECT_HIT
    pss SPLIT_SPECIAL
    basepower 50
    type TYPE_NORMAL
    accuracy 100
    pp 10
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_TERRAIN_PULSE, "The user utilizes the\nenergy of the terrain.\nThis move’s type and\npower change depending\non the current terrain."

movedata MOVE_SKITTER_SMACK, "Skitter Smack"
    battleeffect MOVE_EFFECT_LOWER_SP_ATK_HIT
    pss SPLIT_PHYSICAL
    basepower 70
    type TYPE_BUG
    accuracy 90
    pp 10
    effectchance 100
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_CONTACT
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_SKITTER_SMACK, "The user skitters\nbehind the target to\nattack.\nThis also lowers the\ntarget's Sp. Atk stat."

movedatalongname MOVE_BURNING_JEALOUSY, "BurningJealousy", "Burning Jealousy"
    battleeffect MOVE_EFFECT_BURN_HIT
    pss SPLIT_SPECIAL
    basepower 70
    type TYPE_FIRE
    accuracy 100
    pp 5
    effectchance 100
    target RANGE_ADJACENT_OPPONENTS
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_UNUSABLE_UNIMPLEMENTED
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_BURNING_JEALOUSY, "The user attacks with\nenergy from jealousy.\nThis burns all opposing\nPokémon that have had\ntheir stats boosted."

movedata MOVE_LASH_OUT, "Lash Out"
    battleeffect MOVE_EFFECT_HIT //damage portion handled in CalcBaseDamage.c.
    pss SPLIT_PHYSICAL
    basepower 75
    type TYPE_DARK
    accuracy 100
    pp 5
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_CONTACT
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_LASH_OUT, "The user vents its\nfrustration. Its power is\ndoubled if the user's\nstats were lowered\nduring this turn."

movedata MOVE_POLTERGEIST, "Poltergeist"
    battleeffect MOVE_EFFECT_POLTERGEIST
    pss SPLIT_PHYSICAL
    basepower 110
    type TYPE_GHOST
    accuracy 90
    pp 5
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_PROTECT | FLAG_MIRROR_MOVE
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_POLTERGEIST, "The user attacks by\ncontrolling the\ntarget's item. This\nmove fails if the foe\nisn't holding an item."

movedata MOVE_CORROSIVE_GAS, "Corrosive Gas"
    battleeffect MOVE_EFFECT_HIT
    pss SPLIT_STATUS
    basepower 0
    type TYPE_POISON
    accuracy 100
    pp 40
    effectchance 0
    target RANGE_ALL_ADJACENT
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT | FLAG_UNUSABLE_UNIMPLEMENTED
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_CORROSIVE_GAS, "The user surrounds\neverything around it\nwith highly acidic gas\nand melts away items\nheld by other Pokémon."

movedata MOVE_COACHING, "Coaching"
    battleeffect MOVE_EFFECT_COACHING
    pss SPLIT_STATUS
    basepower 0
    type TYPE_FIGHTING
    accuracy 0
    pp 10
    effectchance 0
    target RANGE_ALLY
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_MAGIC_COAT
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_COACHING, "The user properly\ncoaches its ally\nPokémon, boosting\ntheir Attack and\nDefense stats."

movedata MOVE_FLIP_TURN, "Flip Turn"
    battleeffect MOVE_EFFECT_SWITCH_HIT
    pss SPLIT_PHYSICAL
    basepower 60
    type TYPE_WATER
    accuracy 100
    pp 20
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_CONTACT
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_FLIP_TURN, "After making its\nattack, the user\nrushes back to switch\nplaces with a party\nPokémon in waiting."

movedata MOVE_TRIPLE_AXEL, "Triple Axel"
    battleeffect MOVE_EFFECT_HIT_THREE_TIMES_INCREMENT_BASE_POWER_20
    pss SPLIT_PHYSICAL
    basepower 20
    type TYPE_ICE
    accuracy 90
    pp 10
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_CONTACT
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_TRIPLE_AXEL, "A consecutive\nthree-kick attack\nthat becomes more\npowerful with each\nsuccessful hit."

movedata MOVE_DUAL_WINGBEAT, "Dual Wingbeat"
    battleeffect MOVE_EFFECT_HIT_TWICE
    pss SPLIT_PHYSICAL
    basepower 40
    type TYPE_FLYING
    accuracy 90
    pp 10
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_CONTACT
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_DUAL_WINGBEAT, "The user slams the\ntarget with its wings\nto inflict damage.\nThe target is hit\ntwice in a row."

movedata MOVE_SCORCHING_SANDS, "Scorching Sands"
    battleeffect MOVE_EFFECT_BURN_HIT
    pss SPLIT_SPECIAL
    basepower 70
    type TYPE_GROUND
    accuracy 100
    pp 10
    effectchance 30
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_PROTECT | FLAG_MIRROR_MOVE
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_SCORCHING_SANDS, "The user throws\nscorching sand at\nthe target to attack.\nThe target may also\nbe left with a burn."

movedata MOVE_JUNGLE_HEALING, "Jungle Healing"
    battleeffect MOVE_EFFECT_HIT
    pss SPLIT_STATUS
    basepower 0
    type TYPE_GRASS
    accuracy 0
    pp 10
    effectchance 0
    target RANGE_USER_SIDE
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT | FLAG_UNUSABLE_UNIMPLEMENTED
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_JUNGLE_HEALING, "The user restores HP and\ncures status conditions\nfor itself and its ally\nPokémon currently in the\nbattle."

movedata MOVE_WICKED_BLOW, "Wicked Blow"
    battleeffect MOVE_EFFECT_ALWAYS_CRITICAL
    pss SPLIT_PHYSICAL
    basepower 80
    type TYPE_DARK
    accuracy 100
    pp 5
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_CONTACT
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_WICKED_BLOW, "The user strikes\nthe target with a\nfierce blow.\nThis move always\nlands a critical hit."

movedata MOVE_SURGING_STRIKES, "Surging Strikes"
    battleeffect MOVE_EFFECT_HIT_THREE_TIMES_ALWAYS_CRITICAL
    pss SPLIT_PHYSICAL
    basepower 25
    type TYPE_WATER
    accuracy 100
    pp 5
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_CONTACT
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_SURGING_STRIKES, "The user strikes the\ntarget with a flowing\nmotion three times in\na row. This move always\nlands a critical hit."

movedata MOVE_THUNDER_CAGE, "Thunder Cage"
    battleeffect MOVE_EFFECT_HIT
    pss SPLIT_SPECIAL
    basepower 80
    type TYPE_ELECTRIC
    accuracy 90
    pp 15
    effectchance 100
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_UNUSABLE_UNIMPLEMENTED
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_THUNDER_CAGE, "The user traps the\ntarget inside a cage of\nsparking electricity\nthat inflicts damage\nfor four to five turns."

movedata MOVE_DRAGON_ENERGY, "Dragon Energy"
    battleeffect MOVE_EFFECT_DECREASE_POWER_WITH_LESS_USER_HP
    pss SPLIT_SPECIAL
    basepower 150
    type TYPE_DRAGON
    accuracy 100
    pp 5
    effectchance 0
    target RANGE_ADJACENT_OPPONENTS
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_DRAGON_ENERGY, "The user converts its\nlife-force into power.\nThe lower the user's\nHP, the lower the\nmove's power."

movedata MOVE_FREEZING_GLARE, "Freezing Glare"
    battleeffect MOVE_EFFECT_FREEZE_HIT
    pss SPLIT_SPECIAL
    basepower 90
    type TYPE_PSYCHIC
    accuracy 100
    pp 10
    effectchance 10
    target RANGE_SINGLE_TARGET
    priority 0
    flags  FLAG_PROTECT | FLAG_MIRROR_MOVE
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_FREEZING_GLARE, "The user shoots its\npsychic power from\nits eyes to attack.\nThis may also leave\nthe target frozen."

movedata MOVE_FIERY_WRATH, "Fiery Wrath"
    battleeffect MOVE_EFFECT_FLINCH_HIT
    pss SPLIT_SPECIAL
    basepower 90
    type TYPE_DARK
    accuracy 100
    pp 10
    effectchance 20
    target RANGE_ADJACENT_OPPONENTS
    priority 0
    flags FLAG_PROTECT | FLAG_MIRROR_MOVE
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_FIERY_WRATH, "The user transforms its\nwrath into a fire-like\naura to attack. This may\nalso make opposing\nPokémon flinch."

movedata MOVE_THUNDEROUS_KICK, "Thunderous Kick"
    battleeffect MOVE_EFFECT_LOWER_DEFENSE_HIT
    pss SPLIT_PHYSICAL
    basepower 90
    type TYPE_FIGHTING
    accuracy 100
    pp 10
    effectchance 100
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_PROTECT | FLAG_MIRROR_MOVE
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_THUNDEROUS_KICK, "With lightning-like\nmovement, the user\ndelivers a kick. This\nalso lowers the\ntarget's Defense stat."

movedata MOVE_GLACIAL_LANCE, "Glacial Lance"
    battleeffect MOVE_EFFECT_HIT
    pss SPLIT_PHYSICAL
    basepower 130
    type TYPE_ICE
    accuracy 100
    pp 5
    effectchance 0
    target RANGE_ADJACENT_OPPONENTS
    priority 0
    flags  FLAG_PROTECT | FLAG_MIRROR_MOVE
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_GLACIAL_LANCE, "The user attacks by\nhurling a\nblizzard-cloaked\nicicle lance at\nopposing Pokémon."

movedata MOVE_ASTRAL_BARRAGE, "Astral Barrage"
    battleeffect MOVE_EFFECT_HIT
    pss SPLIT_SPECIAL
    basepower 120
    type TYPE_GHOST
    accuracy 100
    pp 5
    effectchance 0
    target RANGE_ADJACENT_OPPONENTS
    priority 0
    flags  FLAG_PROTECT | FLAG_MIRROR_MOVE
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_ASTRAL_BARRAGE, "The user attacks by\nsending a frightful\namount of small\nghosts at opposing\nPokémon."

movedata MOVE_EERIE_SPELL, "Eerie Spell"
    battleeffect MOVE_EFFECT_HIT
    pss SPLIT_SPECIAL
    basepower 80
    type TYPE_PSYCHIC
    accuracy 100
    pp 5
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_UNUSABLE_UNIMPLEMENTED
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_EERIE_SPELL, "The user attacks with\nits tremendous psychic\npower. This also drains\n3 PP from the move last\nused by the target."

// Moves introduced in Generation VIII (LA):
movedata MOVE_DIRE_CLAW, "Dire Claw"
    battleeffect MOVE_EFFECT_SLEEP_POISON_PARALYZE_HIT
    pss SPLIT_PHYSICAL
    basepower 80
    type TYPE_POISON
    accuracy 100
    pp 15
    effectchance 50
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_CONTACT
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_DIRE_CLAW, "The user lashes out\nat the target with\nruinous claws. May\nalso poison, paralyze,\nor sleep the target."

movedata MOVE_PSYSHIELD_BASH, "Psyshield Bash"
    battleeffect MOVE_EFFECT_RAISE_DEF_HIT
    pss SPLIT_PHYSICAL
    basepower 70
    type TYPE_PSYCHIC
    accuracy 90
    pp 10
    effectchance 100
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_CONTACT
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_PSYSHIELD_BASH, "Cloaked in psychic\nenergy, the user slams\ninto the target. This\nalso boosts the user’s\nDefense stat."

movedata MOVE_POWER_SHIFT, "Power Shift"
    battleeffect MOVE_EFFECT_SWAP_ATK_DEF
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy 0
    pp 10
    effectchance 0
    target RANGE_USER
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_POWER_SHIFT, "The user swaps its\nAttack and Defense\nstats."

movedata MOVE_STONE_AXE, "Stone Axe"
    battleeffect MOVE_EFFECT_STEALTH_ROCK_HIT
    pss SPLIT_PHYSICAL
    basepower 65
    type TYPE_ROCK
    accuracy 90
    pp 15
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_CONTACT
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_STONE_AXE, "The user swings its\nstone axes at the\ntarget. Splinters left\nbehind by this attack\nfloat around the target."

movedatalongname MOVE_SPRINGTIDE_STORM, "SpringtideStorm", "Springtide Storm"
    battleeffect MOVE_EFFECT_LOWER_ATTACK_HIT
    pss SPLIT_SPECIAL
    basepower 100
    type (FAIRY_TYPE_IMPLEMENTED) ? TYPE_FAIRY : TYPE_NORMAL
    accuracy 80
    pp 5
    effectchance 30
    target RANGE_ADJACENT_OPPONENTS
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_SPRINGTIDE_STORM, "The user wraps foes in\nfierce winds brimming\nwith love and hate.\nThis may also lower\ntheir Attack stats."

movedata MOVE_MYSTICAL_POWER, "Mystical Power"
    battleeffect MOVE_EFFECT_RAISE_SP_ATK_HIT
    pss SPLIT_SPECIAL
    basepower 70
    type TYPE_PSYCHIC
    accuracy 90
    pp 10
    effectchance 100
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_MYSTICAL_POWER, "The user attacks by\nemitting a mysterious\npower.\nThis also boosts the\nuser’s Sp. Atk stat."

movedata MOVE_RAGING_FURY, "Raging Fury"
    battleeffect MOVE_EFFECT_CONTINUE_AND_CONFUSE_SELF
    pss SPLIT_PHYSICAL
    basepower 120
    type TYPE_FIRE
    accuracy 100
    pp 10
    effectchance 0
    target RANGE_RANDOM_OPPONENT
    priority 0
    flags FLAG_PROTECT | FLAG_MIRROR_MOVE
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_RAGING_FURY, "The user rampages\naround spewing flames\nfor two to three turns.\nThe user then becomes\nconfused."

movedata MOVE_WAVE_CRASH, "Wave Crash"
    battleeffect MOVE_EFFECT_RECOIL_THIRD
    pss SPLIT_PHYSICAL
    basepower 120
    type TYPE_WATER
    accuracy 100
    pp 10
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_CONTACT
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_WAVE_CRASH, "The user shrouds\nitself in water and\nslams into the target.\nThis also damages the\nuser quite a lot."

movedata MOVE_CHLOROBLAST, "Chloroblast"
    battleeffect MOVE_EFFECT_HIT
    pss SPLIT_SPECIAL
    basepower 150
    type TYPE_GRASS
    accuracy 95
    pp 5
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_UNUSABLE_UNIMPLEMENTED
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_CHLOROBLAST, "The user launches its\namassed chlorophyll\nto inflict damage on\nthe target. This also\ndamages the user."

movedata MOVE_MOUNTAIN_GALE, "Mountain Gale"
    battleeffect MOVE_EFFECT_FLINCH_HIT
    pss SPLIT_PHYSICAL
    basepower 100
    type TYPE_ICE
    accuracy 85
    pp 10
    effectchance 30
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_PROTECT | FLAG_MIRROR_MOVE
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_MOUNTAIN_GALE, "The user hurls giant\nchunks of ice at the\ntarget to inflict\ndamage. This may also\nmake the target flinch."

movedata MOVE_VICTORY_DANCE, "Victory Dance"
    battleeffect MOVE_EFFECT_ATK_DEF_SPEED_UP
    pss SPLIT_STATUS
    basepower 0
    type TYPE_FIGHTING
    accuracy 0
    pp 10
    effectchance 0
    target RANGE_USER
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_VICTORY_DANCE, "The user performs an\nintense dance to usher\nin victory, boosting\nits Attack, Defense,\nand Speed stats."

movedata MOVE_HEADLONG_RUSH, "Headlong Rush"
    battleeffect MOVE_EFFECT_USER_DEF_SP_DEF_DOWN_HIT
    pss SPLIT_PHYSICAL
    basepower 120
    type TYPE_GROUND
    accuracy 100
    pp 5
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_CONTACT
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_HEADLONG_RUSH, "The user smashes into\nthe target in a\nfull-body tackle. This\nalso lowers the user’s\nDefense and Sp. Def."

movedata MOVE_BARB_BARRAGE, "Barb Barrage"
    battleeffect MOVE_EFFECT_POISON_HIT_DOUBLE_POWER_ON_POISONED
    pss SPLIT_PHYSICAL
    basepower 60
    type TYPE_POISON
    accuracy 100
    pp 10
    effectchance 50
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_PROTECT | FLAG_MIRROR_MOVE
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_BARB_BARRAGE, "The user launches barbs\nwhich may poison the\ntarget. Its power is\ndoubled if the target\nis already poisoned."

movedata MOVE_ESPER_WING, "Esper Wing"
    battleeffect MOVE_EFFECT_HIGH_CRITICAL_RAISE_SPEED_HIT
    pss SPLIT_SPECIAL
    basepower 80
    type TYPE_PSYCHIC
    accuracy 100
    pp 10
    effectchance 100
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_PROTECT | FLAG_MIRROR_MOVE
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_ESPER_WING, "The user slashes with\naura-enriched wings and\nboosts its Speed. This\nmove has a heightened\ncritical hit chance."

movedata MOVE_BITTER_MALICE, "Bitter Malice"
    battleeffect MOVE_EFFECT_LOWER_ATTACK_HIT
    pss SPLIT_SPECIAL
    basepower 75
    type TYPE_GHOST
    accuracy 100
    pp 10
    effectchance 100
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_PROTECT | FLAG_MIRROR_MOVE
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_BITTER_MALICE, "The user attacks the\ntarget with spine-\nchilling resentment.\nThis also lowers the\ntarget’s Attack stat."

movedata MOVE_SHELTER, "Shelter"
    battleeffect MOVE_EFFECT_DEF_UP_2
    pss SPLIT_STATUS
    basepower 0
    type TYPE_STEEL
    accuracy 0
    pp 10
    effectchance 0
    target RANGE_USER
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_SHELTER, "The user makes its\nskin as hard as an\niron shield,\nsharply boosting\nits Defense stat."

movedata MOVE_TRIPLE_ARROWS, "Triple Arrows"
    battleeffect MOVE_EFFECT_HIT
    pss SPLIT_PHYSICAL
    basepower 90
    type TYPE_FIGHTING
    accuracy 100
    pp 10
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_UNUSABLE_UNIMPLEMENTED
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_TRIPLE_ARROWS, "The user kicks and fires\nthree arrows. This has a\nhigh critical hit chance\nand may lower Defense or\nmake the target flinch."

movedata MOVE_INFERNAL_PARADE, "Infernal Parade"
    battleeffect MOVE_EFFECT_BURN_HIT_DOUBLE_POWER_ON_STATUS
    pss SPLIT_SPECIAL
    basepower 60
    type TYPE_GHOST
    accuracy 100
    pp 15
    effectchance 30
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_INFERNAL_PARADE, "The user summons myriad\nfireballs which may burn\nthe target. Its power is\ndoubled if the target\nhas a status condition."

movedata MOVE_CEASELESS_EDGE, "Ceaseless Edge"
    battleeffect MOVE_EFFECT_SET_SPIKES_HIT
    pss SPLIT_PHYSICAL
    basepower 65
    type TYPE_DARK
    accuracy 90
    pp 15
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_CONTACT
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_CEASELESS_EDGE, "The user slashes its\nshell blade at the\ntarget. Shell\nsplinters left behind\nremain as spikes."

movedatalongname MOVE_BLEAKWIND_STORM, "BleakwindStorm","Bleakwind Storm"
    battleeffect MOVE_EFFECT_BLEAKWIND_STORM // Accuracy in rain handled in other_battle_calculators.c.
    pss SPLIT_SPECIAL
    basepower 100
    type TYPE_FLYING
    accuracy 80
    pp 10
    effectchance 30
    target RANGE_ADJACENT_OPPONENTS
    priority 0
    flags FLAG_PROTECT | FLAG_MIRROR_MOVE
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_BLEAKWIND_STORM, "The user attacks with\nsavagely cold winds.\nThis may also lower\nthe Speed stats of\nopposing Pokémon."

movedatalongname MOVE_WILDBOLT_STORM, "WildboltStorm","Wildbolt Storm"
    battleeffect MOVE_EFFECT_WILDBOLT_STORM // Accuracy in rain handled in other_battle_calculators.c.
    pss SPLIT_SPECIAL
    basepower 100
    type TYPE_ELECTRIC
    accuracy 80
    pp 10
    effectchance 30
    target RANGE_ADJACENT_OPPONENTS
    priority 0
    flags FLAG_PROTECT | FLAG_MIRROR_MOVE
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_WILDBOLT_STORM, "The user savagely\nattacks with\nlightning and wind.\nIt may also leave\nopponents paralyzed."

movedatalongname MOVE_SANDSEAR_STORM, "SandsearStorm","Sandsear Storm"
    battleeffect MOVE_EFFECT_SANDSEAR_STORM // Accuracy in rain handled in other_battle_calculators.c.
    pss SPLIT_SPECIAL
    basepower 100
    type TYPE_GROUND
    accuracy 80
    pp 10
    effectchance 30
    target RANGE_ADJACENT_OPPONENTS
    priority 0
    flags FLAG_PROTECT | FLAG_MIRROR_MOVE
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_SANDSEAR_STORM, "The user wraps opposing\nPokémon in fierce winds\nand searingly hot sand.\nThis may also leave them\nwith a burn."

movedata MOVE_LUNAR_BLESSING, "Lunar Blessing"
    battleeffect MOVE_EFFECT_HIT
    pss SPLIT_STATUS
    basepower 0
    type TYPE_PSYCHIC
    accuracy 0
    pp 5
    effectchance 0
    target RANGE_ALLY
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT | FLAG_UNUSABLE_UNIMPLEMENTED
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_LUNAR_BLESSING, "The user receives a\nblessing from the moon,\nrestoring HP and curing\nstatus conditions for\nitself and its allies."

movedata MOVE_TAKE_HEART, "Take Heart"
    battleeffect MOVE_EFFECT_TAKE_HEART
    pss SPLIT_STATUS
    basepower 0
    type TYPE_PSYCHIC
    accuracy 0
    pp 10
    effectchance 0
    target RANGE_ALLY
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_TAKE_HEART, "The user lifts its\nspirits, curing its\nown status conditions\nand boosting its Sp.\nAtk and Sp. Def stats."

// Moves introduced in Generation IX:
movedata MOVE_TERA_BLAST, "Tera Blast"
    battleeffect MOVE_EFFECT_HIT
    pss SPLIT_SPECIAL
    basepower 80
    type TYPE_NORMAL
    accuracy 100
    pp 10
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_UNUSABLE_UNIMPLEMENTED
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_TERA_BLAST, "If Terastallized, the\nuser unleashes energy of\nits Tera Type. It can\nuse Attack or Sp. Atk-\nwhichever is higher."

movedata MOVE_SILK_TRAP, "Silk Trap"
    battleeffect MOVE_EFFECT_PROTECT
    pss SPLIT_STATUS
    basepower 0
    type TYPE_BUG
    accuracy 0
    pp 10
    effectchance 0
    target RANGE_USER
    priority 4
    flags 0
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_SILK_TRAP, "The user spins a silken\ntrap, protecting itself\nwhile lowering the Speed\nof any attacker that\nmakes direct contact."

movedata MOVE_AXE_KICK, "Axe Kick"
    battleeffect MOVE_EFFECT_CONFUSE_HIT_CRASH_ON_MISS
    pss SPLIT_PHYSICAL
    basepower 120
    type TYPE_FIGHTING
    accuracy 90
    pp 10
    effectchance 30
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_CONTACT
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_AXE_KICK, "The user slams its heel\ndown upon the target,\nwhich may also confuse\nthem. If it misses, the\nuser is hurt instead."

movedata MOVE_LAST_RESPECTS, "Last Respects"
    battleeffect MOVE_EFFECT_HIT
    pss SPLIT_PHYSICAL
    basepower 50
    type TYPE_GHOST
    accuracy 100
    pp 10
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_UNUSABLE_UNIMPLEMENTED
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_LAST_RESPECTS, "The user attacks to\navenge its allies. The\nmore defeated allies\nin the user's party,\nthe greater its power."

movedata MOVE_LUMINA_CRASH, "Lumina Crash"
    battleeffect MOVE_EFFECT_LOWER_SP_DEF_2_HIT
    pss SPLIT_SPECIAL
    basepower 80
    type TYPE_PSYCHIC
    accuracy 100
    pp 10
    effectchance 100
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_LUMINA_CRASH, "The user unleashes a\npeculiar light that even\naffects the mind. This\nalso harshly lowers the\ntarget's Sp. Def stat."

movedata MOVE_ORDER_UP, "Order Up"
    battleeffect MOVE_EFFECT_HIT
    pss SPLIT_PHYSICAL
    basepower 80
    type TYPE_DRAGON
    accuracy 100
    pp 10
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_UNUSABLE_UNIMPLEMENTED
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_ORDER_UP, "The user attacks with\nelegant poise. If it has\na Tatsugiri in its\nmouth, this move boosts\none of the user's stats."

movedata MOVE_JET_PUNCH, "Jet Punch"
    battleeffect MOVE_EFFECT_PRIORITY_1
    pss SPLIT_PHYSICAL
    basepower 60
    type TYPE_WATER
    accuracy 100
    pp 15
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 1
    flags FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_CONTACT
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_JET_PUNCH, "The user summons a\ntorrent around its\nfist and punches at\nblinding speed. It is\nsure to strike first."

movedata MOVE_SPICY_EXTRACT, "Spicy Extract"
    battleeffect MOVE_EFFECT_SPICY_EXTRACT
    pss SPLIT_STATUS
    basepower 0
    type TYPE_GRASS
    accuracy 0
    pp 15
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_SPICY_EXTRACT, "The user's incredibly\nspicy extract sharply\nboosts the target's\nAttack stat and harshly\nlowers their Defense."

movedata MOVE_SPIN_OUT, "Spin Out"
    battleeffect MOVE_EFFECT_USER_SPEED_DOWN_2_HIT
    pss SPLIT_PHYSICAL
    basepower 100
    type TYPE_STEEL
    accuracy 100
    pp 5
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_CONTACT
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_SPIN_OUT, "The user spins furiously\nby straining its legs,\ninflicting damage while\nharshly lowering the\nuser's Speed stat."

movedata MOVE_POPULATION_BOMB, "Population Bomb"
    battleeffect MOVE_EFFECT_UP_TO_10_HITS
    pss SPLIT_PHYSICAL
    basepower 20
    type TYPE_NORMAL
    accuracy 90
    pp 10
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_CONTACT
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_POPULATION_BOMB, "The user’s fellows\ngather in droves to\nperform a combo attack\nthat hits the target one\nto ten times in a row."

movedata MOVE_ICE_SPINNER, "Ice Spinner"
    battleeffect MOVE_EFFECT_END_TERRAIN
    pss SPLIT_PHYSICAL
    basepower 80
    type TYPE_ICE
    accuracy 100
    pp 15
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_CONTACT
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_ICE_SPINNER, "The user covers its\nfeet in ice and twirls\naround, slamming into\nthe target. It also\ndestroys the terrain."

movedata MOVE_GLAIVE_RUSH, "Glaive Rush"
    battleeffect MOVE_EFFECT_GLAIVE_RUSH
    pss SPLIT_PHYSICAL
    basepower 120
    type TYPE_DRAGON
    accuracy 100
    pp 5
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_CONTACT
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_GLAIVE_RUSH, "The user charges\nrecklessly. Attacks on\nthe user on the next\nturn always hit and will\ninflict double damage."

movedatalongname MOVE_REVIVAL_BLESSING, "RevivalBlessing", "Revival Blessing"
    battleeffect MOVE_EFFECT_HIT
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy 0
    pp 1
    effectchance 0
    target RANGE_USER
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT | FLAG_UNUSABLE_UNIMPLEMENTED
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_REVIVAL_BLESSING, "The user's loving\nblessing revives a party\nPokémon that has fainted\nand restores half that\nPokémon's max HP."

movedata MOVE_SALT_CURE, "Salt Cure"
    battleeffect MOVE_EFFECT_HIT
    pss SPLIT_PHYSICAL
    basepower 40
    type TYPE_ROCK
    accuracy 100
    pp 15
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_UNUSABLE_UNIMPLEMENTED
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_SALT_CURE, "The user salt cures the\ntarget, dealing damage\nevery turn. Steel and\nWater types are strongly\naffected by this move."

movedata MOVE_TRIPLE_DIVE, "Triple Dive"
    battleeffect MOVE_EFFECT_HIT_THREE_TIMES
    pss SPLIT_PHYSICAL
    basepower 30
    type TYPE_WATER
    accuracy 95
    pp 10
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_CONTACT
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_TRIPLE_DIVE, "The user performs a\nperfectly timed triple\ndive, hitting the target\nwith splashes of water\nthree times in a row."

movedata MOVE_MORTAL_SPIN, "Mortal Spin"
    battleeffect MOVE_EFFECT_MORTAL_SPIN
    pss SPLIT_PHYSICAL
    basepower 30
    type TYPE_POISON
    accuracy 100
    pp 15
    effectchance 100
    target RANGE_ADJACENT_OPPONENTS
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_CONTACT
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_MORTAL_SPIN, "A spin attack that can\neliminate such moves as\nBind, Wrap and Leech\nSeed. It also poisons\nopposing Pokémon."

movedata MOVE_DOODLE, "Doodle"
    battleeffect MOVE_EFFECT_HIT
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy 100
    pp 10
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT | FLAG_UNUSABLE_UNIMPLEMENTED
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_DOODLE, "The target's essence is\ncaptured in a sketch.\nThis makes the Abilities\nof the user and its ally\nmatch the target's."

movedata MOVE_FILLET_AWAY, "Fillet Away"
    battleeffect MOVE_EFFECT_ATK_SP_ATK_SPEED_UP_2_LOSE_HALF_MAX_HP
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy 0
    pp 10
    effectchance 0
    target RANGE_USER
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_FILLET_AWAY, "The user sharply\nboosts its Attack,\nSp. Atk, and Speed\nstats by using its\nown HP."

movedata MOVE_KOWTOW_CLEAVE, "Kowtow Cleave"
    battleeffect MOVE_EFFECT_BYPASS_ACCURACY
    pss SPLIT_PHYSICAL
    basepower 85
    type TYPE_DARK
    accuracy 0
    pp 10
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_CONTACT
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_KOWTOW_CLEAVE, "The user slashes at the\ntarget after kowtowing\nto make the target let\ndown its guard. This\nattack never misses."

movedata MOVE_FLOWER_TRICK, "Flower Trick"
    battleeffect MOVE_EFFECT_ALWAYS_CRITICAL
    pss SPLIT_PHYSICAL
    basepower 70
    type TYPE_GRASS
    accuracy 0
    pp 10
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_FLOWER_TRICK, "The user throws a rigged\nbouquet of flowers at\nthe target. This attack\nnever misses and always\nlands a critical hit."

movedata MOVE_TORCH_SONG, "Torch Song"
    battleeffect MOVE_EFFECT_RAISE_SP_ATK_HIT
    pss SPLIT_SPECIAL
    basepower 80
    type TYPE_FIRE
    accuracy 100
    pp 10
    effectchance 100
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_TORCH_SONG, "The user blows out\nraging flames as if\nsinging, scorching the\ntarget. This also boosts\nthe user's Sp. Atk stat."

movedata MOVE_AQUA_STEP, "Aqua Step"
    battleeffect MOVE_EFFECT_RAISE_SPEED_HIT
    pss SPLIT_PHYSICAL
    basepower 80
    type TYPE_WATER
    accuracy 100
    pp 10
    effectchance 100
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_CONTACT
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_AQUA_STEP, "The user toys with the\ntarget and attacks using\nlight and fluid dance\nsteps. This also boosts\nthe user's Speed stat."

movedata MOVE_RAGING_BULL, "Raging Bull"
    battleeffect MOVE_EFFECT_REMOVE_SCREENS // Typing portion handled in other_battle_calculators.c.
    pss SPLIT_PHYSICAL
    basepower 90
    type TYPE_NORMAL
    accuracy 100
    pp 10
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_CONTACT
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_RAGING_BULL, "The user performs a\ntackle like a raging\nbull. It can also break\nbarriers, such as Light\nScreen and Reflect."

movedata MOVE_MAKE_IT_RAIN, "Make It Rain"
    battleeffect MOVE_EFFECT_MAKE_IT_RAIN
    pss SPLIT_SPECIAL
    basepower 120
    type TYPE_STEEL
    accuracy 100
    pp 5
    effectchance 0
    target RANGE_ADJACENT_OPPONENTS
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_MAKE_IT_RAIN, "The user throws out a\nmass of coins. This also\nlowers the user's Sp.\nAtk stat. Money is\nearned after the battle."

movedata MOVE_PSYBLADE, "Psyblade"
    battleeffect MOVE_EFFECT_PSYBLADE
    pss SPLIT_PHYSICAL
    basepower 80
    type TYPE_PSYCHIC
    accuracy 100
    pp 15
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_CONTACT
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_PSYBLADE, "The user rends with an\nethereal blade. Its\npower is boosted by 50\npercent if the user is\non Electric Terrain."

movedata MOVE_HYDRO_STEAM, "Hydro Steam"
    battleeffect MOVE_EFFECT_HIT // Handled in CalcBaseDamage.c.
    pss SPLIT_SPECIAL
    basepower 80
    type TYPE_WATER
    accuracy 100
    pp 15
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_HYDRO_STEAM, "The user blasts out\nboiling-hot water. Its\npower is not lowered in\nharsh sunlight but\nrather boosted by 50%."

movedata MOVE_RUINATION, "Ruination"
    battleeffect MOVE_EFFECT_HALVE_HP
    pss SPLIT_SPECIAL
    basepower 1
    type TYPE_DARK
    accuracy 90
    pp 10
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_RUINATION, "The user summons a\nruinous disaster.\nThis cuts the\ntarget’s HP in half."

movedatalongname MOVE_COLLISION_COURSE, "ColisionCourse","Collision Course"
    battleeffect MOVE_EFFECT_HIT // Handled in battle_calc_damage.c.
    pss SPLIT_PHYSICAL
    basepower 100
    type TYPE_FIGHTING
    accuracy 100
    pp 5
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_PROTECT | FLAG_MIRROR_MOVE
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_COLLISION_COURSE, "The user causes a\nmassive prehistoric\nexplosion. This move's\npower is boosted more if\nit’s super effective."

movedata MOVE_ELECTRO_DRIFT, "Electro Drift"
    battleeffect MOVE_EFFECT_HIT // Handled in battle_calc_damage.c.
    pss SPLIT_SPECIAL
    basepower 100
    type TYPE_ELECTRIC
    accuracy 100
    pp 5
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_PROTECT | FLAG_MIRROR_MOVE
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_ELECTRO_DRIFT, "The user pierces its\ntarget with futuristic\nelectricity. This move's\npower is boosted more if\nit's supereffective."

movedata MOVE_SHED_TAIL, "Shed Tail"
    battleeffect MOVE_EFFECT_SHED_TAIL
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy 0
    pp 10
    effectchance 0
    target RANGE_USER
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_SHED_TAIL, "The user creates\na decoy using its own\nHP, then swaps places\nwith a party Pokémon\nin waiting."

movedatalongname MOVE_CHILLY_RECEPTION, "ChillyReception", "Chilly Reception"
    battleeffect MOVE_EFFECT_HIT
    pss SPLIT_STATUS
    basepower 0
    type TYPE_ICE
    accuracy 0
    pp 10
    effectchance 0
    target RANGE_FIELD
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT | FLAG_UNUSABLE_UNIMPLEMENTED
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_CHILLY_RECEPTION, "The user tells a\nchillingly bad joke\nbefore switching out.\nThis summons a snowstorm\nlasting five turns."

movedata MOVE_TIDY_UP, "Tidy Up"
    battleeffect MOVE_EFFECT_TIDY_UP
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy 0
    pp 10
    effectchance 0
    target RANGE_USER
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_TIDY_UP, "The user tidies up and\nremoves entry hazards\nand Substitutes. This\nalso boosts the user’s\nAttack and Speed stats."

movedata MOVE_SNOWSCAPE, "Snowscape"
    battleeffect MOVE_EFFECT_WEATHER_SNOW
    pss SPLIT_STATUS
    basepower 0
    type TYPE_ICE
    accuracy 0
    pp 10
    effectchance 0
    target RANGE_FIELD
    priority 0
    flags 0
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_SNOWSCAPE, "The user summons a\nsnowstorm lasting five\nturns. This boosts the\nDefense stats of Ice\ntypes."

movedata MOVE_POUNCE, "Pounce"
    battleeffect MOVE_EFFECT_LOWER_SPEED_HIT
    pss SPLIT_PHYSICAL
    basepower 50
    type TYPE_BUG
    accuracy 100
    pp 20
    effectchance 100
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_CONTACT
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_POUNCE, "The user attacks by\npouncing on the\ntarget.\nThis also lowers the\ntarget's Speed stat."

movedata MOVE_TRAILBLAZE, "Trailblaze"
    battleeffect MOVE_EFFECT_RAISE_SPEED_HIT
    pss SPLIT_PHYSICAL
    basepower 50
    type TYPE_GRASS
    accuracy 100
    pp 20
    effectchance 100
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_CONTACT
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_TRAILBLAZE, "The user attacks as if\nleaping out from tall\ngrass. The user's\nnimble footwork raises\nits Speed stat."

movedata MOVE_CHILLING_WATER, "Chilling Water"
    battleeffect MOVE_EFFECT_LOWER_ATTACK_HIT
    pss SPLIT_SPECIAL
    basepower 50
    type TYPE_WATER
    accuracy 100
    pp 20
    effectchance 100
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_PROTECT | FLAG_MIRROR_MOVE
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_CHILLING_WATER, "The user attacks the\ntarget by showering it\nwith cold water. This\nalso lowers the target's\nAttack stat."

movedata MOVE_HYPER_DRILL, "Hyper Drill"
    battleeffect MOVE_EFFECT_HIT
    pss SPLIT_PHYSICAL
    basepower 100
    type TYPE_NORMAL
    accuracy 100
    pp 5
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_CONTACT
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_HYPER_DRILL, "The user spins at high\nspeed to pierce the\ntarget. This attack can\nhit through a move such\nas Protect or Detect."

movedata MOVE_TWIN_BEAM, "Twin Beam"
    battleeffect MOVE_EFFECT_HIT_TWICE
    pss SPLIT_SPECIAL
    basepower 40
    type TYPE_PSYCHIC
    accuracy 100
    pp 10
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_PROTECT | FLAG_MIRROR_MOVE
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_TWIN_BEAM, "The user shoots\nmystical beams from its\neyes to inflict damage.\nThe target is hit twice\nin a row."

movedata MOVE_RAGE_FIST, "Rage Fist"
    battleeffect MOVE_EFFECT_HIT
    pss SPLIT_PHYSICAL
    basepower 50
    type TYPE_GHOST
    accuracy 100
    pp 10
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_CONTACT | FLAG_UNUSABLE_UNIMPLEMENTED
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_RAGE_FIST, "The user converts its\nrage into energy to\nattack. The more the\nuser has been attacked,\nthe greater the power."

movedata MOVE_ARMOR_CANNON, "Armor Cannon"
    battleeffect MOVE_EFFECT_USER_DEF_SP_DEF_DOWN_HIT
    pss SPLIT_SPECIAL
    basepower 120
    type TYPE_FIRE
    accuracy 100
    pp 5
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags  FLAG_PROTECT | FLAG_MIRROR_MOVE
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_ARMOR_CANNON, "The user shoots its own\narmor out as blazing\nprojectiles. It also\ncuts the user’s Defense\nand Sp. Def stats."

movedata MOVE_BITTER_BLADE, "Bitter Blade"
    battleeffect MOVE_EFFECT_RECOVER_HALF_DAMAGE_DEALT
    pss SPLIT_PHYSICAL
    basepower 90
    type TYPE_FIRE
    accuracy 100
    pp 10
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_CONTACT
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_BITTER_BLADE, "The user focuses its\nbitter feelings into a\nslash. The user's HP\nis restored by up to\nhalf the damage taken."

movedata MOVE_DOUBLE_SHOCK, "Double Shock"
    battleeffect MOVE_EFFECT_REMOVE_USER_ELECTRIC_TYPE_HIT
    pss SPLIT_PHYSICAL
    basepower 120
    type TYPE_ELECTRIC
    accuracy 100
    pp 5
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_CONTACT
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_DOUBLE_SHOCK, "The user discharges\nall the electricity\nfrom its body. After\nthis, the user loses\nthe Electric type."

movedata MOVE_GIGATON_HAMMER, "Gigaton Hammer"
    battleeffect MOVE_EFFECT_HIT
    pss SPLIT_PHYSICAL
    basepower 160
    type TYPE_STEEL
    accuracy 100
    pp 5
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_GIGATON_HAMMER, "The user swings its\nwhole body around to\nattack with its huge\nhammer. This move can't\nbe used twice in a row."

movedata MOVE_COMEUPPANCE, "Comeuppance"
    battleeffect MOVE_EFFECT_METAL_BURST
    pss SPLIT_PHYSICAL
    basepower 1
    type TYPE_DARK
    accuracy 100
    pp 10
    effectchance 0
    target RANGE_SINGLE_TARGET_SPECIAL
    priority 0
    flags FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_CONTACT
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_COMEUPPANCE, "The user retaliates\nagainst the foe that\nlast inflicted damage\non it with much\ngreater power."

movedata MOVE_AQUA_CUTTER, "Aqua Cutter"
    battleeffect MOVE_EFFECT_HIGH_CRITICAL
    pss SPLIT_PHYSICAL
    basepower 70
    type TYPE_WATER
    accuracy 100
    pp 20
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_PROTECT | FLAG_MIRROR_MOVE
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_AQUA_CUTTER, "The user expels\npressurized water to\ncut at the target like\na blade. It has a high\ncritical-hit ratio."

// The Torque moves are not normally used by players, so they lack internal descriptions.
// The given descriptions are sourced from PokeRogue with permission.
movedata MOVE_BLAZING_TORQUE, "Blazing Torque"
    battleeffect MOVE_EFFECT_BURN_HIT
    pss SPLIT_PHYSICAL
    basepower 80
    type TYPE_FIRE
    accuracy 100
    pp 10
    effectchance 30
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_BLAZING_TORQUE, "The user rams into the\ntarget with blazing\nenergy. This may also\nleave the target with\na burn."

movedata MOVE_WICKED_TORQUE, "Wicked Torque"
    battleeffect MOVE_EFFECT_SLEEP_HIT
    pss SPLIT_PHYSICAL
    basepower 80
    type TYPE_DARK
    accuracy 100
    pp 10
    effectchance 10
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_WICKED_TORQUE, "The user rams into the\ntarget with malicious\nintent. This may put\nthe target to sleep."

movedata MOVE_NOXIOUS_TORQUE, "Noxious Torque"
    battleeffect MOVE_EFFECT_POISON_HIT
    pss SPLIT_PHYSICAL
    basepower 100
    type TYPE_POISON
    accuracy 100
    pp 10
    effectchance 30
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_NOXIOUS_TORQUE, "The user rams into the\ntarget with a\npoisonous end. This\nmay also poison the\ntarget."

movedata MOVE_COMBAT_TORQUE, "Combat Torque"
    battleeffect MOVE_EFFECT_PARALYZE_HIT
    pss SPLIT_PHYSICAL
    basepower 100
    type TYPE_FIGHTING
    accuracy 100
    pp 10
    effectchance 30
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_COMBAT_TORQUE, "The user rams into the\ntarget with great\nforce. This may also\nleave the target with\nparalysis."

movedata MOVE_MAGICAL_TORQUE, "Magical Torque"
    battleeffect MOVE_EFFECT_CONFUSE_HIT
    pss SPLIT_PHYSICAL
    basepower 100
    type (FAIRY_TYPE_IMPLEMENTED) ? TYPE_FAIRY : TYPE_NORMAL
    accuracy 100
    pp 10
    effectchance 30
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_MAGICAL_TORQUE, "The user rams into the\ntarget with a fae-like\nforce. This may also\nconfuse the target."

movedata MOVE_BLOOD_MOON, "Blood Moon"
    battleeffect MOVE_EFFECT_HIT
    pss SPLIT_SPECIAL
    basepower 140
    type TYPE_NORMAL
    accuracy 100
    pp 5
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_BLOOD_MOON, "The user unleashes the\nfull brunt of its spirit\nfrom a full moon.\nThis move can't be used\ntwice in a row."

movedata MOVE_MATCHA_GOTCHA, "Matcha Gotcha"
    battleeffect MOVE_EFFECT_RECOVER_HALF_DAMAGE_DEALT_BURN_HIT
    pss SPLIT_SPECIAL
    basepower 80
    type TYPE_GRASS
    accuracy 90
    pp 15
    effectchance 20
    target RANGE_ADJACENT_OPPONENTS
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_MATCHA_GOTCHA, "The user fires a blast\nof tea, restoring HP\nby up to half the\ndamage dealt. This may\nalso burn the target."

movedata MOVE_SYRUP_BOMB, "Syrup Bomb"
    battleeffect MOVE_EFFECT_HIT
    pss SPLIT_SPECIAL
    basepower 60
    type TYPE_GRASS
    accuracy 85
    pp 10
    effectchance 100
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_UNUSABLE_UNIMPLEMENTED
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_SYRUP_BOMB, "The user sets off a\ngooey explosion, which\ncauses the target's\nSpeed stat to drop each\nturn for three turns."

movedata MOVE_IVY_CUDGEL, "Ivy Cudgel"
    battleeffect MOVE_EFFECT_HIT // Typing portion handled in other_battle_calculators.c.
    pss SPLIT_PHYSICAL
    basepower 100
    type TYPE_GRASS
    accuracy 100
    pp 10
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_IVY_CUDGEL, "The user strikes with a\ncudgel. It has a high\ncritical hit chance, and\nits type changes with\nthe user's mask."

movedata MOVE_ELECTRO_SHOT, "Electro Shot"
    battleeffect MOVE_EFFECT_CHARGE_TURN_SP_ATK_UP_RAIN_SKIPS
    pss SPLIT_SPECIAL
    basepower 130
    type TYPE_ELECTRIC
    accuracy 100
    pp 10
    effectchance 100
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_ELECTRO_SHOT, "A two-turn attack.\nThe user gathers\nlight, then fires a\nhigh voltage shot\non the second turn."

movedata MOVE_TERA_STARSTORM, "Tera Starstorm"
    battleeffect MOVE_EFFECT_HIT
    pss SPLIT_SPECIAL
    basepower 120
    type TYPE_NORMAL
    accuracy 100
    pp 5
    effectchance 0
    target RANGE_ADJACENT_OPPONENTS
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_UNUSABLE_UNIMPLEMENTED
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_TERA_STARSTORM, "The user bombards the\ntarget with crystalline\npower. When used by\nStellar Terapagos, this\nmove damages all foes."

movedata MOVE_FICKLE_BEAM, "Fickle Beam"
    battleeffect MOVE_EFFECT_FICKLE_BEAM
    pss SPLIT_SPECIAL
    basepower 80
    type TYPE_DRAGON
    accuracy 100
    pp 5
    effectchance 100 // Handled by random in the effect script.
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_FICKLE_BEAM, "The user shoots a beam\nof light. Sometimes\nthe user's heads shoot\nin unison, doubling\nthe move's power."

movedata MOVE_BURNING_BULWARK, "Burning Bulwark"
    battleeffect MOVE_EFFECT_PROTECT
    pss SPLIT_STATUS
    basepower 0
    type TYPE_FIRE
    accuracy 0
    pp 10
    effectchance 0
    target RANGE_USER
    priority 4
    flags 0
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_BURNING_BULWARK, "The user’s intensely hot\nfur protects it from\nattacks and also burns\nany attacker that makes\ndirect contact with it."

movedata MOVE_THUNDERCLAP, "Thunderclap"
    battleeffect MOVE_EFFECT_HIT_FIRST_IF_TARGET_ATTACKING
    pss SPLIT_SPECIAL
    basepower 70
    type TYPE_ELECTRIC
    accuracy 100
    pp 5
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 1
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_THUNDERCLAP, "The user attacks first\nwith a jolt of\nelectricity. This move\nfails if the target is\nnot readying an attack."

movedata MOVE_MIGHTY_CLEAVE, "Mighty Cleave"
    battleeffect MOVE_EFFECT_HIT
    pss SPLIT_PHYSICAL
    basepower 95
    type TYPE_ROCK
    accuracy 100
    pp 5
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_CONTACT
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_MIGHTY_CLEAVE, "Light from atop the\nuser's head cleaves the\ntarget. This move hits\neven if the target\nprotects itself."

movedata MOVE_TACHYON_CUTTER, "Tachyon Cutter"
    battleeffect MOVE_EFFECT_HIT_TWICE
    pss SPLIT_SPECIAL
    basepower 50
    type TYPE_STEEL
    accuracy 0
    pp 10
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_TACHYON_CUTTER, "The user attacks by\nlaunching particle\nblades at the target\ntwice in a row. This\nattack never misses."

movedata MOVE_HARD_PRESS, "Hard Press"
    battleeffect MOVE_EFFECT_HIT
    pss SPLIT_PHYSICAL
    basepower 0
    type TYPE_STEEL
    accuracy 100
    pp 10
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_CONTACT | FLAG_UNUSABLE_UNIMPLEMENTED
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_HARD_PRESS, "The target is crushed by\nthe user. The more HP\nthe target has left, the\ngreater the move's\npower."

movedata MOVE_DRAGON_CHEER, "Dragon Cheer"
    battleeffect MOVE_EFFECT_HIT
    pss SPLIT_STATUS
    basepower 0
    type TYPE_DRAGON
    accuracy 0
    pp 15
    effectchance 0
    target RANGE_ALLY
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT | FLAG_UNUSABLE_UNIMPLEMENTED
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_DRAGON_CHEER, "Allies’ morale is raised\nwith a draconic cry,\nboosting their critical\nhit rate. This rouses\nDragon types more."

movedata MOVE_ALLURING_VOICE, "Alluring Voice"
    battleeffect MOVE_EFFECT_HIT
    pss SPLIT_SPECIAL
    basepower 80
    type (FAIRY_TYPE_IMPLEMENTED) ? TYPE_FAIRY : TYPE_NORMAL
    accuracy 100
    pp 10
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_UNUSABLE_UNIMPLEMENTED
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_ALLURING_VOICE, "The user attacks using\nits angelic voice. This\nalso confuses the target\nif its stats have been\nboosted during the turn."

movedata MOVE_TEMPER_FLARE, "Temper Flare"
    battleeffect MOVE_EFFECT_HIT
    pss SPLIT_PHYSICAL
    basepower 75
    type TYPE_FIRE
    accuracy 100
    pp 10
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_CONTACT
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_TEMPER_FLARE, "The user desperately\nattacks the target. This\nmove's power is doubled\nif the user's previous\nmove failed."

movedata MOVE_SUPERCELL_SLAM, "Supercell Slam"
    battleeffect MOVE_EFFECT_CRASH_ON_MISS
    pss SPLIT_PHYSICAL
    basepower 100
    type TYPE_ELECTRIC
    accuracy 95
    pp 15
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_CONTACT
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_SUPERCELL_SLAM, "The user electrifies its\nbody and drops onto the\ntarget. If this move\nmisses, the user takes\ndamage instead."

movedata MOVE_PSYCHIC_NOISE, "Psychic Noise"
    battleeffect MOVE_EFFECT_PREVENT_HEALING_HIT
    pss SPLIT_SPECIAL
    basepower 75
    type TYPE_PSYCHIC
    accuracy 100
    pp 10
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_PSYCHIC_NOISE, "The user attacks with\nunpleasant sound waves.\nFor two turns, the\ntarget is prevented\nfrom recovering HP."

movedata MOVE_UPPER_HAND, "Upper Hand"
    battleeffect MOVE_EFFECT_HIT
    pss SPLIT_PHYSICAL
    basepower 65
    type TYPE_FIGHTING
    accuracy 100
    pp 15
    effectchance 0
    target RANGE_SINGLE_TARGET
    priority 3
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_CONTACT | FLAG_UNUSABLE_UNIMPLEMENTED
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_UPPER_HAND, "The user strikes\nreactively, making the\ntarget flinch. This move\nfails if the target is\nnot readying a priority\rmove."

movedata MOVE_MALIGNANT_CHAIN, "Malignant Chain"
    battleeffect MOVE_EFFECT_BADLY_POISON_HIT
    pss SPLIT_SPECIAL
    basepower 100
    type TYPE_POISON
    accuracy 100
    pp 5
    effectchance 50
    target RANGE_SINGLE_TARGET
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_MALIGNANT_CHAIN, "The user pours toxins\ninto the target through\na corrosive chain. This\nmay also leave the\ntarget badly poisoned."

movedatanoname NUM_OF_MOVES
    battleeffect MOVE_EFFECT_HIT
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
