#include <bur/plctypes.h>

#ifdef _DEFAULT_INCLUDES
#include <AsDefault.h>
#endif

void _INIT ProgramInit(void)
{	
	fb_regulator.integrator.dt = 0.002;
	fb_regulator.integrator.direct = 0;
	fb_regulator.k_i = 2.5;
	fb_regulator.k_p = 0.0001;
	fb_regulator.max_abs_value = 24.0;
	
	axis_X.MaxSpeed = 100;
	axis_X.RefSwitch = 0;  //0 - switch A, 1 - switch B
	axis_X.RefDirection = 1;  //0 - negative, 1 - positive
	
	PWM_Period = 200;
}

void _CYCLIC ProgramCyclic(void)
{		
	CoilPWM = CoilPowered ? 32767 : 0;
	
	if (CoilPowered)
	{
		fb_regulator.e = axis_X.SetSpeed - axis_X.FeedbackSpeed;
		FB_Regulator(&fb_regulator);
		
		axis_X.U = fb_regulator.u;
		FB_Axis(&axis_X);
	}
	else
	{
		axis_X.PWM = 0;
	}
}

void _EXIT ProgramExit(void)
{
	// Insert code here 

}

