.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_724", 0
//Plasma Fists
a010_724:
    loadparticlefromspa 0, 40 //Thunder Punch
    waitparticle
    loadparticlefromspa 1, 327 //Comet Punch
    waitparticle

    cmd43
    cmd0C 7, 1
    changebg 19, 0x800001
    waitforchangebg

    playsepan 2066, -117
    addparticle 0, 2, 4
    addparticle 1, 2, 4
    //fist zooms in + some light
    wait 8
    addparticle 1, 2, 4
    //second fist

    wait 8
    addparticle 0, 0 ,4
    addparticle 0, 1, 4
    shadetargetmon 31, 27, 0
    shaketargetmon 4, 10
    playsepan 2116, 117

    waitparticle
    cmd43
    cmd0C 0, 1
    cmd0C 1, 0
    cmd0C 7, 1
    cmd0C 6, 1
    resetbg 19, 0x1000001
    waitforchangebg

    unloadparticle 0
    waitstate
    unloadparticle 1
    waitstate
    end

.close
