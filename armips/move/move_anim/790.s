.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_790", 0
//Apple Acid
a010_790:
    loadparticlefromspa 0, 414//aura sphere
    waitparticle
    loadparticlefromspa 1, 398//gastro acid
    waitparticle

    shadescreencolor 20, 31, 10, 0, 8




    repeatse 2081, 117, 2, 6
    addparticle 1, 0, 17
    cmd37 6, 0, 2, 2, 0, 0, 0, "NaN", "NaN"
    addparticle 1, 1, 17
    cmd37 6, 0, 2, 2, 0, 0, 0, "NaN", "NaN"
    //callfunction 34, 6, 8, 0, 2, 11252, 10, 0, "NaN", "NaN", "NaN", "NaN"
    wait 10
    shaketargetmon 4, 8
    shadetargetmon 20, 31, 10
    wait 30
    shadescreencolor 20, 31, 10, 8, 0

    waitparticle
    unloadparticle 0
    waitstate
    unloadparticle 1
    waitstate
    end


.close
