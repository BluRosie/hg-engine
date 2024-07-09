.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_725", 0
// Photon Geyser
a010_725:
    loadparticlefromspa 0, 414 //Aura Sphere
    waitparticle
    loadparticlefromspa 1, 107 //Solar Beam
    waitparticle


    cmd43
    cmd0C 7, 1
    changebg 2, 0x800001
    waitforchangebg //megahorn bg

    playsepan 1530, -117
    addparticle 0, 2, 3
    //addparticle 0, 1, 3//charges sphere
    waitparticle

    addparticle 1, 10, 4
    addparticle 1, 12, 4
    addparticle 1, 14, 4//light hits opponent in 3 directions

    shadetargetmon 31, 27, 31
    shaketargetmon 4, 10
    playsepanmod 1949, -117, 117, 4, 2

    waitparticle
    cmd43
    cmd0C 7, 1
    resetbg 2, 0x1000001
    waitforchangebg

    unloadparticle 0
    waitstate
    unloadparticle 1
    waitstate
    end
    

.close
