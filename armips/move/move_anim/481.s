.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_481", 0

a010_481:
    cmd0C 7, 1
    changebg 60, 0x20001//0x800000
    waitse 1838, 0, 2
    waitforchangebg
    wait 60
    cmd0C 7, 1
    resetbg 60, 0x40001//0x1000000
    waitforchangebg
    end
    

.close
