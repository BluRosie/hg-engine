.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_019", 0

a010_019:
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
    loadparticle 0, 50
    waitstate
    unloadspriteresource
    resetsprite 0
    resetsprite 1
    resetsprite 2
    resetsprite 3
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
    loadparticle 1, 358
    waitstate
    unloadspriteresource
    resetsprite 0
    resetsprite 1
    resetsprite 2
    resetsprite 3
    checkturn _0180, _0260
    end
_0180:
    cmd43
    cmd0C 4, 1
    cmd0C 0, 0
    cmd0C 1, 32
    changebg 55, 0x20001
    playsepan 2064, -117
    waitforchangebg
    addparticle 1, 1, 3
    addparticle 1, 3, 3
    wait 10
    playsepan 1917, -117
    callfunction 40, 2, 2, 1, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    waitparticle
    unloadparticle 0
    unloadparticle 1
    cmd43
    cmd0C 4, 1
    cmd0C 0, 0
    cmd0C 1, 32
    resetbg 55, 0x40001
    waitforchangebg
    end
_0260:
    cmd43
    cmd0C 4, 1
    cmd0C 0, 0
    cmd0C 1, -32
    changebg 55, 0x20001
    playsepan 2064, 117
    waitforchangebg
    addparticle 0, 3, 3
    callfunction 73, 5, 0, 1, 0, 10, 4, "NaN", "NaN", "NaN", "NaN", "NaN"
    wait 10
    playsepan 1917, 117
    waitse 1827, 117, 10
    addparticle 0, 7, 4
    addparticle 0, 8, 4
    callfunction 36, 5, 1, 0, 1, 2, 264, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitparticle
    unloadparticle 0
    unloadparticle 1
    callfunction 40, 2, 2, 0, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    cmd43
    cmd0C 4, 1
    cmd0C 0, 0
    cmd0C 1, -32
    resetbg 55, 0x40001
    waitforchangebg
    end

.close
