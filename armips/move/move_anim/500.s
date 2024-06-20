.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_500", 0

// echoed voice move animation

red equ 31
green equ 31
blue equ 31

a010_500:
    loadparticlefromspa 0, 511
    waitparticle
    loadparticlefromspa 1, 512
    waitparticle

    addparticle 0, 0, 3 // circles
    addparticle 0, 1, 3
    addparticle 1, 0, 3 // weird lightning things
    wait 30
    callfunction 33, 5, 0, 1, 12, 0, red | green << 5 | blue << 10, "NaN", "NaN", "NaN", "NaN", "NaN" // flash screen rgb555 color
    callfunction 36, 5, 3, 0, 1, 2, 264, "NaN", "NaN", "NaN", "NaN", "NaN" // shake target mon
    waitparticle

    unloadparticle 0
    waitstate
    unloadparticle 1
    waitstate
    end
    

.close
