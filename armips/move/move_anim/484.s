.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_484", 0

red equ 31
green equ 0
blue equ 0

a010_484:
    loadparticlefromspa 1, 497
    waitparticle
    loadparticlefromspa 0, 387
    waitparticle

// shoot thing at opponent
    addparticle 0, 1, 17
    cmd37 6, 0, 2, 6, 1, 0, 0, "NaN", "NaN"
    wait 8
    callfunction 34, 5, 8, 1, 1, red | green << 5 | blue << 10, 12, "NaN", "NaN", "NaN", "NaN", "NaN"
    wait 4

// fire burst
    playsepan 2011, 117
    addparticle 1, 1, 4
    addparticle 1, 0, 4
    callfunction 36, 5, 3, 0, 1, 7, 264, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    waitparticle

    unloadparticle 0
    unloadparticle 1
    waitstate
    end
    

.close
