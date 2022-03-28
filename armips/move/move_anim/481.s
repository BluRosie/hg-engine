.nds
.thumb

.include "armips/include/animscriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

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
