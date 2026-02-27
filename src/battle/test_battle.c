#include "../../include/types.h"
#include "../../include/battle.h"
#include "../../include/message.h"
#include "../../include/test_battle.h"

#ifdef DEBUG_BATTLE_SCENARIOS

void LONG_CALL BattleMessage_ExpandPlaceholders(struct BattleSystem *battleSystem, MsgData *data, BattleMessage *msg)
{
    String *str = NewString_ReadMsgData(data, msg->id);
    StringExpandPlaceholders(battleSystem->msgFormat, battleSystem->msgBuffer, str);
    String_Delete(str);

    BOOL checkMessage = FALSE;
    BOOL messageMatch = TRUE;


    struct TestBattleScenario *scenario = TestBattle_GetCurrentScenario();
    if (scenario != NULL && TestBattle_HasMoreExpectations()) {
        if (scenario->expectations[scenario->expectationPassCount].expectationType == EXPECTATION_TYPE_MESSAGE) {
            checkMessage = TRUE;
        }
    }

    for (int i = 0; i < battleSystem->msgBuffer->size; i++) {
        u32 code = battleSystem->msgBuffer->data[i];
        char character = '\0';

        if (code <= 0x0144) {
            character = (char)(code - 234);
        } else {
            switch (code) {
            case 0xFFFF:
                character = '\0';
                return;
            case 0x01BE:
                character = '-';
                break;
            case 0x01DE:
            case 0x0001:
            case 0xE000:
            case 0x25BC:
            case 0x25BD:
                character = ' ';
                break;
            case 0x01AB:
                character = '!';
                break;
            case 0x01AD:
                character = ',';
                break;
            case 0x01AE:
                character = '.';
                break;
            case 0x01B3:
                character = '\'';
                break;
            default:
                character = (char)(code - 228);
                break;
            }
        }
        debug_printf("%c", character);
        if (character != scenario->expectations[scenario->expectationPassCount].expectationValue.message[i]) {
            messageMatch = FALSE;
        }
    }
    if (messageMatch) {
        debug_printf("%*s", TEST_BATTLE_MESSAGE_LEN - battleSystem->msgBuffer->size, "✅");
    }
    debug_printf("\n");

    if (messageMatch) {
        scenario->expectationPassCount++;
    }
}

#endif // DEBUG_BATTLE_SCENARIOS
