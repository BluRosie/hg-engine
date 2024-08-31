.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_849", 0
// Bleakwind Storm
a010_849:
    loadparticlefromspa 0, 384 //Tailwind
    waitparticle
    loadparticlefromspa 1, 529 //Hurricane, from w2
    waitparticle

    addparticle 0, 2, 0 //Tailwind wind movement
    playsepanmod 2121, -117, 117, 4, 2
    changebg 25, 0x1
    waitforchangebg //Aeroblast bg
    callfunction 68, 5, 0, 4, 0, 28, 0, "NaN", "NaN", "NaN", "NaN", "NaN"
    //wait 15
    addparticle 1, 0, 4
    addparticle 1, 1, 4
    addparticle 1, 2, 4
    addparticle 1, 3, 4
    addparticle 1, 4, 4 //these are the Hurricane particles
    playsepan 1837, 117
    shaketargetmon 10, 20
    shadetargetmon 29, 29, 29
    wait 22
    resetbg 25, 0x1
    waitforchangebg


    unloadparticle 0
    waitstate
    unloadparticle 1
    waitstate
    end


.close
