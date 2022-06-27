# configuration options

### armips\include\itemnums.s
 scroll down to the bottom, change ITEM_MEGA_STONES_START to what you want it to start at.  it is currently positioned so that all the mega stones are completely new items.  this is intentional.  the code forces all expanded items to use shoal salt's item data, which can be improved upon if necessary.

### include\constants\item.h
 same deal here as above, change ITEM_MEGA_STONES_START to what it needs to be.

### armips\include\config.s and include\config.h
 FAIRY_TYPE_IMPLEMENTED should be set to 1 in both of these files before compiling the first time to catch all the fairy type instances.

### scripts\make.py and linker.ld
 on line 13 of make.py, change OFFSET_TO_START to be your location in the synthetic overlay with enough free space.  this is separate from the above one.  MAKE SURE THE OFFSETS DON'T OVERLAP.
 
 change the numbers at the beginning of linker.ld to be the same thing
