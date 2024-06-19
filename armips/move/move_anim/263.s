.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

// fix facade: original makes user go up 1 pixel

.create "build/move/move_anim/0_263", 0

a010_263:
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
    loadparticle 0, 281
    waitstate
    unloadspriteresource
    resetsprite 0
    resetsprite 1
    resetsprite 2
    resetsprite 3
    addparticle 0, 1, 3
    addparticle 0, 2, 3
    repeatse 2026, -117, 8, 6
    callfunction 34, 6, 2, 0, 1, 31, 10, 0, "NaN", "NaN", "NaN", "NaN"
    callfunction 42, 8, 258, 100, 120, 100, 80, 100, 1, 0x00040004, "NaN", "NaN"
    wait 8
    callfunction 42, 8, 258, 100, 80, 100, 140, 100, 1, 0x00040004, "NaN", "NaN"
    wait 8
    callfunction 34, 6, 2, 0, 1, 49930, 10, 0, "NaN", "NaN", "NaN", "NaN"
    callfunction 42, 8, 258, 100, 120, 100, 80, 100, 1, 0x00040004, "NaN", "NaN"
    wait 8
    callfunction 42, 8, 258, 100, 80, 100, 140, 100, 1, 0x00040004, "NaN", "NaN"
    wait 8
    callfunction 34, 6, 2, 0, 1, 13311, 10, 0, "NaN", "NaN", "NaN", "NaN"
    callfunction 42, 8, 258, 100, 120, 100, 80, 100, 1, 0x00040004, "NaN", "NaN"
    wait 8
    callfunction 42, 8, 258, 100, 80, 100, 140, 100, 1, 0x00040004, "NaN", "NaN"
    addparticle 0, 0, 4
    addparticle 0, 3, 4
    callfunction 36, 5, 2, 0, 1, 2, 264, "NaN", "NaN", "NaN", "NaN", "NaN"
    playsepan 1827, 117
    waitstate
    waitparticle
    unloadparticle 0
    end

.close
