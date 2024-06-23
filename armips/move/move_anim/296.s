.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_296", 0

a010_296:
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
    loadparticle 0, 314
    waitstate
    unloadspriteresource
    resetsprite 0
    resetsprite 1
    resetsprite 2
    resetsprite 3
    cmd43
    cmd0C 0, -32
    cmd0C 1, 0
    cmd0C 6, 1
    cmd0C 7, 1
    changebg 10, 0x20001
    waitforchangebg
    repeatse 1963, 0, 2, 4
    addparticle 0, 0, 17
    cmd37 6, 0, 2, 6, 1, 0, 0, "NaN", "NaN"
    wait 15
    repeatse 1923, 117, 2, 4
    callfunction 33, 5, 0, 1, 0, 8, 32767, "NaN", "NaN", "NaN", "NaN", "NaN"
    addparticle 0, 5, 4
    addparticle 0, 6, 4
    callfunction 36, 5, 1, 0, 1, 2, 264, "NaN", "NaN", "NaN", "NaN", "NaN"
    jumpifside 0, _01D0, _029C
    end
_01D0:
    addparticle 0, 1, 0
    addparticle 0, 2, 0
    waitstate
    callfunction 33, 5, 0, 1, 8, 0, 32767, "NaN", "NaN", "NaN", "NaN", "NaN"
    callfunction 34, 6, 8, 0, 1, 32767, 10, 0, "NaN", "NaN", "NaN", "NaN"
    waitstate
    playsepan 1874, 0
    waitparticle
    unloadparticle 0
    cmd43
    cmd0C 0, -32
    cmd0C 1, 0
    cmd0C 6, 1
    cmd0C 7, 1
    resetbg 10, 0x40001
    waitforchangebg
    end
_029C:
    addparticle 0, 3, 0
    addparticle 0, 4, 0
    waitstate
    callfunction 33, 5, 0, 1, 8, 0, 32767, "NaN", "NaN", "NaN", "NaN", "NaN"
    callfunction 34, 6, 8, 0, 1, 32767, 10, 0, "NaN", "NaN", "NaN", "NaN"
    waitstate
    playsepan 1874, 0
    waitparticle
    unloadparticle 0
    cmd43
    cmd0C 0, -32
    cmd0C 1, 0
    cmd0C 6, 1
    cmd0C 7, 1
    resetbg 10, 0x40001
    waitforchangebg
    end

.close
