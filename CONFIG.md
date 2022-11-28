# Configuration Options

### ``armips\include\config.s`` and ``include\config.h``
 ``START_ADDRESS`` is the start address for all the armips assembly (primarily tables) that need to be inserted into the synthetic overlay.  Currently reserve a bit over 0x3000 bytes for it.

 ``FAIRY_TYPE_IMPLEMENTED`` should be set to 1 in both of these files before compiling the first time to catch all the fairy type instances.
 
 ``ALLOW_SAVE_CHANGES`` is by default set to 1 in both of these files to allow for save expansion for expanded dex Pokémon and Kyurem's forme change method that stores Reshiram/Zekrom in the save.  If you want to maintain PKHeX compatibility, all you have to do is set ``ALLOW_SAVE_CHANGES`` in both of these files to 0.  Setting this to zero disables Kyurem's forme change and the registering of new Pokémon in the dex (although the new mons are still implemented).
 
 ``DEBUG_NEEDS_TESTING`` (``armips/include/config.s`` only) at the moment just shouldn't be touched.  Keep it at 0.
 
 ``LEARNSET_TOTAL_MOVES`` (``armips/include/config.s`` only) is the amount of moves that should be learned per Pokémon at level up plus one for the termination sequence.
 
 ``BATTLE_MODE_FORCE_SET`` (``armips/include/config.s`` only) is the toggle to force set mode in the ROM.  Set to 1 to enable, 0 will use the default behavior.
 
 ``ALWAYS_HAVE_NATIONAL_DEX`` (``armips/include/config.s`` only) is the toggle that makes the player always have the national dex.  This will also affect things like the Bug Catching competition levels.
 
 ``ALWAYS_UNCAPPED_FRAME_RATE`` (``armips/include/config.s`` only) is the toggle that enables the traditional 60 fps hack that has a number of bugs.  Suggested for testing use only.
 
 ``BATTLES_UNCAPPED_FRAME_RATE`` (``armips/include/config.s`` only) is the toggle that enables a 60 fps hack that only activates in battles.  This will take precedence over the above if both are enabled for whatever reason.

 ``FAST_TEXT_PRINTING`` (``armips/include/config.s`` only) is a toggle that will force text to print at a really fast speed regardless of the setting.  Borderline instant.
 
 ``EXPERIENCE_FORMULA_GEN`` (``include/config.h`` only) is a number that determines whether or not the experience formula used will take into account the difference in levels in experience distribution.  Setting this to 5, 7, or 8 will scale the experience with the level difference.  Setting this to 1, 2, 3, 4, and 6 will use a flat experience rate.
 
 ``HIDDEN_ABILITIES`` (``include/config.h`` only) is a toggle for the compilation of the hidden ability system.  Commenting the line out will disable hidden abilities.

 ``MEGA_EVOLUTIONS`` (``include/config.h`` only) is a toggle for the compilation of the mega evolution system.  Commenting the line out will disable mega evolutions.

 ``PRIMAL_REVERSION`` (``include/config.h`` only) is a toggle for the compilation of the primal reversion system.  Commenting the line out will disable Groudon and Kyogre from primally reverting under any circumstances.

### ``armips\include\itemnums.s``
 scroll down to the bottom, change ``ITEM_MEGA_STONES_START`` to what you want it to start at.  it is currently positioned so that all the mega stones are completely new items.  this is intentional.  the code forces all expanded items to use shoal salt's item data, which can be improved upon if necessary.

### ``include\constants\item.h``
 same deal here as above, change ``ITEM_MEGA_STONES_START`` to what it needs to be.

### ``scripts\make.py`` and ``linker.ld``
 on line 13 of ``scripts/make.py``, change ``OFFSET_TO_START`` to be your location in the synthetic overlay with enough free space.  this is separate from the above one.  MAKE SURE THE OFFSETS DON'T OVERLAP.
 
 change the numbers at the beginning of ``linker.ld`` to be the same thing
