.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_056", 0

a010_056:
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
    loadparticle 0, 87
    waitstate
    unloadspriteresource
    resetsprite 0
    resetsprite 1
    resetsprite 2
    resetsprite 3
    cmd43
    cmd0C 6, 1
    cmd0C 7, 1
    cmd0C 0, -32
    changebg 9, 0x20001
    waitforchangebg
    addparticle 0, 3, 17
    cmd37 6, 0, 2, 8, 1, 0, 0, "NaN", "NaN"
    callfunction 68, 5, 0, 3, 0, 20, 0, "NaN", "NaN", "NaN", "NaN", "NaN"
    wait 2
    addparticle 0, 4, 17
    cmd37 6, 0, 2, 10, 6, 0, 0, "NaN", "NaN"
    addparticle 0, 1, 17
    cmd37 6, 0, 2, 10, 6, 0, 0, "NaN", "NaN"
    playsepanmod 2109, -117, 117, 4, 2
    wait 8
    callfunction 36, 5, 2, 0, 1, 14, 258, "NaN", "NaN", "NaN", "NaN", "NaN"
    addparticle 0, 2, 4
    addparticle 0, 0, 4
    callfunction 34, 6, 8, 0, 1, 49930, 10, 25, "NaN", "NaN", "NaN", "NaN"
    callfunction 36, 5, 2, 0, 1, 14, 264, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitparticle
    unloadparticle 0
    cmd43
    cmd0C 7, 1
    cmd0C 6, 1
    cmd0C 0, -32
    resetbg 9, 0x40001
    waitforchangebg
    end

.close
