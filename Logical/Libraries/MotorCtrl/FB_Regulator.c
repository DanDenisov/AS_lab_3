#include <bur/plctypes.h>
#ifdef __cplusplus
	extern "C"
	{
#endif
#include "MotorCtrl.h"
#ifdef __cplusplus
	};
#endif

#include "Math.h"
/* TODO: Add your comment here */
void FB_Regulator(struct FB_Regulator* inst)
{	
	if (inst->integrator.direct)
		inst->integrator.in = inst->k_i * inst->e_prev + inst->iyOld / inst->integrator.dt;
	else
		inst->integrator.in = inst->k_i * inst->e + inst->iyOld / inst->integrator.dt;
	FB_Integrator(&inst->integrator);
	inst->u_raw = (fabs(inst->k_p * inst->e) < inst->max_abs_value ? inst->k_p * inst->e : inst->max_abs_value * copysign(1.0, inst->k_p * inst->e)) + inst->integrator.out;
	inst->u = fabs(inst->u_raw) < inst->max_abs_value ? inst->u_raw : inst->max_abs_value * copysign(1.0, inst->u_raw);
	inst->iyOld = inst->u - inst->u_raw;
}

