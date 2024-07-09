.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_280", 0

a010_280:
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
    loadparticle 0, 298
    waitstate
    unloadspriteresource
    resetsprite 0
    resetsprite 1
    resetsprite 2
    resetsprite 3
    jumpifside 0, _00D8, _01AC
    waitparticle
    unloadparticle 0
    end
_00D8:
    checkturn _00E8, _0134
    end
_00E8:
    addparticle 0, 2, 4
    addparticle 0, 4, 4
    wait 45
    playsepan 2039, 117
    wait 10
    waitparticle
    unloadparticle 0
    end
_0134:
    addparticle 0, 0, 4
    addparticle 0, 1, 4
    addparticle 0, 2, 4
    addparticle 0, 4, 4
    wait 45
    playsepan 2039, 117
    wait 10
    playsepan 2055, 117
    waitparticle
    unloadparticle 0
    end
_01AC:
    checkturn _01BC, _0208
    end
_01BC:
    addparticle 0, 3, 4
    addparticle 0, 5, 4
    wait 45
    playsepan 2039, 117
    wait 10
    waitparticle
    unloadparticle 0
    end
_0208:
    addparticle 0, 0, 4
    addparticle 0, 1, 4
    addparticle 0, 3, 4
    addparticle 0, 5, 4
    wait 45
    playsepan 2039, 117
    wait 10
    playsepan 2055, 117
    waitparticle
    unloadparticle 0
    end

.close
