// 021E8BF4 seems to be task handler type thing?  loads word at 021F9C3C+offset <- fuckin mint
// 021EB654 is the callback it seems.  case 0 is the initialization type thing?
// 021EB654 calls 21E78AC -> case 0 for sorting mons
// loc_21E78AC calls 21EED70 from 021E7940
// goes to 021EEAE4 (from 021EEDF0)
// goes to pull_up_normal_dex (021EEA84) (from 021EEB1C)
// goes to 0200BAF8 (from 021EEA9C)
// goes to 0200B610 (from 0200BB18)
// which is a gateway for 02007524
// which loads a file number from a027 - 815 is crashing??????
// goes to 0200740C (from 02007534)
// goes to 020D83CC (from 020074F8) 
// which is a gateway to 020D8104
// goes to 020D7788 (from 020D8154)
// goes to 020D7744 (from 020D7924)
// goes to 020D68C0 (from 020D7754)
// goes to 020D6B94 (from 020D6980)
// goes to 020D84C4 (from 020D6BB8)
// goes to 020DD754 (from 020D84F4)
// goes to 020DC65C (from 020DD818)
// rabbit hole not worth it?

// normally handled by 21E93D8
// going to have to rewrite the entire callbacks?
// 21EB654 is going to have to look a lot like 21E93D8?  no?
// fuck it.  giant rewrite of 21EB654 coming up

// 21EB654 case 0 is the main one
// case 4 is run on open of entry
// case 5 is run on close of search
// 21E93D8 case 0 is the main one
// case 2 is run on open of search
// case 4 is run on open of entry
// case E is run on close of dex

.open "overlay9_0018.bin", 0x021E5900

.org 0x021EB654

.area 0x1E4

Task_DexSortCallback:
	push {r4, lr}
	sub sp, sp, #8
	mov r1, #0
	mov r4, r0
	bl 0x21F7974 // get callback state
	cmp r0, #0xD
	bhi _21EB6EA
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #(_jumptable_21EB670 - . - 2)]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0

_jumptable_21EB670:
    .halfword _021EB68C - _jumptable_21EB670 - 2, \
              _021EB81E - _jumptable_21EB670 - 2, \
              _021EB6A2 - _jumptable_21EB670 - 2, \
              _021EB6B2 - _jumptable_21EB670 - 2, \
              _021EB6D6 - _jumptable_21EB670 - 2, \
              _021EB708 - _jumptable_21EB670 - 2, \
              _021EB718 - _jumptable_21EB670 - 2, \
              _021EB728 - _jumptable_21EB670 - 2, \
              _021EB73C - _jumptable_21EB670 - 2, \
              _021EB74E - _jumptable_21EB670 - 2, \
              _021EB76E - _jumptable_21EB670 - 2, \
              _021EB794 - _jumptable_21EB670 - 2, \
              _021EB7BE - _jumptable_21EB670 - 2, \
              _021EB7EE - _jumptable_21EB670 - 2
	       
_021EB68C: // case 0
	mov r0, r4
	mov r1, #0
	bl 0x21F2BB0
	mov r0, r4
	bl 0x21E78AC // this where the crash happens tho
	mov r0, r4
	bl 0x21EDEB0
	b _021EB81E

_021EB6A2: // case 2
	mov r0, r4
	mov r1, #0
	mov r2, #8
	mov r3, #0x3E
	bl 0x21EDBB8
	add sp, sp, #8
	pop {r4, pc}

_021EB6B2: // case 3
	mov r0, r4
	bl 0x21F8824
	cmp r0, #0
	beq _21EB6EA
	mov r0, r4
	bl 0x21EDE04
	cmp r0, #1
	bne _21EB6EA
	mov r1, #8
	mov r0, r4
	mov r2, r1
	mov r3, #0x39
	bl 0x21EDBB8
	add sp, sp, #8
	pop {r4, pc}

_021EB6D6: // case 4
	mov r0, r4
	bl 0x21F8824
	cmp r0, #0
	beq _21EB6EA
	mov r0, r4
	bl 0x21F8838 // dex_get_mon_species_something
	cmp r0, #0
	bne _21EB6EC

_21EB6EA:
	b _021EB81E

_21EB6EC:
	ldr r0, =0x8E9
	bl 0x200604C
	ldr r0, =0x185B
	mov r1, #1
	strb r1, [r4, r0]
	mov r0, r4
	mov r1, #0x10
	mov r2, #8
	mov r3, #0x40
	bl 0x21EDBB8
	add sp, sp, #8
	pop {r4, pc}

_021EB708: // case 5
	mov r0, r4
	mov r1, #0x18
	mov r2, #8
	mov r3, #0x3F
	bl 0x21EDBB8
	add sp, sp, #8
	pop {r4, pc}

_021EB718: // case 6
	mov r0, r4
	mov r1, #0x18
	mov r2, #8
	mov r3, #0x3F
	bl 0x21EDBB8
	add sp, sp, #8
	pop {r4, pc}
	
_021EB728: // case 7
	mov r0, r4
	bl 0x21F8838 // dex_get_mon_species_something
	mov r2, #0
	mov r1, r0
	mov r0, r4
	mvn r2, r2
	bl 0x21E7A80
	b _021EB81E

_021EB73C: // case 8
	mov r0, r4
	bl 0x21F8838 // dex_get_mon_species_something
	mov r1, r0
	mov r0, r4
	mov r2, #1
	bl 0x21E7A80
	b _021EB81E

_021EB74E: // case 9
	ldr r0, =0x1859
	ldrb r0, [r4, r0]
	cmp r0, #0
	beq _021EB81E
	ldr r0, =0x8E9
	bl 0x200604C
	ldr r0, =0x868
	mov r1, #0
	add r0, r4, r0
	mov r2, #0x10
	blx 0x20D4994
	add sp, sp, #8
	mov r0, #0x3A // tell the task handler to move to the next task
	pop {r4, pc}

_021EB76E: // case 10
	ldr r0, =0x1859
	ldrb r0, [r4, r0]
	cmp r0, #0
	beq _021EB81E
	ldr r0, =0x8E9
	bl 0x200604C
	ldr r0, =0x868
	mov r1, #0
	add r0, r4, r0
	mov r2, #0x10
	blx 0x20D4994
	ldr r0, =0x86F
	mov r1, #1
	strb r1, [r4, r0]
	add sp, sp, #8
	mov r0, #0x3A // tell the task handler to move to the next task
	pop {r4, pc}

_021EB794: // case 11
	mov r0, r4
	mov r1, #0
	bl 0x21F8950
	ldr r1, =0x1859
	ldrb r1, [r4, r1]
	add r1, r1, #1
	cmp r1, r0
	bhi _021EB81E
	ldr r0, =0x8E9
	bl 0x200604C
	ldr r0, =0x868
	mov r1, #0
	add r0, r4, r0
	mov r2, #0x10
	blx 0x20D4994
	add sp, sp, #8
	mov r0, #0x3B
	pop {r4, pc}

_021EB7BE: // case 12
	mov r0, r4
	mov r1, #0
	bl 0x21F8950
	ldr r1, =0x1859
	ldrb r1, [r4, r1]
	add r1, r1, #1
	cmp r1, r0
	bhi _021EB81E
	ldr r0, =0x8E9
	bl 0x200604C
	ldr r0, =0x868
	mov r1, #0
	add r0, r4, r0
	mov r2, #0x10
	blx 0x20D4994
	ldr r0, =0x86F
	mov r1, #1
	strb r1, [r4, r0]
	add sp, sp, #8
	mov r0, #0x3B
	pop {r4, pc}

_021EB7EE: // case 13
	add r0, sp, #4
	add r1, sp, #0
	bl 0x2025364
	ldr r2, [sp, #4]
	ldr r3, [sp]
	mov r0, r4
	mov r1, #0x12
	bl 0x21F2CD0
	cmp r0, #1
	bne _21EB80C
	add sp, sp, #8
	mov r0, #0x3C
	pop {r4, pc}

_21EB80C:
	ldr r0, =0x868
	add r1, r4, r0
	ldr r0, [sp, #4]
	strh r0, [r1]
	ldr r0, [sp]
	add sp, sp, #8
	strh r0, [r1, #2]
	mov r0, #0x3D
	pop {r4, pc}

_021EB81E: // case 1
	mov r0, #0x39
	add sp, sp, #8
	pop {r4, pc}

.pool

.endarea

.close
