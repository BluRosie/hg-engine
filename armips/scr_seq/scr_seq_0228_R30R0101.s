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

.include "armips/scr_seq/event_R30R0101.inc"


// text archive to grab from: 376.txt

.create "build/a012/2_228", 0


scrdef scr_seq_R30R0101_000
scrdef_end

scr_seq_R30R0101_000:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set FLAG_GOT_APRICORN_BOX, _0041
	npc_msg 0
	giveitem_no_check ITEM_APRICORN_BOX, 1
	setflag FLAG_GOT_APRICORN_BOX
	setvar VAR_SCENE_ROUTE_30_OW, 1
	npc_msg 2
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0041:
	npc_msg 3
	wait_button_or_walk_away
	closemsg
	releaseall
	end
	.align 4


.close
