.include "asm/include/debug.inc"

.nds
.thumb

// included by armips/global.s

.open "base/overlay/overlay_0018.bin", 0x021E5900


// here, we need to allocate memory space for the two new poke_lists and store them at workspace+0x878 and workspace+0x1030
// so instead of allocating more size to the pokedex workspace, the goal here is just to allocate
// enough space to two new poke_lists and place pointers to them inside the structure and change everything that references it.
// we then need to change how each is accessed/written to
// UPDATE:  apparently workspace+0x1032 is referenced outside of 0x1030.  love to see it, that add a few more
//   literally 10 more by the way.  holy shit.


.org 0x021E5A9C

.word NUM_OF_MONS


.org 0x021E5AA2 // expand the ram usable by the dex (give about 12 more kb just in case)
    mov r2, #0x67 // old:  mov r2, #0x61
    // later lsld by 0xC to get space to pass to 0x201A910


.org 0x021E5AD0 // branch out of the init function
    // r4 = p->workspace
    bl allocate_lists

.org 0x021E5B8A // branch out of the delete function
    bl unallocate_lists


.org 0x021E6B42 // make a 1032 work, net loss of an instruction i believe

    ldr r0, [sp, #0x8]
    add r1, r4, r0
    ldr r0, [sp, #0x10]
    cmp r1, r0
    bcs 0x21E6B9C
    ldr r0, [sp] // p->workspace
    lsl r2, r1, #2
    add r2, #2 // add 2 to offset from 1030 list start - old:  add r2, r0, r2
    ldr r3, =0x1030 // old:  ldr r0, =0x1032
    ldr r0, [r0, r3] // new:  load 1030 list in
    ldrh r0, [r2, r0]
    cmp r0, #2
    bne 0x21E6B7C
    lsl r0, r4, #2
    add r3, r4, r0
    lsl r0, r3, #1
    add r2, r7, r0
    ldr r0, =0x1002
    add r2, #0x48
    strh r0, [r2]
    add r0, r5, r3
    add r1, r1, #1
    lsl r0, r0, #1
    //lsl r0, r1, #0x10 // delete for above
    add r0, r6, r0
    //lsr r1, r1, #0x10 // delete for above
    mov r2, #3
    bl 0x21E6A98
    b 0x21E6B92

.org 0x21E6BB0 // keep the pool in its original location

.pool


.org 0x021E6BB8

.area 0xD8


sub_21E6BB8: // edited to get the 1030 out
    push {r3-r7, lr}
    sub sp, sp, #0x18
    str r1, [sp]
    mov r1, #0x32
    mov r7, r0
    mov r0, #0x25
    lsl r1, r1, #6
    bl 0x201AACC // AllocMemory_Lo
    mov r6, r0
    ldr r0, [r7, #8]
    mov r1, #5
    bl 0x2019B08
    str r0, [sp, #0x14]
    mov r0, #0
    str r0, [sp, #0x10]

_21E6BDA:
    ldr r0, [sp, #0x10]
    mov r2, #0xA0
    mov r5, r0
    mul r5, r2
    lsl r1, r5, #1
    ldr r0, [sp, #0x14]
    add r1, r6, r1
    add r2, #0xA0
    blx 0x20D47B8
    ldr r0, [sp, #0x10]
    mov r4, #0
    lsl r1, r0, #2
    add r1, r0, r1
    ldr r0, [sp]
    add r0, r0, r1
    str r0, [sp, #0xC]
    lsl r0, r5, #1
    add r0, r6, r0
    str r0, [sp, #0x8]
    add r5, #0x25

_21E6C04:
    ldr r0, [sp, #0xC]
    add r0, r4, r0
    lsl r0, r0, #2

    // new:
    str r0, [sp, #0x4] // store species*4 in stack var
    ldr r1, =0x1030
    ldr r1, [r7, r1] // load mon_list ptr in r1

    // old:
    /*add r1, r7, r0
    ldr r0, =0x1030
    str r1, [sp, #0x4]*/ // workspace+species*4

    ldrh r1, [r1, r0]
    cmp r1, #0
    beq _21E6C60
    ldr r0, =#0x1858
    ldrb r0, [r7, r0]
    bl 0x2074930
    mov r1, r0

    // new, should be good without 0x1032 in pool
    ldr r2, [sp, #0x4]
    add r2, #2 // seen/caught status
    ldr r0, =0x1030
    ldr r0, [r7, r0]

    // old:
    /*ldr r2, [sp, #0x4]
    ldr r0, =0x1032*/

    ldrh r0, [r2, r0]
    cmp r0, #2
    bne _21E6C4C // mon has been seen
    lsl r0, r4, #2
    add r0, r4, r0
    lsl r3, r0, #1
    ldr r2, [sp, #0x8]
    add r0, r5, r0
    add r3, r2, r3
    lsl r0, r0, #1
    lsl r1, r1, #0x10
    ldr r2, =0x1002
    add r3, #0x48
    strh r2, [r3]
    add r0, r6, r0
    lsr r1, r1, #0x10
    mov r2, #3
    bl 0x21E6A98
    b _21E6C60


_21E6C4C:
    lsl r0, r4, #2
    add r0, r4, r0
    add r0, r5, r0
    lsl r0, r0, #1
    lsl r1, r1, #0x10
    add r0, r6, r0
    lsr r1, r1, #0x10
    mov r2, #0xE
    bl 0x21E6A98

_21E6C60:
    add r0, r4, #1
    lsl r0, r0, #0x10
    lsr r4, r0, #0x10
    cmp r4, #5
    bcc _21E6C04
    ldr r0, [sp, #0x10]
    add r0, r0, #1
    lsl r0, r0, #0x10
    lsr r0, r0, #0x10
    str r0, [sp, #0x10]
    cmp r0, #0xA
    bcc _21E6BDA
    mov r0, r6
    add sp, sp, #0x18
    pop {r3-r7, pc}

.pool

.endarea


.org 0x021E8698

.area 0x7C


sub_21E8698: // fix a crash when accessing dex data
    push {r3, r4, lr}
    sub sp, sp, #0xC
    mov r4, r0
    cmp r2, #7
    bhi _return_21E86DE
    add r0, r2, r2
    add r0, pc
    ldrh r0, [r0, #(_jumptable - . - 2)] // old:  ldrh r0, [r0, #6] // the jumptable in 3 instructions from when pc was added to r0

    /* old: // make space for another ldr entry below instead of mov lsl
    lsl r0, r0, #0x10
    asr r0, r0, #0x10*/

    add pc, r0

_jumptable: // construct a jumptable for use above
    .halfword  e0 - _jumptable - 2, \
               e1 - _jumptable - 2, \
               e2 - _jumptable - 2, \
               e3 - _jumptable - 2, \
               e4 - _jumptable - 2, \
               e5 - _jumptable - 2, \
               e6 - _jumptable - 2, \
               e7 - _jumptable - 2

e0: // entry 0
    mov r3, #2
    b _return_21E86DE

e1: // entry 1
    ldr r3, =(2 + (NUM_OF_MONS)) // each entry sequentially add (NUM_OF_MONS + 2) in vanilla.  no reason, we just add NUM_OF_MONS
    b _return_21E86DE

e2: // entry 2
    ldr r3, =(2 + 2*(NUM_OF_MONS))
    b _return_21E86DE

e3: // entry 3
    ldr r3, =(2 + 6*(NUM_OF_MONS))
    b _return_21E86DE

e4: // entry 4
    ldr r3, =(2 + 3*(NUM_OF_MONS))
    b _return_21E86DE

e5: // entry 5
    ldr r3, =(2 + 4*(NUM_OF_MONS))
    b _return_21E86DE

e6: // entry 6
    ldr r3, =(2 + 5*(NUM_OF_MONS))
    b _return_21E86DE

e7: // entry 7
    ldr r3, =(2 + 7*(NUM_OF_MONS))
    // fall through

_return_21E86DE:
    mov r2, #0
    str r2, [sp]
    add r0, sp, #0x8
    str r0, [sp, #0x4]
    add r1, r3, r1
    mov r0, #133
    mov r3, #0x25
    bl 0x2007AC4 // load_narc_a0_file_r1
    str r0, [r4]
    ldr r0, [sp, #0x8]
    lsr r0, r0, #2
    str r0, [r4, #4]
    add sp, sp, #0xC
    pop {r3, r4, pc}

.pool

.endarea


.org 0x021EDDC6 // edit out the 878

    ldr r0, [r5, r0] // instead of add r0, r5, r0


.org 0x021EE854 // get the 1032 out

    add r1, r0, #2 // old:  add r1, r6, r0 // add 2 to the offset
    ldr r0, =0x1030 // old:  ldr r0, =0x1032
    ldr r0, [r6, r0] // new:  load 1030 list from workspace
    ldrh r0, [r1, r0]
    mov r1, #2 // new:  move these up here
    mov r2, #0x25 // new:  move these up here to save two instructions
    cmp r0, #2
    bne _21EE86A
    mov r0, r7
    //mov r1, #2
    //mov r2, #0x25
    bl 0x21E595C
    b 0x21EE874

_21EE86A:
    mov r0, #0
    //mov r1, #2
    //mov r2, #0x25
    bl 0x21E595C
    nop // new:  keep the space alignment

.org 0x21EE8B0 // keep the pool in its original space

.pool


.org 0x021EE98E // take care of a 1032, actually needed a patch

    // new:
    bl patch1

    /* old:
    add r1, r6, r0
    ldr r0, =0x1032*/

.org 0x021EE9F0 // just a way to mark it as done
    .word 0x1030


.org 0x021EEB06 // take care of a 1032, another patch

    // new:
    bl patch2

    /*old:
    lsl r2, r7, #2
    add r3, r5, r2*/

.org 0x021EEB12 // nop out old table manipulation (keep r2 the same)
    nop
    ldr r1, [sp, #0x10]
    nop

.org 0x021EEB30 // just a way to mark it as done
    .word 0x1030


.org 0x021EEBB6 // take care of a 1032, the same way?  oh?

    // new:
    bl patch2

    /*old:
    lsl r2, r7, #2
    add r3, r5, r2*/

.org 0x021EEBC2 // nop out old table manipulation (keep r2 the same)
    nop
    ldr r1, [sp, #0x10]
    nop

.org 0x021EEBE0 // just a way to mark it as done
    .word 0x1030


.org 0x021EED1A // patch out another 1032
    add r1, r0, #2 // old:  add r1, r5, r0
    ldr r0, =0x1030 // old:  ldr r0, =0x1032
    ldr r0, [r5, r0] // new:  load 1030 list from workspace
    ldrh r0, [r1, r0]
    ldr r1, =0x185C
    mov r2, #0x25 // new:  move this up here to save an instruction
    cmp r0, #2
    bne _21EED32
    ldrb r1, [r5, r1]
    ldr r0, [sp, #0xC]
    //mov r2, #0x25 // covered above
    bl 0x21E595C
    b 0x21EED3C

_21EED32:
    ldrb r1, [r5, r1]
    mov r0, #0
    //mov r2, #0x25 // covered above
    bl 0x21E595C

.org 0x021EED64 // maintain original pool location

.pool


.org 0x021F1598 // get the 1030 out

.area 0x88

sub_21F1598:
    push {r3-r7, lr}
    sub sp, sp, #8
    mov r5, r0
    mov r0, #0x67
    lsl r0, r0, #4
    mov r6, r2
    add r7, r5, r0
    lsl r0, r6, #2
    str r0, [sp]
    mov r4, r1
    ldr r0, [r7, r0]
    mov r1, #0
    bl 0x200DCE8
    ldr r0, =0x1030
    lsl r4, r4, #2
    ldr r0, [r5, r0] // old:  add r0, r5, r0 // working as intended
    ldrh r1, [r0, r4]
    str r0, [sp, #0x4]
    cmp r1, #0
    beq _21F1614
    ldr r0, [r5]
    mov r2, #0
    ldr r0, [r0]
    bl 0x202A640
    mov r2, r0
    ldr r0, [sp, #0x4]
    ldrh r1, [r0, r4]
    cmp r1, #0xAC
    bne _21F15E0
    cmp r2, #2
    bne _21F15DE
    mov r2, #1
    b _21F15E0


_21F15DE:
    mov r2, #0
_21F15E0:
    mov r0, r5
    mov r3, r6
    bl 0x21F14FC
    ldr r0, [sp]
    mov r1, #1
    ldr r0, [r7, r0]
    bl 0x200DCE8

    // new, should still be under space without 0x1032 in the pool
    ldr r0, =0x1030
    ldr r0, [r5, r0] // grab &poke_list
    add r1, r4, #2
    ldrh r0, [r0, r1] // grab poke_list[species].seencaughtstatus

    // old:
    /*ldr r0, =0x1032
    add r1, r5, r4
    ldrh r0, [r1, r0]*/

    cmp r0, #1
    bne _21F160A
    mov r0, r5
    mov r1, r6
    mov r2, #1
    bl 0x21F1160
    add sp, sp, #8
    pop {r3-r7, pc}


_21F160A:
    mov r0, r5
    mov r1, r6
    mov r2, #0
    bl 0x21F1160

_21F1614:
    add sp, sp, #8
    pop {r3-r7, pc}

.pool

.endarea


.org 0x021F1DFC // 1032
    // new:
    add r2, r0, #2 // add 2 to offset
    bl patch3 // return with current entry in r0

    /*old:
    add r2, r5, r0
    ldr r0, =0x1032
    ldrh r0, [r2, r0]*/

.org 0x021F1E68 // mark as done
    .word 0x1030


.org 0x021F20B4 // 1032, uses the same patch as well!
    // new:
    add r2, r0, #2
    bl patch3

    /*old:
    add r2, r5, r0
    ldr r0, =0x1032
    ldrh r0, [r2, r0]*/

.org 0x021F21E8 // mark as done
    .word 0x1030


.org 0x021F2EC8 // 1032

sub_21F2EC8: // just rewriting this one entirely, huge optimization = no need to make an area or anything
    push {r3, lr}
    lsl r1, r1, #2
    add r3, r1, #2
    ldr r1, =0x1030
    ldr r1, [r0, r1]
    ldrh r1, [r3, r1]
    cmp r1, #2
    bne @@_notCaught
    mov r3, #1
    b @@_setup

@@_notCaught:
    mov r3, #0

@@_setup:
    lsl r1, r2, #2
    add r1, r0, r1
    mov r0, #0x67
    lsl r0, r0, #4
    ldr r0, [r1, r0]
    mov r1, r3
    bl 0x200DCE8
    pop {r3, pc}

.pool


.org 0x021F7EE0 // edit a 878 out

    ldr r1, [r5, r2] // old:  add r1, r5, r2

.org 0x021F813A // edit another 878 out

    ldr r0, [r5, r0] // old:  add r0, r5, r0


.org 0x021F8160

.word (NUM_OF_MONS) * 2 // fuck it we keep the extra space here


.org 0x021F81D8 // 102C based on 878 edit.  replace r5 with r6 here

// r5 is going to be p->workspace when this is called at all times
// r0 = p->878 poke list
MakePokeList:
    push {r3-r7, lr} // push does not change r5
    sub sp, sp, #8
    str r1, [sp]
    mov r6, r0 // old:  mov r5, r0 // maintain r5!
    ldr r1, =0x102C // old:  ldr r1, =0x7B4 // (0x102C - 0x878)
    mov r0, r3
    strh r0, [r5, r1]
    mov r7, #0
    add r0, r1, #2
    mov r4, r2
    strh r7, [r5, r0] // r5 can now be overwritten
    str r3, [sp, #0x4]
    mov r0, r3
    beq @@_return
    add r0, r1, #2 // originally 878 + 7B4 + 2
    add r5, r5, r0 // old:  add r6, r5, r0

@@_loop:
    ldrh r0, [r4]
    strh r0, [r6] // old:  strh [r0, r5]
    ldrh r1, [r4]
    ldr r0, [sp]
    bl 0x2029FF8
    cmp r0, #0
    beq @@_mark_as_seen
    mov r0, #2
    strh r0, [r6, #2] // old:  strh r0, [r5, #2]
    ldrh r0, [r5] // old:  ldrh r0, [r6]
    add r0, r0, #1
    strh r0, [r5] // old:  strh r0, [r6]
    b @@_increment

@@_mark_as_seen:
    mov r0, #1
    strh r0, [r6, #2] // old:  strh r0, [r5, #2]

@@_increment:
    ldr r0, [sp, #0x4]
    add r7, r7, #1
    add r4, r4, #2
    add r6, r6, #4 // old:  add r5, r5, #4
    cmp r7, r0
    bcc @@_loop

@@_return:
    add sp, sp, #8
    pop {r3-r7, pc}

.pool


.org 0x021F8838 // get a 1030 out here

.area 0x18

sub_21F8838:
    push {r4, lr}
    mov r4, r0
    bl 0x21F8824
    lsl r0, r0, #2

    // new:
    ldr r1, =0x1030
    ldr r1, [r4, r1] // load 1030 table into r1

    // old:
    /*add r1, r4, r0
    ldr r0, =0x1030*/

    ldrh r0, [r1, r0] // load mon entry into r0
    pop {r4, pc}

.pool

.endarea


.org 0x021F8850

// p->workspace still left in r5
sub_21F8850: // counts caught pokemon?
    push {r4-r5}
    ldr r2, =0x102C // old:  ldr r2, =0x7B4
    mov r4, #0
    ldrh r5, [r5, r2] // old:  ldrh r5, [r0, r2] // load from the beginning of the workspace and not 878
// rest of the routine can remain the same?

.org 0x021F8880

.pool


.org 0x021F8884 // edit both a 878 and a 1030 out

.area 0x98


sub_21F8884:
    push {r3-r7, lr}
    ldr r2, =0x1030
    mov r5, r0
    mov r4, r1
    ldr r1, [r5, r2] // old:  add r1, r5, r2
    mov r0, #0
    lsr r2, r2, #1
    blx 0x20D47EC
    cmp r4, #1 // national dex comparison?  check it because it needs to be edited anyway
    ldr r7, =0x102C // old:  ldr r0, =0x102C
    bne _21F88D6
    ldrh r0, [r5, r7] // old:  ldrh r0, [r5, r0]
    mov r6, #0
    cmp r0, #0
    bls _return_21F88FE
    //ldr r7, =0x102C optimize this out
    mov r4, #0 // old:  add r4, r5, #0

// not having 87A or 1032 in the pool frees up 4 instructions in the area
// r3 is a free register at this point
_21F88A8:
    ldr r0, =0x1858
    ldr r3, =0x878 // old:  ldr r1, =0x878
    ldrb r0, [r5, r0]
    ldr r1, [r5, r3] // old:  ldrh r1, [r4, r1]
    ldrh r1, [r1, r4] // new:  load current 878 entry into r1
    bl 0x2074930 // r1 needs to be current entry in 878 list, r3 is maintained by this function too
    //ldr r1, =0x878 // optimized out by r3 inclusion
    sub r0, r0, #1
    ldr r2, [r5, r3] // new:  r2 is 878 p->878 table
    ldrh r2, [r2, r4] // load current 878 entry into r2   old: ldrh r2, [r4, r1]
    lsl r0, r0, #2
    ldr r1, =0x1030
    ldr r1, [r5, r1] // loads 1030 table.  old: add r0, r5, r0
    strh r2, [r0, r1]
    //ldr r1, =0x87A // no more 87A abuse
    ldr r3, [r5, r3] // new:  load in the 878 table again
    add r6, r6, #1
    add r4, #2 // new: halfway increment entry to reach seen pos of 878 table
    ldrh r2, [r4, r3] // old:  ldrh r2, [r4, r1]  // current entry of 878 in r2
    //ldr r1, =0x1032 // no more 1032 abuse
    add r1, #2 // increment 1030 table to seen/caught status start position; it is fine to use from here
    add r4, #2 // old:  add r4, r4, #4 // increment entry
    strh r2, [r0, r1]
    ldrh r0, [r5, r7]
    cmp r6, r0
    bcc _21F88A8
    pop {r3-r7, pc}


// i should still have 10 instructions to burn
// r7 is already 0x102C
_21F88D6:
    ldrh r0, [r5, r7] // old:  ldrh r0, [r5, r0]
    mov r1, #0
    cmp r0, #0
    bls _return_21F88FE

    // old:
    /*ldr r3, =0x1034 // poke_list+4 to let the sort tab have an entry
    ldr r4, =0x87A
    //mov r7, r3 // r7 is already 0x102C
    mov r0, r5
    add r6, r3, #2
    //sub r7, #8 // r7 is already 0x102C*/

    // new:
    ldr r2, =0x878
    ldr r3, =0x1030
    ldr r2, [r5, r2]
    ldr r3, [r5, r3]
    add r3, #4 // skip an entry for the dex sort info thing
    mov r0, #0

// r0 = entry
// r1 = loop counter
// r2 = 878 list
// r3 = 1030 list
// r4 = open
// r5 = p->workspace
// r6 = open
// r7 = already 0x102C
_21F88EA:
    //ldr r2, =0x878
    add r1, r1, #1

    // new:
    ldr r4, [r2, r0] // load mon from 878 and store in 1034
    str r4, [r3, r0]

    // old:
    /*ldrh r2, [r0, r2] // load each entry from 878 and write to 1034
    strh r2, [r0, r3] // store back to 1034
    ldrh r2, [r0, r4] // load 87A seen
    strh r2, [r0, r6] // store back to 1036*/

    ldrh r4, [r5, r7] // old:  ldrh r2, [r5, r7] // caught/seen num
    add r0, r0, #4
    cmp r1, r4 // old:  cmp r1, r2
    bcc _21F88EA

_return_21F88FE:
    pop {r3-r7, pc}

.pool

.endarea


.org 0x021F891C // this is an 878

.area 0x34


sub_21F891C:
    push {r3, lr}
    mov r2, r0
    cmp r1, #0
    bne _21F892A
    ldr r0, =0x102C
    ldrh r0, [r2, r0]
    pop {r3, pc}

// r2 = p->workspace
// 1 isntruction to burn because of the nop for alignment
_21F892A:
    ldr r1, =0x102C
    ldr r0, =0x1858
    ldrh r1, [r2, r1]
    ldrb r0, [r2, r0]
    sub r1, r1, #1
    lsl r1, r1, #2

    // new:
    ldr r3, =0x878
    ldr r2, [r2, r3] // load 878 table into r2 // working as expected

    // old:
    /*add r2, r2, r1
    ldr r1, =0x878*/

    ldrh r1, [r2, r1]
    bl 0x2074930
    pop {r3, pc}

.pool

.endarea

.close


.open "base/arm9.bin", 0x2000000

// r0 = sort list probably
// r1 = species
.org 0x02074930 // rewrite get_dex_num

.area 0x14, 0xFF

get_dex_num: // god i wish this could be well-rewritten
    push {lr}
    bl get_dex_num_patch
    pop {pc}

.pool

.endarea


.org 0x020FF088 // where the old gSpeciesToOWNum table was

.area 0x3DA // make sure we are not overflowing out of old space

// still need to call 0x201AA8C (AllocMemory) with a heapid (r0) of 0x25, and size (r1) of mons_no*4
// then call 0x20E5B44 (memset) with r0 = p->poke_list, r1 = 0, r2 = size (mons_no*4)
// call 0x201AB0C (sys_FreeMemoryEz) with the pointer in r0 to free up the memory upon destroying dex

// r4 = p->workspace
allocate_lists:
    push {r0-r7, lr}
    mov r5, r4 // r5 = p->workspace

    // allocate for 878 table - extra (19) entries are to ensure no garbage data gets displayed at the end

    mov r0, #0x25 // heapid
    ldr r1, =((NUM_OF_MONS + 19) * 4)
    bl 0x201AA8C // allocate the memory

    ldr r1, =0x878
    str r0, [r5, r1] // workspace+0x878 = AllocMemory(0x25, NUM_OF_MONS * 4)

    mov r1, #0
    ldr r2, =((NUM_OF_MONS + 19) * 4)
    blx 0x20E5B44 // memset(p->878_list, 0, NUM_OF_MONS * 4)

    // allocate for 1030 table - extra entries are to ensure no garbage data at the end

    mov r0, #0x25 // heapid
    ldr r1, =((NUM_OF_MONS + 19) * 4)
    bl 0x201AA8C // allocate the memory

    ldr r1, =0x1030
    str r0, [r5, r1] // workspace+0x1030 = AllocMemory(0x25, NUM_OF_MONS * 4)

    mov r1, #0
    ldr r2, =((NUM_OF_MONS + 19) * 4)
    blx 0x20E5B44 // memset(p->1030_list, 0, NUM_OF_MONS * 4)

    // should be all good; restore values and branch back

    pop {r0-r7}
    str r1, [r4, r0]
    ldr r0, [r4]
    pop {pc}

.pool

// r0 = p->workspace
unallocate_lists:
    push {r0-r7, lr}
    mov r5, r0

    // now need to unallocate the space

    ldr r0, =0x878
    ldr r0, [r5, r0]
    bl 0x201AB0C // sys_FreeMemoryEz(p->878_list)

    ldr r0, =0x1030
    ldr r0, [r5, r0]
    bl 0x201AB0C // sys_FreeMemoryEz(p->1030_list)

    // clean up and branch back

    pop {r0-r7}
    mov r4, r0
    mov r0, #0
    pop {pc}

.pool


// r6 = p->workspace
patch1: // load the 1030 list and add 2 to the offset, comes back to ldrh r0, [r1, r0]
    add r1, r0, #2 // add 2 to the offset
    ldr r0, =0x1030
    ldr r0, [r6, r0]
    bx lr

.pool


// r5 = p->workspace
patch2: // load the 1030 list and add 2 to the offset, return with entry in r2
    ldr r0, =0x1030
    ldr r0, [r5, r0] // r0 = 1030_list
    lsl r2, r7, #2
    add r3, r2, #2 // add 2 to the offset
    ldrh r2, [r0, r3]
    bx lr

.pool


// r2 = entry
// r5 = p->workspace
patch3: // load 1030 list, return with entry in r0
    ldr r0, =0x1030
    ldr r0, [r5, r0]
    ldrh r0, [r0, r2]
    bx lr

.pool


// r1 = species
get_dex_num_patch:
    push {lr}
    cmp r0, #0
    bne @@_getNationalNum
    mov r0, r1
    bl 0x207185C // get_regional_dex_num
    b @@_return

@@_getNationalNum:
    ldr r0, =SPECIES_ARCEUS
    cmp r1, r0
    ble @@_return_r1 // if not a new mon
    sub r1, #50
@@_return_r1:
    mov r0, r1
@@_return:
    pop {pc}

.pool

.endarea

.close








// here, we need to increase the pokedex structure size to 0x700 (originally 0x340)
// trying to support up to 2048 mons = 2048 / 8 = 256 bytes per flags field that we need to support
// 0x340 gets extended through 0x400 from 0x300, i think that is the language bytes or something
// we need to repoint 0x44 within that structure to 0x400 (repoint the seen flags)
// we then need to repoint 0x84 within that structure to 0x500 (repoint the male flags)
// 0xC4 obviously then needs to be 0x600 (repoint the female flags)
// for a total size of 0x700

CAUGHT_FLAGS_OFFSET equ 0x4
SEEN_FLAGS_OFFSET equ 0x400
MALE_FLAGS_OFFSET equ 0x500
FEMALE_FLAGS_OFFSET equ 0x600
DEX_SAVE_SIZE equ 0x700

.open "base/arm9.bin", 0x02000000


// in the name of maintaining PKHeX compatibility for vanilla saves, this whole part needs to be possibly conditionally built.
.ifdef ALLOW_SAVE_CHANGES

.org 0x020293E0

GetPokedexStructSize: // used by the save data to get the struct size needed
    mov r0, #DEX_SAVE_SIZE >> 4
    lsl r0, #0x4
    bx lr


.org 0x020293E8

AllocatePokedexStructSize: // rewrite for new struct size
    push {r4, lr}
    mov r1, #DEX_SAVE_SIZE >> 4
    lsl r1, #0x4
    bl 0x0201AA8C // AllocMemory
    mov r4, r0
    bl PokedexInit
    mov r0, r4
    pop {r4, pc}


.org 0x020293FC

CopyPokedexStruct: // rewrite for new struct size
    ldr r3, =(0x020D4A50) // CpuCopy8
    mov r2, #DEX_SAVE_SIZE >> 4
    lsl r2, #0x4
    bx r3

.pool


.org 0x02029408

IsMonNotValid:
//    push {r3, lr}
//    cmp r0, #0
//    beq @@_invalid_mon
//    ldr r1, =NUM_OF_MONS
//    cmp r0, r1
//    bls @@_return_valid
//
//@@_invalid_mon:
//    bl 0x0202551C // HandleError
//    mov r0, #1
//    pop {r3, pc}
//
//@@_return_valid:
    mov r0, #0
    bx lr
//    pop {r3, pc}

.pool


// edits to SetGenderBit

.org 0x0202943E // replace C4 with 440
    mov r3, r0
    mov r1, #7
    and r3, r1
    mov r6, #1
    lsl r6, r3
    mov r1, #FEMALE_FLAGS_OFFSET >> 4
    lsl r1, #4
    add r2, r1
    asr r1, r0, #3

.org 0x0202946C
    mov r3, #MALE_FLAGS_OFFSET >> 4
    lsl r3, #4
    add r5, r3
    sub r3, r0, #1



// edit to sub_20298E0
// net -0x10 bytes from removing error handling and casting

.org 0x020298E0

.area 0x0202991C-., 0xFF

sub_20298E0: // 0x020298E0
    push {r4-r6, lr}
    add r4, r2, #0
    add r5, r0, #0
    add r6, r1, #0
// old error handling, -0x10 bytes
//    cmp r4, #4
//    blo @@_020298F0
//    bl 0x0202551C
//@@_020298F0:
//    cmp r6, #0xf
//    bls @@_020298F8
//    bl 0x0202551C
//@@_020298F8:
    cmp r4, #2
    bhs @@_02029908
    add r0, r5, #4
    add r1, r6, #0
    add r2, r4, #0
    bl 0x020298C4
    pop {r4-r6, pc}
@@_02029908:
    sub r2, r4, #2
// new:  add SEEN_FLAGS_OFFSET instead of 0x44, +6 bytes
    mov r4, #SEEN_FLAGS_OFFSET >> 4
    lsl r4, #4
    add r5, r4
// -2 bytes
//    add r5, #0x44
// -4 bytes:  get rid of cast
//    lsl r2, r2, #0x18 // get rid of byte cast
    add r0, r5, #0
    add r1, r6, #0
//    lsr r2, r2, #0x18 // get rid of byte cast
    bl 0x020298C4
    pop {r4-r6, pc}

.endarea


// edits to GetNormalMonGender

.org 0x02029C26
    sub r2, r6, #1
    mov r1, #1
    mov r0, #7
    mov r3, r2
    and r3, r0
    mov r0, r1
    lsl r0, r3
    asr r3, r2, #3
    add r3, r5, r3
    mov r6, #MALE_FLAGS_OFFSET >> 4
    lsl r6, #4
    add r3, r6


.org 0x02029C46
    cmp r4, #1
    bne 0x2029C76
    mov r4, r2
    asr r2, r2, #3
    add r2, r5, r2
    mov r0, #7
    mov r3, #FEMALE_FLAGS_OFFSET >> 4
    lsl r3, #4
    add r2, r3


.org 0x02029D98

PokedexInit: // rewrite the beginning for new struct size
    push {r4, lr}
    mov r2, #DEX_SAVE_SIZE >> 4
    lsl r2, #4
    mov r1, #0


// edits to Pokedex_CountDexOwned

.org 0x02029E0C

.area 0x3C, 0xFF

Pokedex_CountDexOwned:
    push {r3-r7, lr}
    mov r6, r0
    mov r5, #0
    mov r4, #1

@@_loop:
    mov r0, r6
    mov r1, r4
    bl 0x02029FF8 // GetCaughtFlag
    cmp r0, #1
    bne @@_increment
    add r5, #1

@@_increment:
    add r4, #1
    mov r7, #(SPECIES_ARCEUS + 1) / 2
    lsl r7, #1
    cmp r4, r7
    blt @@_loop
    add r7, #(SPECIES_VICTINI - SPECIES_ARCEUS - 1)
    cmp r4, r7
    blt @@_increment
    ldr r7, =NUM_OF_MONS
    cmp r4, r7
    ble @@_loop
    mov r0, r5
    pop {r3-r7, pc}

.pool

.endarea


// edits to GetSeenMonCount

.org 0x02029E48

.area 0x3C, 0xFF

GetSeenMonCount:
    push {r3-r7, lr}
    mov r6, r0
    mov r5, #0
    mov r4, #1

@@_loop:
    mov r0, r6
    mov r1, r4
    bl 0x0202A044 // GetSeenFlag
    cmp r0, #1
    bne @@_increment
    add r5, #1

@@_increment:
    add r4, #1
    mov r7, #(SPECIES_ARCEUS + 1) / 2
    lsl r7, #1
    cmp r4, r7
    blt @@_loop
    add r7, #(SPECIES_VICTINI - SPECIES_ARCEUS - 1)
    cmp r4, r7
    blt @@_increment
    ldr r7, =NUM_OF_MONS
    cmp r4, r7
    ble @@_loop
    mov r0, r5
    pop {r3-r7, pc}

.pool

.endarea


// edits to GetRegionalDexCaughtCount

.org 0x02029EF0

.word NUM_OF_MONS


// edits to GetRegionalDexSeenCount

.org 0x02029F44

.word NUM_OF_MONS


// something to do with counting the mons that are not mythical

// edits to sub_2029F74

.org 0x02029FA8

.word NUM_OF_MONS


// edits to sub_2029FAC

.org 0x02029FF4

.word NUM_OF_MONS


// edits to GetCaughtFlag
// net -0x8 bytes from removing error handling and casting

.org 0x02029FF8

.area 0x0202A044-., 0xFF

GetCaughtFlag: // 0x02029FF8
.ifdef DEBUG_DISPLAY_DEX_ENTRIES
    mov r0, #1
    bx lr
.else
    push {r3-r5, lr}
    add r5, r0, #0
.endif
    add r4, r1, #0
    ldr r1, [r5]
    ldr r0, =0xBEEFCAFE
// old error handling, -8 bytes
//    cmp r1, r0
//    beq @@_0202A00A
//    bl 0x0202551C
//@@_0202A00A:
    add r0, r4, #0
    bl 0x02029408
    cmp r0, #0
    beq @@_0202A018
    mov r0, #0
    pop {r3-r5, pc}
@@_0202A018:
// new replace below:  +2 bytes
    sub r2, r4, #1
// get rid of old casting, -6 bytes
//    sub r0, r4, #1
//    lsl r0, r0, #0x10
//    lsr r2, r0, #0x10
    mov r0, #1
    mov r1, #7
    and r1, r2
    add r3, r0, #0
    lsl r3, r1
    asr r1, r2, #3
    add r2, r5, r1
    ldrb r1, [r2, #CAUGHT_FLAGS_OFFSET]
    tst r1, r3
    beq @@_0202A03A
// get rid of old handling, -2 bytes
//    add r2, #0x44
// new: +6 bytes
    mov r5, #SEEN_FLAGS_OFFSET >> 4
    lsl r5, #4
    add r2, r5
    ldrb r1, [r2]
    tst r1, r3
    bne @@_0202A03C
@@_0202A03A:
    mov r0, #0
@@_0202A03C:
    pop {r3-r5, pc}
//    nop

.pool

.endarea


// edits to GetSeenFlag
// net -0x8 bytes from removing error handling and casting

.org 0x0202A044

.area 0x0202A088-., 0xFF

GetSeenFlag: // 0x0202A044
.ifdef DEBUG_DISPLAY_DEX_ENTRIES
    mov r0, #1
    bx lr
.else
    push {r3-r5, lr}
    add r5, r0, #0
.endif
    add r4, r1, #0
    ldr r1, [r5]
    ldr r0, =0xBEEFCAFE
// remove error handling:  -8 bytes
//    cmp r1, r0
//    beq @@_0202A056
//    bl 0x0202551C
//@@_0202A056:
    add r0, r4, #0
    bl 0x02029408
    cmp r0, #0
    beq @@_0202A064
    mov r0, #0
    pop {r3, r4, r5, pc}
@@_0202A064:
// new replace below:  +2 bytes
    sub r3, r4, #1
// get rid of cast: -6 bytes
//    sub r0, r4, #1
//    lsl r0, r0, #0x10
//    lsr r3, r0, #0x10
    mov r0, #1
    mov r1, #7
    and r1, r3
    add r2, r0, #0
    lsl r2, r1
    asr r1, r3, #3
    add r1, r5, r1
// get rid of old handling, -2 bytes
//    add r1, #0x44
// new: +6 bytes
    mov r3, #SEEN_FLAGS_OFFSET >> 4
    lsl r3, #4
    add r1, r3
    ldrb r1, [r1]
    tst r1, r2
    bne @@_0202A082
    mov r0, #0
@@_0202A082:
    pop {r3-r5, pc}

.pool

.endarea


// edits to unknown function

.org 0x0202A0B4

.area 0x0202A108-., 0xFF

sub_0202A0B4: // 0x0202A0B4
    push {r4-r7, lr}
    add r5, r0, #0
    add r4, r1, #0
    ldr r1, [r5]
    ldr r0, =0xBEEFCAFE
    add r6, r2, #0
    cmp r1, r0
    beq @@_0202A0C8
    bl 0x0202551C
@@_0202A0C8:
    add r0, r4, #0
    bl 0x02029408
    cmp r0, #0
    beq @@_0202A0D8
    mov r0, #0
    mvn r0, r0
    pop {r4-r7, pc}
@@_0202A0D8:
//    sub r0, r4, #1
//    lsl r0, r0, #0x10
//    lsr r2, r0, #0x10
    sub r2, r4, #1 // net -4
    add r3, r2, #0
    asr r2, r2, #3
    add r2, r5, r2
    mov r0, #7
//    add r2, #0x44 // here
    mov r7, #SEEN_FLAGS_OFFSET >> 4
    lsl r7, #4
    add r2, r7 // net +4
    mov r1, #1
    and r3, r0
    ldrb r2, [r2]
    lsl r1, r3
    tst r1, r2
    beq @@_0202A100
    add r0, r5, #0
    add r1, r4, #0
    add r2, r6, #0
    bl 0x02029C04
    pop {r4-r7, pc}
@@_0202A100:
    sub r0, #8
    pop {r4-r7, pc}

.pool

.endarea


// edits to SetMonSeen

.org 0x0202A36C

.area 0x0202A434-., 0xFF

SetMonSeen: // 0x0202A36C
    push {r3-r7, lr}
    sub sp, #8
    add r5, r0, #0
    str r1, [sp]
    add r0, r1, #0
    mov r1, #5
    mov r2, #0
    bl 0x0206E540
    lsl r0, r0, #0x10
    lsr r4, r0, #0x10
    mov r1, #0
    ldr r0, [sp]
    add r2, r1, #0
    bl 0x0206E540
    str r0, [sp, #4]
    ldr r0, [sp]
    bl 0x0206FF88
    add r6, r0, #0
    ldr r1, [r5]
    ldr r0, =0xBEEFCAFE
    cmp r1, r0
    beq @@_0202A3A2
    bl 0x0202551C
@@_0202A3A2:
    add r0, r4, #0
    bl 0x02029408
    cmp r0, #0
    bne @@_0202A426
//    sub r0, r4, #1
//    lsl r0, r0, #0x10
//    lsr r7, r0, #0x10
    sub r7, r4, #1 // net -4
    mov r1, #1
    mov r0, #7
    add r2, r7, #0
    and r2, r0
    add r0, r1, #0
    asr r3, r7, #3
    lsl r0, r2
    add r2, r5, r3
//    add r2, #0x44 // here
    mov r1, #SEEN_FLAGS_OFFSET >> 4
    lsl r1, #4
    add r2, r1 // net +4
    ldrb r2, [r2]
    tst r2, r0
    bne @@_0202A3E6
    ldr r1, =0x00000147
    cmp r4, r1
    bne @@_0202A3D6
    ldr r0, [sp, #4]
    sub r1, #0x43
    str r0, [r5, r1]
@@_0202A3D6:
//    lsl r1, r6, #0x18
    add r0, r5, #0
//    lsr r1, r1, #0x18
    mov r1, r6 // net -2
    mov r2, #0
    add r3, r4, #0
    bl 0x0202949C
    b @@_0202A408
@@_0202A3E6:
    add r2, r5, r3
    mov r3, #MALE_FLAGS_OFFSET >> 4
    lsl r3, #4
    add r2, r3
    ldrb r2, [r2]
    tst r0, r2
    bne @@_next
    mov r1, #0
@@_next:
    cmp r1, r6
    beq @@_0202A408
//    lsl r1, r6, #0x18
    add r0, r5, #0
//    lsr r1, r1, #0x18
    mov r1, r6 // net -2
    mov r2, #1
    add r3, r4, #0
    bl 0x0202949C
@@_0202A408:
    ldr r2, [sp]
    add r0, r5, #0
    add r1, r4, #0
    bl 0x02029AF0
    mov r1, #7
//    add r5, #0x44 // here
    mov r0, #SEEN_FLAGS_OFFSET >> 4
    lsl r0, #4
    add r5, r0 // net +4
    asr r0, r7, #3
    ldrb r3, [r5, r0]
    mov r2, #1
    and r1, r7
    lsl r2, r1
    add r1, r3, #0
    orr r1, r2
    strb r1, [r5, r0]
@@_0202A426:
    add sp, #8
    pop {r3-r7, pc}
    nop

.pool

.endarea


// edits to SetMonCaught

.org 0x0202A434

.area 0x0202A53C-., 0xFF

SetMonCaught: // 0x0202A434
    push {r3-r7, lr}
    sub sp, #8
    add r7, r1, #0
    add r5, r0, #0
    add r0, r7, #0
    mov r1, #5
    mov r2, #0
    bl 0x0206E540
//    lsl r0, r0, #0x10
//    lsr r4, r0, #0x10
    mov r4, r0 // net -2
    add r0, r7, #0
    mov r1, #0xc
    mov r2, #0
    bl 0x0206E540
    mov r1, #0
    str r0, [sp, #4]
    add r0, r7, #0
    add r2, r1, #0
    bl 0x0206E540
    str r0, [sp]
    add r0, r7, #0
    bl 0x0206FF88
    add r6, r0, #0
    ldr r1, [r5]
    ldr r0, =0xBEEFCAFE
    cmp r1, r0
    beq @@_0202A476
    bl 0x0202551C
@@_0202A476:
    add r0, r4, #0
    bl 0x02029408
    cmp r0, #0
    bne @@_0202A530
//    sub r0, r4, #1
//    lsl r0, r0, #0x10
//    lsr r3, r0, #0x10
    sub r3, r4, #1 // net -4
    mov r2, #1
    mov r0, #7
    and r0, r3
    add r1, r2, #0
    lsl r1, r0
    asr r0, r3, #3
    add r3, r5, r0
//    add r3, #0x44 // here
    push {r0}
    mov r0, #SEEN_FLAGS_OFFSET >> 4
    lsl r0, #4
    add r3, r0 // net +4
    pop {r0}
    ldrb r3, [r3]
    tst r3, r1
    bne @@_0202A4B8
    ldr r1, =0x00000147
    cmp r4, r1
    bne @@_0202A4A8
    ldr r0, [sp]
    sub r1, #0x43
    str r0, [r5, r1]
@@_0202A4A8:
//    lsl r1, r6, #0x18
    add r0, r5, #0
//    lsr r1, r1, #0x18
    mov r1, r6 // net -2
    mov r2, #0
    add r3, r4, #0
    bl 0x0202949C
    b @@_0202A4DA
@@_0202A4B8:
    add r0, r5, r0
    mov r3, #MALE_FLAGS_OFFSET >> 4
    lsl r3, #4
    add r0, r3
    ldrb r0, [r0]
    tst r0, r1
    bne @@_next1
    mov r2, #0
@@_next1:
    cmp r2, r6
    beq @@_0202A4DA
//    lsl r1, r6, #0x18
    add r0, r5, #0
//    lsr r1, r1, #0x18
	mov r1, r6
    mov r2, #1
    add r3, r4, #0
    bl 0x0202949C
@@_0202A4DA:
    add r0, r5, #0
    add r1, r4, #0
    add r2, r7, #0
    bl 0x02029AF0
    cmp r4, #0xc9
    bne @@_0202A4F8
    add r0, r7, #0
    bl 0x02070D98
    add r1, r0, #0
    add r0, r5, #0
    mov r2, #1
    bl 0x020295A0
@@_0202A4F8:
    ldr r2, [sp, #4]
    add r0, r5, #0
    add r1, r4, #0
    bl 0x02029BE0
    ldr r0, [sp, #4]
    cmp r0, #2
    beq @@_0202A50E
    add r0, r5, #0
    bl 0x0202A5DC
@@_0202A50E:
    sub r6, r4, #1
    //lsl r0, r0, #0x10
    //lsr r6, r0, #0x10
    add r1, r5, #CAUGHT_FLAGS_OFFSET
    asr r0, r6, #3
    mov r2, #7
    ldrb r4, [r1, r0]
    mov r3, #1
    and r2, r6
    lsl r3, r2
    add r2, r4, #0
    orr r2, r3
//    add r5, #0x44 // here
    mov r4, #SEEN_FLAGS_OFFSET >> 4
    lsl r4, #4
    add r5, r4 // net +4
    strb r2, [r1, r0]
    ldrb r1, [r5, r0]
    orr r1, r3
    strb r1, [r5, r0]
@@_0202A530:
    add sp, #8
    pop {r3-r7, pc}

.pool

.endarea


.endif // ALLOW_SAVE_CHANGES


// debug edits to national dex status

.if ALWAYS_HAVE_NATIONAL_DEX == 1

.org 0x0202A56E
    mov r0, #1

.endif

.close
