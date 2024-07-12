.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_315", 0

a010_315:
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
    loadparticle 0, 333
    waitstate
    unloadspriteresource
    resetsprite 0
    resetsprite 1
    resetsprite 2
    resetsprite 3
    cmd43
    cmd0C 7, 1
    changebg 32, 0x1
    playsepan 1965, -117
    callfunction 36, 5, 1, 0, 1, 5, 258, "NaN", "NaN", "NaN", "NaN", "NaN"
    callfunction 34, 6, 2, 0, 1, 31, 10, 20, "NaN", "NaN", "NaN", "NaN"
    wait 10
    wait 10
    playsepan 2011, -117
    addparticle 0, 0, 17
    cmd37 6, 0, 2, 1, 0, 0, 0, "NaN", "NaN"
    addparticle 0, 1, 17
    cmd37 6, 0, 2, 1, 0, 0, 0, "NaN", "NaN"
    wait 15
    callfunction 36, 5, 1, 0, 1, 6, 258, "NaN", "NaN", "NaN", "NaN", "NaN"
    callfunction 34, 6, 2, 0, 1, 4328, 10, 15, "NaN", "NaN", "NaN", "NaN"
    callfunction 36, 5, 1, 0, 1, 6, 264, "NaN", "NaN", "NaN", "NaN", "NaN"
    callfunction 34, 6, 8, 0, 1, 4328, 10, 15, "NaN", "NaN", "NaN", "NaN"
    playsepan 1907, 0
    addparticle 0, 2, 17
    cmd37 6, 0, 2, 1, 0, 0, 0, "NaN", "NaN"
    addparticle 0, 2, 17
    cmd37 6, 0, 1, 1, 0, 0, 0, "NaN", "NaN"
    waitparticle
    unloadparticle 0
    cmd43
    cmd0C 7, 1
    resetbg 32, 0x1
    waitforchangebg
    end

.close
