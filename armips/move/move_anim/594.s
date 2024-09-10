.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_594", 0
//Diamond Storm
a010_594:
    loadparticlefromspa 0, 426
    waitparticle

    cmd43
    cmd0C 7, 1
    changebg 11, 0x800001
    waitforchangebg

    playsepan 2088, -117
    addparticle 0, 2, 17
    cmd37 6, 0, 2, 1, 0, 0, 0, "NaN", "NaN"
    addparticle 0, 1, 17
    cmd37 6, 0, 2, 6, 1, 0, 0, "NaN", "NaN"
    wait 40
    playsepanmod 1873, -117, 117, 4, 2
    wait 20
    repeatse 1849, 117, 4, 5
    addparticle 0, 0, 4
    callfunction 36, 5, 1, 0, 1, 10, 264, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitparticle
    unloadparticle 0
    callfunction 33, 5, 0, 1, 12, 0, 0, "NaN", "NaN", "NaN", "NaN", "NaN"


    resetbg 11, 0x1000001
    waitforchangebg

    waitstate
    end
    

.close
