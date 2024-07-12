.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_504", 0

// quick guard

red equ 31
green equ 31
blue equ 31

a010_504:
    loadparticlefromspa 0, 519
    waitparticle

    addparticle 0, 2, 3
    addparticle 0, 3, 3

    wait 10
    addparticle 0, 0, 3
    addparticle 0, 1, 3
    addparticle 0, 4, 3

    wait 20

    callfunction 34, 6, 2, 0, 1, red | green << 5 | blue << 10, 10, 10, "NaN", "NaN", "NaN", "NaN" // shades attacking mon rgb555 color

    waitparticle

    unloadparticle 0
    waitstate
    end
    

.close
