.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_291", 0

//Dive

a010_291:
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
    loadparticle 0, 309
    waitstate
    unloadspriteresource
    resetsprite 0
    resetsprite 1
    resetsprite 2
    resetsprite 3
    checkturn _00D4, _01F8
    waitparticle
    unloadparticle 0
    end
_00D4:
    playsepan 2060, -117
    callfunction 57, 4, 8, 0, 8, 258, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    callfunction 57, 4, 4, 0, -16, 258, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    addparticle 0, 2, 17
    cmd37 6, 0, 1, 5, 0, 0, 0, "NaN", "NaN"
    cmd37 4, 1, 0, -3440, 0, "NaN", "NaN", "NaN", "NaN"
    addparticle 0, 0, 17
    cmd37 6, 0, 1, 5, 0, 0, 0, "NaN", "NaN"
    cmd37 4, 1, 0, -3440, 0, "NaN", "NaN", "NaN", "NaN"
    waitstate
    callfunction 40, 2, 2, 1, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    callfunction 57, 4, 1, 0, 8, 258, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    waitparticle
    unloadparticle 0
    end
_01F8:
    repeatse 2060, 117, 3, 4
    addparticle 0, 1, 17
    cmd37 6, 0, 2, 5, 0, 0, 0, "NaN", "NaN"
    cmd37 4, 1, 0, -3440, 0, "NaN", "NaN", "NaN", "NaN"
    addparticle 0, 0, 17
    cmd37 6, 0, 2, 5, 0, 0, 0, "NaN", "NaN"
    cmd37 4, 1, 0, -3440, 0, "NaN", "NaN", "NaN", "NaN"
    addparticle 0, 2, 17
    cmd37 6, 0, 2, 5, 0, 0, 0, "NaN", "NaN"
    cmd37 4, 1, 0, -3440, 0, "NaN", "NaN", "NaN", "NaN"
    callfunction 36, 5, 2, 0, 1, 2, 264, "NaN", "NaN", "NaN", "NaN", "NaN"
    wait 15
    callfunction 40, 2, 2, 0, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    waitparticle
    unloadparticle 0
    end

.close
