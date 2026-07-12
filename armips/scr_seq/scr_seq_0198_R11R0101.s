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

.include "armips/scr_seq/event_R11R0101.inc"


// text archive to grab from: 347.txt

.create "build/a012/2_198", 0


scrdef scr_seq_R11R0101_000
scrdef scr_seq_R11R0101_001
scrdef_end

scr_seq_R11R0101_000:
	setvar VAR_UNK_4085, 0
	end

scr_seq_R11R0101_001:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set FLAG_SNORLAX_MEET, _0030
	npc_msg 0
_0028:
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0030:
	npc_msg 1
	goto _0028
	.align 4


.close
