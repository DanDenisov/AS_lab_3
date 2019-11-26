#include <bur/plctypes.h>
#ifdef __cplusplus
	extern "C"
	{
#endif
#include "MotorCtrl.h"
#ifdef __cplusplus
	};
#endif
/* TODO: Add your comment here */
void FB_Axis(struct FB_Axis* inst)
{
	if (inst->Home)
	{
		inst->pwm_value = 0;
		inst->reset_counter = 1;
		inst->Home = 0;
	}
	
	if (!inst->ForceStop)
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
	inst->last_counter = inst->counter;
}

