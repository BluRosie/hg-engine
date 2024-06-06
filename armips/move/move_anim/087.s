.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_087", 0

a010_087:
    initspriteresource
    loadspriteresource 0
    loadspriteresource 1
    loadspriteresource 2
    loadspriteresource 3
    loadspritemaybe 4, 0, 0, 0
    loadspritemaybe 5, 0, 1, 1
    loadspritemaybe 6, 0, 2, 2
    loadspritemaybe 7, 0, 3, 3
    callfunction 78, 1, 0, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    loadparticle 0, 118
    waitstate
    unloadspriteresource
    resetsprite 0
    resetsprite 1
    resetsprite 2
    resetsprite 3
    cmd43
    cmd0C 7, 1
    changebg 19, 0x800001
    waitforchangebg
    addparticle 0, 2, 4
    addparticle 0, 3, 4
    addparticle 0, 4, 4
    addparticle 0, 0, 4
    addparticle 0, 5, 4
    addparticle 0, 1, 17
    cmd37 6, 0, 0, 5, 0, 0, 0, "NaN", "NaN"
    cmd37 4, 1, 0, -2064, 0, "NaN", "NaN", "NaN", "NaN"
    wait 5
    callfunction 68, 6, 3, 0, 1, 1, 0, 1, "NaN", "NaN", "NaN", "NaN"
    callfunction 34, 6, 8, 0, 1, 0, 15, 0, "NaN", "NaN", "NaN", "NaN"
    callfunction 33, 5, 2, -4, 0, 12, 32767, "NaN", "NaN", "NaN", "NaN", "NaN"
    playsepan 2007, 117
    wait 10
    callfunction 33, 5, 2, -4, 12, 0, 32767, "NaN", "NaN", "NaN", "NaN", "NaN"
    callfunction 36, 5, 0, 1, 1, 8, 264, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitparticle
    unloadparticle 0
    cmd43
    cmd0C 0, 1
    cmd0C 1, 0
    cmd0C 7, 1
    cmd0C 6, 1
    resetbg 19, 0x1000001
    waitforchangebg
    end

.close
