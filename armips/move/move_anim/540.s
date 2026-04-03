.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_540", 0

// Steamroller
// Rollout animation that finishes with Stomp squish instead of rock particles

a010_540:
    loadparticlefromspa 0, 522
    waitparticle

    addparticle 0, 5, 4
    addparticle 0, 4, 4
    addparticle 0, 3, 4
    addparticle 0, 2, 4
    addparticle 0, 1, 4
    addparticle 0, 0, 4

    slideattackingmon 14, -8
    //callfunction 57, 4, 2, 14, -8, 258, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    wait 25
    repeatse 1920, 0, 2, 6
    callfunction 42, 8, 264, 100, 130, 100, 70, 100, 1310721, 262148, "NaN", "NaN"
    wait 10
    playsepan 1927, 117
    waitse 1827, 117, 5
    waitstate
    slideattackingmon -14, 8
    waitparticle
    unloadparticle 0
    end

.close
