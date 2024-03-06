.nds
.thumb

.include "armips/include/battlescriptcmd.s"

//mega battle script
MegaMsg equ 1276

.create "build/move/battle_sub_seq/1_297", 0x0

mega:
    // set up animation
    changevar VAR_OP_SET, VAR_MOVE_EFFECT, 0x1
    changevar VAR_OP_SET, VAR_MOVE_TEMP2, 470 // set temporary move to be 470, which is the move the setstatus2effect will treat as "mega"
    // play text
    printmessage MegaMsg, TAG_NICK_ITEM, 0xFF, 0x15,0,0,0,0
    waitmessage
    wait 0x1E
    // jump if not a stand-in pokemon
    ifmonstat IF_NOTMASK, BATTLER_xFF, MON_DATA_STATUS_2, 0x1000000, _0044
    // set appearance
    setstatus2effect BATTLER_xFF, 0xF
    waitmessage
    cmd_C4 BATTLER_xFF
    waitmessage
    setstatus2effect BATTLER_xFF, 0x10
    waitmessage
    // clear doubles flag?
    changemondatabyvalue VAR_OP_CLEARMASK, BATTLER_xFF, MON_DATA_STATUS_2, 0x1000000
    playanimation2 BATTLER_xFF, BATTLER_x15, BATTLER_xFF
    wait 0x7e
    wait 0x16e
    // change form
    waitmessage
    printmessage MegaMsg + 3, TAG_NICK_POKE, 0xFF, 0x15,0,0,0,0
    waitmessage
    wait 0x1E
    // restore doubles flag
    changemondatabyvalue VAR_OP_SETMASK, BATTLER_xFF, MON_DATA_STATUS_2, 0x1000000
    changevar VAR_OP_SET, VAR_MOVE_EFFECT, 0x0
    changevar VAR_OP_CLEARMASK, VAR_SERVER_STATUS1, 0x4000
    ifmonstat IF_NOTMASK, BATTLER_xFF, MON_DATA_STATUS_2, 0x1000000, _00EC
    setstatus2effect BATTLER_xFF, 0xF
    waitmessage
    swaptosubstitutesprite BATTLER_xFF
    waitmessage
    setstatus2effect BATTLER_xFF, 0x10
    waitmessage
    endscript
_0044:
    // play set up animation
    playanimation2 BATTLER_xFF, BATTLER_x15, BATTLER_xFF
    wait 0x7e
    wait 0x16e
    // change form
    waitmessage
    printmessage MegaMsg + 3, TAG_NICK_POKE, 0xFF, 0x15,0,0,0,0
    waitmessage
    wait 0x1E
    changevar VAR_OP_SET, VAR_MOVE_EFFECT, 0x0
    changevar VAR_OP_CLEARMASK, VAR_SERVER_STATUS1, 0x4000
_00EC:
    endscript

.close