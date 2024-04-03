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
    movedescription MOVE_NONE, "\n\n\n\n"

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
    movedescription MOVE_POUND, "The foe is physically\npounded with a long\ntail or a foreleg,\netc.\n"

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
    movedescription MOVE_KARATE_CHOP, "The foe is attacked\nwith a sharp chop.\nIt has a high\ncritical-hit ratio.\n"

movedata MOVE_DOUBLE_SLAP, "Double Slap"
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
    movedescription MOVE_DOUBLE_SLAP, "The foe is slapped\nrepeatedly, back\nand forth, two to\nfive times in a row.\n"

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
    movedescription MOVE_COMET_PUNCH, "The foe is hit with\na flurry of punches\nthat strike two to\nfive times in a row.\n"

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
    movedescription MOVE_MEGA_PUNCH, "The foe is slugged\nby a punch thrown\nwith muscle-packed\npower.\n"

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
    movedescription MOVE_PAY_DAY, "Numerous coins are\nhurled at the foe to\ninflict damage.\nMoney is earned\nafter battle."

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
    movedescription MOVE_FIRE_PUNCH, "The foe is punched\nwith a fiery fist.\nIt may leave the\ntarget with a burn.\n"

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
    movedescription MOVE_ICE_PUNCH, "The foe is punched\nwith an icy fist.\nIt may leave the\ntarget frozen.\n"

movedata MOVE_THUNDER_PUNCH, "Thunder Punch"
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
    movedescription MOVE_THUNDER_PUNCH, "The foe is punched\nwith an electrified\nfist. It may leave\nthe target with\nparalysis."

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
    movedescription MOVE_SCRATCH, "Hard, pointed, and\nsharp claws rake the\nfoe to inflict damage.\n\n"

movedata MOVE_VICE_GRIP, "Vise Grip"
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
    movedescription MOVE_VICE_GRIP, "Huge, impressive\npincers grip and\nsqueeze the foe.\n\n"

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
    movedescription MOVE_GUILLOTINE, "A vicious, tearing\nattack with pincers.\nThe foe will faint\ninstantly if this\nattack hits."

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
    movedescription MOVE_RAZOR_WIND, "A two-turn attack.\nBlades of wind hit the\nfoe on the second\nturn. It has a high\ncritical-hit ratio."

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
    movedescription MOVE_SWORDS_DANCE, "A frenetic dance to\nuplift the fighting\nspirit. It sharply\nraises the user’s\nAttack stat."

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
    movedescription MOVE_CUT, "The foe is cut with a\nscythe or a claw.\nIt can also be used\nto cut down thin\ntrees."

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
    movedescription MOVE_GUST, "A gust of wind is\nwhipped up by wings\nand launched at the\nfoe to inflict damage.\n"

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
    movedescription MOVE_WING_ATTACK, "The foe is struck\nwith large, imposing\nwings spread wide\nto inflict damage.\n"

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
    movedescription MOVE_WHIRLWIND, "The foe is blown away,\nto be replaced by\nanother Pokémon\nin its party. In the\nwild, the battle ends."

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
    movedescription MOVE_FLY, "The user soars, then\nstrikes on the second\nturn. It can also be\nused for flying to\nany familiar town."

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
    movedescription MOVE_BIND, "A long body or\ntentacles are used\nto bind and squeeze\nthe foe for two to\nfive turns."

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
    movedescription MOVE_SLAM, "The foe is slammed\nwith a long tail,\nvines, etc., to inflict\ndamage.\n"

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
    movedescription MOVE_VINE_WHIP, "The foe is struck\nwith slender, whiplike\nvines to inflict\ndamage.\n"

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
    movedescription MOVE_STOMP, "The foe is stomped\nwith a big foot.\nIt may also make the\ntarget flinch.\n"

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
    movedescription MOVE_DOUBLE_KICK, "The foe is quickly\nkicked twice in\nsuccession using both\nfeet.\n"

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
    movedescription MOVE_MEGA_KICK, "The foe is attacked\nby a kick launched\nwith muscle-packed\npower.\n"

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
    movedescription MOVE_JUMP_KICK, "The user jumps up\nhigh, then strikes\nwith a kick. If the\nkick misses, the\nuser hurts itself."

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
    movedescription MOVE_ROLLING_KICK, "The user lashes \nout with a quick,\nspinning kick. It\nmay also make the\ntarget flinch."

movedata MOVE_SAND_ATTACK, "Sand Attack"
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
    movedescription MOVE_SAND_ATTACK, "Sand is hurled in the\nfoe’s face, reducing\nits accuracy.\n\n"

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
    movedescription MOVE_HEADBUTT, "The user attacks with\nits head. It may make\nthe foe flinch. To find\nPokémon, hit trees."

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
    movedescription MOVE_HORN_ATTACK, "The foe is jabbed\nwith a sharply\npointed horn to\ninflict damage.\n"

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
    movedescription MOVE_FURY_ATTACK, "The foe is jabbed\nrepeatedly with a\nhorn or beak two to\nfive times in a row.\n"

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
    movedescription MOVE_HORN_DRILL, "The foe is stabbed\nwith a horn rotating\nlike a drill.\nThe foe instantly\nfaints if it hits."

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
    movedescription MOVE_TACKLE, "A physical attack\nin which the user\ncharges and slams\ninto the foe with\nits whole body."

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
    movedescription MOVE_BODY_SLAM, "The user drops onto\nthe foe with its full\nbody weight.\nIt may leave the foe\nparalyzed."

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
    movedescription MOVE_WRAP, "A long body or vines\nare used to wrap and\nsqueeze the foe for\ntwo to five turns.\n"

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
    movedescription MOVE_TAKE_DOWN, "A reckless, full-body\ncharge attack for\nslamming into the foe.\nIt also damages the\nuser a little."

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
    movedescription MOVE_THRASH, "The user rampages\nand attacks for two\nto three turns.\nIt then becomes\nconfused, however."

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
    movedescription MOVE_DOUBLE_EDGE, "A reckless, life-\nrisking tackle.\nIt also damages the\nuser by a fairly large\namount, however."

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
    movedescription MOVE_TAIL_WHIP, "The user wags its tail\ncutely, making the\nfoe less wary.\nThe target’s Defense\nstat is lowered."

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
    movedescription MOVE_POISON_STING, "The foe is stabbed\nwith a poisonous\nbarb of some sort.\nIt may also poison\nthe target."

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
    movedescription MOVE_TWINEEDLE, "The foe is stabbed\ntwice by a pair of\nstingers.\nIt may also poison\nthe target."

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
    movedescription MOVE_PIN_MISSILE, "Sharp pins are shot\nat the foe in rapid\nsuccession.\nThey hit two to five\ntimes in a row."

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
    movedescription MOVE_LEER, "The foe is given an\nintimidating leer with\nsharp eyes.\nThe target’s Defense\nstat is reduced."

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
    movedescription MOVE_BITE, "The foe is bitten with\nviciously sharp fangs.\nIt may make the\ntarget flinch.\n"

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
    movedescription MOVE_GROWL, "The user growls in an\nendearing way, making\nthe foe less wary.\nThe target’s Attack\nstat is lowered."

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
    movedescription MOVE_ROAR, "The foe is scared off,\nto be replaced by\nanother Pokémon in\nits party. In the\nwild, the battle ends."

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
    movedescription MOVE_SING, "A soothing lullaby is\nsung in a calming\nvoice that puts the\nfoe into a deep\nslumber."

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
    movedescription MOVE_SUPERSONIC, "The user generates\nodd sound waves from\nits body.\nIt may confuse the\ntarget."

movedata MOVE_SONIC_BOOM, "Sonic Boom"
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
    movedescription MOVE_SONIC_BOOM, "The foe is hit with a\ndestructive shock\nwave that always\ninflicts 20 HP damage.\n"

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
    movedescription MOVE_DISABLE, "For several turns,\nthis move prevents\nthe foe from using\nthe move it last\nused."

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
    movedescription MOVE_ACID, "The foe is attacked\nwith a spray of harsh\nacid. It may also\nlower the target’s\nSp. Def stat."

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
    movedescription MOVE_EMBER, "The foe is attacked\nwith small flames.\nThe target may also\nbe left with a burn.\n"

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
    movedescription MOVE_FLAMETHROWER, "The foe is scorched\nwith an intense blast\nof fire. The target\nmay also be left with\na burn."

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
    movedescription MOVE_MIST, "The user cloaks its\nbody with a white mist\nthat prevents any of\nits stats from being\ncut for five turns."

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
    movedescription MOVE_WATER_GUN, "The foe is blasted\nwith a forceful shot\nof water.\n\n"

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
    movedescription MOVE_HYDRO_PUMP, "The foe is blasted by\na huge volume of\nwater launched under\ngreat pressure.\n"

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
    movedescription MOVE_SURF, "It swamps the entire\nbattlefield with a\ngiant wave.\nIt can also be used\nfor crossing water."

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
    movedescription MOVE_ICE_BEAM, "The foe is struck\nwith an icy-cold\nbeam of energy.\nIt may also freeze\nthe target solid."

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
    movedescription MOVE_BLIZZARD, "A howling blizzard is\nsummoned to strike\nthe foe.\nIt may also freeze\nthe target solid."

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
    movedescription MOVE_PSYBEAM, "The foe is attacked\nwith a peculiar ray.\nIt may also leave the\ntarget confused.\n"

movedata MOVE_BUBBLE_BEAM, "Bubble Beam"
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
    movedescription MOVE_BUBBLE_BEAM, "A spray of bubbles is\nforcefully ejected\nat the foe.\nIt may also lower the\ntarget’s Speed stat."

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
    movedescription MOVE_AURORA_BEAM, "The foe is hit with a\nrainbow-colored beam.\nIt may also lower the\ntarget’s Attack\nstat."

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
    movedescription MOVE_HYPER_BEAM, "The foe is attacked\nwith a powerful beam.\nThe user must rest\non the next turn to\nregain its energy."

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
    movedescription MOVE_PECK, "The foe is jabbed\nwith a sharply\npointed beak or\nhorn.\n"

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
    movedescription MOVE_DRILL_PECK, "A corkscrewing\nattack with the\nsharp beak acting\nas a drill.\n"

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
    movedescription MOVE_SUBMISSION, "The user grabs the\nfoe and recklessly\ndives for the ground.\nIt also hurts the\nuser slightly."

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
    movedescription MOVE_LOW_KICK, "A powerful low kick\nthat makes the foe\nfall over. It inflicts\ngreater damage on\nheavier foes."

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
    movedescription MOVE_COUNTER, "A retaliation move\nthat counters any\nphysical attack,\ninflicting double the\ndamage taken."

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
    movedescription MOVE_SEISMIC_TOSS, "The foe is thrown\nusing the power of\ngravity. It inflicts\ndamage equal to\nthe user’s level."

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
    movedescription MOVE_STRENGTH, "The foe is slugged\nwith a punch thrown\nat maximum power.\nIt can also be used\nto move boulders."

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
    movedescription MOVE_ABSORB, "A nutrient-draining\nattack. The user’s\nHP is restored by\nhalf the damage taken\nby the target."

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
    movedescription MOVE_MEGA_DRAIN, "A nutrient-draining\nattack. The user’s\nHP is restored by\nhalf the damage taken\nby the target."

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
    movedescription MOVE_LEECH_SEED, "A seed is planted on\nthe foe. It steals\nsome HP from the foe\nto heal the user on\nevery turn."

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
    movedescription MOVE_GROWTH, "The user’s body is\nforced to grow all at\nonce. It raises the\nSp. Atk stat.\n"

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
    movedescription MOVE_RAZOR_LEAF, "Sharp-edged leaves\nare launched to slash\nat the foe. It has a\nhigh critical-hit\nratio."

movedata MOVE_SOLAR_BEAM, "Solar Beam"
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
    movedescription MOVE_SOLAR_BEAM, "A two-turn attack.\nThe user gathers\nlight, then blasts a\nbundled beam on the\nsecond turn."

movedata MOVE_POISON_POWDER, "Poison Powder"
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
    movedescription MOVE_POISON_POWDER, "A cloud of poisonous\ndust is scattered on\nthe foe.\nIt may poison the\ntarget."

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
    movedescription MOVE_STUN_SPORE, "The user scatters a\ncloud of paralyzing\npowder.\nIt may paralyze the\ntarget."

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
    movedescription MOVE_SLEEP_POWDER, "The user scatters a\nbig cloud of sleep-\ninducing dust around\nthe foe.\n"

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
    movedescription MOVE_PETAL_DANCE, "The user attacks by\nscattering petals for\ntwo to three turns.\nThe user then\nbecomes confused."

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
    movedescription MOVE_STRING_SHOT, "The foe is bound with\nsilk blown from the\nuser’s mouth.\nIt reduces the\ntarget’s Speed stat."

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
    movedescription MOVE_DRAGON_RAGE, "The foe is stricken\nby a shock wave.\nThis attack always\ninflicts 40 HP\ndamage."

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
    movedescription MOVE_FIRE_SPIN, "The foe becomes\ntrapped within a\nfierce vortex of fire\nthat rages for two\nto five turns."

movedata MOVE_THUNDER_SHOCK, "Thunder Shock"
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
    movedescription MOVE_THUNDER_SHOCK, "A jolt of electricity\nis hurled at the foe\nto inflict damage.\nIt may also leave the\nfoe paralyzed."

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
    movedescription MOVE_THUNDERBOLT, "A strong electric\nblast is loosed at\nthe foe.\nIt may also leave the\nfoe paralyzed."

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
    movedescription MOVE_THUNDER_WAVE, "A weak electric\ncharge is launched at\nthe foe.\nIt causes paralysis if\nit hits."

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
    movedescription MOVE_THUNDER, "A wicked thunderbolt\nis dropped on the foe\nto inflict damage.\nIt may also leave the\ntarget paralyzed."

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
    movedescription MOVE_ROCK_THROW, "The user picks up\nand throws a small\nrock at the foe to\nattack.\n"

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
    movedescription MOVE_EARTHQUAKE, "The user sets off an\nearthquake that hits\nall the Pokémon in\nthe battle.\n"

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
    movedescription MOVE_FISSURE, "The user opens up a\nfissure in the ground\nand drops the foe in.\nThe target instantly\nfaints if it hits."

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
    movedescription MOVE_DIG, "The user burrows,\nthen attacks on the\nsecond turn.\nIt can also be used\nto exit dungeons."

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
    movedescription MOVE_TOXIC, "A move that leaves\nthe target badly\npoisoned.\nIts poison damage\nworsens every turn."

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
    movedescription MOVE_CONFUSION, "The foe is hit by a\nweak telekinetic\nforce. It may also\nleave the foe\nconfused."

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
    movedescription MOVE_PSYCHIC, "The foe is hit by a\nstrong telekinetic\nforce. It may also\nreduce the foe’s\nSp. Def stat."

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
    movedescription MOVE_HYPNOSIS, "The user employs\nhypnotic suggestion\nto make the target\nfall into a deep\nsleep."

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
    movedescription MOVE_MEDITATE, "The user meditates\nto awaken the power\ndeep within its body\nand raise its Attack\nstat."

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
    movedescription MOVE_AGILITY, "The user relaxes and\nlightens its body to\nmove faster.\nIt sharply boosts\nthe Speed stat."

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
    movedescription MOVE_QUICK_ATTACK, "The user lunges at\nthe foe at a speed\nthat makes it almost\ninvisible. It is sure\nto strike first."

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
    movedescription MOVE_RAGE, "While this move is in\nuse, it gains attack\npower each time the\nuser is hit in battle.\n"

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
    movedescription MOVE_TELEPORT, "Use it to flee from\nany wild Pokémon.\nIt can also warp to\nthe last Pokémon\nCenter visited."

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
    movedescription MOVE_NIGHT_SHADE, "The user makes the\nfoe see a mirage.\nIt inflicts damage\nmatching the user’s\nlevel."

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
    movedescription MOVE_MIMIC, "The user copies the\nmove last used by\nthe foe. The move can\nbe used for the rest\nof the battle."

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
    movedescription MOVE_SCREECH, "An earsplitting\nscreech is emitted to\nsharply reduce the\nfoe’s Defense stat.\n"

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
    movedescription MOVE_DOUBLE_TEAM, "By moving rapidly, the\nuser makes illusory\ncopies of itself to\nraise its evasiveness.\n"

movedata MOVE_RECOVER, "Recover"
    battleeffect 32
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy 0
    pp 5
    effectchance 0
    target MOVE_TARGET_USER
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_SNATCH
    appeal 0x08
    contesttype CONTEST_SMART
    terminatedata
    movedescription MOVE_RECOVER, "A self-healing move.\nThe user restores its\nown HP by up to half\nof its max HP.\n"

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
    movedescription MOVE_HARDEN, "The user stiffens all\nthe muscles in its\nbody to raise its\nDefense stat.\n"

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
    movedescription MOVE_MINIMIZE, "The user compresses\nits body to make\nitself look smaller.\nThe user’s evasion\nstat is boosted."

movedata MOVE_SMOKESCREEN, "Smokescreen"
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
    movedescription MOVE_SMOKESCREEN, "The user releases an\nobscuring cloud of\nsmoke or ink.\nIt reduces the foe’s\naccuracy."

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
    movedescription MOVE_CONFUSE_RAY, "The foe is exposed\nto a sinister ray\nthat triggers\nconfusion.\n"

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
    movedescription MOVE_WITHDRAW, "The user withdraws\nits body into its hard\nshell, raising its\nDefense stat.\n"

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
    movedescription MOVE_DEFENSE_CURL, "The user curls up to\nconceal weak spots\nand raise its Defense\nstat.\n"

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
    movedescription MOVE_BARRIER, "The user throws up a\nsturdy wall that\nsharply raises its\nDefense stat.\n"

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
    movedescription MOVE_LIGHT_SCREEN, "A wondrous wall of\nlight is put up to\nsuppress damage from\nspecial attacks for\nfive turns."

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
    movedescription MOVE_HAZE, "The user creates a\nhaze that eliminates\nevery stat change\namong all the Pokémon\nengaged in battle."

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
    movedescription MOVE_REFLECT, "A wondrous wall of\nlight is put up to\nsuppress damage from\nphysical attacks for\nfive turns."

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
    movedescription MOVE_FOCUS_ENERGY, "The user takes a\ndeep breath and\nfocuses to raise the\ncritical-hit ratio of\nits attacks."

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
    movedescription MOVE_BIDE, "The user endures\nattacks for two\nturns, then strikes\nback to cause double\nthe damage taken."

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
    movedescription MOVE_METRONOME, "The user waggles a\nfinger and stimulates\nthe brain into\nrandomly using nearly\nany move."

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
    movedescription MOVE_MIRROR_MOVE, "The user counters\nthe foe by mimicking\nthe move last used\nby the foe."

movedata MOVE_SELF_DESTRUCT, "Self-Destruct"
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
    movedescription MOVE_SELF_DESTRUCT, "The user blows up to\ninflict damage on all\nPokémon in battle.\nThe user faints upon\nusing this move."

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
    movedescription MOVE_EGG_BOMB, "A large egg is hurled\nwith maximum force at\nthe foe to inflict\ndamage.\n"

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
    movedescription MOVE_LICK, "The foe is licked with\na long tongue, causing\ndamage.\nIt may also paralyze\nthe target."

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
    movedescription MOVE_SMOG, "The foe is attacked\nwith a discharge of\nfilthy gases.\nIt may also poison\nthe target."

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
    movedescription MOVE_SLUDGE, "Unsanitary sludge is\nhurled at the foe.\nIt may also poison\nthe target.\n"

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
    movedescription MOVE_BONE_CLUB, "The user clubs the\nfoe with a bone.\nIt may also make the\ntarget flinch.\n"

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
    movedescription MOVE_FIRE_BLAST, "The foe is attacked\nwith an intense blast\nof all-consuming fire.\nIt may also leave the\ntarget with a burn."

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
    movedescription MOVE_WATERFALL, "The user charges at\nthe foe rapidly, and\nmay make it flinch.\nIt can also be used\nto climb a waterfall."

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
    movedescription MOVE_CLAMP, "The foe is clamped\nand squeezed by\nthe user’s very thick\nand sturdy shell for\ntwo to five turns."

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
    movedescription MOVE_SWIFT, "Star-shaped rays are\nshot at the foe.\nThis attack never\nmisses.\n"

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
    movedescription MOVE_SKULL_BASH, "The user tucks in its\nhead to raise its\nDefense in the first\nturn, then rams the\nfoe on the next turn."

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
    movedescription MOVE_SPIKE_CANNON, "Sharp spikes are\nfired at the foe to\nstrike two to five\ntimes in rapid\nsuccession."

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
    movedescription MOVE_CONSTRICT, "The foe is attacked\nwith long, creeping\ntentacles or vines.\nIt may also lower the\ntarget’s Speed."

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
    movedescription MOVE_AMNESIA, "The user temporarily\nempties its mind to\nforget its concerns.\nIt sharply raises the\nuser’s Sp. Def stat."

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
    movedescription MOVE_KINESIS, "The user distracts\nthe foe by bending a\nspoon.\nIt may lower the\ntarget’s accuracy."

movedata MOVE_SOFT_BOILED, "Soft-Boiled"
    battleeffect 32
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy 0
    pp 5
    effectchance 0
    target MOVE_TARGET_USER
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_SNATCH
    appeal 0x08
    contesttype CONTEST_BEAUTY
    terminatedata
    movedescription MOVE_SOFT_BOILED, "The user restores its\nown HP by up to half\nof its maximum HP.\nIt may also be used\nto heal an ally’s HP."

movedata MOVE_HIGH_JUMP_KICK, "High Jump Kick"
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
    movedescription MOVE_HIGH_JUMP_KICK, "The foe is attacked\nwith a knee kick from\na jump. If it misses,\nthe user is hurt\ninstead."

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
    movedescription MOVE_GLARE, "The user intimidates\nthe foe with the\npattern on its belly\nto cause paralysis.\n"

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
    movedescription MOVE_DREAM_EATER, "An attack that works\nonly on a sleeping\nfoe. It absorbs half\nthe damage caused to\nheal the user’s HP."

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
    movedescription MOVE_POISON_GAS, "A cloud of poison gas\nis sprayed in the\nfoe’s face.\nIt may poison the\ntarget."

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
    movedescription MOVE_BARRAGE, "Round objects are\nhurled at the foe to\nstrike two to five\ntimes in a row.\n"

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
    movedescription MOVE_LEECH_LIFE, "A blood-draining\nattack. The user’s\nHP is restored by\nhalf the damage taken\nby the target."

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
    movedescription MOVE_LOVELY_KISS, "With a scary face, the\nuser tries to force a\nkiss on the foe. If it\nsucceeds, the target\nfalls asleep."

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
    movedescription MOVE_SKY_ATTACK, "A second-turn attack\nmove with a high\ncritical-hit ratio.\nIt may also make the\ntarget flinch."

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
    movedescription MOVE_TRANSFORM, "The user transforms\ninto a copy of the\nfoe right down to\nhaving the same move\nset."

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
    movedescription MOVE_BUBBLE, "A spray of countless\nbubbles is jetted at\nthe foe.\nIt may also lower the\ntarget’s Speed stat."

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
    movedescription MOVE_DIZZY_PUNCH, "The foe is hit with\nrhythmically launched\npunches that may also\nleave it confused.\n"

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
    movedescription MOVE_SPORE, "The user scatters\nbursts of spores\nthat induce sleep.\n\n"

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
    movedescription MOVE_FLASH, "The user flashes a\nlight that cuts the\nfoe’s accuracy.\nIt can also be used\nto illuminate caves."

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
    movedescription MOVE_PSYWAVE, "The foe is attacked\nwith an odd, hot\nenergy wave.\nThe attack varies in\nintensity."

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
    movedescription MOVE_SPLASH, "The user just flops\nand splashes around\nto no effect at all...\n\n"

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
    movedescription MOVE_ACID_ARMOR, "The user alters its\ncellular structure to\nliquefy itself,\nsharply raising its\nDefense stat."

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
    movedescription MOVE_CRABHAMMER, "The foe is hammered\nwith a large pincer.\nThis move has a high\ncritical-hit ratio.\n"

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
    movedescription MOVE_EXPLOSION, "The user explodes to\ninflict damage on all\nPokémon in battle.\nThe user faints upon\nusing this move."

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
    movedescription MOVE_FURY_SWIPES, "The foe is raked with\nsharp claws or\nscythes for two to\nfive times in quick\nsuccession."

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
    movedescription MOVE_BONEMERANG, "The user throws the\nbone it holds. The\nbone loops to hit the\nfoe twice, coming and\ngoing."

movedata MOVE_REST, "Rest"
    battleeffect 37
    pss SPLIT_STATUS
    basepower 0
    type TYPE_PSYCHIC
    accuracy 0
    pp 5
    effectchance 0
    target MOVE_TARGET_USER
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_SNATCH
    appeal 0x08
    contesttype CONTEST_CUTE
    terminatedata
    movedescription MOVE_REST, "The user goes to\nsleep for two turns.\nIt fully restores the\nuser’s HP and heals\nany status problem."

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
    movedescription MOVE_ROCK_SLIDE, "Large boulders are\nhurled at the foe to\ninflict damage.\nIt may also make the\ntarget flinch."

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
    movedescription MOVE_HYPER_FANG, "The user bites hard\non the foe with its\nsharp front fangs.\nIt may also make the\ntarget flinch."

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
    movedescription MOVE_SHARPEN, "The user reduces its\npolygon count to\nmake itself more\njagged, raising the\nAttack stat."

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
    movedescription MOVE_CONVERSION, "The user changes its\ntype to become the\nsame type as one of\nits moves.\n"

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
    movedescription MOVE_TRI_ATTACK, "The user strikes with\na simultaneous three-\nbeam attack. May also\nparalyze, burn, or\nfreeze the target."

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
    movedescription MOVE_SUPER_FANG, "The user chomps hard\non the foe with its\nsharp front fangs.\nIt cuts the target’s\nHP to half."

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
    movedescription MOVE_SLASH, "The foe is attacked\nwith a slash of\nclaws, etc.\nIt has a high\ncritical-hit ratio."

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
    movedescription MOVE_SUBSTITUTE, "The user makes a\ncopy of itself using\nsome of its HP.\nThe copy serves as\nthe user’s decoy."

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
    movedescription MOVE_STRUGGLE, "An attack that is\nused in desperation\nonly if the user has\nno PP. It also hurts\nthe user slightly."

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
    movedescription MOVE_SKETCH, "It enables the user\nto permanently learn\nthe move last used by\nthe foe. Once used,\nSketch disappears."

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
    movedescription MOVE_TRIPLE_KICK, "A consecutive three-\nkick attack that\nbecomes more\npowerful with each \nsuccessive hit."

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
    movedescription MOVE_THIEF, "The user attacks and\nsteals the foe’s held\nitem simultaneously.\nIt can’t steal if the\nuser holds an item."

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
    movedescription MOVE_SPIDER_WEB, "The user ensnares\nthe foe with a thin,\ngooey silk so it can’t\nflee from battle.\n"

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
    movedescription MOVE_MIND_READER, "The user senses the\nfoe’s movements\nwith its mind to\nensure its next\nattack does not miss."

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
    movedescription MOVE_NIGHTMARE, "A sleeping foe is\nshown a nightmare\nthat inflicts some\ndamage every turn.\n"

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
    movedescription MOVE_FLAME_WHEEL, "The user cloaks\nitself in fire and\ncharges at the foe.\nIt may also leave the\ntarget with a burn."

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
    movedescription MOVE_SNORE, "An attack that can\nbe used only if the\nuser is asleep. The\nharsh noise may also\nmake the foe flinch."

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
    movedescription MOVE_CURSE, "A move that works\ndifferently for the\nGhost type than for\nall the other types.\n"

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
    movedescription MOVE_FLAIL, "The user flails about\naimlessly to attack.\nIt becomes more\npowerful the less HP\nthe user has."

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
    movedescription MOVE_CONVERSION_2, "The user changes its\ntype to make itself\nresistant to the type\nof the attack it\nlast took."

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
    movedescription MOVE_AEROBLAST, "A vortex of air is\nshot at the foe to\ninflict damage.\nIt has a high\ncritical-hit ratio."

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
    movedescription MOVE_COTTON_SPORE, "The user releases\ncottonlike spores\nthat cling to the\nfoe, sharply reducing\nits Speed stat."

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
    movedescription MOVE_REVERSAL, "An all-out attack\nthat becomes more\npowerful the less\nHP the user has.\n"

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
    movedescription MOVE_SPITE, "The user looses its\ngrudge on the move\nlast used by the foe\nby cutting 4 PP from\nit."

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
    movedescription MOVE_POWDER_SNOW, "The user attacks with\na chilling gust of\npowdery snow.\nIt may also freeze\nthe target."

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
    movedescription MOVE_PROTECT, "It enables the user\nto evade all attacks.\nIts chance of failing\nrises if it is used in\nsuccession."

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
    movedescription MOVE_MACH_PUNCH, "The user throws a\npunch at blinding\nspeed.\nIt is certain to\nstrike first."

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
    movedescription MOVE_SCARY_FACE, "The user frightens\nthe foe with a scary\nface to sharply\nreduce its Speed\nstat."

movedata MOVE_FEINT_ATTACK, "Feint Attack"
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
    movedescription MOVE_FEINT_ATTACK, "The user draws up to\nthe foe disarmingly,\nthen throws a sucker\npunch.\nIt hits without fail."

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
    movedescription MOVE_SWEET_KISS, "The user kisses the\nfoe with a sweet,\nangelic cuteness that\ncauses confusion.\n"

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
    movedescription MOVE_BELLY_DRUM, "The user maximizes\nits Attack stat in\nexchange for HP\nequal to half its max\nHP."

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
    movedescription MOVE_SLUDGE_BOMB, "The user attacks by\nhurling filthy sludge\nat the foe.\nIt may also poison\nthe target."

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
    movedescription MOVE_MUD_SLAP, "The user hurls mud in\nthe foe’s face to\ninflict damage and\nlower its accuracy.\n"

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
    movedescription MOVE_OCTAZOOKA, "The user attacks by\nspraying ink in the\nfoe’s face or eyes.\nIt may also lower the\ntarget’s accuracy."

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
    movedescription MOVE_SPIKES, "The user lays a trap\nof spikes at the\nfoe’s feet. The trap\nhurts foes that\nswitch into battle."

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
    movedescription MOVE_ZAP_CANNON, "The user fires an\nelectric blast like a\ncannon to inflict\ndamage and cause\nparalysis."

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
    movedescription MOVE_FORESIGHT, "Enables the user to\nhit a Ghost type with\nany type of move. It\nalso enables the user\nto hit an evasive foe."

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
    movedescription MOVE_DESTINY_BOND, "When this move is\nused, if the user\nfaints, the foe that\nlanded the knockout\nhit also faints."

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
    movedescription MOVE_PERISH_SONG, "Any Pokémon that\nhears this song\nfaints in three turns,\nunless it switches\nout of battle."

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
    movedescription MOVE_ICY_WIND, "The user attacks with\na gust of chilled air.\nIt also lowers the\ntarget’s Speed stat.\n"

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
    movedescription MOVE_DETECT, "It enables the user\nto evade all attacks.\nIts chance of failing\nrises if it is used in\nsuccession."

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
    movedescription MOVE_BONE_RUSH, "The user strikes at\nthe foe with a hard\nbone two to five\ntimes in a row.\n"

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
    movedescription MOVE_LOCK_ON, "The user takes sure\naim at the foe.\nIt ensures the next\nattack does not fail\nto hit the target."

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
    movedescription MOVE_OUTRAGE, "The user rampages\nand attacks for two\nto three turns.\nHowever, it then\nbecomes confused."

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
    movedescription MOVE_SANDSTORM, "A five-turn sand-\nstorm is summoned\nto hurt all combatant\ntypes except Rock, \nGround, and Steel."

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
    movedescription MOVE_GIGA_DRAIN, "A nutrient-draining\nattack. The user’s\nHP is restored by\nhalf the damage taken\nby the target."

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
    movedescription MOVE_ENDURE, "The user endures any\nattack with at least\n1 HP. Its chance of\nfailing rises if it is\nused in succession."

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
    movedescription MOVE_CHARM, "The user charmingly\nstares at the foe,\nmaking it less wary.\nThe target’s Attack\nis sharply lowered."

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
    movedescription MOVE_ROLLOUT, "The user continually\nrolls into the foe\nover five turns. It\nbecomes stronger\neach time it hits."

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
    movedescription MOVE_FALSE_SWIPE, "A restrained attack\nthat prevents the\nfoe from fainting.\nThe target is left\nwith at least 1 HP."

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
    movedescription MOVE_SWAGGER, "The user enrages the\nfoe into confusion.\nHowever, it also\nsharply raises the\nfoe’s Attack stat."

movedata MOVE_MILK_DRINK, "Milk Drink"
    battleeffect 32
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
    contesttype CONTEST_CUTE
    terminatedata
    movedescription MOVE_MILK_DRINK, "The user restores its\nown HP by up to half\nof its maximum HP.\nIt may also be used\nto heal an ally’s HP."

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
    movedescription MOVE_SPARK, "The user throws an\nelectrically charged\ntackle at the foe.\nIt may also leave the\ntarget paralyzed."

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
    movedescription MOVE_FURY_CUTTER, "The foe is slashed\nwith scythes or\nclaws. Its power\nincreases if it hits\nin succession."

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
    movedescription MOVE_STEEL_WING, "The foe is hit with\nwings of steel.\nIt may also raise the\nuser’s Defense stat.\n"

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
    movedescription MOVE_MEAN_LOOK, "The user affixes the\nfoe with a dark,\narresting look.\nThe target becomes\nunable to flee."

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
    movedescription MOVE_ATTRACT, "If it is the opposite\ngender of the user,\nthe foe becomes\ninfatuated and less\nlikely to attack."

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
    movedescription MOVE_SLEEP_TALK, "While it is asleep, the\nuser randomly uses\none of the moves it\nknows.\n"

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
    movedescription MOVE_HEAL_BELL, "The user makes a\nsoothing bell chime\nto heal the status\nproblems of all the\nparty Pokémon."

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
    movedescription MOVE_RETURN, "A full-power attack\nthat grows more\npowerful the more\nthe user likes its\nTrainer."

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
    movedescription MOVE_PRESENT, "The user attacks by\ngiving the foe a\nbooby-trapped gift.\nIt restores HP\nsometimes, however."

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
    movedescription MOVE_FRUSTRATION, "A full-power attack\nthat grows more\npowerful the less\nthe user likes its\nTrainer."

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
    movedescription MOVE_SAFEGUARD, "The user creates a\nprotective field that\nprevents status\nproblems for five\nturns."

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
    movedescription MOVE_PAIN_SPLIT, "The user adds its HP\nto the foe’s HP, then\nequally shares the\ncombined HP with the\nfoe."

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
    movedescription MOVE_SACRED_FIRE, "The foe is razed with\na mystical fire of\ngreat intensity.\nIt may also leave the\ntarget with a burn."

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
    movedescription MOVE_MAGNITUDE, "The user looses a\nground-shaking quake\naffecting everyone in\nbattle. Its power\nvaries."

movedata MOVE_DYNAMIC_PUNCH, "Dynamic Punch"
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
    movedescription MOVE_DYNAMIC_PUNCH, "The foe is punched\nwith the user’s full,\nconcentrated power.\nIt confuses the foe\nif it hits."

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
    movedescription MOVE_MEGAHORN, "Using its tough\nand impressive\nhorn, the user\nrams into the foe \nwith no letup.\n"

movedata MOVE_DRAGON_BREATH, "Dragon Breath"
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
    movedescription MOVE_DRAGON_BREATH, "The user exhales\na mighty gust that\ninflicts damage.\nIt may also paralyze\nthe target."

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
    movedescription MOVE_BATON_PASS, "The user switches\nplaces with a party\nPokémon in waiting,\npassing along any\nstat changes."

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
    movedescription MOVE_ENCORE, "The user compels the\nfoe to keep using\nonly the move it last\nused for three to\nseven turns."

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
    movedescription MOVE_PURSUIT, "An attack move that\ninflicts double damage\nif used on a foe that\nis switching out of\nbattle."

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
    movedescription MOVE_RAPID_SPIN, "A spin attack that\ncan also eliminate\nsuch moves as Bind,\nWrap, Leech Seed,\nand Spikes."

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
    movedescription MOVE_SWEET_SCENT, "A sweet scent that\nlowers the foe’s\nevasiveness. It also\nlures wild Pokémon\nif used in grass, etc."

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
    movedescription MOVE_IRON_TAIL, "The foe is slammed\nwith a steel-hard\ntail. It may also\nlower the target’s\nDefense stat."

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
    movedescription MOVE_METAL_CLAW, "The foe is raked\nwith steel claws.\nIt may also raise the\nuser’s Attack stat.\n"

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
    movedescription MOVE_VITAL_THROW, "The user allows the\nfoe to attack first.\nIn return, this throw\nmove is guaranteed\nnot to miss."

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
    movedescription MOVE_MORNING_SUN, "The user restores its\nown HP.\nThe amount of HP\nregained varies with\nthe weather."

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
    movedescription MOVE_SYNTHESIS, "The user restores its\nown HP.\nThe amount of HP\nregained varies with\nthe weather."

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
    movedescription MOVE_MOONLIGHT, "The user restores its\nown HP.\nThe amount of HP\nregained varies with\nthe weather."

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
    movedescription MOVE_HIDDEN_POWER, "A unique attack that\nvaries in type and\nintensity depending\non the Pokémon using\nit."

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
    movedescription MOVE_CROSS_CHOP, "The user delivers a\ndouble chop with its\nforearms crossed.\nIt has a high\ncritical-hit ratio."

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
    movedescription MOVE_TWISTER, "The user whips up a\nvicious tornado to\ntear at the foe.\nIt may also make the\nfoe flinch."

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
    movedescription MOVE_RAIN_DANCE, "The user summons a\nheavy rain that falls\nfor five turns,\npowering up Water-\ntype moves."

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
    movedescription MOVE_SUNNY_DAY, "The user intensifies\nthe sun for five\nturns, powering up\nFire-type moves.\n"

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
    movedescription MOVE_CRUNCH, "The user crunches up\nthe foe with sharp\nfangs. It may also\nlower the target’s\nDefense stat."

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
    movedescription MOVE_MIRROR_COAT, "A retaliation move\nthat counters any\nspecial attack,\ninflicting double the\ndamage taken."

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
    movedescription MOVE_PSYCH_UP, "The user hypnotizes\nitself into copying\nany stat change\nmade by the foe.\n"

movedata MOVE_EXTREME_SPEED, "Extreme Speed"
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
    movedescription MOVE_EXTREME_SPEED, "The user charges the\nfoe at blinding speed.\nThis attack always\ngoes before any\nother move."

movedata MOVE_ANCIENT_POWER, "Ancient Power"
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
    movedescription MOVE_ANCIENT_POWER, "The user attacks with\na prehistoric power.\nIt may also raise all\nthe user’s stats at\nonce."

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
    movedescription MOVE_SHADOW_BALL, "The user hurls a\nshadowy blob at the\nfoe. It may also\nlower the foe’s\nSp. Def stat."

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
    movedescription MOVE_FUTURE_SIGHT, "Two turns after this\nmove is used, the foe\nis attacked with a\nhunk of psychic\nenergy."

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
    movedescription MOVE_ROCK_SMASH, "The user hits with a\npunch that may lower\nthe target’s Defense.\nIt can also smash\ncracked boulders."

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
    movedescription MOVE_WHIRLPOOL, "Traps the foe inside a\nwhirlpool that lasts\nfor two to five turns.\nThe user can pass\nthrough whirlpools."

movedata MOVE_BEAT_UP, "Beat Up"
    battleeffect 154
    pss SPLIT_PHYSICAL
    basepower 1
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
    movedescription MOVE_BEAT_UP, "The user gets all the\nparty Pokémon to\nattack the foe. The\nmore party Pokémon,\nthe more damage."

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
    movedescription MOVE_FAKE_OUT, "An attack that hits\nfirst and makes the\ntarget flinch. It only\nworks the first turn\nthe user is in battle."

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
    movedescription MOVE_UPROAR, "The user attacks in\nan uproar for two to\nfive turns. Over that\ntime, no one can fall\nasleep."

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
    movedescription MOVE_STOCKPILE, "The user charges\nup power, and raises\nboth its Defense and\nSp. Def. The move can\nbe used three times."

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
    movedescription MOVE_SPIT_UP, "The power stored\nusing the move\nStockpile is released\nat once in an attack.\n"

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
    movedescription MOVE_SWALLOW, "The power stored\nusing the move\nStockpile is absorbed\nby the user to heal\nits HP."

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
    movedescription MOVE_HEAT_WAVE, "The user exhales a\nheated breath on the\nfoe to attack. It may\nalso leave the target\nwith a burn."

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
    movedescription MOVE_HAIL, "The user summons a\nhailstorm lasting five\nturns. It damages all\nPokémon except the\nIce type."

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
    movedescription MOVE_TORMENT, "The user torments\nand enrages the foe,\nmaking it incapable of\nusing the same move\ntwice in a row."

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
    movedescription MOVE_FLATTER, "Flattery is used to\nconfuse the foe.\nHowever, it also\nraises the target’s\nSp. Atk stat."

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
    movedescription MOVE_WILL_O_WISP, "The user shoots a\nsinister, bluish white\nflame at the foe to\ninflict a burn.\n"

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
    movedescription MOVE_MEMENTO, "The user faints upon\nusing this move.\nIn return, it sharply\nlowers the target’s\nAttack and Sp. Atk."

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
    movedescription MOVE_FACADE, "An attack move that\ndoubles its power if\nthe user is poisoned,\nparalyzed, or has a\nburn."

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
    movedescription MOVE_FOCUS_PUNCH, "The user focuses its\nmind before launching\na punch. It will fail\nif the user is hit\nbefore it is used."

movedata MOVE_SMELLING_SALTS, "Smelling Salts"
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
    movedescription MOVE_SMELLING_SALTS, "This attack inflicts\ndouble damage on a\nparalyzed foe. It\nalso cures the foe’s\nparalysis, however."

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
    movedescription MOVE_FOLLOW_ME, "The user draws\nattention to itself,\nmaking all foes take\naim only at the user.\n"

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
    movedescription MOVE_NATURE_POWER, "An attack that makes\nuse of nature’s\npower. Its effects\nvary depending on the\nuser’s environment."

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
    movedescription MOVE_CHARGE, "The user boosts the\npower of the Electric\nmove it uses next.\nIt also raises the\nuser’s Sp. Def stat."

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
    movedescription MOVE_TAUNT, "The foe is taunted\ninto a rage that\nallows it to use only\nattack moves for two\nto four turns."

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
    movedescription MOVE_HELPING_HAND, "A move that boosts\nthe power of the\nally’s attack in a\nDouble Battle.\n"

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
    movedescription MOVE_TRICK, "The user catches the\nfoe off guard and\nswaps the foe’s held\nitem with its own.\n"

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
    movedescription MOVE_ROLE_PLAY, "The user mimics the\nfoe completely,\ncopying the foe’s\nnatural ability.\n"

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
    movedescription MOVE_WISH, "A self-healing move.\nThe user restores its\nown HP by up to half\nof its maximum HP\nin the next turn."

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
    movedescription MOVE_ASSIST, "The user hurriedly\nand randomly uses a\nmove among those\nknown by other\nPokémon in the party."

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
    movedescription MOVE_INGRAIN, "The user lays roots\nthat restore HP on\nevery turn.\nBecause it is rooted,\nit can’t switch out."

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
    movedescription MOVE_SUPERPOWER, "The user attacks the\nfoe with great power.\nHowever, it also\nlowers the user’s\nAttack and Defense."

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
    movedescription MOVE_MAGIC_COAT, "A barrier reflects\nback to the foe\nmoves like Leech\nSeed and moves\nthat damage status."

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
    movedescription MOVE_RECYCLE, "The user recycles a\nheld item that\nhas been used in\nbattle so it can be\nused again."

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
    movedescription MOVE_REVENGE, "An attack move that\ninflicts double the\ndamage if the user\nhas been hurt by the\nfoe in the same turn."

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
    movedescription MOVE_BRICK_BREAK, "The user attacks with\ntough fists, etc. It\ncan also break any\nbarrier such as Light\nScreen and Reflect."

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
    movedescription MOVE_YAWN, "The user lets loose a\nhuge yawn that lulls\nthe foe into falling\nasleep on the next\nturn."

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
    movedescription MOVE_KNOCK_OFF, "The user slaps down\nthe foe’s held item,\npreventing the item\nfrom being used\nduring the battle."

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
    movedescription MOVE_ENDEAVOR, "An attack move that\ncuts down the foe’s\nHP to equal the\nuser’s HP.\n"

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
    movedescription MOVE_ERUPTION, "The user attacks in\nan explosive fury.\nThe lower the user’s\nHP, the less powerful\nthis attack becomes."

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
    movedescription MOVE_SKILL_SWAP, "The user employs its\npsychic power to\nexchange abilities\nwith the foe.\n"

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
    movedescription MOVE_IMPRISON, "If the foe knows any\nmove also known by\nthe user, the foe\nis prevented\nfrom using it."

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
    movedescription MOVE_REFRESH, "The user rests\nto cure itself of a\npoisoning, burn, or\nparalysis.\n"

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
    movedescription MOVE_GRUDGE, "If the user faints,\nthe user’s grudge\nfully depletes the PP\nof the foe’s move\nthat knocked it out."

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
    movedescription MOVE_SNATCH, "The user steals the\neffects of any\nhealing or stat-\nchanging move the foe\nattempts to use."

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
    movedescription MOVE_SECRET_POWER, "The user attacks with\na secret power. Its\nadded effects vary\ndepending on the\nuser’s environment."

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
    movedescription MOVE_DIVE, "A two-turn attack.\nThe user dives\nunderwater on the\nfirst turn, then hits\non the next turn."

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
    movedescription MOVE_ARM_THRUST, "The user looses a\nflurry of open-palmed\narm thrusts that hit\ntwo to five times in a\nrow."

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
    movedescription MOVE_CAMOUFLAGE, "The user’s type is\nchanged depending on\nits environment, such\nas at water’s edge, in\ngrass, or in a cave."

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
    movedescription MOVE_TAIL_GLOW, "The user stares at\nflashing lights to\nfocus its mind,\nsharply raising its\nSp. Atk stat."

movedata MOVE_LUSTER_PURGE, "Luster Purge"
    battleeffect 72
    pss SPLIT_SPECIAL
    basepower 95
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
    movedescription MOVE_LUSTER_PURGE, "The user looses a\ndamaging burst of\nlight. It may also\nreduce the target’s\nSp. Def stat."

movedata MOVE_MIST_BALL, "Mist Ball"
    battleeffect 71
    pss SPLIT_SPECIAL
    basepower 95
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
    movedescription MOVE_MIST_BALL, "A mistlike flurry of\ndown envelops and\ndamages the foe. It\nmay also lower the\ntarget’s Sp. Atk."

movedata MOVE_FEATHER_DANCE, "Feather Dance"
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
    movedescription MOVE_FEATHER_DANCE, "The user covers the\nfoe with a mass of\ndown that sharply\nlowers the Attack\nstat."

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
    movedescription MOVE_TEETER_DANCE, "The user performs a\nwobbly dance that\nconfuses all the\nPokémon in battle.\n"

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
    movedescription MOVE_BLAZE_KICK, "The user launches a\nkick with a high\ncritical-hit ratio.\nIt may also leave the\ntarget with a burn."

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
    movedescription MOVE_MUD_SPORT, "The user covers\nitself with mud. It\nweakens Electric-\ntype moves while the\nuser is in the battle."

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
    movedescription MOVE_ICE_BALL, "The user continually\nrolls into the foe\nover five turns. It\nbecomes stronger\neach time it hits."

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
    movedescription MOVE_NEEDLE_ARM, "The user attacks by\nwildly swinging its\nthorny arms.\nIt may also make the\ntarget flinch."

movedata MOVE_SLACK_OFF, "Slack Off"
    battleeffect 32
    pss SPLIT_STATUS
    basepower 0
    type TYPE_NORMAL
    accuracy 0
    pp 5
    effectchance 0
    target MOVE_TARGET_USER
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_SNATCH
    appeal 0x08
    contesttype CONTEST_CUTE
    terminatedata
    movedescription MOVE_SLACK_OFF, "The user slacks off,\nrestoring its own HP\nby up to half of its\nmaximum HP.\n"

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
    movedescription MOVE_HYPER_VOICE, "The user lets loose\na horribly echoing\nshout with the\npower to inflict\ndamage."

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
    movedescription MOVE_POISON_FANG, "The user bites the\nfoe with toxic fangs.\nIt may also leave the\nfoe badly poisoned.\n"

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
    movedescription MOVE_CRUSH_CLAW, "The user slashes the\nfoe with hard and\nsharp claws.\nIt may also lower the\ntarget’s Defense."

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
    movedescription MOVE_BLAST_BURN, "The foe is razed by\na fiery explosion.\nThe user must rest\non the next turn,\nhowever."

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
    movedescription MOVE_HYDRO_CANNON, "The foe is hit with\na watery blast.\nThe user must rest\non the next turn,\nhowever."

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
    movedescription MOVE_METEOR_MASH, "The foe is hit with a\nhard punch fired\nlike a meteor.\nIt may also raise\nthe user’s Attack."

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
    movedescription MOVE_ASTONISH, "The user attacks the\nfoe while shouting in\na startling fashion.\nIt may also make the\ntarget flinch."

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
    movedescription MOVE_WEATHER_BALL, "An attack move that\nvaries in power and\ntype depending on\nthe weather.\n"

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
    movedescription MOVE_AROMATHERAPY, "The user releases a\nsoothing scent that\nheals all status\nproblems affecting\nthe user’s party."

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
    movedescription MOVE_FAKE_TEARS, "The user feigns\ncrying to make the\nfoe feel flustered,\nsharply lowering its\nSp. Def stat."

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
    movedescription MOVE_AIR_CUTTER, "The user launches\nrazorlike wind to\nslash the foe.\nIt has a high\ncritical-hit ratio."

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
    movedescription MOVE_OVERHEAT, "The user attacks the\nfoe at full power.\nThe attack’s recoil\nsharply reduces the\nuser’s Sp. Atk stat."

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
    movedescription MOVE_ODOR_SLEUTH, "Enables the user to\nhit a Ghost type with\nany type of move. It\nalso enables the user\nto hit an evasive foe."

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
    movedescription MOVE_ROCK_TOMB, "Boulders are hurled\nat the foe. It also\nlowers the foe’s\nSpeed by preventing\nits movement."

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
    movedescription MOVE_SILVER_WIND, "The foe is attacked\nwith powdery scales\nblown by wind.\nIt may also raise all\nthe user’s stats."

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
    movedescription MOVE_METAL_SOUND, "A horrible sound like\nscraping metal is\nemitted to sharply\nreduce the foe’s\nSp. Def stat."

movedata MOVE_GRASS_WHISTLE, "Grass Whistle"
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
    movedescription MOVE_GRASS_WHISTLE, "The user plays a\npleasant melody that\nlulls the foe into a\ndeep sleep.\n"

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
    movedescription MOVE_TICKLE, "The user tickles the\nfoe into laughing,\nreducing its Attack\nand Defense stats.\n"

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
    movedescription MOVE_COSMIC_POWER, "The user absorbs a\nmystical power from\nspace to raise its\nDefense and Sp. Def\nstats."

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
    movedescription MOVE_WATER_SPOUT, "The user spouts\nwater to damage the\nfoe. The lower the\nuser’s HP, the less\npowerful it becomes."

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
    movedescription MOVE_SIGNAL_BEAM, "The user attacks with\na sinister beam of\nlight. It may also\nconfuse the target.\n"

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
    movedescription MOVE_SHADOW_PUNCH, "The user throws a\npunch at the foe from\nthe shadows.\nThe punch lands\nwithout fail."

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
    movedescription MOVE_EXTRASENSORY, "The user attacks with\nan odd, unseeable\npower.\nIt may also make the\nfoe flinch."

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
    movedescription MOVE_SKY_UPPERCUT, "The user attacks the\nfoe with an uppercut\nthrown skyward\nwith force.\n"

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
    movedescription MOVE_SAND_TOMB, "The user traps the\nfoe inside a harshly\nraging sandstorm for\ntwo to five turns.\n"

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
    movedescription MOVE_SHEER_COLD, "The foe is attacked\nwith a blast of\nabsolute-zero cold.\nThe foe instantly\nfaints if it hits."

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
    movedescription MOVE_MUDDY_WATER, "The user attacks by\nshooting out muddy\nwater.\nIt may also lower the\nfoe’s accuracy."

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
    movedescription MOVE_BULLET_SEED, "The user forcefully\nshoots seeds at the\nfoe. Two to five\nseeds are shot in\nrapid succession."

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
    movedescription MOVE_AERIAL_ACE, "The user confounds\nthe foe with speed,\nthen slashes.\nThe attack lands\nwithout fail."

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
    movedescription MOVE_ICICLE_SPEAR, "The user launches\nsharp icicles at the\nfoe. It strikes two\nto five times in a\nrow."

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
    movedescription MOVE_IRON_DEFENSE, "The user hardens\nits body’s surface\nlike iron, sharply\nraising its Defense\nstat."

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
    movedescription MOVE_BLOCK, "The user blocks the\nfoe’s way with arms\nspread wide to\nprevent escape.\n"

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
    movedescription MOVE_HOWL, "The user howls loudly\nto raise its spirit,\nboosting its Attack\nstat.\n"

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
    movedescription MOVE_DRAGON_CLAW, "The user slashes the\nfoe with huge, sharp\nclaws.\n\n"

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
    movedescription MOVE_FRENZY_PLANT, "The foe is slammed\nwith an enormous\ntree.\nThe user can’t move\non the next turn."

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
    movedescription MOVE_BULK_UP, "The user tenses its\nmuscles to bulk up\nits body, boosting\nboth its Attack and\nDefense stats."

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
    movedescription MOVE_BOUNCE, "The user bounces up\nhigh, then drops on\nthe foe on the second\nturn. It may also\nparalyze the foe."

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
    movedescription MOVE_MUD_SHOT, "The user attacks by\nhurling a blob of mud\nat the foe.\nIt also reduces the\ntarget’s Speed."

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
    movedescription MOVE_POISON_TAIL, "An attack with a\nhigh critical-hit\nratio. This tail \nattack may also \npoison the foe."

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
    movedescription MOVE_COVET, "The user endearingly\napproaches the foe,\nthen steals the item\nthe foe is holding.\n"

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
    movedescription MOVE_VOLT_TACKLE, "The user electrifies\nitself, then charges\nat the foe. It causes\nconsiderable damage\nto the user as well."

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
    movedescription MOVE_MAGICAL_LEAF, "The user scatters\ncurious leaves that\nchase the foe.\nThis attack will not\nmiss."

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
    movedescription MOVE_WATER_SPORT, "The user soaks itself\nwith water. The move\nweakens Fire-type\nmoves while the user\nis in the battle."

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
    movedescription MOVE_CALM_MIND, "The user quietly\nfocuses its mind and\ncalms its spirit to\nraise its Sp. Atk and\nSp. Def stats."

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
    movedescription MOVE_LEAF_BLADE, "The foe is slashed\nwith a sharp leaf.\nIt has a high\ncritical-hit ratio.\n"

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
    movedescription MOVE_DRAGON_DANCE, "The user vigorously\nperforms a mystic,\npowerful dance that\nboosts its Attack and\nSpeed stats."

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
    movedescription MOVE_ROCK_BLAST, "The user hurls hard\nrocks at the foe.\nTwo to five rocks are\nlaunched in quick\nsuccession."

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
    movedescription MOVE_SHOCK_WAVE, "The user strikes the\nfoe with a quick jolt\nof electricity.\nThis attack cannot be\nevaded."

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
    movedescription MOVE_WATER_PULSE, "The user attacks the\nfoe with a pulsing\nblast of water.\nIt may also confuse\nthe foe."

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
    movedescription MOVE_DOOM_DESIRE, "Two turns after this\nmove is used, the\nuser blasts the foe\nwith a concentrated\nbundle of light."

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
    movedescription MOVE_PSYCHO_BOOST, "The user attacks the\nfoe at full power.\nThe attack’s recoil\nsharply reduces the\nuser’s Sp. Atk stat."

movedata MOVE_ROOST, "Roost"
    battleeffect 214
    pss SPLIT_STATUS
    basepower 0
    type TYPE_FLYING
    accuracy 0
    pp 5
    effectchance 0
    target MOVE_TARGET_USER
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_SNATCH
    appeal 0x08
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_ROOST, "The user lands and\nrests its body.\nIt restores the\nuser’s HP by up to\nhalf of its max HP."

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
    movedescription MOVE_GRAVITY, "Gravity is intensified\nfor five turns, making\nmoves involving flying\nunusable and\nnegating Levitation."

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
    movedescription MOVE_MIRACLE_EYE, "Enables the user to\nhit a Dark type with\nany type of move. It\nalso enables the user\nto hit an evasive foe."

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
    movedescription MOVE_WAKE_UP_SLAP, "This attack inflicts\nhigh damage on a\nsleeping foe. It\nalso wakes the foe\nup, however."

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
    movedescription MOVE_HAMMER_ARM, "The user swings and\nhits with its strong\nand heavy fist.\nIt lowers the user’s\nSpeed, however."

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
    movedescription MOVE_GYRO_BALL, "The user tackles the\nfoe with a high-speed\nspin. The slower the\nuser, the greater\nthe damage."

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
    movedescription MOVE_HEALING_WISH, "The user faints. In\nreturn, the Pokémon\ntaking its place will\nhave its HP restored\nand status cured."

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
    movedescription MOVE_BRINE, "If the foe’s HP is\ndown to about half,\nthis attack will hit\nwith double the\npower."

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
    movedescription MOVE_NATURAL_GIFT, "The user draws power\nto attack by using\nits held Berry.\nThe Berry determines\nits type and power."

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
    movedescription MOVE_FEINT, "An attack that hits a\nfoe using Protect or\nDetect. It also lifts\nthe effects of those\nmoves."

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
    movedescription MOVE_PLUCK, "The user pecks the\nfoe. If the foe is\nholding a Berry, the\nuser plucks it and\ngains its effect."

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
    movedescription MOVE_TAILWIND, "The user whips up a\nturbulent whirlwind\nthat ups the Speed\nof all party Pokémon\nfor three turns."

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
    movedescription MOVE_ACUPRESSURE, "The user applies\npressure to stress\npoints, sharply\nboosting one of its\nstats."

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
    movedescription MOVE_METAL_BURST, "The user retaliates\nagainst the foe that\nlast inflicted damage\non it with much\ngreater power."

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
    movedescription MOVE_U_TURN, "After making its\nattack, the user\nrushes back to switch\nplaces with a party\nPokémon in waiting."

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
    movedescription MOVE_CLOSE_COMBAT, "The user fights the\nfoe up close without\nguarding itself. It\nalso cuts the user’s\nDefense and Sp. Def."

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
    movedescription MOVE_PAYBACK, "If the user can use\nthis attack after the\nfoe attacks, its\npower is doubled.\n"

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
    movedescription MOVE_ASSURANCE, "If the foe has\nalready taken some\ndamage in the same\nturn, this attack’s\npower is doubled."

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
    movedescription MOVE_EMBARGO, "It prevents the foe\nfrom using its held\nitem. Its Trainer is\nalso prevented from\nusing items on it."

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
    movedescription MOVE_FLING, "The user flings its\nheld item at the foe\nto attack. Its power\nand effects depend\non the item."

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
    movedescription MOVE_PSYCHO_SHIFT, "Using its psychic\npower of suggestion,\nthe user transfers\nits status problems\nto the target."

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
    movedescription MOVE_TRUMP_CARD, "The fewer PP this\nmove has, the more\npower it has for\nattack.\n"

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
    movedescription MOVE_HEAL_BLOCK, "The user prevents\nthe foe from using\nany HP-recovery\nmoves for five turns.\n"

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
    movedescription MOVE_WRING_OUT, "The user powerfully\nwrings the foe.\nThe more HP the foe\nhas, the greater this\nattack’s power."

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
    movedescription MOVE_POWER_TRICK, "The user employs its\npsychic power to\nswitch its Attack\nwith its Defense\nstat."

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
    movedescription MOVE_GASTRO_ACID, "The user hurls up its\nstomach acids on\nthe foe. The fluid\neliminates the effect\nof the foe’s ability."

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
    movedescription MOVE_LUCKY_CHANT, "The user chants an\nincantation toward\nthe sky, preventing\nthe foe from landing\ncritical hits."

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
    movedescription MOVE_ME_FIRST, "The user tries to cut\nahead of the foe to\nsteal and use the\nfoe’s intended move\nwith greater power."

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
    movedescription MOVE_COPYCAT, "The user mimics the\nmove used immediately\nbefore it. The move\nfails if no other move\nhas been used yet."

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
    movedescription MOVE_POWER_SWAP, "The user employs its\npsychic power to\nswitch changes to\nits Attack and\nSp. Atk with the foe."

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
    movedescription MOVE_GUARD_SWAP, "The user employs its\npsychic power to\nswitch changes to\nits Defense and\nSp. Def with the foe."

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
    movedescription MOVE_PUNISHMENT, "This attack’s power\nincreases the more\nthe foe has powered\nup with stat changes.\n"

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
    movedescription MOVE_LAST_RESORT, "This move can be used\nonly after the user\nhas used all the\nother moves it knows\nin the battle."

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
    movedescription MOVE_WORRY_SEED, "A seed that causes\nworry is planted on\nthe foe. It prevents\nsleep by making its\nability Insomnia."

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
    movedescription MOVE_SUCKER_PUNCH, "This move enables the\nuser to attack first.\nIt fails if the foe is\nnot readying an\nattack, however."

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
    movedescription MOVE_TOXIC_SPIKES, "The user lays a trap\nof poison spikes at\nthe foe’s feet. They\npoison foes that\nswitch into battle."

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
    movedescription MOVE_HEART_SWAP, "The user employs its\npsychic power to\nswitch stat changes\nwith the foe.\n"

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
    movedescription MOVE_AQUA_RING, "The user envelops\nitself in a veil made\nof water. It regains\nsome HP on every\nturn."

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
    movedescription MOVE_MAGNET_RISE, "The user levitates\nusing electrically\ngenerated magnetism\nfor five turns.\n"

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
    movedescription MOVE_FLARE_BLITZ, "The user cloaks\nitself in fire and\ncharges at the foe.\nThe user sustains\nserious damage, too."

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
    movedescription MOVE_FORCE_PALM, "The foe is attacked\nwith a shock wave.\nIt may also leave the\ntarget paralyzed.\n"

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
    movedescription MOVE_AURA_SPHERE, "The user looses a\nblast of aura power\nfrom deep within its\nbody. This move is\ncertain to hit."

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
    movedescription MOVE_ROCK_POLISH, "The user polishes its\nbody to reduce drag.\nIt can sharply raise\nthe Speed stat.\n"

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
    movedescription MOVE_POISON_JAB, "The foe is stabbed\nwith a tentacle or\narm steeped in\npoison. It may also\npoison the foe."

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
    movedescription MOVE_DARK_PULSE, "The user releases a\nhorrible aura imbued\nwith dark thoughts.\nIt may also make the\ntarget flinch."

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
    movedescription MOVE_NIGHT_SLASH, "The user slashes the\nfoe the instant an\nopportunity arises.\nIt has a high\ncritical-hit ratio."

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
    movedescription MOVE_AQUA_TAIL, "The user attacks by\nswinging its tail as if\nit were a vicious wave\nin a raging storm.\n"

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
    movedescription MOVE_SEED_BOMB, "The user slams a\nbarrage of hard-\nshelled seeds\ndown on the foe\nfrom above."

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
    movedescription MOVE_AIR_SLASH, "The user attacks with\na blade of air that\nslices even the sky.\nIt may also make the\ntarget flinch."

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
    movedescription MOVE_X_SCISSOR, "The user slashes at\nthe foe by crossing\nits scythes or claws\nas if they were a pair\nof scissors."

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
    movedescription MOVE_BUG_BUZZ, "The user vibrates its\nwings to generate a\ndamaging sound wave.\nIt may also lower the\nfoe’s Sp. Def stat."

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
    movedescription MOVE_DRAGON_PULSE, "The foe is attacked\nwith a shock wave\ngenerated by the\nuser’s gaping mouth.\n"

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
    movedescription MOVE_DRAGON_RUSH, "The user tackles the\nfoe while exhibiting\noverwhelming menace.\nIt may also make the\ntarget flinch."

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
    movedescription MOVE_POWER_GEM, "The user attacks with\na ray of light that\nsparkles as if it were\nmade of gemstones.\n"

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
    movedescription MOVE_DRAIN_PUNCH, "An energy-draining\npunch. The user’s\nHP is restored by\nhalf the damage taken\nby the target."

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
    movedescription MOVE_VACUUM_WAVE, "The user whirls its\nfists to send a wave\nof pure vacuum at\nthe foe. This move\nalways goes first."

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
    movedescription MOVE_FOCUS_BLAST, "The user heightens\nits mental focus and\nunleashes its power.\nIt may also lower the\ntarget’s Sp. Def."

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
    movedescription MOVE_ENERGY_BALL, "The user draws power\nfrom nature and\nfires it at the foe.\nIt may also lower the\ntarget’s Sp. Def."

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
    movedescription MOVE_BRAVE_BIRD, "The user tucks in\nits wings and charges\nfrom a low altitude.\nThe user also takes\nserious damage."

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
    movedescription MOVE_EARTH_POWER, "The user makes the\nground under the foe\nerupt with power.\nIt may also lower the\ntarget’s Sp. Def."

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
    movedescription MOVE_SWITCHEROO, "The user trades held\nitems with the foe\nfaster than the eye\ncan follow.\n"

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
    movedescription MOVE_GIGA_IMPACT, "The user charges at\nthe foe using every\nbit of its power.\nThe user must rest\non the next turn."

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
    movedescription MOVE_NASTY_PLOT, "The user stimulates\nits brain by thinking\nbad thoughts.\nIt sharply raises the\nuser’s Sp. Atk."

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
    movedescription MOVE_BULLET_PUNCH, "The user strikes\nwith a tough punch as\nfast as a bullet.\nThis move always goes\nfirst."

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
    movedescription MOVE_AVALANCHE, "An attack move that\ninflicts double the\ndamage if the user\nhas been hurt by the\nfoe in the same turn."

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
    movedescription MOVE_ICE_SHARD, "The user flash\nfreezes chunks of\nice and hurls them.\nThis move always goes\nfirst."

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
    movedescription MOVE_SHADOW_CLAW, "The user slashes with\na sharp claw made\nfrom shadows.\nIt has a high\ncritical-hit ratio."

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
    movedescription MOVE_THUNDER_FANG, "The user bites with\nelectrified fangs.\nIt may also make the\nfoe flinch or become\nparalyzed."

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
    movedescription MOVE_ICE_FANG, "The user bites with\ncold-infused fangs.\nIt may also make the\nfoe flinch or freeze.\n"

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
    movedescription MOVE_FIRE_FANG, "The user bites with\nflame-cloaked fangs.\nIt may also make the\nfoe flinch or sustain\na burn."

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
    movedescription MOVE_SHADOW_SNEAK, "The user extends its\nshadow and attacks\nthe foe from behind.\nThis move always goes\nfirst."

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
    movedescription MOVE_MUD_BOMB, "The user launches a\nhard-packed mud ball\nto attack.\nIt may also lower the\ntarget’s accuracy."

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
    movedescription MOVE_PSYCHO_CUT, "The user tears at\nthe foe with blades\nformed by psychic\npower. It has a high\ncritical-hit ratio."

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
    movedescription MOVE_ZEN_HEADBUTT, "The user focuses its\nwillpower to its head\nand rams the foe.\nIt may also make the\ntarget flinch."

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
    movedescription MOVE_MIRROR_SHOT, "The user looses a\nflash of energy from\nits polished body.\nIt may also lower the\ntarget’s accuracy."

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
    movedescription MOVE_FLASH_CANNON, "The user gathers all\nits light energy and\nreleases it at once.\nIt may also lower the\nfoe’s Sp. Def stat."

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
    movedescription MOVE_ROCK_CLIMB, "A charging attack\nthat may also leave\nthe foe confused.\nIt can also be used\nto scale rocky walls."

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
    movedescription MOVE_DEFOG, "It reduces the foe’s\nevasion stat. It also\nremoves spikes,\nlight screens, etc."

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
    movedescription MOVE_TRICK_ROOM, "The user creates a\nbizarre area in which\nslower Pokémon get\nto move first for five\nturns."

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
    movedescription MOVE_DRACO_METEOR, "Comets are summoned\ndown from the sky.\nThe attack’s recoil\nsharply reduces the\nuser’s Sp. Atk stat."

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
    movedescription MOVE_DISCHARGE, "A flare of electricity\nis loosed to strike\nall Pokémon in battle.\nIt may also cause\nparalysis."

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
    movedescription MOVE_LAVA_PLUME, "An inferno of scarlet\nflames washes over\nall Pokémon in battle.\nIt may also inflict\nburns."

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
    movedescription MOVE_LEAF_STORM, "A storm of sharp\nleaves is whipped up.\nThe attack’s recoil\nsharply reduces the\nuser’s Sp. Atk stat."

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
    movedescription MOVE_POWER_WHIP, "The user violently\nwhirls its vines or\ntentacles to harshly\nlash the foe.\n"

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
    movedescription MOVE_ROCK_WRECKER, "The user launches a\nhuge boulder at the\nfoe to attack.\nIt must rest on the\nnext turn, however."

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
    movedescription MOVE_CROSS_POISON, "A slashing attack\nthat may also leave\nthe target poisoned.\nIt has a high\ncritical-hit ratio."

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
    movedescription MOVE_GUNK_SHOT, "The user shoots\nfilthy garbage at the\nfoe to attack.\nIt may also poison\nthe target."

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
    movedescription MOVE_IRON_HEAD, "The foe slams the\ntarget with its\nsteel-hard head.\nIt may also make the\ntarget flinch."

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
    movedescription MOVE_MAGNET_BOMB, "The user launches a\nsteel bomb that\nsticks to the target.\nThis attack will not\nmiss."

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
    movedescription MOVE_STONE_EDGE, "The user stabs the\nfoe with a sharpened\nstone. It has a high\ncritical-hit ratio.\n"

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
    movedescription MOVE_CAPTIVATE, "If it is the opposite\ngender of the user,\nthe foe is charmed\ninto sharply lowering\nits Sp. Atk stat."

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
    movedescription MOVE_STEALTH_ROCK, "The user lays a trap\nof levitating stones\naround the foe. The\ntrap hurts foes that\nswitch into battle."

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
    movedescription MOVE_GRASS_KNOT, "The user snares the\nfoe with grass and\ntrips it. The heavier\nthe foe, the greater\nthe damage."

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
    movedescription MOVE_CHATTER, "The user attacks\nusing a sound wave\nbased on words it has\nlearned. It may also\nconfuse the foe."

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
    movedescription MOVE_JUDGMENT, "The user releases\ncountless shots of\nlight. Its type varies\nwith the kind of Plate\nthe user is holding."

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
    movedescription MOVE_BUG_BITE, "The user bites the\nfoe. If the foe is\nholding a Berry, the\nuser eats it and\ngains its effect."

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
    movedescription MOVE_CHARGE_BEAM, "The user fires a\nconcentrated bundle\nof electricity. It may\nalso raise the user’s\nSp. Atk stat."

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
    movedescription MOVE_WOOD_HAMMER, "The user slams its\nrugged body into the\nfoe to attack. The\nuser also sustains\nserious damage."

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
    movedescription MOVE_AQUA_JET, "The user lunges at\nthe foe at a speed\nthat makes it almost\ninvisible. It is sure\nto strike first."

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
    movedescription MOVE_ATTACK_ORDER, "The user calls out\nits underlings to\npummel the foe.\nIt has a high\ncritical-hit ratio."

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
    movedescription MOVE_DEFEND_ORDER, "The user calls out\nits underlings to\nshield its body,\nraising its Defense\nand Sp. Def stats."

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
    movedescription MOVE_HEAL_ORDER, "The user calls out\nits underlings to heal\nit. The user regains\nup to half of its\nmax HP."

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
    movedescription MOVE_HEAD_SMASH, "The user delivers a\nlife-endangering\nattack at full power.\nThe user also takes\nterrible damage."

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
    movedescription MOVE_DOUBLE_HIT, "The user slams the\nfoe with a long tail,\nvines, etc. The\ntarget is hit\ntwice in a row."

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
    movedescription MOVE_ROAR_OF_TIME, "The user blasts the\nfoe with power that\ndistorts even time.\nThe user must rest\non the next turn."

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
    movedescription MOVE_SPACIAL_REND, "The user tears the\nfoe along with the\nspace around it.\nThis move has a high\ncritical-hit ratio."

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
    movedescription MOVE_LUNAR_DANCE, "The user faints. In\nreturn, the Pokémon\ntaking its place will\nhave its status and\nHP fully restored."

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
    movedescription MOVE_CRUSH_GRIP, "The foe is crushed\nwith great force.\nThe attack is more\npowerful the more HP\nthe foe has left."

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
    movedescription MOVE_MAGMA_STORM, "The foe becomes\ntrapped within a\nmaelstrom of fire\nthat rages for two\nto five turns."

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
    movedescription MOVE_DARK_VOID, "The foe is dragged\ninto a world of total\ndarkness that puts it\nto sleep.\n"

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
    movedescription MOVE_SEED_FLARE, "The user generates\na shock wave from\nwithin its body.\nIt may also lower the\ntarget’s Sp. Def."

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
    movedescription MOVE_OMINOUS_WIND, "The user creates a\ngust of repulsive\nwind. It may also\nraise all the user’s\nstats at once."

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
    movedescription MOVE_SHADOW_FORCE, "The user disappears,\nthen strikes the foe\non the second turn.\nIt hits even if the\nfoe protects itself."

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
    movedescription MOVE_SHADOW_FORCE+1, "--"

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
    movedescription MOVE_SHADOW_FORCE+2, "--"

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
    movedescription MOVE_SHADOW_FORCE+3, "--"

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
    movedescription MOVE_HONE_CLAWS, "The user sharpens\nits claws to boost\nits Attack and\nAccuracy."

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
    movedescription MOVE_WIDE_GUARD, "The user protects\nitself and its\nallies from wide-\nranged attacks."

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
    movedescription MOVE_GUARD_SPLIT, "The user employs its\npsychic power to\naverage its Defense\nand Sp. Def stats\nwith the target."

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
    movedescription MOVE_POWER_SPLIT, "The user employs its\npsychic power to\naverage its Attack\nand Sp. Atk stats\nwith the target."

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
    movedescription MOVE_WONDER_ROOM, "The user creates a\nbizarre area where\nPokémon’s Defense\nand Sp. Def swap\nfor five turns."

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
    movedescription MOVE_PSYSHOCK, "An odd psychic wave\nattacks the target.\nThis attack does\nphysical damage."

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
    movedescription MOVE_VENOSHOCK, "The foe is soaked\nby a special acid.\nIts power doubles if\nthe foe is poisoned."

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
    movedescription MOVE_AUTOTOMIZE, "The user sheds part\nof its body to make\nitself lighter and\nsharply raise its\nSpeed stat."

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
    movedescription MOVE_RAGE_POWDER, "The user scatters\na cloud of powder,\nmaking foes attack\nonly the user."

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
    movedescription MOVE_TELEKINESIS, "The user makes the\ntarget float with\npsychic power. The\ntarget is easier to\nhit for three turns."

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
    movedescription MOVE_MAGIC_ROOM, "The user creates a\nbizarre area in\nwhich Pokémon’s held\nitems lose effect\nfor five turns."

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
    movedescription MOVE_SMACK_DOWN, "A projectile is\nthrown at the\nopponent. A flying\nPokémon will fall\nto the ground."

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
    movedescription MOVE_STORM_THROW, "The user strikes\nthe foe fiercely.\nIt always results in\na critical hit."

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
    movedescription MOVE_FLAME_BURST, "The user attacks\nthe foe with a\nbursting flame."

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
    movedescription MOVE_SLUDGE_WAVE, "The area around the\nuser is swamped by\na giant sludge wave.\nIt may also poison\nthose hit."

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
    movedescription MOVE_QUIVER_DANCE, "The user mystically\ndances, raising its\nSp. Atk, Sp. Def,\nand Speed."

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
    movedescription MOVE_HEAVY_SLAM, "The user slams into\nthe target. The\ngreater the weight\ndifference, the\ngreater the damage."

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
    movedescription MOVE_SYNCHRONOISE, "Using an odd shock\nwave, the user\ndamages same-type\nPokémon in the\nsurrounding area."

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
    movedescription MOVE_ELECTRO_BALL, "The user hurls an\nelectric orb. The\nfaster the user is\nthan the foe, the\ngreater the damage."

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
    movedescription MOVE_SOAK, "The user shoots a\ntorrent of water at\nthe target and\nchanges the target’s\ntype to Water."

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
    flags FLAG_PROTECT | FLAG_CONTACT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_FLAME_CHARGE, "The user cloaks\nitself in flames and\nattacks. It also ups\nthe user’s Speed."

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
    movedescription MOVE_COIL, "The user coils up,\nraising its Attack,\nDefense, and\naccuracy."

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
    movedescription MOVE_LOW_SWEEP, "The user attacks\nthe foe’s legs,\nlowering its\nSpeed stat."

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
    movedescription MOVE_ACID_SPRAY, "The user spits fluid\nthat melts the foe.\nIt harshly lowers\nthe foe’s Sp. Def."

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
    movedescription MOVE_FOUL_PLAY, "The user turns the\ntarget’s power\nagainst it. Power\nincreases with the\nfoe’s Attack stat."

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
    flags FLAG_PROTECT | FLAG_MAGIC_COAT | FLAG_MIRROR_MOVE
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_SIMPLE_BEAM, "The user’s\nmysterious psychic\nwave changes the\ntarget’s Ability to\nSimple."

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
    movedescription MOVE_ENTRAINMENT, "The user dances\nwith an odd rhythm,\nmaking the target’s\nAbility the same as\nthe user’s Ability."

movedata MOVE_AFTER_YOU, "After You"
    battleeffect 305
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
    movedescription MOVE_AFTER_YOU, "The user helps the\ntarget and makes it\nuse its move right\nafter the user."

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
    flags FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_ROUND, "The user attacks\nwith a song. Others\ncan join in, doing\nmore damage."

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
    flags FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_ECHOED_VOICE, "The user attacks\nthe target with a\nharsh echo.\nIf used every turn,\npower increases."

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
    flags FLAG_CONTACT | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_CHIP_AWAY, "An attack which is\nnot affected by the\ntarget’s stat\nchanges."

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
    flags FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_CLEAR_SMOG, "The user throws a\nclump of special\nmud that reverts\nall stat changes."

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
    flags FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_STORED_POWER, "The user attacks\nwith a stored power\nthat grows with\neach raised stat."

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
    flags FLAG_SNATCH
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_QUICK_GUARD, "The user protects\nitself and its\nallies from priority\nmoves."

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
    movedescription MOVE_ALLY_SWITCH, "The user teleports\nusing a strange\npower and switches\nplaces with one of\nits allies."

movedata MOVE_SCALD, "Scald"
    battleeffect 125
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
    movedescription MOVE_SCALD, "Boiling water is\nshot at the foe.\nIt may also cause\na burn."

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
    flags FLAG_SNATCH
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_SHELL_SMASH, "Sharply raises\nAttack, Sp. Atk, and\nSpeed, but lowers\nDefense and Sp. Def."

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
    movedescription MOVE_HEAL_PULSE, "The user emits a\nhealing pulse that\nrestores a target’s\nHP by up to half."

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
    flags FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_HEX, "This attack does\ndouble damage to a\ntarget affected by\na status problem."

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
    movedescription MOVE_SKY_DROP, "It takes the enemy\ninto the sky,\nwhere it can’t\nattack. It is\ndropped next turn."

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
    flags FLAG_SNATCH
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_SHIFT_GEAR, "Rotating its gears,\nthe user raises its\nAttack and sharply\nraises its Speed."

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
    movedescription MOVE_CIRCLE_THROW, "The foe is made to\nswitch out with an\nally. In the wild,\nthe battle ends."

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
    flags FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_INCINERATE, "The user burns\nthe foe completely,\nrendering a held\nBerry useless."

movedata MOVE_QUASH, "Quash"
    battleeffect 306
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
    movedescription MOVE_QUASH, "The user suppresses\nthe target and makes\nits move go last."

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
    flags FLAG_CONTACT | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_ACROBATICS, "A nimble attack\nthat does double\ndamage if the user\nhas no held item."

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
    movedescription MOVE_REFLECT_TYPE, "The user reflects\nthe target’s type,\nmaking it the same\ntype as the target."

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
    movedescription MOVE_RETALIATE, "If an ally fainted\nin the previous\nturn, this attack’s\ndamage increases."

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
    flags FLAG_PROTECT | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_FINAL_GAMBIT, "The user risks all,\ndealing damage\nequal to its HP\nand then fainting\nfrom exhaustion."

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
    movedescription MOVE_BESTOW, "The user passes its\nheld item to the\ntarget when the\ntarget isn’t\nholding an item."

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
    movedescription MOVE_INFERNO, "The foe is engulfed\nby an intense fire\nthat is sure to\nleave a burn."

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
    movedescription MOVE_WATER_PLEDGE, "When combined with\nits fire equivalent,\nits power increases\nand a rainbow\nappears."

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
    movedescription MOVE_FIRE_PLEDGE, "When used with its\ngrass equivalent,\nits power increases\nand a vast sea of\nfire appears."

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
    movedescription MOVE_GRASS_PLEDGE, "When used with its\nwater equivalent,\nits power increases\nand a vast swamp\nappears."

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
    flags FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_VOLT_SWITCH, "After attacking,\nthe user switches\nplaces with a\nparty Pokémon."

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
    flags FLAG_PROTECT | FLAG_MIRROR_MOVE
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_STRUGGLE_BUG, "While resisting, the\nuser attacks the\nfoe, lowering its\nSp. Atk stat."

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
    movedescription MOVE_BULLDOZE, "The user hits all\nPokémon in battle\nby stomping. Lowers\nSpeed of those hit."

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
    movedescription MOVE_FROST_BREATH, "The user blows\ncold air at the foe.\nIt always results in\na critical hit."

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
    flags FLAG_CONTACT | FLAG_PROTECT | FLAG_MIRROR_MOVE
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_DRAGON_TAIL, "The foe is made to\nswitch out with an\nally. In the wild,\nthe battle ends."

movedata MOVE_WORK_UP, "Work Up"
    battleeffect 295
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
    movedescription MOVE_WORK_UP, "The user rouses\nitself to raise\nits Attack and\nSp. Atk stats."

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
    movedescription MOVE_ELECTROWEB, "The user traps the\nfoe in an electric\nnet. It also lowers\nthe foe’s Speed."

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
    flags FLAG_CONTACT | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_WILD_CHARGE, "The user throws an\nelectrified tackle.\nIt hurts the user\na little."

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
    flags FLAG_CONTACT | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_DRILL_RUN, "The user rotates\nits body like a\ndrill. It has a high\ncritical-hit ratio."

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
    movedescription MOVE_DUAL_CHOP, "The user hits\nthe foe with two\nbrutal strikes\nin one turn."

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
    movedescription MOVE_HEART_STAMP, "The foe is hit\nafter a cute act.\nIt may also make\nthe foe flinch."

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
    flags FLAG_CONTACT | FLAG_PROTECT | FLAG_MIRROR_MOVE
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_HORN_LEECH, "A harsh attack that\nabsorbs half the\ndamage it inflicted\nto restore HP."

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
    flags FLAG_CONTACT | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_SACRED_SWORD, "The user attacks by\nslicing with a long\nhorn. The target’s\nstat changes are\nignored."

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
    flags FLAG_CONTACT | FLAG_PROTECT | FLAG_MIRROR_MOVE
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_RAZOR_SHELL, "The foe is cut\nby sharp shells.\nIt may also lower\nthe foe’s Defense."

movedata MOVE_HEAT_CRASH, "Heat Crash"
    battleeffect 292
    pss SPLIT_PHYSICAL
    basepower 1
    type TYPE_FIRE
    accuracy 100
    pp 10
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_CONTACT | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_HEAT_CRASH, "The user slams down\nwith fire. The more\nthe user outweighs\nthe foe, the greater\nthe damage."

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
    flags FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_LEAF_TORNADO, "Sharp leaves circle\nthe foe. It may also\nlower the foe’s\naccuracy."

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
    flags FLAG_CONTACT | FLAG_PROTECT | FLAG_MIRROR_MOVE
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_STEAMROLLER, "The user crushes\nthe foe with its\nbody. It may also\nmake the foe flinch."

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
    flags FLAG_SNATCH
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_COTTON_GUARD, "The user protects\nitself with cotton,\ndrastically raising\nits Defense."

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
    flags FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_NIGHT_DAZE, "The user releases a\npitch-black blast\nat its target. May\nalso lower target’s\naccuracy."

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
    flags FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_PSYSTRIKE, "An odd psychic wave\nattacks the target.\nThis attack does\nphysical damage."

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
    flags FLAG_CONTACT | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_TAIL_SLAP, "The use attacks by\nhitting the target\nwith its hard tail.\nIt hits two to five\ntimes in a row."

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
    flags FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_HURRICANE, "The foe is caught\nin a fierce wind.\nIt may also confuse\nthe foe."

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
    flags FLAG_CONTACT | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_HEAD_CHARGE, "The user charges its\nhead into its foe,\nusing its guard hair.\nIt slightly damages\nthe user."

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
    flags FLAG_CONTACT | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_GEAR_GRIND, "The user attacks by\nthrowing two steel\ngears at it target.\nThis attack hits\ntwice in a row."

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
    movedescription MOVE_SEARING_SHOT, "The user torches\neverything around it\nin an inferno of\nscarlet flames. It\nmay burn the foes."

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
    movedescription MOVE_TECHNO_BLAST, "The user fires a beam\nof light at its foe.\nThe type changes\ndepending on the\nDrive held."

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
    movedescription MOVE_RELIC_SONG, "The user sings an\nancient song and\nattacks the hearts of\nthe listeners. It\nmay induce sleep."

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
    movedescription MOVE_SECRET_SWORD, "The user cuts with\nits long horn. The\nodd power in the\nhorn does physical\ndamage to the foe."

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
    movedescription MOVE_GLACIATE, "The user attacks by\nblowing freezing cold\nair at opposing\nPokémon. This lowers\ntheir Speed."

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
    movedescription MOVE_BOLT_STRIKE, "The user surrounds\nitself with abundant\nelectricity that can\nparalyze and charges\nits target."

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
    movedescription MOVE_BLUE_FLARE, "The user attacks by\nengulfing the foe in\na severe, beautiful,\nblue flame. It may\nburn the foe."

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
    flags FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_FIERY_DANCE, "Cloaked in flames,\nthe user dances.\nIt may also raise\nthe user’s Sp. Atk."

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
    movedescription MOVE_FREEZE_SHOCK, "A two-turn attack\nthat hits the foe\nwith electrically\ncharged ice. It may\nparalyze the foe."

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
    movedescription MOVE_ICE_BURN, "A two-turn attack\nthat surrounds the\nfoe with ultracold,\nfreezing wind. It\nmay burn the foe."

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
    movedescription MOVE_SNARL, "The user barks\nmenacingly. It\nalso lowers the\nfoe’s Sp. Atk."

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
    movedescription MOVE_ICICLE_CRASH, "Icicles are dropped\non the foe. It may\nalso make the foe\nflinch."

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
    movedescription MOVE_V_CREATE, "The user hurls the\nhot flame on its\nforehead. It lowers\nthe user’s Def, Sp.\nDef, and Speed."

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
    movedescription MOVE_FUSION_FLARE, "The user brings down\na huge flame. It does\nmore damage when\ninfluenced by an\nenormous bolt."

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
    movedescription MOVE_FUSION_BOLT, "The user throws down\na giant bolt. It does\nmore damage when\ninfluenced by an\nenormous flame."


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
    movedescription MOVE_FLYING_PRESS, "---"

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
    movedescription MOVE_MAT_BLOCK, "---"

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
    movedescription MOVE_BELCH, "---"

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
    movedescription MOVE_ROTOTILLER, "---"

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
    movedescription MOVE_STICKY_WEB, "---"

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
    movedescription MOVE_FELL_STINGER, "---"

movedata MOVE_PHANTOM_FORCE, "Phantom Force"
    battleeffect 272
    pss SPLIT_PHYSICAL
    basepower 90
    type TYPE_GHOST
    accuracy 100
    pp 10
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_PHANTOM_FORCE, "---"

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
    movedescription MOVE_TRICK_OR_TREAT, "---"

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
    movedescription MOVE_NOBLE_ROAR, "---"

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
    movedescription MOVE_ION_DELUGE, "---"

movedatalongname MOVE_PARABOLIC_CHARGE, "ParabolicCharge", "Parabolic Charge"
    battleeffect 3
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
    movedescription MOVE_PARABOLIC_CHARGE, "---"

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
    movedescription MOVE_FORESTS_CURSE, "---"

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
    flags FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_PETAL_BLIZZARD, "---"

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
    flags FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_FREEZE_DRY, "---"

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
    flags FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_DISARMING_VOICE, "---"

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
    movedescription MOVE_PARTING_SHOT, "---"

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
    movedescription MOVE_TOPSY_TURVY, "---"

movedata MOVE_DRAINING_KISS, "Draining Kiss"
    battleeffect 3
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
    movedescription MOVE_DRAINING_KISS, "---"

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
    movedescription MOVE_CRAFTY_SHIELD, "---"

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
    movedescription MOVE_FLOWER_SHIELD, "---"

movedata MOVE_GRASSY_TERRAIN, "Grassy Terrain"
    battleeffect 294
    pss SPLIT_STATUS
    basepower 0
    type TYPE_GRASS
    accuracy 0
    pp 10
    effectchance 0
    target MOVE_TARGET_ACTIVE_FIELD
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT
    appeal 0x05
    contesttype CONTEST_BEAUTY
    terminatedata
    movedescription MOVE_GRASSY_TERRAIN, "---"

movedata MOVE_MISTY_TERRAIN, "Misty Terrain"
    battleeffect 294
    pss SPLIT_STATUS
    basepower 0
    type (FAIRY_TYPE_IMPLEMENTED) ? TYPE_FAIRY : TYPE_NORMAL
    accuracy 0
    pp 10
    effectchance 0
    target MOVE_TARGET_ACTIVE_FIELD
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT
    appeal 0x05
    contesttype CONTEST_BEAUTY
    terminatedata
    movedescription MOVE_MISTY_TERRAIN, "---"

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
    movedescription MOVE_ELECTRIFY, "---"

movedata MOVE_PLAY_ROUGH, "Play Rough"
    battleeffect 68
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
    movedescription MOVE_PLAY_ROUGH, "---"

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
    movedescription MOVE_FAIRY_WIND, "---"

movedata MOVE_MOONBLAST, "Moonblast"
    battleeffect 71
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
    movedescription MOVE_MOONBLAST, "---"

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
    movedescription MOVE_BOOMBURST, "---"

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
    movedescription MOVE_FAIRY_LOCK, "---"

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
    movedescription MOVE_KINGS_SHIELD, "---"

movedata MOVE_PLAY_NICE, "Play Nice"
    battleeffect 18
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
    movedescription MOVE_PLAY_NICE, "---"

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
    movedescription MOVE_CONFIDE, "---"

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
    movedescription MOVE_DIAMOND_STORM, "---"

movedata MOVE_STEAM_ERUPTION, "Steam Eruption"
    battleeffect 125
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
    movedescription MOVE_STEAM_ERUPTION, "---"

movedata MOVE_HYPERSPACE_HOLE, "Hyperspace Hole"
    battleeffect 223
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
    movedescription MOVE_HYPERSPACE_HOLE, "---"

movedata MOVE_WATER_SHURIKEN, "Water Shuriken"
    battleeffect 29
    pss SPLIT_SPECIAL
    basepower 15
    type TYPE_WATER
    accuracy 100
    pp 20
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 1
    flags FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_WATER_SHURIKEN, "---"

movedata MOVE_MYSTICAL_FIRE, "Mystical Fire"
    battleeffect 71
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
    movedescription MOVE_MYSTICAL_FIRE, "---"

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
    movedescription MOVE_SPIKY_SHIELD, "---"

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
    movedescription MOVE_AROMATIC_MIST, "---"

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
    movedescription MOVE_EERIE_IMPULSE, "---"

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
    movedescription MOVE_VENOM_DRENCH, "---"

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
    movedescription MOVE_POWDER, "---"

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
    movedescription MOVE_GEOMANCY, "---"

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
    movedescription MOVE_MAGNETIC_FLUX, "---"

movedata MOVE_HAPPY_HOUR, "Happy Hour"
    battleeffect 85
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
    movedescription MOVE_HAPPY_HOUR, "---"

movedatalongname MOVE_ELECTRIC_TERRAIN, "ElectricTerrain", "Electric Terrain"
    battleeffect 294
    pss SPLIT_STATUS
    basepower 0
    type TYPE_ELECTRIC
    accuracy 0
    pp 10
    effectchance 0
    target MOVE_TARGET_ACTIVE_FIELD
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT
    appeal 0x05
    contesttype CONTEST_SMART // Prior to Pokémon Omega Ruby and Alpha Sapphire, it was known as the Smart condition.
    terminatedata
    movedescription MOVE_ELECTRIC_TERRAIN, "---"

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
    movedescription MOVE_DAZZLING_GLEAM, "---"

movedata MOVE_CELEBRATE, "Celebrate"
    battleeffect 85
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
    movedescription MOVE_CELEBRATE, "---"

movedata MOVE_HOLD_HANDS, "Hold Hands"
    battleeffect 85
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
    movedescription MOVE_HOLD_HANDS, "---"

movedata MOVE_BABY_DOLL_EYES, "Baby-Doll Eyes"
    battleeffect 18
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
    movedescription MOVE_BABY_DOLL_EYES, "---"

movedata MOVE_NUZZLE, "Nuzzle"
    battleeffect 6
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
    movedescription MOVE_NUZZLE, "---"

movedata MOVE_HOLD_BACK, "Hold Back"
    battleeffect 101
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
    movedescription MOVE_HOLD_BACK, "---"

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
    flags FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_INFESTATION, "---"

movedata MOVE_POWER_UP_PUNCH, "Power-Up Punch"
    battleeffect 139
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
    movedescription MOVE_POWER_UP_PUNCH, "---"

movedata MOVE_OBLIVION_WING, "Oblivion Wing"
    battleeffect 3
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
    movedescription MOVE_OBLIVION_WING, "---"

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
    movedescription MOVE_THOUSAND_ARROWS, "---"

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
    movedescription MOVE_THOUSAND_WAVES, "---"

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
    movedescription MOVE_LANDS_WRATH, "---"

movedata MOVE_LIGHT_OF_RUIN, "Light of Ruin"
    battleeffect 269
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
    movedescription MOVE_LIGHT_OF_RUIN, "---"

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
    movedescription MOVE_ORIGIN_PULSE, "---"

movedatalongname MOVE_PRECIPICE_BLADES, "Precipice Blade", "Precipice Blades"
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
    movedescription MOVE_PRECIPICE_BLADES, "---"

movedata MOVE_DRAGON_ASCENT, "Dragon Ascent"
    battleeffect 229
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
    movedescription MOVE_DRAGON_ASCENT, "---"

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
    movedescription MOVE_HYPERSPACE_FURY, "---"

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
    movedescription MOVE_BREAKNECK_BLITZ_PHYSICAL, "---"

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
    movedescription MOVE_BREAKNECK_BLITZ_SPECIAL, "---"

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
    movedescription MOVE_ALL_OUT_PUMMELING_PHYSICAL, "---"

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
    movedescription MOVE_ALL_OUT_PUMMELING_SPECIAL, "---"

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
    movedescription MOVE_SUPERSONIC_SKYSTRIKE_PHYSICAL, "---"

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
    movedescription MOVE_SUPERSONIC_SKYSTRIKE_SPECIAL, "---"

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
    movedescription MOVE_ACID_DOWNPOUR_PHYSICAL, "---"

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
    movedescription MOVE_ACID_DOWNPOUR_SPECIAL, "---"

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
    movedescription MOVE_TECTONIC_RAGE_PHYSICAL, "---"

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
    movedescription MOVE_TECTONIC_RAGE_SPECIAL, "---"

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
    movedescription MOVE_CONTINENTAL_CRUSH_PHYSICAL, "---"

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
    movedescription MOVE_CONTINENTAL_CRUSH_SPECIAL, "---"

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
    movedescription MOVE_SAVAGE_SPIN_OUT_PHYSICAL, "---"

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
    movedescription MOVE_SAVAGE_SPIN_OUT_SPECIAL, "---"

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
    movedescription MOVE_NEVER_ENDING_NIGHTMARE_PHYSICAL, "---"

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
    movedescription MOVE_NEVER_ENDING_NIGHTMARE_SPECIAL, "---"

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
    movedescription MOVE_CORKSCREW_CRASH_PHYSICAL, "---"

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
    movedescription MOVE_CORKSCREW_CRASH_SPECIAL, "---"

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
    movedescription MOVE_INFERNO_OVERDRIVE_PHYSICAL, "---"

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
    movedescription MOVE_INFERNO_OVERDRIVE_SPECIAL, "---"

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
    movedescription MOVE_HYDRO_VORTEX_PHYSICAL, "---"

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
    movedescription MOVE_HYDRO_VORTEX_SPECIAL, "---"

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
    movedescription MOVE_BLOOM_DOOM_PHYSICAL, "---"

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
    movedescription MOVE_BLOOM_DOOM_SPECIAL, "---"

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
    movedescription MOVE_GIGAVOLT_HAVOC_PHYSICAL, "---"

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
    movedescription MOVE_GIGAVOLT_HAVOC_SPECIAL, "---"

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
    movedescription MOVE_SHATTERED_PSYCHE_PHYSICAL, "---"

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
    movedescription MOVE_SHATTERED_PSYCHE_SPECIAL, "---"

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
    movedescription MOVE_SUBZERO_SLAMMER_PHYSICAL, "---"

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
    movedescription MOVE_SUBZERO_SLAMMER_SPECIAL, "---"

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
    movedescription MOVE_DEVASTATING_DRAKE_PHYSICAL, "---"

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
    movedescription MOVE_DEVASTATING_DRAKE_SPECIAL, "---"

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
    movedescription MOVE_BLACK_HOLE_ECLIPSE_PHYSICAL, "---"

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
    movedescription MOVE_BLACK_HOLE_ECLIPSE_SPECIAL, "---"

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
    movedescription MOVE_TWINKLE_TACKLE_PHYSICAL, "---"

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
    movedescription MOVE_TWINKLE_TACKLE_SPECIAL, "---"

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
    movedescription MOVE_CATASTROPIKA, "---"

movedata MOVE_SHORE_UP, "Shore Up"
    battleeffect 0
    pss SPLIT_STATUS
    basepower 0
    type TYPE_GROUND
    accuracy 0
    pp 5
    effectchance 0
    target MOVE_TARGET_USER
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_SHORE_UP, "---"

movedatalongname MOVE_FIRST_IMPRESSION, "FirstImpression", "First Impression"
    battleeffect 158
    pss SPLIT_PHYSICAL
    basepower 90
    type TYPE_BUG
    accuracy 100
    pp 10
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 2
    flags FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_FIRST_IMPRESSION, "---"

movedata MOVE_BANEFUL_BUNKER, "Baneful Bunker"
    battleeffect 111
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
    movedescription MOVE_BANEFUL_BUNKER, "---"

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
    movedescription MOVE_SPIRIT_SHACKLE, "---"

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
    flags FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_DARKEST_LARIAT, "---"

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
    movedescription MOVE_SPARKLING_ARIA, "---"

movedata MOVE_ICE_HAMMER, "Ice Hammer"
    battleeffect 218
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
    movedescription MOVE_ICE_HAMMER, "---"

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
    movedescription MOVE_FLORAL_HEALING, "---"

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
    flags FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_HIGH_HORSEPOWER, "---"

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
    movedescription MOVE_STRENGTH_SAP, "---"

movedata MOVE_SOLAR_BLADE, "Solar Blade"
    battleeffect 151
    pss SPLIT_PHYSICAL
    basepower 125
    type TYPE_GRASS
    accuracy 100
    pp 10
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_SOLAR_BLADE, "---"

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
    flags FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_LEAFAGE, "---"

movedata MOVE_SPOTLIGHT, "Spotlight"
    battleeffect 172
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
    movedescription MOVE_SPOTLIGHT, "---"

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
    movedescription MOVE_TOXIC_THREAD, "---"

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
    movedescription MOVE_LASER_FOCUS, "---"

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
    movedescription MOVE_GEAR_UP, "---"

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
    movedescription MOVE_THROAT_CHOP, "---"

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
    flags FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_POLLEN_PUFF, "---"

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
    movedescription MOVE_ANCHOR_SHOT, "---"

movedata MOVE_PSYCHIC_TERRAIN, "Psychic Terrain"
    battleeffect 294
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
    movedescription MOVE_PSYCHIC_TERRAIN, "---"

movedata MOVE_LUNGE, "Lunge"
    battleeffect 68
    pss SPLIT_PHYSICAL
    basepower 80
    type TYPE_BUG
    accuracy 100
    pp 15
    effectchance 100
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_LUNGE, "---"

movedata MOVE_FIRE_LASH, "Fire Lash"
    battleeffect 69
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
    movedescription MOVE_FIRE_LASH, "---"

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
    flags FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_POWER_TRIP, "---"

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
    movedescription MOVE_BURN_UP, "---"

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
    movedescription MOVE_SPEED_SWAP, "---"

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
    flags FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_SMART_STRIKE, "---"

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
    movedescription MOVE_PURIFY, "---"

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
    movedescription MOVE_REVELATION_DANCE, "---"

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
    movedescription MOVE_CORE_ENFORCER, "---"

movedata MOVE_TROP_KICK, "Trop Kick"
    battleeffect 68
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
    movedescription MOVE_TROP_KICK, "---"

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
    movedescription MOVE_INSTRUCT, "---"

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
    movedescription MOVE_BEAK_BLAST, "---"

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
    movedescription MOVE_CLANGING_SCALES, "---"

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
    movedescription MOVE_DRAGON_HAMMER, "---"

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
    flags FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_BRUTAL_SWING, "---"

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
    movedescription MOVE_AURORA_VEIL, "---"

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
    movedescription MOVE_SINISTER_ARROW_RAID, "---"

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
    movedescription MOVE_MALICIOUS_MOONSAULT, "---"

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
    movedescription MOVE_OCEANIC_OPERETTA, "---"

movedata MOVE_GUARDIAN_OF_ALOLA, "Guardian of Alola"
    battleeffect 40
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
    movedescription MOVE_GUARDIAN_OF_ALOLA, "---"

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
    movedescription MOVE_SOUL_STEALING_7_STAR_STRIKE, "---"

movedata MOVE_STOKED_SPARKSURFER, "Stoked Sparksurfer"
    battleeffect 6
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
    movedescription MOVE_STOKED_SPARKSURFER, "---"

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
    movedescription MOVE_PULVERIZING_PANCAKE, "---"

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
    movedescription MOVE_EXTREME_EVOBOOST, "---"

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
    movedescription MOVE_GENESIS_SUPERNOVA, "---"

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
    movedescription MOVE_SHELL_TRAP, "---"

movedata MOVE_FLEUR_CANNON, "Fleur Cannon"
    battleeffect 204
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
    movedescription MOVE_FLEUR_CANNON, "---"

movedata MOVE_PSYCHIC_FANGS, "Psychic Fangs"
    battleeffect 186
    pss SPLIT_PHYSICAL
    basepower 85
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
    movedescription MOVE_PSYCHIC_FANGS, "---"

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
    movedescription MOVE_STOMPING_TANTRUM, "---"

movedata MOVE_SHADOW_BONE, "Shadow Bone"
    battleeffect 69
    pss SPLIT_PHYSICAL
    basepower 85
    type TYPE_GHOST
    accuracy 100
    pp 10
    effectchance 20
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_SHADOW_BONE, "---"

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
    movedescription MOVE_ACCELEROCK, "---"

movedata MOVE_LIQUIDATION, "Liquidation"
    battleeffect 69
    pss SPLIT_PHYSICAL
    basepower 85
    type TYPE_WATER
    accuracy 100
    pp 10
    effectchance 20
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_LIQUIDATION, "---"

movedata MOVE_PRISMATIC_LASER, "Prismatic Laser"
    battleeffect 80
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
    movedescription MOVE_PRISMATIC_LASER, "---"

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
    movedescription MOVE_SPECTRAL_THIEF, "---"

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
    movedescription MOVE_SUNSTEEL_STRIKE, "---"

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
    movedescription MOVE_MOONGEIST_BEAM, "---"

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
    movedescription MOVE_TEARFUL_LOOK, "---"

movedata MOVE_ZING_ZAP, "Zing Zap"
    battleeffect 31
    pss SPLIT_PHYSICAL
    basepower 80
    type TYPE_ELECTRIC
    accuracy 100
    pp 10
    effectchance 30
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_ZING_ZAP, "---"

movedata MOVE_NATURES_MADNESS, "Nature’s Madness"
    battleeffect 40
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
    movedescription MOVE_NATURES_MADNESS, "---"

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
    movedescription MOVE_MULTI_ATTACK, "---"

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
    movedescription MOVE_10_000_000_VOLT_THUNDERBOLT, "---"

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
    movedescription MOVE_MIND_BLOWN, "---"

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
    movedescription MOVE_PLASMA_FISTS, "---"

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
    movedescription MOVE_PHOTON_GEYSER, "---"

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
    movedescription MOVE_LIGHT_THAT_BURNS_THE_SKY, "---"

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
    movedescription MOVE_SEARING_SUNRAZE_SMASH, "---"

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
    movedescription MOVE_MENACING_MOONRAZE_MAELSTROM, "---"

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
    movedescription MOVE_LETS_SNUGGLE_FOREVER, "---"

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
    movedescription MOVE_SPLINTERED_STORMSHARDS, "---"

movedata MOVE_CLANGOROUS_SOULBLAZE, "Clangorous Soulblaze"
    battleeffect 140
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
    movedescription MOVE_CLANGOROUS_SOULBLAZE, "---"

movedata MOVE_ZIPPY_ZAP, "Zippy Zap"
	battleeffect 282
    pss SPLIT_PHYSICAL
    basepower 80
    type TYPE_ELECTRIC
    accuracy 100
    pp 10
    effectchance 100
    target MOVE_TARGET_SELECTED
    priority 2
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_ZIPPY_ZAP, "---"

movedata MOVE_SPLISHY_SPLASH, "Splishy Splash"
    battleeffect 6
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
    movedescription MOVE_SPLISHY_SPLASH, "---"

movedata MOVE_FLOATY_FALL, "Floaty Fall"
    battleeffect 31
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
    movedescription MOVE_FLOATY_FALL, "---"

movedata MOVE_PIKA_PAPOW, "Pika Papow"
    battleeffect 121
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
    movedescription MOVE_PIKA_PAPOW, "---"

movedata MOVE_BOUNCY_BUBBLE, "Bouncy Bubble"
    battleeffect 3
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
    movedescription MOVE_BOUNCY_BUBBLE, "---"

movedata MOVE_BUZZY_BUZZ, "Buzzy Buzz"
    battleeffect 6
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
    movedescription MOVE_BUZZY_BUZZ, "---"

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
    movedescription MOVE_SIZZLY_SLIDE, "---"

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
    movedescription MOVE_GLITZY_GLOW, "---"

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
    movedescription MOVE_BADDY_BAD, "---"

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
    movedescription MOVE_SAPPY_SEED, "---"

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
    movedescription MOVE_FREEZY_FROST, "---"

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
    movedescription MOVE_SPARKLY_SWIRL, "---"

movedata MOVE_VEEVEE_VOLLEY, "Veevee Volley"
    battleeffect 121
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
    movedescription MOVE_VEEVEE_VOLLEY, "---"

movedatalongname MOVE_DOUBLE_IRON_BASH, "Double IronBash", "Double Iron Bash"
    battleeffect 296
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
    movedescription MOVE_DOUBLE_IRON_BASH, "---"

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
    movedescription MOVE_MAX_GUARD, "---"

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
    movedescription MOVE_DYNAMAX_CANNON, "---"

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
    movedescription MOVE_SNIPE_SHOT, "---"

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
    movedescription MOVE_JAW_LOCK, "---"

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
    movedescription MOVE_STUFF_CHEEKS, "---"

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
    movedescription MOVE_NO_RETREAT, "---"

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
    movedescription MOVE_TAR_SHOT, "---"

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
    movedescription MOVE_MAGIC_POWDER, "---"

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
    movedescription MOVE_DRAGON_DARTS, "---"

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
    movedescription MOVE_TEATIME, "---"

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
    movedescription MOVE_OCTOLOCK, "---"

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
    movedescription MOVE_BOLT_BEAK, "---"

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
    movedescription MOVE_FISHIOUS_REND, "---"

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
    movedescription MOVE_COURT_CHANGE, "---"

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
    movedescription MOVE_MAX_FLARE, "---"

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
    movedescription MOVE_MAX_FLUTTERBY, "---"

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
    movedescription MOVE_MAX_LIGHTNING, "---"

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
    movedescription MOVE_MAX_STRIKE, "---"

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
    movedescription MOVE_MAX_KNUCKLE, "---"

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
    movedescription MOVE_MAX_PHANTASM, "---"

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
    movedescription MOVE_MAX_HAILSTORM, "---"

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
    movedescription MOVE_MAX_OOZE, "---"

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
    movedescription MOVE_MAX_GEYSER, "---"

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
    movedescription MOVE_MAX_AIRSTREAM, "---"

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
    movedescription MOVE_MAX_STARFALL, "---"

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
    movedescription MOVE_MAX_WYRMWIND, "---"

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
    movedescription MOVE_MAX_MINDSTORM, "---"

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
    movedescription MOVE_MAX_ROCKFALL, "---"

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
    movedescription MOVE_MAX_QUAKE, "---"

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
    movedescription MOVE_MAX_DARKNESS, "---"

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
    movedescription MOVE_MAX_OVERGROWTH, "---"

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
    movedescription MOVE_MAX_STEELSPIKE, "---"

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
    movedescription MOVE_CLANGOROUS_SOUL, "---"

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
    flags FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_BODY_PRESS, "---"

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
    movedescription MOVE_DECORATE, "---"

movedata MOVE_DRUM_BEATING, "Drum Beating"
    battleeffect 70
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
    movedescription MOVE_DRUM_BEATING, "---"

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
    movedescription MOVE_SNAP_TRAP, "---"

movedata MOVE_PYRO_BALL, "Pyro Ball"
    battleeffect 4
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
    movedescription MOVE_PYRO_BALL, "---"

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
    movedescription MOVE_BEHEMOTH_BLADE, "---"

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
    movedescription MOVE_BEHEMOTH_BASH, "---"

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
    movedescription MOVE_AURA_WHEEL, "---"

movedata MOVE_BREAKING_SWIPE, "Breaking Swipe"
    battleeffect 68
    pss SPLIT_PHYSICAL
    basepower 60
    type TYPE_DRAGON
    accuracy 100
    pp 15
    effectchance 100
    target MOVE_TARGET_BOTH
    priority 0
    flags FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_BREAKING_SWIPE, "---"

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
    movedescription MOVE_BRANCH_POKE, "---"

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
    movedescription MOVE_OVERDRIVE, "---"

movedata MOVE_APPLE_ACID, "Apple Acid"
    battleeffect 72
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
    movedescription MOVE_APPLE_ACID, "---"

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
    movedescription MOVE_GRAV_APPLE, "---"

movedata MOVE_SPIRIT_BREAK, "Spirit Break"
    battleeffect 71
    pss SPLIT_PHYSICAL
    basepower 75
    type (FAIRY_TYPE_IMPLEMENTED) ? TYPE_FAIRY : TYPE_NORMAL
    accuracy 100
    pp 15
    effectchance 100
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_SPIRIT_BREAK, "---"

movedata MOVE_STRANGE_STEAM, "Strange Steam"
    battleeffect 76
    pss SPLIT_SPECIAL
    basepower 90
    type (FAIRY_TYPE_IMPLEMENTED) ? TYPE_FAIRY : TYPE_NORMAL
    accuracy 95
    pp 10
    effectchance 20
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_STRANGE_STEAM, "---"

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
    movedescription MOVE_LIFE_DEW, "---"

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
    movedescription MOVE_OBSTRUCT, "---"

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
    movedescription MOVE_FALSE_SURRENDER, "---"

movedata MOVE_METEOR_ASSAULT, "Meteor Assault"
    battleeffect 80
    pss SPLIT_PHYSICAL
    basepower 150
    type TYPE_FIGHTING
    accuracy 100
    pp 5
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_METEOR_ASSAULT, "---"

movedata MOVE_ETERNABEAM, "Eternabeam"
    battleeffect 80
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
    movedescription MOVE_ETERNABEAM, "---"

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
    flags FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_STEEL_BEAM, "---"

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
    movedescription MOVE_EXPANDING_FORCE, "---"

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
    movedescription MOVE_STEEL_ROLLER, "---"

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
    flags FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_SCALE_SHOT, "---"

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
    movedescription MOVE_METEOR_BEAM, "---"

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
    movedescription MOVE_SHELL_SIDE_ARM, "---"

movedata MOVE_MISTY_EXPLOSION, "Misty Explosion"
    battleeffect 7
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
    movedescription MOVE_MISTY_EXPLOSION, "---"

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
    movedescription MOVE_GRASSY_GLIDE, "---"

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
    movedescription MOVE_RISING_VOLTAGE, "---"

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
    movedescription MOVE_TERRAIN_PULSE, "---"

movedata MOVE_SKITTER_SMACK, "Skitter Smack"
    battleeffect 71
    pss SPLIT_PHYSICAL
    basepower 70
    type TYPE_BUG
    accuracy 90
    pp 10
    effectchance 100
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_SKITTER_SMACK, "---"

movedata MOVE_BURNING_JEALOUSY, "Burning Jealousy"
    battleeffect 4
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
    movedescription MOVE_BURNING_JEALOUSY, "---"

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
    movedescription MOVE_LASH_OUT, "---"

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
    flags FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_POLTERGEIST, "---"

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
    movedescription MOVE_CORROSIVE_GAS, "---"

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
    movedescription MOVE_COACHING, "---"

movedata MOVE_FLIP_TURN, "Flip Turn"
    battleeffect 228
    pss SPLIT_PHYSICAL
    basepower 60
    type TYPE_WATER
    accuracy 100
    pp 20
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_FLIP_TURN, "---"

movedata MOVE_TRIPLE_AXEL, "Triple Axel"
    battleeffect 298
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
    movedescription MOVE_TRIPLE_AXEL, "---"

movedata MOVE_DUAL_WINGBEAT, "Dual Wingbeat"
    battleeffect 44
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
    movedescription MOVE_DUAL_WINGBEAT, "---"

movedata MOVE_SCORCHING_SANDS, "Scorching Sands"
    battleeffect 4
    pss SPLIT_SPECIAL
    basepower 70
    type TYPE_GROUND
    accuracy 100
    pp 10
    effectchance 30
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_SCORCHING_SANDS, "---"

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
    movedescription MOVE_JUNGLE_HEALING, "---"

movedata MOVE_WICKED_BLOW, "Wicked Blow"
    battleeffect 282
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
    movedescription MOVE_WICKED_BLOW, "---"

movedata MOVE_SURGING_STRIKES, "Surging Strikes"
    battleeffect 282
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
    movedescription MOVE_SURGING_STRIKES, "---"

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
    movedescription MOVE_THUNDER_CAGE, "---"

movedata MOVE_DRAGON_ENERGY, "Dragon Energy"
    battleeffect 190
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
    movedescription MOVE_DRAGON_ENERGY, "---"

movedata MOVE_FREEZING_GLARE, "Freezing Glare"
    battleeffect 5
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
    movedescription MOVE_FREEZING_GLARE, "---"

movedata MOVE_FIERY_WRATH, "Fiery Wrath"
    battleeffect 31
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
    movedescription MOVE_FIERY_WRATH, "---"

movedata MOVE_THUNDEROUS_KICK, "Thunderous Kick"
    battleeffect 69
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
    movedescription MOVE_THUNDEROUS_KICK, "---"

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
    movedescription MOVE_GLACIAL_LANCE, "---"

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
    movedescription MOVE_ASTRAL_BARRAGE, "---"

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
    movedescription MOVE_EERIE_SPELL, "---"

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
    flags FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_DIRE_CLAW, "---"

movedata MOVE_PSYSHIELD_BASH, "Psyshield Bash"
    battleeffect 138
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
    movedescription MOVE_PSYSHIELD_BASH, "---"

movedata MOVE_POWER_SHIFT, "Power Shift"
    battleeffect 238
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
    movedescription MOVE_POWER_SHIFT, "---"

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
    movedescription MOVE_STONE_AXE, "---"

movedata MOVE_SPRINGTIDE_STORM, "Springtide Storm"
    battleeffect 68
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
    movedescription MOVE_SPRINGTIDE_STORM, "---"

movedata MOVE_MYSTICAL_POWER, "Mystical Power"
    battleeffect 276
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
    movedescription MOVE_MYSTICAL_POWER, "---"

movedata MOVE_RAGING_FURY, "Raging Fury"
    battleeffect 27
    pss SPLIT_PHYSICAL
    basepower 120
    type TYPE_FIRE
    accuracy 100
    pp 10
    effectchance 0
    target MOVE_TARGET_RANDOM
    priority 0
    flags FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_RAGING_FURY, "---"

movedata MOVE_WAVE_CRASH, "Wave Crash"
    battleeffect 198
    pss SPLIT_PHYSICAL
    basepower 120
    type TYPE_WATER
    accuracy 100
    pp 10
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_WAVE_CRASH, "---"

movedata MOVE_CHLOROBLAST, "Chloroblast"
    battleeffect 269
    pss SPLIT_SPECIAL
    basepower 150
    type TYPE_GRASS
    accuracy 95
    pp 5
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_CHLOROBLAST, "---"

movedata MOVE_MOUNTAIN_GALE, "Mountain Gale"
    battleeffect 31
    pss SPLIT_PHYSICAL
    basepower 100
    type TYPE_ICE
    accuracy 85
    pp 10
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_MOUNTAIN_GALE, "---"

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
    movedescription MOVE_VICTORY_DANCE, "---"

movedata MOVE_HEADLONG_RUSH, "Headlong Rush"
    battleeffect 229
    pss SPLIT_PHYSICAL
    basepower 120
    type TYPE_GROUND
    accuracy 100
    pp 5
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_HEADLONG_RUSH, "---"

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
    flags FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_BARB_BARRAGE, "---"

movedata MOVE_ESPER_WING, "Esper Wing"
    battleeffect 285
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
    movedescription MOVE_ESPER_WING, "---"

movedata MOVE_BITTER_MALICE, "Bitter Malice"
    battleeffect 68
    pss SPLIT_SPECIAL
    basepower 75
    type TYPE_GHOST
    accuracy 100
    pp 10
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_BITTER_MALICE, "---"

movedata MOVE_SHELTER, "Shelter"
    battleeffect 51
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
    movedescription MOVE_SHELTER, "---"

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
    movedescription MOVE_TRIPLE_ARROWS, "---"

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
    movedescription MOVE_INFERNAL_PARADE, "---"

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
    movedescription MOVE_CEASELESS_EDGE, "---"

movedata MOVE_BLEAKWIND_STORM, "Bleakwind Storm"
    battleeffect 70
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
    movedescription MOVE_BLEAKWIND_STORM, "---"

movedata MOVE_WILDBOLT_STORM, "Wildbolt Storm"
    battleeffect 6
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
    movedescription MOVE_WILDBOLT_STORM, "---"

movedata MOVE_SANDSEAR_STORM, "Sandsear Storm"
    battleeffect 4
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
    movedescription MOVE_SANDSEAR_STORM, "---"

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
    movedescription MOVE_LUNAR_BLESSING, "---"

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
    movedescription MOVE_TAKE_HEART, "---"

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
    movedescription MOVE_TERA_BLAST, "---"

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
    movedescription MOVE_SILK_TRAP, "---"

movedata MOVE_AXE_KICK, "Axe Kick"
    battleeffect 293
    pss SPLIT_PHYSICAL
    basepower 120
    type TYPE_FIGHTING
    accuracy 90
    pp 10
    effectchance 30
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK | FLAG_CONTACT
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_AXE_KICK, "---"

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
    movedescription MOVE_LAST_RESPECTS, "---"

movedata MOVE_LUMINA_CRASH, "Lumina Crash"
    battleeffect 271
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
    movedescription MOVE_LUMINA_CRASH, "---"

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
    movedescription MOVE_ORDER_UP, "---"

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
    flags FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_JET_PUNCH, "---"

movedata MOVE_SPICY_EXTRACT, "Spicy Extract"
    battleeffect 302
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
    movedescription MOVE_SPICY_EXTRACT, "---"

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
    movedescription MOVE_SPIN_OUT, "---"

movedata MOVE_POPULATION_BOMB, "Population Bomb"
    battleeffect 297
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
    movedescription MOVE_POPULATION_BOMB, "---"

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
    flags FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_ICE_SPINNER, "---"

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
    movedescription MOVE_GLAIVE_RUSH, "---"

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
    movedescription MOVE_REVIVAL_BLESSING, "---"

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
    movedescription MOVE_SALT_CURE, "---"

movedata MOVE_TRIPLE_DIVE, "Triple Dive"
    battleeffect 299
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
    movedescription MOVE_TRIPLE_DIVE, "---"

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
    movedescription MOVE_MORTAL_SPIN, "---"

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
    movedescription MOVE_DOODLE, "---"

movedata MOVE_FILLET_AWAY, "Fillet Away"
    battleeffect 303
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
    movedescription MOVE_FILLET_AWAY, "---"

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
    flags FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_KOWTOW_CLEAVE, "---"

movedata MOVE_FLOWER_TRICK, "Flower Trick"
    battleeffect 282
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
    movedescription MOVE_FLOWER_TRICK, "---"

movedata MOVE_TORCH_SONG, "Torch Song"
    battleeffect 276
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
    movedescription MOVE_TORCH_SONG, "---"

movedata MOVE_AQUA_STEP, "Aqua Step"
    battleeffect 285
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
    movedescription MOVE_AQUA_STEP, "---"

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
    flags FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_RAGING_BULL, "---"

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
    movedescription MOVE_MAKE_IT_RAIN, "---"

movedata MOVE_PSYBLADE, "Psyblade"
    battleeffect 300
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
    movedescription MOVE_PSYBLADE, "---"

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
    movedescription MOVE_HYDRO_STEAM, "---"

movedata MOVE_RUINATION, "Ruination"
    battleeffect 40
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
    movedescription MOVE_RUINATION, "---"

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
    movedescription MOVE_COLLISION_COURSE, "---"

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
    movedescription MOVE_ELECTRO_DRIFT, "---"

movedata MOVE_SHED_TAIL, "Shed Tail"
    battleeffect 304
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
    movedescription MOVE_SHED_TAIL, "The user creates\na decoy using its own\nHP, then swaps places\nwith a party Pokémon\nin waiting."

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
    movedescription MOVE_CHILLY_RECEPTION, "---"

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
    movedescription MOVE_TIDY_UP, "---"

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
    movedescription MOVE_SNOWSCAPE, "---"

movedata MOVE_POUNCE, "Pounce"
    battleeffect 70
    pss SPLIT_PHYSICAL
    basepower 50
    type TYPE_BUG
    accuracy 100
    pp 20
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_POUNCE, "---"

movedata MOVE_TRAILBLAZE, "Trailblaze"
    battleeffect 285
    pss SPLIT_PHYSICAL
    basepower 50
    type TYPE_GRASS
    accuracy 100
    pp 20
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_TRAILBLAZE, "---"

movedata MOVE_CHILLING_WATER, "Chilling Water"
    battleeffect 68
    pss SPLIT_SPECIAL
    basepower 50
    type TYPE_WATER
    accuracy 100
    pp 20
    effectchance 100
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_CHILLING_WATER, "---"

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
    flags FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_HYPER_DRILL, "---"

movedata MOVE_TWIN_BEAM, "Twin Beam"
    battleeffect 44
    pss SPLIT_SPECIAL
    basepower 40
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
    movedescription MOVE_TWIN_BEAM, "---"

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
    flags FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_RAGE_FIST, "---"

movedata MOVE_ARMOR_CANNON, "Armor Cannon"
    battleeffect 229
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
    movedescription MOVE_ARMOR_CANNON, "---"

movedata MOVE_BITTER_BLADE, "Bitter Blade"
    battleeffect 3
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
    movedescription MOVE_BITTER_BLADE, "---"

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
    movedescription MOVE_DOUBLE_SHOCK, "---"

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
    movedescription MOVE_GIGATON_HAMMER, "---"

movedata MOVE_COMEUPPANCE, "Comeuppance"
    battleeffect 227
    pss SPLIT_PHYSICAL
    basepower 1
    type TYPE_DARK
    accuracy 100
    pp 10
    effectchance 0
    target MOVE_TARGET_DEPENDS
    priority 0
    flags FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_COMEUPPANCE, "---"

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
    flags FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_AQUA_CUTTER, "---"

movedata MOVE_BLAZING_TORQUE, "Blazing Torque"
    battleeffect 4
    pss SPLIT_PHYSICAL
    basepower 80
    type TYPE_FIRE
    accuracy 100
    pp 10
    effectchance 30
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_BLAZING_TORQUE, "---"

movedata MOVE_WICKED_TORQUE, "Wicked Torque"
    battleeffect 301
    pss SPLIT_PHYSICAL
    basepower 80
    type TYPE_DARK
    accuracy 100
    pp 10
    effectchance 10
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_WICKED_TORQUE, "---"

movedata MOVE_NOXIOUS_TORQUE, "Noxious Torque"
    battleeffect 2
    pss SPLIT_PHYSICAL
    basepower 100
    type TYPE_POISON
    accuracy 100
    pp 10
    effectchance 30
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_NOXIOUS_TORQUE, "---"

movedata MOVE_COMBAT_TORQUE, "Combat Torque"
    battleeffect 6
    pss SPLIT_PHYSICAL
    basepower 100
    type TYPE_FIGHTING
    accuracy 100
    pp 10
    effectchance 30
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_COMBAT_TORQUE, "---"

movedata MOVE_MAGICAL_TORQUE, "Magical Torque"
    battleeffect 76
    pss SPLIT_PHYSICAL
    basepower 100
    type (FAIRY_TYPE_IMPLEMENTED) ? TYPE_FAIRY : TYPE_NORMAL
    accuracy 100
    pp 10
    effectchance 30
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_MAGICAL_TORQUE, "---"

movedata MOVE_BLOOD_MOON, "Blood Moon"
    battleeffect 0
    pss SPLIT_SPECIAL
    basepower 140
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
    movedescription MOVE_BLOOD_MOON, "---"

movedata MOVE_MATCHA_GOTCHA, "Matcha Gotcha"
    battleeffect 0
    pss SPLIT_SPECIAL
    basepower 80
    type TYPE_GRASS
    accuracy 90
    pp 15
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_MATCHA_GOTCHA, "---"

movedata MOVE_SYRUP_BOMB, "Syrup Bomb"
    battleeffect 0
    pss SPLIT_SPECIAL
    basepower 60
    type TYPE_GRASS
    accuracy 85
    pp 10
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_SYRUP_BOMB, "---"

movedata MOVE_IVY_CUDGEL, "Ivy Cudgel"
    battleeffect 0
    pss SPLIT_PHYSICAL
    basepower 100
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
    movedescription MOVE_IVY_CUDGEL, "---"

movedata MOVE_ELECTRO_SHOT, "Electro Shot"
    battleeffect 0
    pss SPLIT_SPECIAL
    basepower 130
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
    movedescription MOVE_ELECTRO_SHOT, "---"

movedata MOVE_TERA_STARSTORM, "Tera Starstorm"
    battleeffect 0
    pss SPLIT_SPECIAL
    basepower 120
    type TYPE_NORMAL
    accuracy 100
    pp 5
    effectchance 0
    target MOVE_TARGET_BOTH
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_TERA_STARSTORM, "---"

movedata MOVE_FICKLE_BEAM, "Fickle Beam"
    battleeffect 0
    pss SPLIT_SPECIAL
    basepower 80
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
    movedescription MOVE_FICKLE_BEAM, "---"

movedata MOVE_BURNING_BULWARK, "Burning Bulwark"
    battleeffect 0
    pss SPLIT_STATUS
    basepower 0
    type TYPE_FIRE
    accuracy 0
    pp 10
    effectchance 0
    target MOVE_TARGET_USER
    priority 4
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_BURNING_BULWARK, "---"

movedata MOVE_THUNDERCLAP, "Thunderclap"
    battleeffect 248
    pss SPLIT_SPECIAL
    basepower 70
    type TYPE_ELECTRIC
    accuracy 100
    pp 5
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 1
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_THUNDERCLAP, "---"

movedata MOVE_MIGHTY_CLEAVE, "Mighty Cleave"
    battleeffect 0
    pss SPLIT_PHYSICAL
    basepower 95
    type TYPE_ROCK
    accuracy 100
    pp 5
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_MIGHTY_CLEAVE, "---"

movedata MOVE_TACHYON_CUTTER, "Tachyon Cutter"
    battleeffect 0
    pss SPLIT_SPECIAL
    basepower 50
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
    movedescription MOVE_TACHYON_CUTTER, "---"

movedata MOVE_HARD_PRESS, "Hard Press"
    battleeffect 0
    pss SPLIT_PHYSICAL
    basepower 0
    type TYPE_STEEL
    accuracy 100
    pp 10
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_HARD_PRESS, "---"

movedata MOVE_DRAGON_CHEER, "Dragon Cheer"
    battleeffect 0
    pss SPLIT_STATUS
    basepower 0
    type TYPE_DRAGON
    accuracy 0
    pp 15
    effectchance 0
    target MOVE_TARGET_ALLY
    priority 0
    flags FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_MAGIC_COAT
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_DRAGON_CHEER, "---"

movedata MOVE_ALLURING_VOICE, "Alluring Voice"
    battleeffect 0
    pss SPLIT_SPECIAL
    basepower 80
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
    movedescription MOVE_ALLURING_VOICE, "---"

movedata MOVE_TEMPER_FLARE, "Temper Flare"
    battleeffect 0
    pss SPLIT_PHYSICAL
    basepower 75
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
    movedescription MOVE_TEMPER_FLARE, "---"

movedata MOVE_SUPERCELL_SLAM, "Supercell Slam"
    battleeffect 45
    pss SPLIT_PHYSICAL
    basepower 100
    type TYPE_ELECTRIC
    accuracy 95
    pp 15
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_SUPERCELL_SLAM, "---"

movedata MOVE_PSYCHIC_NOISE, "Psychic Noise"
    battleeffect 0
    pss SPLIT_SPECIAL
    basepower 75
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
    movedescription MOVE_PSYCHIC_NOISE, "---"

movedata MOVE_UPPER_HAND, "Upper Hand"
    battleeffect 0
    pss SPLIT_PHYSICAL
    basepower 65
    type TYPE_FIGHTING
    accuracy 100
    pp 15
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 3
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_UPPER_HAND, "---"

movedata MOVE_MALIGNANT_CHAIN, "Malignant Chain"
    battleeffect 0
    pss SPLIT_SPECIAL
    basepower 100
    type TYPE_POISON
    accuracy 100
    pp 5
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_PROTECT | FLAG_MIRROR_MOVE | FLAG_KINGS_ROCK
    appeal 0x00
    contesttype CONTEST_COOL
    terminatedata
    movedescription MOVE_MALIGNANT_CHAIN, "---"

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
