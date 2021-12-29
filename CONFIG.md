# configuration options

 if you have already expanded your pokémon, this repo is a little more interesting to use for you.  change the following things:
 
 in data\graphics\sprites, delete folders 000-049.  rename 050 through 097 to be 000 through 047.
 
 in data\graphics\icongfx, rename 544-591 to be the new indices that each mon takes.
 
 in armips\data\mondata.s, delete the entries for SPECIES_508 through SPECIES_543.

### armips\include\monnums.s
 scroll down to the bottom, change SPECIES_MEGA_START to what you want it to start at.  this should be after the last mon.  for hgss-monexpansion, this is currently 700.

### include\constants\species.h
 same deal here as above, change SPECIES_MEGA_START to what it needs to be.

### armips\include\itemnums.s
 scroll down to the bottom, change ITEM_MEGA_STONES_START to what you want it to start at.  it is currently positioned so that all the mega stones are completely new items.  this is intentional.  the code forces all expanded items to use shoal salt's item data, which can be improved upon if necessary.

### include\constants\item.h
 same deal here as above, change ITEM_MEGA_STONES_START to what it needs to be.

### armips\include\config.s and include\config.h
 change START_OFFSET to be your location in the synthetic overlay with enough free space for the pokemon icons.  if using the monexpansion, MAKE SURE TO COPY YOUR ICON PALETTE TABLE FROM YOUR hgss-monexpansion REPOSITORY TO THIS FILE.
 
 make sure to catch FAIRY_TYPE_IMPLEMENTED in both of these files if that pertains to you.

### scripts\make.py and linker.ld
 on line 13 of make.py, change OFFSET_TO_START to be your location in the synthetic overlay with enough free space.  this is separate from the above one.  MAKE SURE THE OFFSETS DON'T OVERLAP.
 
 change the numbers at the beginning of linker.ld to be the same thing
 
### armips\include\macros.s

 change line 16 to ```    .word (level << 16 | move)``` and line 20 to ```    .word 0xFFFF``` to account for 4-byte learnsets.
