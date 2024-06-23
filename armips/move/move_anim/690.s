.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_690", 0
//Core Enforcer
a010_690:
    loadparticlefromspa 0, 255 //hidden power
    waitparticle
    loadparticlefromspa 1, 430 //energy ball
    waitparticle

    callfunction 33, 5, 0, 1, 0, 12, 6912, "NaN", "NaN", "NaN", "NaN", "NaN"
    //green bg
    addparticle 0, 1, 3 //user charges green energy
    wait 30

    addparticle 0, 4, 3
    repeatse 1968, -117, 1, 2
    addparticle 0, 1, 17
    cmd37 6, 0, 1, 2, 0, 0, 0, "NaN", "NaN"
    shaketargetmon 4, 4
    wait 15
    addparticle 0, 4, 3
    repeatse 1968, -117, 1, 2
    addparticle 0, 1, 17
    cmd37 6, 0, 1, 2, 0, 0, 0, "NaN", "NaN"
    shaketargetmon 4, 4
    wait 15
    addparticle 0, 4, 3 //user pulses 3 times
    repeatse 1968, -117, 1, 2
    addparticle 0, 1, 17
    cmd37 6, 0, 1, 2, 0, 0, 0, "NaN", "NaN"
    shaketargetmon 4, 4


    wait 15
    shakescreen
    addparticle 0, 4, 3
    shadetargetmon 29, 29, 29
    playsepan 1874, 117
    addparticle 0, 1, 17
    waitparticle

    callfunction 33, 5, 0, 1, 12, 0, 6912, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    resetbg 33, 0x1
    //green bg

    unloadparticle 0
    waitstate
    unloadparticle 1
    waitstate
    end
    

.close
