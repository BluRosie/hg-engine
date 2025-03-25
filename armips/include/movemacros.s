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
FLAG_KINGS_ROCK  equ 0x20
FLAG_KEEP_HP_BAR equ 0x40
FLAG_HIDE_SHADOW equ 0x80
