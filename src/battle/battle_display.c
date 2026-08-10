#include "../../include/battle.h"
#include "../../include/config.h"
#include "../../include/constants/file.h"
#include "../../include/pokepic.h"
#include "../../include/sound.h"
#include "../../include/task.h"
#include "../../include/types.h"

typedef struct FaintingSequenceData {
    struct BattleSystem *battleSys;
    void *battlerData;
    void *monSprite;
    u8 padding_0C[0x58]; // moveAnim ?
    u8 command;
    u8 battler;
    u8 state;
    u8 face;
    u16 species;
    u8 gender;
    u8 form;
    u32 personality;
    u16 isSubstitute;
    u16 isTransformed;
} FaintingSequenceData;

#ifdef PLAY_MON_VICTORY_POSE
static BOOL ShouldPlayVictoryPoseForBattler(struct BattleSystem *battleSystem, struct BattleStruct *battleCtx, u32 battler)
{
    if (!IsBattlerSlotValid(battleSystem, battler)) {
        return FALSE;
    }

    return !(battleCtx->no_reshuffle_client & No2Bit(battler));
}
#endif // PLAY_MON_VICTORY_POSE

void Task_PlayFaintingSequence_WithVictoryPose(SysTask *task, void *data)
{
#ifdef PLAY_MON_VICTORY_POSE
    FaintingSequenceData *faintingSequenceData = data;
    // hijack the normal clean-up state to play the victory dance
    if (faintingSequenceData->state == 10) {
        struct BattleSystem *battleSystem = faintingSequenceData->battleSys;
        struct BattleStruct *battleCtx = battleSystem->sp;
        PokepicManager *monSpriteMan = BattleSystem_GetPokepicManager(battleSystem);
        void *monAnimMan = ov12_0223B750(battleSystem); // unk1C8 getter

        void *narc = NARC_New(114, HEAPID_BATTLE_HEAP); // NARC_poketool_pokegra_otherpoke

        if (IsClientEnemy(battleSystem, faintingSequenceData->battler)) {
            // victory pose for player side mons
            for (u32 i = BATTLER_PLAYER; i <= BATTLER_PLAYER2; i += 2) {
                if (ShouldPlayVictoryPoseForBattler(battleSystem, battleCtx, i)) {
                    Pokepic_StartAnim(&monSpriteMan->pics[i]);
                    sub_0207294C(
                        narc,
                        monAnimMan,
                        &monSpriteMan->pics[i],
                        battleCtx->battlemon[i].species,
                        0,
                        FALSE,
                        i);
                    PlayCry(battleCtx->battlemon[i].species, battleCtx->battlemon[i].form_no);
                }
            }
        } else {
            // victory pose for enemy side mons
            for (u32 i = BATTLER_ENEMY; i <= BATTLER_ENEMY2; i += 2) {
                if (ShouldPlayVictoryPoseForBattler(battleSystem, battleCtx, i)) {
                    Pokepic_StartAnim(&monSpriteMan->pics[i]);
                    sub_0207294C(
                        narc,
                        monAnimMan,
                        &monSpriteMan->pics[i],
                        battleCtx->battlemon[i].species,
                        2,
                        FALSE,
                        i);
                    PlayCry(battleCtx->battlemon[i].species, battleCtx->battlemon[i].form_no);
                }
            }
        }

        NARC_Delete(narc);
        faintingSequenceData->state++;
        // early return to avoid running the original task til the next frame
        return;
    }

    // if we reach our fake "11" state, decrement back to 10 before calling the original task for cleanup
    if (faintingSequenceData->state == 11) {
        struct BattleSystem *battleSystem = faintingSequenceData->battleSys;
        struct BattleStruct *battleCtx = battleSystem->sp;
        void *monAnimMan = ov12_0223B750(battleSystem);

        BOOL side = IsClientEnemy(battleSystem, faintingSequenceData->battler);
        u32 firstBattler = side ? BATTLER_PLAYER : BATTLER_ENEMY;
        for (u32 i = firstBattler; i <= firstBattler + 2; i += 2) {
            if (ShouldPlayVictoryPoseForBattler(battleSystem, battleCtx, i) && !sub_02017068(monAnimMan, i)) {
                // if any pending tasks then don't run the original task yet
                return;
            }
        }

        faintingSequenceData->state--;
    }
#endif // PLAY_MON_VICTORY_POSE

    // run the original task
    ov12_022600F0(task, data);
}
