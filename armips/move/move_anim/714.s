.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_714", 0
// Prismatic Laser
a010_714:
    loadparticlefromspa 0, 426 //Aura Sphere
    waitparticle
    loadparticlefromspa 1, 107 //Solar Beam
    waitparticle

    cmd43
    cmd0C 7, 1
    changebg 11, 0x800001

    waitforchangebg //aura sphere bg
    callfunction 33, 5, 0, 1, 0, 12, 0, "NaN", "NaN", "NaN", "NaN", "NaN"

    playsepan 2088, -117
    addparticle 0, 2, 17
    cmd37 6, 0, 2, 1, 0, 0, 0, "NaN", "NaN"
    waitparticle

    addparticle 1, 12, 4
    addparticle 1, 14, 4//light hits opponent in 2 directions

    shadetargetmon 31, 27, 31
    shaketargetmon 4, 10
    playsepanmod 1949, -117, 117, 4, 2
    waitparticle

    callfunction 33, 5, 0, 1, 12, 0, 0, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    resetbg 11, 0x1000001
    waitforchangebg

    unloadparticle 0
    waitstate
    unloadparticle 1
    waitstate
    end

.close
