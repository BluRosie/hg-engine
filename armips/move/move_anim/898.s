.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_898", 0

// Aqua Cutter
// Cut + Dive turn 2

a010_898:
    loadparticlefromspa 0, 46
    loadparticlefromspa 1, 309

    addparticle 0, 1, 4
    addparticle 0, 0, 4
    playsepan 1913, 117
    shaketargetmon 3, 6
    wait 5

    repeatse 2060, 117, 3, 4
    addparticle 1, 0, ANIM_TARGET_DEFENDER
    addparticle 1, 1, ANIM_TARGET_DEFENDER
    addparticle 1, 2, ANIM_TARGET_DEFENDER
    wait 15

    waitparticle
    unloadparticle 0
    end

.close
