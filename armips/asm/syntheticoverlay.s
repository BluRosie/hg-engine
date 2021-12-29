.nds
.thumb

// big thanks to mikelan98 and nomura for this.  really cool stuff

.open "base/arm9.bin", 0x02000000

.org 0x02000CD0 // branch from Main(), run once
 
    bl load_arm9_expansion


.org 0x02110334
 
load_arm9_expansion: // load the narc subfile with arm9 expansion data
    push {r2, lr}
    ldr r0, =0x023C8000 // destination ram offset
    mov r1, #028 // a028
    mov r2, #0 // 0th file of a028
    bl 0x2007508 // load_from_narc(&(0x02FC8000), 28, 0);
    mov r0, #0
    mov r1, #3
    pop {r2, pc}
 
.pool
 
.close
