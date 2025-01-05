.nds
.thumb

// file included by armips/global.s--no need for further includes here.


.open "base/overlay/overlay_0012.bin", 0x022378C0

// move data is originally loaded to offset 3DE of the battle workspace structure.

// here, we need to repoint all of the offsets from the item to somewhere else.

// if we strategically choose this to be +317E, +3180 will be neatly offset as 63 << 7

/*
new size (022486A4):
3158 + 26 + (NUM_OF_MOVES+3)*16

+0 -> 3DE -> 317E -> battleeffect
+2 -> 3E0 -> 3180 -> pss
+3 -> 3E1 -> 3181 -> basepower
+4 -> 3E2 -> 3182 -> type
+5 -> 3E3 -> 3183 -> accuracy
+6 -> 3E4 -> 3184 -> pp
+7 -> 3E5 -> 3185 -> effectchance
+8 -> 3E6 -> 3186 -> target
+A -> 3E8 -> 3188 -> priority
+B -> 3E9 -> 3189 -> flags
+C -> 3EA -> 318A -> appeal
+D -> 3EB -> 318B -> contesttype
+E -> 3EC -> 318C -> terminate
*/

.org 0x0223DE34
    .word 0x3182

.org 0x0223E590
    .word 0x317E

.org 0x022400A8
    .word 0x3182

.org 0x022406C0
    .word 0x3183

.org 0x02240816 // this one takes advantage of an unnecessary reload of the move into r0
    lsl r0, #4
    add r4, r6, r0
    mov r0, #0x3200 >> 8
    lsl r0, #8
    sub r0, #0x7C // put 0x3184 in r0


.org 0x02240F10 // this one takes advantage of a close value, 0x30AC, already being in the pool
    ldr r1, =0x30AC
    add r1, #0xD8 // 30AC + D8 = 3184

.org 0x02240F6C

.pool


.org 0x022414EC
    .word 0x317E



.org 0x0224189E // missed a 0x3186

// need to get at least 1 instruction
setup_move_copy_loop:
    mov r0, #0x63
    mov r5, r6
    mov r1, #5
    lsl r0, #7 // 0x3180
    add r0, #4 // 0x3184 // new instruction

_loop:
    ldr r3, [r4, #0x64]
    mov r2, #0xC0
    mul r2, r3
    add r3, r4, r2
    ldr r2, =0x2D4C
    add r7, r3, r5
    ldrh r2, [r7, r2]
    lsl r2, r2, #4
    add r2, r4, r2
    ldrb r2, [r2, r0] // grab pp from new move data
    add r7, r3, r6 // new instruction
    cmp r2, #5
    bcs set_less_than_5_pp
    //add r7, r3, r6 // move this up
    ldr r3, =0x2D6C
    strb r2, [r7, r3]
    b _reset_loop

set_less_than_5_pp:
    ldr r2, =0x2D6C
    //add r3, r3, r6 // move this up
    strb r1, [r7, r2] // change r3 to r7

_reset_loop:
    add r6, r6, #1
    add r5, r5, #2
    cmp r6, #4
    blt _loop

.org 0x022418F4

.pool



.org 0x02241F04
    .word 0x3181

.org 0x02241F98
    .word 0x3181

.org 0x02242960
    .word 0x3181

.org 0x02242D8C
    .word 0x3186

.org 0x02243028
    .word 0x3181

.org 0x02243360
    .word 0x3181

.org 0x022434FC
    .word 0x317E

.org 0x022438D0
    .word 0x3181

.org 0x02243A04
    .word 0x3181

.org 0x02243B38
    .word 0x3181

.org 0x02244838
    .word 0x3185

.org 0x0224491C
    .word 0x317E

.org 0x022453CC
    .word 0x3182

//.org 0x022486A4
//    .word 0x6A2E
//    //.word 0x317E + ((NUM_OF_MOVES+1) * 16)
//    .word 0x317E

// here we fix the rage glitch because there was no ~ in front of the STATUS2_RAGE constant in the c code
// fresh off GetBattlerSelectedMove so r0-r3 are all free
// https://github.com/pret/pokeheartgold/blob/5ff50bcdf26098be3ac102e24155028d6e7b4b39/asm/overlay_12_battle_controller_player.s#L1755-L1761
// r5 is a BattleStruct offset by BattlePokemon size
.org 0x022493F4
    ldr r2, =0x2DB0 // offsetof(struct BattleStruct, battlemon) + offsetof(struct BattlePokemon, condition2)
    ldr r1, [r5, r2]
    mov r0, #2
    lsl r0, #0x16 // STATUS2_RAGE
    mvn r0, r0 // new - &= ~STATUS2_RAGE
    and r1, r0
    //ldr r2, =0x2DB0
    str r1, [r5, r2]

.org 0x02249458

.pool



.org 0x0224B388
    .word 0x3186

.org 0x0224B494
    .word 0x317E

.org 0x0224B51C
    .word 0x3186

.org 0x0224B858
    .word 0x317E

.org 0x0224B878
    .word 0x3181

.org 0x0224BCF4
    mov r0, #0x3180 >> 7
    lsl r0, #7

.org 0x0224BFF8
    .word 0x3183

.org 0x0224C000
    .word 0x317E

.org 0x0224C15C // for some reason this 3E6 is stupid optimized
// 3186 is goal > 3200
    mov r2, #0x3200 >> 8
    ldr r0, [r5, r1]
    lsl r2, #8 // r2 = 0x3200
    tst r0, r2
    bne 0x0224C1EA
    ldr r0, =0x3044
    sub r2, #0x7A // r2 = 3186

.org 0x0224C200

.pool


.org 0x0224C1F4
    .word 0x3189

.org 0x0224C1FC
    .word 0x317E

.org 0x0224C360
    .word 0x3189

.org 0x0224C90C
    mov r1, #0x3180 >> 7
    ldr r0, [r4, r0]
    lsl r1, #7

.org 0x0224C9D8
    .word 0x317E

.org 0x0224CEF8
    .word 0x3182

.org 0x0224D1C4
    .word 0x3186

.org 0x0224DC00
    .word 0x3186

.org 0x0224DF5C
    .word 0x3182
    .word 0x3189

.org 0x0224DF74
    .word 0x3186

.org 0x0224E128
    .word 0x3189

.org 0x0224E2F6
    mov r0, #0x3180 >> 7
    lsl r0, #7


// the next little bit is all to get an optimized 3E8.  thank god it is barely accessed

.org 0x0225019E
    bne _edited

.org 0x022501B6
    b _edited

.org 0x022501C4 // optimized 3E8 > 3188
    str r0, [sp, #0x5C]

_edited: // originally at 0x022501CA
    ldr r0, [sp, #0x60]
    mov r1, #0x3200 >> 8
    lsl r0, r0, #4
    add r0, r5, r0
    lsl r1, #8
    sub r1, #0x78 // r1 = 3200 - 78 = 3188
    nop

.org 0x022506C4
    .word 0x3185

.org 0x0225099C
    .word 0x3186

.org 0x02250BAC
    .word 0x3182
    .word 0x3186

.org 0x02251A24
    .word 0x3181

.org 0x0225203C
    .word 0x3182
    .word 0x3181

.org 0x02252170
    .word 0x3182

.org 0x02252608
    .word 0x317E

.org 0x0225304C
    .word 0x3182

.org 0x0225305C
    .word 0x3181

.org 0x02253830
    .word 0x317E

.org 0x02253838
    .word 0x3181

.org 0x02254130
    .word 0x3189

.org 0x02254138
    .word 0x3182
    .word 0x3181

.org 0x0225438C
    .word 0x3189

.org 0x0225581C
    .word 0x3189

.org 0x022572BE
    mov r0, #0x3180 >> 7
    lsl r0, #7

.org 0x0225749C
    .word 0x3181
    .word 0x3182

.org 0x02257AE8
    .word 0x317E

.org 0x02257C28
    .word 0x3186

.org 0x02257E30
    .word 0x317E

.org 0x02257E6C
    .word 0x317E

.org 0x02258062
    mov r0, #0x3180 >> 7
    lsl r0, #7

.org 0x0225817C
    .word 0x3189


// SUPERSEDED:  using asm hook for this one instead.
// here we need to map move effects 145+ to subscripts 297+ (add 152)
/*
.org 0x02258388
    lsr r1, r3, #1
    tst r1, r2
    bne @@_storezero
    lsr r1, r3, #2
    tst r1, r2
    beq @@_getsubscriptnum

@@_storezero:
    mov r1, #0
    add r0, #0x94
    str r1, [r0]

@@_getsubscriptnum:
    cmp r4, #145
    blt @@_subscripttable
    //bl 0x202551C // i have 3 instructions w the nop down there
    add r4, #(297 - 145)
    mov r0, r4
    pop {r4, pc}

@@_subscripttable:
    ldr r0, =0x0226CDCC
    lsl r1, r4, #2
    ldr r0, [r0, r1]
    pop {r4, pc}
    //nop

.word 0x7FFFFF

.pool*/


.org 0x022584A4
    .word 0x317E

.org 0x02258680
    .word 0x317E

.org 0x02258B98
    .word 0x3181

.org 0x0225E564
	.word NUM_OF_MOVES

.org 0x022645A4
    .word 0x3181


.close


// this fixes new move animations
.open "base/overlay/overlay_0007.bin", 0x0221BE20

.org 0x0221C380
    .word NUM_OF_MOVES

.close
