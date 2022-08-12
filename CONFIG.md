# Configuration Options

### ``armips\include\config.s`` and ``include\config.h``
 ``START_ADDRESS`` is the start address for all the armips assembly (primarily tables) that need to be inserted into the synthetic overlay.  Currently reserve a bit over 0x3000 bytes for it.

 ``FAIRY_TYPE_IMPLEMENTED`` should be set to 1 in both of these files before compiling the first time to catch all the fairy type instances.
 
 ``DEBUG_NEEDS_TESTING`` (``armips/include/config.s`` only) at the moment just shouldn't be touched.  Keep it at 0.
 
 ``BATTLE_MODE_FORCE_SET`` (``armips/include/config.s`` only) is the toggle to force set mode in the ROM.  Set to 1 to enable, 0 will use the default behavior.
 
 ``ALWAYS_HAVE_NATIONAL_DEX`` (``armips/include/config.s`` only) is the toggle that makes the player always have the national dex.  This will also affect things like the Bug Catching competition levels.
 
 ``ALWAYS_UNCAPPED_FRAME_RATE`` (``armips/include/config.s`` only) is the toggle that enables the traditional 60 fps hack that has a number of bugs.  Suggested for testing use only.
 
 ``BATTLES_UNCAPPED_FRAME_RATE`` (``armips/include/config.s`` only) is the toggle that enables a 60 fps hack that only activates in battles.  This will take precedence over the above if both are enabled for whatever reason.

### ``armips\include\itemnums.s``
 scroll down to the bottom, change ``ITEM_MEGA_STONES_START`` to what you want it to start at.  it is currently positioned so that all the mega stones are completely new items.  this is intentional.  the code forces all expanded items to use shoal salt's item data, which can be improved upon if necessary.

### ``include\constants\item.h``
 same deal here as above, change ``ITEM_MEGA_STONES_START`` to what it needs to be.

### ``scripts\make.py`` and ``linker.ld``
 on line 13 of ``scripts/make.py``, change ``OFFSET_TO_START`` to be your location in the synthetic overlay with enough free space.  this is separate from the above one.  MAKE SURE THE OFFSETS DON'T OVERLAP.
 
 change the numbers at the beginning of ``linker.ld`` to be the same thing
