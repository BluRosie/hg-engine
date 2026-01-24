.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_803", 0

//Meteor Beam

a010_803:
    loadparticlefromspa 0, 167
    waitparticle
    loadparticlefromspa 1, 94
    waitparticle

    checkturn _00C8, _0174

    unloadparticle 0
    waitstate
    end

_00C8:
    callfunction 33, 5, 0, 1, 0, 12, 0, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    addparticle 0, 2, 3
    wait 10
    callfunction 33, 5, 0, 1, 0, 10, 0, "NaN", "NaN", "NaN", "NaN", "NaN"
    callfunction 34, 6, 2, 0, 1, 0, 10, 0, "NaN", "NaN", "NaN", "NaN"
    callfunction 34, 6, 4, 0, 1, 0, 10, 30, "NaN", "NaN", "NaN", "NaN"
    callfunction 34, 6, 16, 0, 1, 0, 10, 30, "NaN", "NaN", "NaN", "NaN"
    repeatse 2066, -117, 12, 2
    wait 20
    waitparticle
    unloadparticle 0
    waitstate
    unloadparticle 1
    waitstate
    callfunction 33, 5, 0, 1, 12, 0, 0, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    end

_0174:
    cmd43
    cmd0C 0, -32
    cmd0C 1, 0
    cmd0C 6, 1
    cmd0C 7, 1
    cmd0C 5, 0
    changebg 39, 0x20001
    waitforchangebg

    callfunction 68, 5, 0, 3, 0, 20, 0, "NaN", "NaN", "NaN", "NaN", "NaN"
    addparticle 1, 9, 3
    addparticlebasedonbattler 1, 7, 8, 7, 8, 0x3
    addparticlebasedonbattler 1, 13, 13, 13, 13, 0x3
    wait 5
    repeatse 1993, 117, 6, 8
    callfunction 36, 5, 4, 0, 1, 20, 264, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitparticle

    unloadparticle 0
    waitstate
    unloadparticle 1
    waitstate

    cmd0C 0, -32
    cmd0C 1, 0
    cmd0C 6, 1
    cmd0C 7, 1
    cmd0C 5, 0
    resetbg 39, 0x40001
    waitforchangebg
    end
    

.close
