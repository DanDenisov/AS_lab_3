/* Automation Studio generated header file */
/* Do not edit ! */

#ifndef _BUR_1573500887_4_
#define _BUR_1573500887_4_

#include <bur/plctypes.h>

/* Constants */
#ifdef _REPLACE_CONST
#else
#endif


/* Variables */
_BUR_LOCAL signed short min_task;
_BUR_LOCAL unsigned short pwm_period;
_BUR_LOCAL struct FB_Regulator fb_regulator;
_BUR_LOCAL signed short coil_pwm_value;
_BUR_LOCAL plcbit coil_powered;
_BUR_LOCAL struct FB_Axis axis_X;





__asm__(".section \".plc\"");

/* Used IEC files */
__asm__(".ascii \"iecfile \\\"Logical/SDCAxisCtrlX/Variables.var\\\" scope \\\"local\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/MotorCtrl/MotorCtrl.fun\\\" scope \\\"global\\\"\\n\"");

/* Exported library functions and function blocks */

__asm__(".previous");


#endif /* _BUR_1573500887_4_ */

