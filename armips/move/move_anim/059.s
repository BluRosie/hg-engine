.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_059", 0

a010_059:
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
    loadparticle 0, 90
    waitstate
    unloadspriteresource
    resetsprite 0
    resetsprite 1
    resetsprite 2
    resetsprite 3
    cmd0C 0, -20
    cmd0C 1, 0
    cmd0C 6, 1
    cmd0C 7, 1
    cmd0C 5, 0
    changebg 50, 0x20001
    jumpifside 0, _0114, _0280
    end
_0114:
    playsepan 2121, 0
    waitforchangebg
    addparticle 0, 3, 0
    playsepan 1946, 0
    addparticle 0, 1, 20
    wait 4
    playsepan 1853, 117
    wait 12
    addparticle 0, 0, 20
    addparticle 0, 2, 20
    callfunction 36, 5, 1, 0, 1, 2, 264, "NaN", "NaN", "NaN", "NaN", "NaN"
    callfunction 36, 5, 1, 0, 1, 2, 272, "NaN", "NaN", "NaN", "NaN", "NaN"
    wait 15
    callfunction 36, 5, 1, 0, 1, 2, 264, "NaN", "NaN", "NaN", "NaN", "NaN"
    callfunction 36, 5, 1, 0, 1, 2, 272, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitparticle
    unloadparticle 0
    cmd0C 0, -20
    cmd0C 1, 0
    cmd0C 6, 1
    cmd0C 7, 1
    cmd0C 5, 0
    resetbg 50, 0x40001
    stopse 2121
    stopse 1946
    waitforchangebg
    end
_0280:
    playsepan 2121, 0
    waitforchangebg
    addparticle 0, 4, 0
    playsepan 1946, 0
    addparticle 0, 1, 20
    wait 4
    playsepan 1853, 117
    wait 12
    addparticle 0, 0, 20
    addparticle 0, 2, 20
    callfunction 36, 5, 1, 0, 1, 2, 264, "NaN", "NaN", "NaN", "NaN", "NaN"
    callfunction 36, 5, 1, 0, 1, 2, 272, "NaN", "NaN", "NaN", "NaN", "NaN"
    wait 15
    callfunction 36, 5, 1, 0, 1, 2, 264, "NaN", "NaN", "NaN", "NaN", "NaN"
    callfunction 36, 5, 1, 0, 1, 2, 272, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitparticle
    unloadparticle 0
    cmd0C 0, -20
    cmd0C 1, 0
    cmd0C 6, 1
    cmd0C 7, 1
    cmd0C 5, 0
    resetbg 50, 0x40001
    stopse 2121
    stopse 1946
    waitforchangebg
    end

.close
