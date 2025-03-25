.nds
.thumb

/*
  this file contains all of the edits that can be made to the rom using armips (hypothetically) that do not deal with data
  this file does not deal with the summary screen icon (img & pal), the dex icon (img), the item gfx (pal), the arceus btx0 overworlds, or the judgment battle script
*/

HOLD_EFFECT_ARCEUS_FIRE equ 126
HOLD_EFFECT_ARCEUS_STEEL equ 141
HOLD_EFFECT_ARCEUS_FAIRY equ 164

.open "base/arm9.bin", 0x02000000

/*
r0 = held item effect
returns:
r0 = type from the held item

basic premise:
7e - flame
7f - water
80 - electric
81 - grass
82 - ice
83 - fight
84 - poison
85 - ground
86 - flying
87 - psychic
88 - bug
89 - rock
8a - ghost
8b - dragon
8c - dark
8d - steel
93 - fairy
*/

// ARM9 OFFSET 0x71C28
.org 0x02071C28

.area 0x02071CA0-., 0xFF

get_arceus_type_from_held_effect: // a much simpler routine that uses a table instead of some weird jumptable
    cmp r0, #HOLD_EFFECT_ARCEUS_FAIRY
    beq @@fairy
    sub r0, #HOLD_EFFECT_ARCEUS_FIRE
    cmp r0, #HOLD_EFFECT_ARCEUS_STEEL - HOLD_EFFECT_ARCEUS_FIRE
    bhi @@normal // this catches negative numbers too
    ldr r1, =plate_to_type_table
    ldrb r0, [r1, r0]
    bx lr

@@fairy:
    mov r0, #TYPE_FAIRY
    bx lr

@@normal:
    mov r0, #0
    bx lr

.align 2
.pool

plate_to_type_table:     // 21 bytes
    .byte TYPE_FIRE      // 0x7e
    .byte TYPE_WATER     // 0x7f
    .byte TYPE_ELECTRIC  // 0x80
    .byte TYPE_GRASS     // 0x81
    .byte TYPE_ICE       // 0x82
    .byte TYPE_FIGHTING  // 0x83
    .byte TYPE_POISON    // 0x84
    .byte TYPE_GROUND    // 0x85
    .byte TYPE_FLYING    // 0x86
    .byte TYPE_PSYCHIC   // 0x87
    .byte TYPE_BUG       // 0x88
    .byte TYPE_ROCK      // 0x89
    .byte TYPE_GHOST     // 0x8a
    .byte TYPE_DRAGON    // 0x8b
    .byte TYPE_DARK      // 0x8c
    .byte TYPE_STEEL     // 0x8d

.endarea

.close


.open "base/overlay/overlay_0010.bin", 0x0221BE20

// ARM9 OVERLAY 10 OFFSET 0x3352
.org 0x0221F172
.area 0x0221F1E8 - 0x0221F172, 0xFF

hook_subroutine_0221F172_ov_0A:
    bl get_arceus_type_from_held_effect
    mov r7, r0
    b 0x221F3B4 // continue with the routine
    // this frees up until 221F1E8

.endarea


// ARM9 OVERLAY 10 OFFSET 0x36A0
.org 0x0221F4C0
.area 0x0221F536 - 0x0221F4C0, 0xFF

hook_subroutine_0221F4C0_ov_0A:
    bl get_arceus_type_from_held_effect
    mov r5, r0
    b 0x221F5E4 // continue with the routine
    // this frees up until 221F536

.endarea

.close


.open "base/overlay/overlay_0012.bin", 0x022378C0


// ARM9 OVERLAY 12 OFFSET 0x20C3E
.org 0x022584FE
.area 0x02258572-., 0xFF

hook_subroutine_022584FE_ov_0C:
    bl get_arceus_type_from_held_effect
    mov r4, r0
    b 0x2258572
    // this frees up until 2258572

.endarea


// ARM9 OVERLAY 12 OFFSET 0x20E0C
.org 0x022586CC
.area 0x02258742-., 0xFF

hook_subroutine_022586CC_ov_0C:
    bl get_arceus_type_from_held_effect
    mov r5, r0
    b 0x22587F0
    // this frees up until 2258742

.endarea


// ARM9 OVERLAY 12 OFFSET 0x2135A
.org 0x02258C1A
.area 0x02258C90-., 0xFF

hook_subroutine_02258C1A_ov_0C:
    bl get_arceus_type_from_held_effect
    mov r5, r0
    b 0x2258D66
    // this frees up until 2258C90

.endarea

.close


.open "base/overlay/overlay_0018.bin", 0x021E5900

.orga 0x16505 // palette for fairy
.byte 3

.orga 0x16534 // gfx for fairy
.word 123

.close


.open "base/overlay/overlay_0006.bin", 0x0221BA00

.orga 0x290 // offset 290 of overlay 6, palette for move selection
.halfword 0x7EDF, 0xF23F, 0x6A1E, 0x59DD, 0xCD5B, 0xC117, 0xB4D6, 0x7F37

.close
