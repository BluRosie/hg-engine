.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_889", 0

// Chilling Water
// Brine with some ice particles

a010_889:
    loadparticlefromspa 0, 380
    loadparticlefromspa 1, 39

    addparticle 0, 0, ANIM_TARGET_MISC
    cmd37 6, 0, 2, 2, 0, 0, 0, "NaN", "NaN"
    addparticle 0, 2, ANIM_TARGET_MISC
    cmd37 6, 0, 2, 2, 0, 0, 0, "NaN", "NaN"
    addparticle 0, 1, ANIM_TARGET_MISC
    cmd37 6, 0, 2, 2, 0, 0, 0, "NaN", "NaN"
    playsepan 2070, 117

    wait 10
    
    shaketargetmon 2, 16
    
    wait 15

    addparticle 1, 0, 4
    addparticle 1, 1, 4

    waitse 2055, 117, 5
    waitstate

    waitparticle
    unloadparticle 0
    waitstate
    unloadparticle 1
    waitstate

    end

.close
