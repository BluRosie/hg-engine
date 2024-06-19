.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_461", 0

a010_461:
    checkturn _0010, _03BC
    end
_0010:
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
    loadparticle 0, 479
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
    loadparticle 1, 479
    waitstate
    unloadspriteresource
    resetsprite 0
    resetsprite 1
    resetsprite 2
    resetsprite 3
    cmd0C 4, 0
    cmd0C 0, 0
    cmd0C 1, 1
    changebg 42, 0x20001
    waitforchangebg
    initspriteresource
    loadspriteresource 0
    loadspriteresource 1
    loadspritemaybe 0, 0, 0, 0
    loadspritemaybe 2, 0, 1, 1
    wait 1
    callfunction 75, 5, 0, 81, 3, 0, 0, "NaN", "NaN", "NaN", "NaN", "NaN"
    callfunction 75, 5, 1, 80, 3, 0, 2, "NaN", "NaN", "NaN", "NaN", "NaN"
    wait 1
    playsepan 2102, -117
    addparticle 0, 3, 3
    addparticle 0, 0, 3
    addparticle 1, 1, 17
    cmd37 6, 0, 1, 5, 0, 0, 0, "NaN", "NaN"
    cmd37 4, 1, 0, -1720, 0, "NaN", "NaN", "NaN", "NaN"
    addparticle 1, 2, 17
    cmd37 6, 0, 1, 5, 0, 0, 0, "NaN", "NaN"
    cmd37 4, 1, 0, -1720, 0, "NaN", "NaN", "NaN", "NaN"
    callfunction 63, 6, 2, 0, 1, 0, 10, 13311, "NaN", "NaN", "NaN", "NaN"
    wait 20
    callfunction 63, 6, 2, 0, 1, 10, 0, 13311, "NaN", "NaN", "NaN", "NaN"
    waitparticle
    unloadparticle 0
    unloadparticle 1
    waitstate
    resetsprite 0
    resetsprite 1
    unloadspriteresource
    cmd0C 4, 0
    cmd0C 0, 0
    cmd0C 1, 1
    cmd0C 4, 1
    resetbg 42, 0x40001
    waitforchangebg
    end
_03BC:
    cmd0C 4, 0
    cmd0C 0, 0
    cmd0C 1, 1
    changebg 42, 0x20001
    waitforchangebg
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
    loadparticle 0, 479
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
    loadparticle 1, 479
    waitstate
    unloadspriteresource
    resetsprite 0
    resetsprite 1
    resetsprite 2
    resetsprite 3
    playsepan 2102, -117
    addparticle 0, 3, 3
    addparticle 0, 0, 3
    wait 20
    callfunction 34, 6, 2, 0, 1, 32767, 10, 0, "NaN", "NaN", "NaN", "NaN"
    waitstate
    waitparticle
    unloadparticle 0
    unloadparticle 1
    cmd0C 4, 0
    cmd0C 0, 0
    cmd0C 1, 1
    cmd0C 4, 1
    resetbg 42, 0x40001
    waitforchangebg
    end

.close
