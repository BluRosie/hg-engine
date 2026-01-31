.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_439", 0

//Rock Wrecker

a010_439:
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
    loadparticle 0, 457
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
    cmd0C 5, 0
    changebg 39, 0x20001
    waitforchangebg
    playsepan 1965, -117
    addparticle 0, 2, 3
    addparticle 0, 3, 3
    addparticle 0, 4, 17
    cmd37 6, 0, 2, 1, 1, 0, 0, "NaN", "NaN"
    wait 30
    playsepanmod 1993, -117, 117, 4, 2
    callfunction 36, 5, 4, 0, 1, 2, 264, "NaN", "NaN", "NaN", "NaN", "NaN"
    addparticle 0, 1, 4
    addparticle 0, 0, 4
    waitparticle
    unloadparticle 0
    cmd0C 0, -32
    cmd0C 1, 0
    cmd0C 6, 1
    cmd0C 7, 1
    cmd0C 5, 0
    resetbg 39, 0x40001
    waitforchangebg
    end

.close
