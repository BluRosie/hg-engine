.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_sub_anim/1_011", 0

a061_011:
    loadparticle 0, 31
    playsepan 1808, -117
    addparticle 0, 0, 3
    addparticle 0, 1, 3
    waitparticle
    unloadparticle 0
    end

.close
