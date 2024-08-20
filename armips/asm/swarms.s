.nds
.thumb

// included by armips/global.s

.open "base/arm9.bin", 0x02000000

// Make sure to also edit SWARM_MAP_COUNT in src/swarms.c
.equ SWARM_MAP_COUNT, 20

.org 0x02097F70
    mov r1, #SWARM_MAP_COUNT

.org 0x02097FA2
    mov r1, #SWARM_MAP_COUNT

.close
