.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_394", 0

a010_394:
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
    loadparticle 0, 412
    waitstate
    unloadspriteresource
    resetsprite 0
    resetsprite 1
    resetsprite 2
    resetsprite 3
    addparticle 0, 0, 17
    cmd37 6, 0, 1, 2, 0, 0, 0, "NaN", "NaN"
    addparticle 0, 2, 4
    addparticle 0, 1, 4
    repeatse 1937, -117, 3, 6
    wait 25
    callfunction 57, 4, 2, 16, -8, 258, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    callfunction 57, 4, 2, -16, 8, 258, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    cmd43
    cmd0C 7, 1
    changebg 33, 0x1
    wait 5
    callfunction 36, 5, 1, 0, 1, 2, 264, "NaN", "NaN", "NaN", "NaN", "NaN"
    playsepan 1874, 117
    wait 2
    callfunction 34, 6, 8, 0, 1, 2124, 14, 0, "NaN", "NaN", "NaN", "NaN"
    waitstate
    waitparticle
    unloadparticle 0
    cmd43
    cmd0C 7, 1
    resetbg 33, 0x1
    waitforchangebg
    end

.close
