.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_492", 0

red equ 31
green equ 31
blue equ 31

a010_492:
    loadparticlefromspa 0, 505
    waitparticle

// add ring that goes around the user
    addparticle 0, 0, 3
    wait 20
// turn mon white
    callfunction 34, 6, 2, 0, 1, red | green << 5 | blue << 10, 10, 10, "NaN", "NaN", "NaN", "NaN"
    waitparticle

    unloadparticle 0
    waitstate
    end


.close
