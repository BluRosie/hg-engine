.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_489", 0

a010_489:
    loadparticlefromspa 1, 502 // new particle
    loadparticlefromspa 0, 212 // zap cannon particle
    waitparticle

// levitating at start
    addparticle 1, 2, 3

// big bright part
    addparticle 1, 1, 3
    wait 75

// shoot zap cannon particle out
    addparticle 0, 0, 17
    cmd37 6, 0, 2, 6, 1, 0, 0, "NaN", "NaN"
    wait 4
    addparticle 1, 0, 4 // hit particle added early to account for lag in addition (built in to spa anim)
    wait 20

// hit
    callfunction 36, 5, 4, 0, 1, 11, 264, "NaN", "NaN", "NaN", "NaN", "NaN" // shake mon
    wait 30

    unloadparticle 0
    unloadparticle 1
    waitstate
    end
    

.close
