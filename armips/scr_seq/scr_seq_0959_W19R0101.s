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

.include "armips/scr_seq/event_W19R0101.inc"


// text archive to grab from: 741.txt

.create "build/a012/2_959", 0


scrdef scr_seq_W19R0101_000
scrdef_end

scr_seq_W19R0101_000:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	check_badge BADGE_VOLCANO, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _002C
	npc_msg 0
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_002C:
	npc_msg 1
	wait_button_or_walk_away
	closemsg
	releaseall
	end
	.align 4


.close
