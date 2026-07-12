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

.include "armips/scr_seq/event_D02FS0101.inc"


// text archive to grab from: 048.txt

.create "build/a012/2_006", 0


scrdef scr_seq_D02FS0101_000
scrdef scr_seq_D02FS0101_001
scrdef_end

scr_seq_D02FS0101_001:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	setflag FLAG_SPECIAL_MART_MT_MOON
	npc_msg 1
	holdmsg
	setvar VAR_SPECIAL_x8004, 27
	callstd std_special_mart
	clearflag FLAG_SPECIAL_MART_MT_MOON
	releaseall
	end

scr_seq_D02FS0101_000:
	simple_npc_msg 0
	end
	.align 4


.close
