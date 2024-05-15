# Configuration Options

### ``armips\include\config.s`` and ``include\config.h``
 ``START_ADDRESS`` is the start address in both of these files for all the armips assembly (primarily tables) that need to be inserted into the arm9 extension, here overlay 129.  By default there are 0x1000 bytes at the beginning of overlay 129 for this.

 ``FAIRY_TYPE_IMPLEMENTED`` should be set to 0 in both of these files in order to disable the fairy type implementation.  By default, it is 1 to implement the fairy type.

 ``ALLOW_SAVE_CHANGES`` is by default defined in these files to allow for save expansion for expanded dex Pokémon, bigger item pockets, and Kyurem's forme change method that stores Reshiram/Zekrom in the save.  If you want to maintain PKHeX compatibility, all you have to do is comment out the line ``ALLOW_SAVE_CHANGES`` in both of these files.  Commenting this line out disables Kyurem's forme change and the registering of new Pokémon in the dex (although the new mons are still implemented).

 ``CRY_PSEUDOBANK_START`` is where the pseudobanks start in the SDAT for new cries.  To save on sound heap RAM space, new banks are just detected and forced to load cries instead of having the massive structure that comes with it.  By default 778, which is the first empty index of SBNK's in the vanilla SDAT.

 ``LEARNSET_TOTAL_MOVES`` is the amount of moves that should be learned per Pokémon at level up plus one for the termination sequence.

 ``DEBUG_NEEDS_TESTING`` (``armips/include/config.s`` only) at the moment just shouldn't be touched.  Keep it at 0.

 ``BATTLE_MODE_FORCE_SET`` (``armips/include/config.s`` only) is the toggle to force set mode in the ROM.  Set to 1 to enable, 0 will use the default behavior.

 ``ALWAYS_HAVE_NATIONAL_DEX`` (``armips/include/config.s`` only) is the toggle that makes the player always have the national dex.  This will also affect things like the Bug Catching competition levels.

 ``ALWAYS_UNCAPPED_FRAME_RATE`` (``armips/include/config.s`` only) is the toggle that enables the traditional 60 fps hack that has a number of bugs.  Suggested for testing use only.

 ``BATTLES_UNCAPPED_FRAME_RATE`` (``armips/include/config.s`` only) is the toggle that enables a 60 fps hack that only activates in battles.  This will take precedence over the above if both are enabled for whatever reason.

 ``FAST_TEXT_PRINTING`` (``armips/include/config.s`` only) is a toggle that will force text to print at a really fast speed regardless of the setting.  Borderline instant.

 ``APPLY_ANTIPIRACY`` (``armips/include/config.s`` only) is a toggle that will apply the typical anti-piracy code changes to your ROM.  This will allow it to work on hardware (R4, TWLmenu) better, preventing various crashes and softlocks.

 ``EXPERIENCE_FORMULA_GEN`` (``include/config.h`` only) is a number that determines whether or not the experience formula used will take into account the difference in levels in experience distribution.  Setting this to 5, 7, or 8 will scale the experience with the level difference.  Setting this to 1, 2, 3, 4, and 6 will use a flat experience rate.

 ``HIDDEN_ABILITIES`` (``include/config.h`` only) is a toggle for the compilation of the hidden ability system.  Commenting the line out will disable hidden abilities.  ``HIDDEN_ABILITIES_FLAG`` determines which script flag that, when set, will give Pokémon their hidden abilities (unset immediately after giving a Pokémon its hidden ability).  ``HIDDEN_ABILITIES_STARTERS_FLAG`` is specific to the starters, and can be used as a story flag after the initial starter is given.

 ``MEGA_EVOLUTIONS`` (``include/config.h`` only) is a toggle for the compilation of the mega evolution system.  Commenting the line out will disable mega evolutions.

 ``PRIMAL_REVERSION`` (``include/config.h`` only) is a toggle for the compilation of the primal reversion system.  Commenting the line out will disable Groudon and Kyogre from primally reverting under any circumstances.

 ``IMPLEMENT_BDHCAM_ROUTINE`` (``include/config.h`` only) is a toggle for the assembly of [Mikelan's BDHCAM system](pokehacking.com/r/20110901) into overlay 131.  This is because hg-engine does not use the synthetic overlay system, so it needs to dynamically link it itself.

 ``IMPLEMENT_TRANSPARENT_TEXTBOXES`` (``include/config.h`` only) is a toggle for the compilation and inclusion of transparent textboxes in your hack.

 ``IMPLEMENT_WILD_DOUBLE_BATTLES`` (``include/config.h`` only) is a toggle for the compilation of wild double battles to occur 10% of the time in the grass.

 ``IMPLEMENT_CAPTURE_EXPERIENCE`` (``include/config.h`` only) is a toggle that will give Pokémon that participated in battle experience when a Pokémon is caught.

 ``IMPLEMENT_CRITICAL_CAPTURE`` (``include/config.h`` only) is a toggle that will enable critical captures as they appear in Gen 5 and above--the more Pokémon you have caught, the more likely that a critical capture will occur.

 ``IMPLEMENT_NEW_EV_IV_VIEWER`` (``include/config.h`` only) is a toggle that will enable an EV/IV viewer on the summary screen using the L, R, and Select buttons to swap between the EV's, IV's, and normal stats respectively.  This also adds up and down arrows to the stat names to make it clear which is boosted and which is nerfed.

 ``IMPLEMENT_LEVEL_CAP`` (``include/config.h`` only) is a toggle that will enable a hard level cap past which no Pokémon can gain experience or levels via any method.  The level is read from a script variable as defined by ``LEVEL_CAP_VARIABLE``.  If the Pokémon is at or above that level, the experience gain is disabled and Rare Candies stop working.  Make sure to set to level 100 to disable entirely, there is no error correction built in.

 ``UPDATE_OVERWORLD_POISON`` (``include/config.h`` only) is a toggle that disables overworld poison when enabled.  Overworld poison is disabled by default.

 ``DISABLE_END_OF_TURN_WEATHER_MESSAGE`` (``include/config.h`` only) will remove end-of-turn weather printing for everything but Hail and Sandstorm, which still play the animation before harming the Pokémon.  There is a small overlay over the Fight button to show which weather is active.  The config defaults to keeping the weather printing at the end of the turn.

 ``EXPAND_PC_BOXES`` (``include/config.h`` only) will expand the PC boxes to 30 in the game from the original 18.  Boxes are expanded to 30 by default.

 ``FRIENDSHIP_EVOLUTION_THRESHOLD`` (``include/config.h`` only) defines the threshold for evolutions that involve friendship to start happening.  This is vanilla 220, but in modern generations is 160.

 ``RESTORE_ITEMS_AT_BATTLE_END`` (``include/config.h`` only) will restore most single-use items at the end of the battle if defined.  This does not include held berries per modern generation standards.

### ``scripts\make.py`` and ``linker.ld``
 On line 13 of ``scripts/make.py``, change ``OFFSET_TO_START`` to be your location in overlay 129 with enough free space.  This is separate from the above one.  MAKE SURE THE OFFSETS DON'T OVERLAP.

 Change the numbers at the beginning of ``linker.ld`` to be the same thing.

 NOTE:  It is strongly suggested that code edits and repoints be done through hg-engine since its move to get rid of the synthetic overlay.
