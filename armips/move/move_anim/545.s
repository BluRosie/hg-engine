.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_545", 0

// Hurricane
// Gust animation repeated a few times with Brave Bird background

a010_545:
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
    loadparticle 0, 47
    waitstate
    unloadspriteresource
    resetsprite 0
    resetsprite 1
    resetsprite 2
    resetsprite 3

    cmd0C 0, -32
    cmd0C 1, 0
    cmd0C 6, 1
    cmd0C 7, 1
    cmd0C 4, 0
    changebg 18, 0x20001
    waitforchangebg

    loop 3
    cmd3E 0, 0
    addparticle 0, 0, 17
    cmd37 6, 0, 0, 0, 0, 0, 8, "NaN", "NaN"
    addparticle 0, 1, 17
    cmd37 6, 0, 0, 0, 0, 0, 8, "NaN", "NaN"
    wait 5
    playsepan 2043, 117
    wait 15
    callfunction 36, 5, 3, 0, 1, 15, 264, "NaN", "NaN", "NaN", "NaN", "NaN"
    doloop
    waitparticle
    unloadparticle 0
    waitstate

    cmd0C 0, -32
    cmd0C 1, 0
    cmd0C 6, 1
    cmd0C 7, 1
    cmd0C 4, 0
    resetbg 18, 0x40001
    waitforchangebg

    end

.close
