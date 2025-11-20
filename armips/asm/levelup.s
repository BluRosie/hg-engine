.nds
.thumb

// included by global.s

// all the edits that should be necessary to change the level up moves to be u16 level, u16 move
// also expand possible moves in learnset to be more than 21

.open "base/arm9.bin", 0x02000000

// initialize box mon learnset - InitBoxMonMoveset
.org 0x020712E0
    mov r1, #4*MAX_LEVELUP_MOVES

.org 0x02071320
    ldr r1, [r0]

.org 0x0207132A
    lsl r7, r6, #16
    ldr r1, [r4] // load full word instead of halfword
    lsr r0, r1, #16
    lsl r0, r0, #16
    nop
    cmp r0, r7 // cmp r0 to current level

.org 0x02071338
    ldr r0, =0xFFFF // mask is no longer 0x1FF

.org 0x02071356
    add r4, #4
    ldr r1, [r4]

.org 0x02071374
.pool


// learn move on level up - MonTryLearnMoveOnLevelUp
.org 0x0207153E
    mov r1, #4*MAX_LEVELUP_MOVES

.org 0x02071580
    lsl r0, r0, #2
    ldr r2, [r4, r0] // load full word instead of halfword

.org 0x02071596
    //mov r0, #0xFF
    //lsl r0, #8
    //add r0, #0xFF
    ldr r0, =0xFFFF
    lsl r0, #16 // r0 = 0xFFFF0000
    mov r3, r2
    and r3, r0
    lsl r6, r6, #16
    cmp r6, r3

.org 0x020715AC
    lsl r2, #2
    ldr r2, [r4, r2]
    
.org 0x020715F8 // update move mask with 0xFFFF
.pool


// load learnset table - Species_LoadLearnsetTable
.org 0x02071908
    mov r1, #4*MAX_LEVELUP_MOVES

.org 0x02071926
    mov r1, r0 // move 0xFFFF into r1 to update mask

.org 0x0207192C
    ldr r3, [r0] // load full word
    add r0, r0, #4 // move entries are now 4 bytes long and not 2


// handle blackthorn tutors properly - GetEligibleLevelUpMoves
.org 0x020917C4
    mov r1, #4*MAX_LEVELUP_MOVES

.org 0x020917CE
    mov r1, #4*MAX_LEVELUP_MOVES

.org 0x020917E6
    lsl r0, r0, #2 // multiply by 4 instead of 2
    ldr r5, [r7, r0] // load full word

.org 0x020917F0
    lsl r0, r2, #1
    strh r6, [r4, r0]

.org 0x020917F6
    mov r1, #0xFF // 0xFF0000 mask all that is fr necessary
    lsl r1, #16
    and r1, r5
    asr r3, r1, #16

.org 0x02091804
    mov r1, r6
    and r1, r5 // mask is 0xFFFF and need not be different
    lsr r0, #1
    strh r1, [r7, r0]
    lsl r0, #1
    ldrh r3, [r7, r0]
    mov r1, #0
    add r6, sp, #0x10 // currMoveSet
    
_moveLoop: // r1 is loop index, r6 is currMoveSet
    lsl r5, r1, #1
    ldrh r5, [r6, r5]
    cmp r3, r5
    beq 0x02091822
    add r1, #1
    cmp r1, #4
    bcc _moveLoop
    

.org 0x0209182C
    lsl r5, r1, #2
    ldr r5, [r4, r5]

.org 0x02091844
    lsl r0, r2, #1
    strh r1, [r4, r0]

.org 0x02091858
    cmp r0, #MAX_LEVELUP_MOVES


.close
