.nds
.thumb

// big thanks to mikelan98 and nomura for this.  really cool stuff

.open "base/arm9.bin", 0x02000000

.org 0x02000CD0 // branch from Main(), run once
 
    bl load_arm9_expansion


.org 0x02110334
 
load_arm9_expansion: // load the narc subfile with arm9 expansion data
    push {r2, lr}
    mov r0, #5
    bl rom_self_check //perform self check 1
    mov r0, #13
    bl rom_self_check //perform self check 2
    ldr r0, =0x023C8000 // destination ram offset
    mov r1, #028 // a028
    mov r2, #0 // 0th file of a028
    bl 0x2007508 // load_from_narc(&(0x02FC8000), 28, 0);
    mov r0, #0
    mov r1, #3
    pop {r2, pc}

.pool

.org 0x0211025C

rom_self_check: // scan self for corrupted data
    push {r3, lr}
    mov r2, r0
    ldr r0, =0x023C8000 // destination ram offset
    ldr r1, =#262 // a262
    bl 0x2007508 // load_from_narc(&(0x023C8000), 262, 5) first run, load_from_narc(&(0x023C8000), 262, 13) second run
    ldr r0, =0xFFFF
    ldr r1, =0x023C8000
    ldr r2, =0xC2A
    swi 0x0e //crc-16
    ldr r1, =0xD65B
    cmp r0, r1
    bne rom_invalid
    mov r0, #0
    mov r1, #3
    pop {r3, pc}

.pool

.org 0x021102D4

rom_invalid:
    swi 0x00
 
.close
