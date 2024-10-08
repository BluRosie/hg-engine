.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_908", 0

// electro shot

a010_908:
    loadparticlefromspa 0, 118 // Thunder 
    waitparticle
    loadparticlefromspa 1, 469 // Charge Beam
    waitparticle
    loadparticlefromspa 2, 286 // Charge
    waitparticle

    checkturn _Charge, _Attack 

_Charge:
    callfunction 33, 5, 0, 1, 0, 12, 0, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    addparticle 2, 0, 3
    addparticle 2, 1, 3
    addparticle 2, 2, 3
    addparticle 2, 3, 3
    wait 15
    repeatse 2066, -117, 12, 5
    wait 77
    playsepan 1970, -117
    waitparticle
    callfunction 33, 5, 0, 1, 12, 0, 0, "NaN", "NaN", "NaN", "NaN", "NaN"
    unloadparticle 0
    unloadparticle 1
    unloadparticle 2
    waitstate
    end

_Attack:
    cmd43
    cmd0C 7, 1
    changebg 19, 0x800001
    waitforchangebg

    jumpifplayerattack _OtherSide
    callfunction 33, 5, 0, 1, 0, 12, 0, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    addparticle 1, 10, 3
    addparticle 1, 11, 3
    addparticle 1, 12, 3
    addparticle 1, 13, 3
    repeatse 1882, -117, 4, 5
    wait 80
    playsepanmod 1895, -117, 117, 4, 2
    addsequentialparticle 1, 1, 2, 3, 4, 5, 6, 0x12
    wait 5
    callfunction 36, 5, 2, 0, 1, 4, 264, "NaN", "NaN", "NaN", "NaN", "NaN"
    callfunction 34, 6, 8, 0, 1, 13311, 10, 10, "NaN", "NaN", "NaN", "NaN"
    waitparticle
    unloadparticle 0
    unloadparticle 1
    unloadparticle 2
    callfunction 33, 5, 0, 1, 12, 0, 0, "NaN", "NaN", "NaN", "NaN", "NaN"
    cmd43
    cmd0C 0, 1
    cmd0C 1, 0
    cmd0C 7, 1
    cmd0C 6, 1
    resetbg 19, 0x1000001
    waitforchangebg
    waitstate
    end

_OtherSide:
    callfunction 33, 5, 0, 1, 0, 12, 0, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    addparticle 1, 10, 3
    addparticle 1, 11, 3
    addparticle 1, 12, 3
    addparticle 1, 13, 3
    repeatse 1882, -117, 4, 5
    wait 80
    playsepanmod 1895, -117, 117, 4, 2
    addparticlebasedonbattler 1, 8, 9, 8, 9, 0x3
    wait 5
    callfunction 36, 5, 2, 0, 1, 4, 264, "NaN", "NaN", "NaN", "NaN", "NaN"
    callfunction 34, 6, 8, 0, 1, 13311, 10, 10, "NaN", "NaN", "NaN", "NaN"
    waitparticle
    unloadparticle 0
    unloadparticle 1
    unloadparticle 2
    callfunction 33, 5, 0, 1, 12, 0, 0, "NaN", "NaN", "NaN", "NaN", "NaN"
    cmd43
    cmd0C 0, 1
    cmd0C 1, 0
    cmd0C 7, 1
    cmd0C 6, 1
    resetbg 19, 0x1000001
    waitforchangebg
    waitstate
    end
    

.close
