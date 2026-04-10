.include "asm/include/battle_commands.inc"

.data

_000:
    //CompareVarToValue OPCODE_FLAG_SET, BSCRIPT_VAR_BATTLE_STATUS, BATTLE_STATUS_NO_BLINK, _009
    //PlayMoveHitSound BATTLER_CATEGORY_MSG_TEMP
    //FlickerMon BATTLER_CATEGORY_MSG_TEMP
    //Wait 

_009:
    // The substitute took damage for {0}!
    PrintMessage 354, TAG_NICKNAME, BATTLER_CATEGORY_MSG_TEMP
    Wait 
    WaitButtonABTime 30
    End
