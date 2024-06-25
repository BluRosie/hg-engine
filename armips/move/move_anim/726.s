.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_726", 0
//Light that Burns the Sky (LightBurnSky)
a010_726:
    loadparticlefromspa 0, 426 //dgleam
    waitparticle
    loadparticlefromspa 1, 371 //doom desire
    waitparticle

    callfunction 33, 5, 0, 1, 0, 12, 0, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    playsepan 2088, -117
    addparticle 0, 2, 17
    cmd37 6, 0, 2, 1, 0, 0, 0, "NaN", "NaN"
    wait 20

    callfunction 33, 5, 0, 1, 0, 16, 32767, "NaN", "NaN", "NaN", "NaN", "NaN"
    callfunction 34, 6, 2050, 0, 1, 32767, 16, 30, "NaN", "NaN", "NaN", "NaN"
    callfunction 34, 6, 2056, 0, 1, 32767, 16, 30, "NaN", "NaN", "NaN", "NaN"
    callfunction 34, 6, 2052, 0, 1, 32767, 16, 30, "NaN", "NaN", "NaN", "NaN"
    callfunction 34, 6, 2064, 0, 1, 32767, 16, 30, "NaN", "NaN", "NaN", "NaN"
    wait 20

    callfunction 36, 5, 1, 0, 1, 2, 264, "NaN", "NaN", "NaN", "NaN", "NaN"
    callfunction 36, 5, 1, 0, 1, 2, 272, "NaN", "NaN", "NaN", "NaN", "NaN"
    callfunction 36, 5, 1, 0, 1, 2, 264, "NaN", "NaN", "NaN", "NaN", "NaN"
    callfunction 36, 5, 1, 0, 1, 2, 272, "NaN", "NaN", "NaN", "NaN", "NaN"
    playsepanmod 1873, -117, 117, 4, 2
    wait 20
    repeatse 1926, 117, 4, 5
    waitparticle
    unloadparticle 0
    callfunction 33, 5, 0, 1, 12, 0, 0, "NaN", "NaN", "NaN", "NaN", "NaN"
    callfunction 36, 5, 1, 0, 1, 2, 264, "NaN", "NaN", "NaN", "NaN", "NaN"
    callfunction 36, 5, 1, 0, 1, 2, 272, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate

    playsepan 2107, 0
    addparticle 1, 2, 17
    cmd37 6, 0, 2, 0, 0, 0, 0, "NaN", "NaN"
    addparticle 1, 0, 17
    cmd37 6, 0, 2, 0, 0, 0, 0, "NaN", "NaN"
    wait 30
    repeatse 1993, 117, 6, 5
    addparticle 1, 1, 17
    cmd37 6, 0, 2, 2, 0, 0, 0, "NaN", "NaN"
    callfunction 36, 5, 4, 0, 1, 10, 264, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitparticle

    unloadparticle 1
    waitstate
    end
    

.close
