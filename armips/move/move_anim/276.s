.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_276", 0

a010_276:
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
    loadparticle 0, 294
    waitstate
    unloadspriteresource
    resetsprite 0
    resetsprite 1
    resetsprite 2
    resetsprite 3
    playsepan 1528, -117
    initspriteresource
    loadspriteresource 0
    loadspritemaybe 0, 0, 0, 0
    callfunction 56, 2, 0, 0, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    addparticle 0, 2, 3
    addparticle 0, 3, 3
    waitstate
    wait 30
    wait 10
    cmd43
    cmd0C 7, 1
    cmd56 3, 0x800001, 3
    wait 5
    callfunction 68, 5, 5, 0, 1, 3, 0, "NaN", "NaN", "NaN", "NaN", "NaN"
    playsepan 1920, 117
    callfunction 57, 4, 2, 16, -8, 258, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    wait 2
    playsepan 2098, 117
    addparticle 0, 0, 4
    addparticle 0, 1, 4
    callfunction 36, 5, 8, 0, 1, 4, 264, "NaN", "NaN", "NaN", "NaN", "NaN"
    callfunction 57, 4, 2, -16, 8, 258, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    waitparticle
    unloadparticle 0
    cmd43
    cmd0C 7, 1
    resetbg 3, 0x1000001
    waitforchangebg
    unloadspriteresource
    resetsprite 0
    resetsprite 1
    end

.close
