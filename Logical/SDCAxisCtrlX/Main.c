#include <bur/plctypes.h>

#ifdef _DEFAULT_INCLUDES
#include <AsDefault.h>
#endif

void _INIT ProgramInit(void)
{
	//Устанваливаем типы SDC модулей
	Axis_X_HW.EncIf1_Typ = ncSDC_ENC16;
	Axis_X_HW.DiDoIf_Typ = ncSDC_DIDO;
	Axis_X_HW.DrvIf_Typ = ncSDC_DRVSERVO16;
	
	//Устанавливаем имена переменных
	strcpy(Axis_X_HW.EncIf1_Name, "Axis_X_EncIf");
	strcpy(Axis_X_HW.DrvIf_Name, "Axis_X_DrvIf");
	strcpy(Axis_X_HW.DiDoIf_Name, "Axis_X_DiDoIf");
		
	//Устанавливаем входы готовности и нормальной работы
	Axis_X_EncIf.iEncOK = 1;
	Axis_X_DrvIf.iDrvOK = 1;
	Axis_X_DrvIf.iStatusEnable = 1;
	Axis_X_DiDoIf.iDriveReady = 1;
	
	fb_regulator.integrator.dt = 0.002;
	fb_regulator.integrator.direct = 0;
	fb_regulator.k_i = 0.16;
	fb_regulator.k_p = 0.0001;
	fb_regulator.max_abs_value = 24.0;
	
	axis_X.MaxSpeed = 6500;
	
	PWM_Period = 200;
}

void _CYCLIC ProgramCyclic(void)
{	
	Axis_X_EncIf.iLifeCnt++;
	Axis_X_DiDoIf.iLifeCntDriveEnable++; 
	Axis_X_DiDoIf.iLifeCntDriveReady++; 
	Axis_X_DiDoIf.iLifeCntNegHwEnd++; 
	Axis_X_DiDoIf.iLifeCntPosHwEnd++; 
	Axis_X_DiDoIf.iLifeCntReference++;
	Axis_X_DrvIf.iLifeCnt++;
	
	Axis_X_EncIf.iActTime = (INT)	AsIOTimeCyclicStart();
	Axis_X_EncIf.iActPos = axis_X.Counter;
	
	Axis_X_DiDoIf.iPosHwEnd = (axis_X.EndSwitchA || axis_X.ForceSwitchA);
	Axis_X_DiDoIf.iNegHwEnd = (axis_X.EndSwitchB || axis_X.ForceSwitchB);
	
	CoilPWM = CoilPowered ? 32767 : 0;
	
	if (CoilPowered)
	{
		fb_regulator.e = (axis_X.Manual ? axis_X.UserSpeed : Axis_X_DrvIf.oSetPos * 6500.0 / 32767.0) - axis_X.FeedbackSpeed;
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

