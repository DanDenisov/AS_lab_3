
FUNCTION_BLOCK FB_Regulator
	VAR_INPUT
		e : REAL;
		e_prev : REAL;
	END_VAR
	VAR_OUTPUT
		u : REAL;
	END_VAR
	VAR
		u_raw : REAL;
		k_p : REAL;
		k_i : REAL;
		integrator : FB_Integrator;
		iyOld : REAL;
		max_abs_value : REAL;
	END_VAR
END_FUNCTION_BLOCK

FUNCTION_BLOCK FB_Motor
	VAR_INPUT
		u : REAL;
	END_VAR
	VAR_OUTPUT
		w : REAL;
		phi : REAL;
	END_VAR
	VAR
		integrator : FB_Integrator;
		integrator_phi : FB_Integrator;
		Tm : REAL;
		ke : REAL;
		enable_reg : BOOL;
	END_VAR
END_FUNCTION_BLOCK

FUNCTION_BLOCK FB_Integrator
	VAR_INPUT
		in : REAL;
	END_VAR
	VAR_OUTPUT
		out : REAL;
	END_VAR
	VAR
		dt : REAL;
		direct : BOOL;
	END_VAR
END_FUNCTION_BLOCK

FUNCTION_BLOCK FB_Axis
	VAR_INPUT
		U : REAL;
		UserSpeed : INT;
		EndSwitchA : BOOL;
		EndSwitchB : BOOL;
		ForceSwitchA : BOOL;
		ForceSwitchB : BOOL;
		Counter : INT;
	END_VAR
	VAR_OUTPUT
		SetSpeed : INT;
		FeedbackSpeed : REAL;
		PWM : INT;
		ResetError : BOOL;
		ResetCounter : BOOL;
	END_VAR
	VAR
		State : AxisStates;
		PrevState : AxisStates;
		StatusString : STRING[80];
		MaxSpeed : UINT;
		Referenced : BOOL;
		RefSwitch : BOOL;
		RefDirection : BOOL;
	END_VAR
END_FUNCTION_BLOCK
