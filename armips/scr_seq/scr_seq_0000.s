.nds
.thumb

.include "armips/include/scriptmacros.s"
.include "armips/include/flags.s"
.include "armips/include/soundeffects.s"
.include "armips/include/vars.s"

.include "asm/include/battle_constants.inc"
.include "asm/include/events.inc"
.include "asm/include/game_stats.inc"
.include "asm/include/items.inc"
.include "asm/include/maps.inc"
.include "asm/include/map_sections.inc"
.include "asm/include/moves.inc"
.include "asm/include/movements.inc"
.include "asm/include/rankings.inc"
.include "asm/include/spawns.inc"
.include "asm/include/species.inc"
.include "asm/include/std_scripts.inc"
.include "asm/include/trainers.inc"


// text archive to grab from: 014.txt

.create "build/a012/2_000", 0


scrdef scr_seq_0000_000
scrdef scr_seq_0000_001
scrdef scr_seq_0000_002
scrdef_end

scr_seq_0000_000:
	simple_npc_msg 0
	end

scr_seq_0000_001:
	scrcmd_609
	lockall
	npc_msg 9
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0050
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0063
	end

scr_seq_0000_002:
	scrcmd_609
	lockall
_0050:
	scrcmd_151
	npc_msg 12
	scrcmd_257 94
	closemsg
	scrcmd_587
	scrcmd_449
	releaseall
	end

_0063:
	closemsg
	releaseall
	end
	.align 4


.close
