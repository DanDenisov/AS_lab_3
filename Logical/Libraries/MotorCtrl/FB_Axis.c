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
	switch(inst->state)
	{
		case STOP:
			inst->reset_counter = 0;
			
			inst->SetSpeed = 0;
			
			if (inst->endswitch_a_reached || inst->endswitch_b_reached)
				inst->reset_error = 1;
			else
				inst->reset_error = 0;
			
			strcpy(inst->StatusString, "Состояние: STOP");
			break;
		case HOMING:
			inst->reset_error = inst->reset_counter = 0;
			
			if (!inst->Referenced)
			{
				inst->SetSpeed = -inst->MaxSpeed;
			
				if (inst->endswitch_a_reached || inst->endswitch_b_reached)
				{
					inst->Referenced = 1;
					inst->reset_counter = 1;
			
					if (inst->endswitch_a_reached)
						inst->RefSwitchA = 1;
					else
						inst->RefSwitchA = 0;
					
					inst->SetSpeed = 0;
					inst->state = STOP;
				}
			
				strcpy(inst->StatusString, "Состояние: HOMING");
			}
			else
			{
				inst->state = inst->prev_state;
			}
			break;
		case MOVING:
			inst->reset_error = inst->reset_counter = 0;
			
			if (inst->Referenced)
			{
				inst->SetSpeed = inst->UserSpeed;
			
				if ((inst->RefSwitchA && inst->endswitch_a_reached && inst->UserSpeed < 0) ||
					(inst->RefSwitchA && inst->endswitch_b_reached && inst->UserSpeed > 0) ||
					(!inst->RefSwitchA && inst->endswitch_a_reached && inst->UserSpeed > 0) ||
					(!inst->RefSwitchA && inst->endswitch_b_reached && inst->UserSpeed < 0))
				{
					inst->SetSpeed = 0;
					inst->state = STOP;
				}
			
				strcpy(inst->StatusString, "Состояние: MOVING");
			}
			else
			{
				inst->state = inst->prev_state;
			}
			break;
	}
	
	inst->pwm_value = (int)round(inst->u / 24.0 * 32767.0);
	inst->FeedbackSpeed = inst->u / 24.0 * inst->MaxSpeed;
	
	inst->prev_state = inst->state;
	
	/*if (!inst->ForceStop)
	{
		if (inst->endswitch_a_reached && inst->u < 0)
		{
			inst->pwm_value = 0;
			inst->reset_error = 1;			
		}
		else if (inst->endswitch_b_reached && inst->u > 0)
		{
			inst->pwm_value = 0;
			inst->reset_error = 1;
		}
		else
		{
			if (inst->Manual)
				inst->pwm_value = inst->pwm_percentage / 100.0 * 32767;
			else
				inst->pwm_value = inst->u / 24.0 * 32767;
			inst->reset_error = inst->reset_counter = 0;
		}
	}
	else
	{
		inst->pwm_value = 0;
		inst->reset_error = inst->reset_counter = 0;
	}
	
	inst->speed = (inst->counter - inst->last_counter) / 0.002;
	inst->last_counter = inst->counter;*/
}

