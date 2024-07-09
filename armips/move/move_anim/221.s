.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_221", 0

a010_221:
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
    loadparticle 0, 239
    waitstate
    unloadspriteresource
    resetsprite 0
    resetsprite 1
    resetsprite 2
    resetsprite 3
    wait 1
    cmd43
    cmd0C 0, -32
    cmd0C 1, 0
    cmd0C 6, 1
    cmd0C 7, 1
    changebg 29, 0x800001
    waitforchangebg
    addparticle 0, 1, 4
    addparticle 0, 2, 4
    addparticle 0, 3, 4
    addparticle 0, 0, 4
    playsepan 2034, 117
    wait 40
    playsepan 1938, 117
    wait 10
    callfunction 34, 6, 8, 0, 1, 31, 10, 0, "NaN", "NaN", "NaN", "NaN"
    callfunction 36, 5, 1, 0, 1, 2, 264, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitparticle
    unloadparticle 0
    stopse 1938
    cmd43
    cmd0C 0, -32
    cmd0C 1, 0
    cmd0C 6, 1
    cmd0C 7, 1
    resetbg 28, 0x1000001
    waitforchangebg
    end

.close
