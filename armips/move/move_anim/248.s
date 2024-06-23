.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_248", 0

a010_248:
    checkturn _001C, _00EC
    waitparticle
    unloadparticle 0
    end
_001C:
    callfunction 33, 5, 0, 1, 0, 12, 0, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    initspriteresource
    loadspriteresource 0
    loadspritemaybe 0, 0, 0, 0
    callfunction 36, 5, 2, 0, 1, 2, 258, "NaN", "NaN", "NaN", "NaN", "NaN"
    callfunction 34, 5, 2, 0, 1, 32767, 4, "NaN", "NaN", "NaN", "NaN", "NaN"
    wait 10
    playsepan 1948, 0
    waitstate
    unloadspriteresource
    resetsprite 0
    callfunction 33, 5, 0, 1, 12, 0, 0, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    end
_00EC:
    callfunction 33, 5, 0, 1, 0, 12, 0, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    initspriteresource
    loadspriteresource 0
    loadspritemaybe 1, 0, 0, 0
    loadspriteresource 4
    loadspritemaybe 3, 0, 4, 4
    cmd52 3, 0, 4
    playsepan 1948, 0
    wait 10
    callfunction 11, 0, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    playsepan 1903, 117
    waitstate
    unloadspriteresource
    resetsprite 0
    cmd53 0
    resetsprite 4
    callfunction 33, 5, 0, 1, 12, 0, 0, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    end

.close
