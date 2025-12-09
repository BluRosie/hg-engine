.macro movedatalongname,movenum,name,fullname

    movename movenum, name
    movenamecaps movenum, name
    userusedmovename 3*movenum, "{STRVAR_1 1, 0, 0} used\\n" + fullname + "!"
    userusedmovename 3*movenum+1, "The wild {STRVAR_1 1, 0, 0} used\\n" + fullname + "!"
    userusedmovename 3*movenum+2, "The opposing {STRVAR_1 1, 0, 0} used\\n" + fullname + "!"

	.if movenum < 10
		.create "build/a011/move_00" + movenum,0
	.elseif movenum < 100
		.create "build/a011/move_0" + movenum,0
	.else
		.create "build/a011/move_" + movenum,0
	.endif

.endmacro

.macro movedata,movenum,name
    movedatalongname movenum, name, name
.endmacro

.macro movedatanoname, movenum

	.if movenum < 10
		.create "build/a011/move_00" + movenum,0
	.elseif movenum < 100
		.create "build/a011/move_0" + movenum,0
	.else
		.create "build/a011/move_" + movenum,0
	.endif

.endmacro

.macro battleeffect,num
	.halfword num
.endmacro

.macro pss,num
	.byte num
.endmacro

.macro basepower,num
	.byte num
.endmacro

.macro type,num
	.byte num
.endmacro

.macro accuracy,num
	.byte num
.endmacro

.macro pp,num
	.byte num
.endmacro

.macro effectchance,num
	.byte num
.endmacro

.macro target,num
	.halfword num
.endmacro

.macro priority,num
	.byte num
.endmacro

.macro flags,num
	.byte num
.endmacro

.macro appeal,num
	.byte num
.endmacro

.macro contesttype,num
	.byte num
.endmacro

.macro terminatedata
	.halfword 0

	.close
.endmacro

.macro movename,id,name
    writestring "750", id, name
.endmacro

.macro movenamecaps,id,name
    writestring "751", id, name
.endmacro

.macro userusedmovename,id,name
    writestring "003", id, name
.endmacro

.macro movedescription,id,description
    writestring "749", id, description
.endmacro

// physical/special split

SPLIT_PHYSICAL equ 0
SPLIT_SPECIAL  equ 1
SPLIT_STATUS   equ 2

// contest types

CONTEST_COOL      equ 0
CONTEST_BEAUTY    equ 1
CONTEST_CUTE      equ 2
CONTEST_SMART     equ 3
CONTEST_TOUGH     equ 4

// appeal types

APPEAL_FIRST_NEXT_TURN 			equ 0x01 // 2 hearts, perform first next turn.
APPEAL_LAST_NEXT_TURN			equ 0x02 // 2 hearts, perform last next turn.
APPEAL_UNUSED_3					equ 0x03
APPEAL_VOLTAGE_HEARTS			equ 0x04 // 2 hearts, +2 if the Judge's Voltage goes up.
APPEAL_BASIC					equ 0x05 // 3 hearts.
APPEAL_UNIQUE_JUDGE				equ 0x06 // 1 heart, +3 if no other Pokemon has chosen the same Judge.
APPEAL_SUCCESSIVE				equ 0x07 // 2 hearts, can be used twice in a row.
APPEAL_VOLTAGE_ONLY				equ 0x08 // 0 hearts, but adds increased Voltage to the performance score.
APPEAL_ALL_SAME_JUDGE			equ 0x09 // 0 hearts, +15 if all Pokemon choose the same Judge.
APPEAL_LOWER_VOLTAGES			equ 0x0A // 2 hearts, lower all Judges' Voltages by 1.
APPEAL_DOUBLE_NEXT_SCORE		equ 0x0B // 0 hearts, but doubles next turn's score.
APPEAL_STEAL_VOLTAGE			equ 0x0C // 0 hearts, but steals the Voltage of the Pokemon that just went.
APPEAL_KEEP_VOLTAGE_DOWN		equ 0x0D // 2 hearts, prevents Voltage from going up for the rest of the turn.
APPEAL_RANDOMIZE_NEXT_TURN		equ 0x0E // 2 hearts, makes the order of contestants in the next turn random.
APPEAL_DOUBLE_ON_FINALE			equ 0x0F // 2 hearts, earns double the score on the final performance.
APPEAL_LOW_VOLTAGE_BOOST 		equ 0x10 // 0 hearts, but boosts the score if Voltage is low.
APPEAL_FIRST_HEARTS				equ 0x11 // 2 hearts, +2 if performing first this turn.
APPEAL_LAST_HEARTS				equ 0x12 // 2 hearts, +2 if performing last this turn.
APPEAL_KEEP_VOLTAGE_UP			equ 0x13 // 2 hearts, prevents Voltage from going down for the rest of the turn.
APPEAL_VOLTAGE_CHAIN_HEARTS 	equ 0x14 // 1 heart, +3 if two Pokemon raise the Voltage in a row.
APPEAL_LATE_BOOST				equ 0x15 // 0 hearts, but earn a higher score the later the Pokemon performs.
APPEAL_AFTER_MAX_VOLTAGE_HEARTS	equ 0x16 // 2 hearts, +3 if the Pokemon that just went hit max Voltage.
APPEAL_PITY_HEARTS				equ 0x17 // 1 heart, +3 if the Pokemon gets the lowest score.

// move data access constants (for load_attack_field_from_narc)

MOVEDATA_BATTLE_EFFECT equ 0
MOVEDATA_PSS           equ 1
MOVEDATA_BASE_POWER    equ 2
MOVEDATA_TYPE          equ 3
MOVEDATA_ACCURACY      equ 4
MOVEDATA_PP            equ 5
MOVEDATA_EFFECT_CHANCE equ 6
MOVEDATA_TARGET        equ 7
MOVEDATA_PRIORITY      equ 8
MOVEDATA_FLAGS         equ 9
MOVEDATA_APPEAL        equ 10
MOVEDATA_CONTEST_TYPE  equ 11

// move target constants

.equ RANGE_SINGLE_TARGET,           0
.equ RANGE_SINGLE_TARGET_SPECIAL,   (1 << 0)
.equ RANGE_RANDOM_OPPONENT,         (1 << 1)
.equ RANGE_ADJACENT_OPPONENTS,      (1 << 2)
.equ RANGE_ALL_ADJACENT,            (1 << 3)
.equ RANGE_USER,                    (1 << 4)
.equ RANGE_USER_SIDE,               (1 << 5)
.equ RANGE_FIELD,                   (1 << 6)
.equ RANGE_OPPONENT_SIDE,           (1 << 7)
.equ RANGE_ALLY,                    (1 << 8)
.equ RANGE_SINGLE_TARGET_USER_SIDE, (1 << 9)
.equ RANGE_FRONT,                   (1 << 10)

FLAG_CONTACT     equ 0x01
FLAG_PROTECT     equ 0x02
FLAG_MAGIC_COAT  equ 0x04
FLAG_SNATCH      equ 0x08
FLAG_MIRROR_MOVE equ 0x10
// FLAG_KINGS_ROCK  equ 0x20 // unused
FLAG_KEEP_HP_BAR equ 0x40
FLAG_HIDE_SHADOW equ 0x80

.if DISALLOW_DEXIT_GEN == 8
FLAG_UNUSABLE_IN_GEN_8 equ 0x20
.else
FLAG_UNUSABLE_IN_GEN_8 equ 0
.endif

.if DISALLOW_DEXIT_GEN == 9
FLAG_UNUSABLE_IN_GEN_9 equ 0x20
.else
FLAG_UNUSABLE_IN_GEN_9 equ 0
.endif

.if DISALLOW_DEXIT_GEN == 0
FLAG_UNUSABLE_UNIMPLEMENTED equ 0x20
.else
FLAG_UNUSABLE_UNIMPLEMENTED equ 0
.endif
