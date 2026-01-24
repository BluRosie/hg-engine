.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_807", 0

//Rising Voltage

a010_807:
    loadparticlefromspa 0, 116
    waitparticle
    loadparticlefromspa 1, 411
    waitparticle


    addparticle 1, 0, 17
    cmd37 6, 0, 1, 2, 0, 0, 0, "NaN", "NaN"
    addparticle 1, 1, 17
    cmd37 6, 0, 1, 2, 0, 0, 0, "NaN", "NaN"
    playsepan 1969, -117
    //magnet rise
    wait 10

    cmd43
    cmd0C 7, 1
    changebg 19, 0x800001
    waitforchangebg



    addparticle 0, 2, 4
    addparticle 0, 3, 4
    playsepan 2114, 117
    shaketargetmon 4, 4
    shadetargetmon 255, 255, 0
    //thunderbolt
    waitparticle

    unloadparticle 0
    waitstate
    unloadparticle 1
    waitstate

    cmd43
    cmd0C 0, 1
    cmd0C 1, 0
    cmd0C 7, 1
    cmd0C 6, 1
    resetbg 19, 0x1000001
    waitforchangebg
    end
    

.close
