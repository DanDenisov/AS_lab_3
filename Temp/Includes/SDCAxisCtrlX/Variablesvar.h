/* Automation Studio generated header file */
/* Do not edit ! */

#ifndef _BUR_1575277044_1_
#define _BUR_1575277044_1_

#include <bur/plctypes.h>

/* Constants */
#ifdef _REPLACE_CONST
#else
#endif


/* Variables */
_BUR_LOCAL unsigned short PWM_Period;
_BUR_LOCAL struct FB_Regulator fb_regulator;
_BUR_LOCAL signed short CoilPWM;
_BUR_LOCAL plcbit CoilPowered;
_BUR_LOCAL struct FB_Axis axis_X;





__asm__(".section \".plc\"");

/* Used IEC files */
__asm__(".ascii \"iecfile \\\"Logical/SDCAxisCtrlX/Variables.var\\\" scope \\\"local\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/MotorCtrl/MotorCtrl.fun\\\" scope \\\"global\\\"\\n\"");

/* Exported library functions and function blocks */

__asm__(".previous");


#endif /* _BUR_1575277044_1_ */

