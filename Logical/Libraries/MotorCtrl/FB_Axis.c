#include <bur/plctypes.h>
#ifdef __cplusplus
	extern "C"
	{
#endif
#include "MotorCtrl.h"
#ifdef __cplusplus
	};
#endif

#include "math.h"
/* TODO: Add your comment here */
void FB_Axis(struct FB_Axis* inst)
{
	inst->ResetError = inst->ResetCounter = 0;
	
	if (inst->UserResetCounter)
	{
		inst->ResetCounter = 1;
		inst->UserResetCounter = 0;
	}
	
	inst->PWM = (int)round(inst->U / 24.0 * 32767.0);
	inst->FeedbackSpeed = inst->U / 24.0 * inst->MaxSpeed;
	
	if (inst->EndSwitchA || inst->EndSwitchB)
	{
		inst->ResetError = 1;
		inst->PWM = 0;
	}
}

