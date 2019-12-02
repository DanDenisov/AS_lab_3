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
	switch(inst->State)
	{
		case STOP:
			inst->ResetCounter = 0;
			
			inst->SetSpeed = 0;
			
			if (inst->EndSwitchA || inst->EndSwitchB)
				inst->ResetError = 1;
			else
				inst->ResetError = 0;
			
			strcpy(inst->StatusString, "State: STOP");
			break;
		case HOMING:
			inst->ResetError = inst->ResetCounter = 0;
			
			if (!inst->Referenced)
			{
				inst->SetSpeed = (-1 + 2 * inst->RefDirection) * inst->MaxSpeed;
			
				if ((!inst->RefSwitch && (inst->EndSwitchA || inst->ForceSwitchA)) ||
					(inst->RefSwitch && (inst->EndSwitchB || inst->ForceSwitchB)))
				{
					inst->SetSpeed = 0;
					
					if (inst->PWM == 0)
					{
						inst->Referenced = 1;
						inst->ResetCounter = 1;
						
						inst->State = STOP;
					}
				}
			
				strcpy(inst->StatusString, "State: HOMING");
			}
			else
			{
				inst->State = inst->PrevState;
			}
			break;
		case MOVING:
			inst->ResetError = inst->ResetCounter = 0;
			
			if (inst->Referenced)
			{
				inst->SetSpeed = inst->UserSpeed;
			
				if (((!inst->RefSwitch && (inst->EndSwitchA || inst->ForceSwitchA)) || 
					(inst->RefSwitch && (inst->EndSwitchB || inst->ForceSwitchB))) && 
					((!inst->RefDirection && inst->UserSpeed < 0) || (inst->RefDirection && inst->UserSpeed > 0)))
				{
					inst->SetSpeed = 0;
					inst->State = STOP;
				}
				else if	(((!inst->RefSwitch && (inst->EndSwitchB || inst->ForceSwitchB)) ||
					(inst->RefSwitch && (inst->EndSwitchA || inst->ForceSwitchA))) && 
					((!inst->RefDirection && inst->UserSpeed > 0) || (inst->RefDirection && inst->UserSpeed < 0)))
				{
					inst->SetSpeed = 0;
					inst->State = STOP;
				}
			
				strcpy(inst->StatusString, "State: MOVING");
			}
			else
			{
				inst->State = inst->PrevState;
			}
			break;
	}
	
	inst->PWM = (int)round(inst->U / 24.0 * 32767.0);
	inst->FeedbackSpeed = inst->U / 24.0 * inst->MaxSpeed;
	
	inst->PrevState = inst->State;
}

