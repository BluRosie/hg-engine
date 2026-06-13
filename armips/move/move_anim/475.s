.nds
.thumb

.include "armips/include/animscriptcmd.s"

.create "build/move/move_anim/0_475", 0

// wonder room

a010_475:
    cmd0C 7, 1
    changebg 59, 0x20001//0x800000
    waitse 1838, 0, 2
    waitforchangebg
    wait 60
    cmd0C 7, 1
    resetbg 59, 0x40001//0x1000000
    waitforchangebg
    end
    

.close
