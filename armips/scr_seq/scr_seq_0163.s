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


// text archive to grab from: 266.txt

.create "build/a012/2_163", 0


scrdef scr_seq_0163_000
scrdef_end

scr_seq_0163_000:
	play_se SEQ_SE_DP_SELECT
	lockall
	follow_poke_face_player
	follow_poke_interact
	goto _00F0

_00F0:
	releaseall
	end

	.align 4


.close
