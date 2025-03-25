.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_556", 0
// Freeze Shock
a010_556:
    loadparticlefromspa 0, 486
    waitparticle


    unloadparticle 0
    waitstate
    end
    

.close
