.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_557", 0
//Ice Burn
a010_557:
    loadparticlefromspa 0, 486
    waitparticle

    unloadparticle 0
    waitstate
    end
    

.close
