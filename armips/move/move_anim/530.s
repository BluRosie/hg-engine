.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_530", 0

a010_530:
    loadparticlefromspa 0, 112
    waitparticle
    loadparticlefromspa 1, 190
    waitparticle
    loadparticlefromspa 2, 369
    waitparticle

    addparticle 0, 0, 17 //shooting the web string
    cmd37 6, 0, 2, 6, 5, 0, 0, "NaN", "NaN"//target the opponent(s) correctly
    playsepan 1964, 117
    waitse 1919, 117, 50
    wait 5

    addparticle 1, 2, 4 //web
    playsepan 1970, 117
    addparticle 2, 4, 4 //zap
    waitparticle

    unloadparticle 0
    waitparticle
    unloadparticle 1
    waitparticle
    unloadparticle 2
    waitstate
    end
    

.close
