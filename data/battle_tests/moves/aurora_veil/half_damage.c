// Test: Aurora Veil - basic functionality
#include "../../battle_tests.h"
BEGIN_TEST
{
	.battleType = BATTLE_TYPE_TRAINER,
	.weather = FIELD_CONDITION_NONE,
	.fieldCondition = 0,
	.terrain = MISTY_TERRAIN,
	.playerParty = {
		{
			.species = SPECIES_NINETALES,
			.level = 100,
			.form = 1,
			.ability = ABILITY_SNOW_WARNING,
			.item = ITEM_NONE,
			.moves = { MOVE_AURORA_VEIL, MOVE_SLEEP_TALK, MOVE_NONE, MOVE_NONE },
			.hp = FULL_HP,
			.status = 0,
			.condition2 = 0,
			.moveEffectFlags = 0,
		},
		{ .species = SPECIES_NONE },
		{ .species = SPECIES_NONE },
		{ .species = SPECIES_NONE },
		{ .species = SPECIES_NONE },
		{ .species = SPECIES_NONE }
	},
	.enemyParty = {
		{
						.species = SPECIES_TYPHLOSION,
						.level = 100,
						.form = 0,
						.ability = ABILITY_BLAZE,
						.item = ITEM_NONE,
						.moves = { MOVE_FLAMETHROWER, MOVE_SLEEP_TALK, MOVE_NONE, MOVE_NONE },
						.hp = FULL_HP,
						.status = 0,
						.condition2 = 0,
						.moveEffectFlags = 0,
					},
		{ .species = SPECIES_NONE },
		{ .species = SPECIES_NONE },
		{ .species = SPECIES_NONE },
		{ .species = SPECIES_NONE },
		{ .species = SPECIES_NONE }
	},
	.playerScript = {
		{
						  { ACTION_MOVE_SLOT_1, BATTLER_PLAYER_FIRST },
						  { ACTION_MOVE_SLOT_1, BATTLER_PLAYER_FIRST },
						  { ACTION_MOVE_SLOT_2, BATTLER_PLAYER_FIRST },
						  { ACTION_MOVE_SLOT_2, BATTLER_PLAYER_FIRST },
						  { ACTION_MOVE_SLOT_2, BATTLER_PLAYER_FIRST },
						  { ACTION_NONE, 0 },
						  { ACTION_NONE, 0 },
						  { ACTION_NONE, 0 },
					  },
		{
			{ ACTION_NONE, 0 },
			{ ACTION_NONE, 0 },
			{ ACTION_NONE, 0 },
			{ ACTION_NONE, 0 },
			{ ACTION_NONE, 0 },
			{ ACTION_NONE, 0 },
			{ ACTION_NONE, 0 },
			{ ACTION_NONE, 0 },
		}
	},
	.enemyScript = {
		{
						 { ACTION_MOVE_SLOT_1, BATTLER_PLAYER_FIRST },
						 { ACTION_MOVE_SLOT_1, BATTLER_PLAYER_FIRST },
						 { ACTION_MOVE_SLOT_2, BATTLER_PLAYER_FIRST },
						 { ACTION_MOVE_SLOT_2, BATTLER_PLAYER_FIRST },
						 { ACTION_MOVE_SLOT_2, BATTLER_PLAYER_FIRST },
						 { ACTION_NONE, 0 },
						 { ACTION_NONE, 0 },
						 { ACTION_NONE, 0 },
					 },
		{
			{ ACTION_NONE, 0 },
			{ ACTION_NONE, 0 },
			{ ACTION_NONE, 0 },
			{ ACTION_NONE, 0 },
			{ ACTION_NONE, 0 },
			{ ACTION_NONE, 0 },
			{ ACTION_NONE, 0 },
			{ ACTION_NONE, 0 },
		}
	},
	.expectations = {
		{ .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "It started to snow!" },
		{ .expectationType = EXPECTATION_TYPE_HP_BAR, .battlerIDOrPartySlot = BATTLER_PLAYER_FIRST, .expectationValue.hpTaken = { 105, 106, 108, 109, 109, 111, 112, 114, 115, 117, 117, 118, 120, 121, 123, 124 } },
		{ .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "It's super effective!" },
		{ .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "But it failed!" },
		{ .expectationType = EXPECTATION_TYPE_HP_BAR, .battlerIDOrPartySlot = BATTLER_PLAYER_FIRST, .expectationValue.hpTaken = { 105, 106, 108, 109, 109, 111, 112, 114, 115, 117, 117, 118, 120, 121, 123, 124 } },
		{ .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "It's super effective!" },
		{ .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "The snow stopped." },
		{ .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "Your side's Aurora Veil wore off!" },
	}
}
END_TEST
