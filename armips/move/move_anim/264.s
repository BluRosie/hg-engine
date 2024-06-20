.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_264", 0

a010_264:
    checkturn _0010, _00F4
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
    loadparticle 0, 282
    waitstate
    unloadspriteresource
    resetsprite 0
    resetsprite 1
    resetsprite 2
    resetsprite 3
    playsepan 1965, -117
    addparticle 0, 2, 3
    waitparticle
    unloadparticle 0
    end
_00F4:
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
    loadparticle 0, 282
    waitstate
    unloadspriteresource
    resetsprite 0
    resetsprite 1
    resetsprite 2
    resetsprite 3
    addparticle 0, 3, 4
    addparticle 0, 4, 4
    addparticle 0, 5, 4
    addparticle 0, 1, 4
    addparticle 0, 0, 4
    playsepan 1920, 117
    cmd43
    cmd0C 7, 1
    changebg 31, 0x1
    callfunction 57, 4, 2, 16, -8, 258, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    wait 10
    callfunction 68, 5, 5, 0, 1, 6, 0, "NaN", "NaN", "NaN", "NaN", "NaN"
    callfunction 36, 5, 4, 0, 1, 4, 264, "NaN", "NaN", "NaN", "NaN", "NaN"
    callfunction 57, 4, 2, -16, 8, 258, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    waitparticle
    unloadparticle 0
    cmd43
    cmd0C 7, 1
    resetbg 31, 0x1
    waitforchangebg
    end

.close
