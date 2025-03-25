.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

// fix dynamic punch: original makes target go left 1 pixel

.create "build/move/move_anim/0_223", 0

a010_223:
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
    loadparticle 0, 241
    waitstate
    unloadspriteresource
    resetsprite 0
    resetsprite 1
    resetsprite 2
    resetsprite 3
    cmd43
    cmd0C 7, 1
    changebg 1, 0x800001
    wait 5
    playsepan 2040, 117
    addparticle 0, 1, 4
    addparticle 0, 0, 4
    addparticle 0, 2, 4
    callfunction 36, 5, 1, 0, 1, 1, 264, "NaN", "NaN", "NaN", "NaN", "NaN"
    wait 2
    callfunction 34, 6, 8, 0, 2, 2124, 14, 0, "NaN", "NaN", "NaN", "NaN"
    callfunction 68, 5, 5, 0, 1, 6, 0, "NaN", "NaN", "NaN", "NaN", "NaN"
    repeatse 1993, 117, 4, 6
    wait 3
    callfunction 36, 5, 4, 0, 1, 10, 264, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitparticle
    unloadparticle 0
    cmd43
    cmd0C 7, 1
    resetbg 1, 0x1000001
    waitforchangebg
    end

.close
