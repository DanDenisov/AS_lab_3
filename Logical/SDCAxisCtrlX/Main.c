
/*#include <bur/plctypes.h>
#include <math.h>

#ifdef _DEFAULT_INCLUDES
	#include <AsDefault.h>
#endif

#define MOTORS_COUNT 3

void _INIT MainINIT(void)
{
	//������������� ���� SDC �������
	Axis_X_HW.EncIf1_Typ = ncSDC_ENC16;
	Axis_X_HW.DiDoIf_Typ = ncSDC_DIDO;
	Axis_X_HW.DrvIf_Typ = ncSDC_DRVSERVO16;
	//������������� ����� ����������
	strcpy(Axis_X_HW.EncIf1_Name, "Axis_X_EncIf");
	strcpy(Axis_X_HW.DrvIf_Name, "Axis_X_DrvIf");
	strcpy(Axis_X_HW.DiDoIf_Name, "Axis_X_DiDoIf");
	//������������� ����� ���������� � ����������
	������
	Axis_X_EncIf.iEncOK = 1;
	Axis_X_DrvIf.iDrvOK = 1;
	Axis_X_DrvIf.iStatusEnable = 1;
	Axis_X_DiDoIf.iDriveReady = 1;
	
	Axis_X_EncIf.iLifeCnt++;
	Axis_X_DiDoIf.iLifeCntDriveEnable++;
	Axis_X_DiDoIf.iLifeCntDriveReady++;
	Axis_X_DiDoIf.iLifeCntNegHwEnd++;
	Axis_X_DiDoIf.iLifeCntPosHwEnd++;
	Axis_X_DiDoIf.iLifeCntReference++;
	Axis_X_DrvIf.iLifeCnt++;
	Axis_X_EncIf.iActTime = (INT)AsIOTimeCyclicStart();
	
	int i = 0;
	for (; i < MOTORS_COUNT; i++)
	{
		motors[i].pwm_value = 0;
		motors[i].pwm_percentage = 0;
		motors[i].counter = 0;
		motors[i].coordinate = 0;
		motors[i].button_status = 0;
		motors[i].reset_error = 0;
		motors[i].endswitch_a_reached = 0;
		motors[i].endswitch_b_reached = 0;
	}
	pwm_period = 200;
	coil_powered = 0;
	coil_pwm_value = 0;
	emergency_stop = 0;
	current_motor_index = 0;
	
	check = 0;
	a = 0;
	n = 0;
}

void _CYCLIC MainCYCLIC(void)
{
	int i = 0, j = 0;
	if (emergency_stop)  //��������� ���������
	{
		for (i = 0; i < MOTORS_COUNT; i++)
		{
			motors[i].pwm_value = 0;
			motors[i].pwm_percentage = 0;
		}
		coil_powered = 0;
		check = 0;
		emergency_stop = 0;
	}
	current_motor = &motors[current_motor_index];
	for (i = 0; i < MOTORS_COUNT; i++)  //���� ��� ����������� �� ������ ������� ������� (������ �������������� ����� ������)
	{
		MotorFunctionBlock(&motors[i]);
		if (current_motor == &motors[i])
		{
			motors[i].button_status = 1 << 1;
		}
		else
		{
			motors[i].button_status = 0;
		}
	}
	if (coil_powered)  //��������� ���������� �� �������
	{
		coil_pwm_value = 32767;
		if (check)
		{
			switch (mode)  //��������� ��������� �����
			{
				case 1:
					switch (path)  //��������� ��������� ������, ��������� ��� � ��������� ������ ��������� ���������������� ����������
					{
						case 1:
							for (i = 0; i < 20; i++)
							{
								coordX[i] = 150 * pi * i / (10*sqrt(2));
								coordY[i] = 150 * pi * i / (10*sqrt(2));
								coordZ[i] = 250 * sin(sqrt(coordX[i] * coordX[i] + coordY[i] * coordY[i]) / 150);
							}
							break;
						case 2:
							for (i = 0; i < 20; i++)
							{
								coordX[i] = 30 * i;
								coordY[i] = 30 * i;
								coordZ[i] = (coordX[i] * coordX[i] + coordY[i] * coordY[i]) / 180;
							}
							break;
						case 0:
							break;
					}
					distX = coordX[a+1] - coordX[a];  //����� ���������� ��������
					distY = coordY[a+1] - coordY[a];
					distZ = coordZ[a+1] - coordZ[a];
					if ((fabs(distX) >= fabs(distY)) && (fabs(distX) >= fabs(distZ)))  //����� ���������� �������� ������� �������
					{
						index[a] = 2;
					}
					if ((fabs(distY) >= fabs(distX)) && (fabs(distY) >= fabs(distZ)))
					{
						index[a] = 0;
					}
					if ((fabs(distZ) >= fabs(distX)) && (fabs(distZ) >= fabs(distY)))
					{
						index[a] = 1;
					}
					if (index[a] == 2)  //�������� �� ��� X ����������
					{
						if (motors[2].counter > coordX[a+1])  //���� ������� ��������� �� ��������� ������, �� ������� � � �������� �����������
						{
							motors[2].pwm_percentage_float = -50.0;
						}
						if (motors[2].counter < coordX[a+1])  //���� ����� ������, �� � ������ �����������
						{
							motors[2].pwm_percentage_float = 50.0;
						}
						motors[0].pwm_percentage_float = (distY * motors[2].pwm_percentage_float) / distX;  //��������� �������� �������� ��� (� ���������)
						motors[1].pwm_percentage_float = (distZ * motors[2].pwm_percentage_float) / distX;
						if ((motors[2].counter >= (coordX[a+1] - 2)) && (motors[2].counter <= (coordX[a+1] + 2)))
						{
							if (a < 18)  //�������� ���������� �����
							{
								a++;
							}
							else  //���� ��� ����� ��������, �� ��������� ������� � ���������� ��������� ����� � ������
							{
								for (i = 0; i < MOTORS_COUNT; i++)
								{
									motors[i].pwm_percentage_float = 0.0;
									motors[i].pwm_value_float = 0.0;
									motors[i].pwm_percentage = 0;
									motors[i].pwm_value = 0;
								}
								check = 0;
								mode = 0;
								path = 0;
								a = 0;
							}
						}
					}
					if (index[a] == 0)  //�������� �� ��� Y ������������
					{
						if (motors[0].counter > coordY[a+1])  //���� ������� ��������� �� ��������� ������, �� ������� � � �������� �����������
						{
							motors[0].pwm_percentage_float = -50.0;
						}
						if (motors[0].counter < coordY[a+1])  //���� ����� ������, �� � ������ �����������
						{
							motors[0].pwm_percentage_float = 50.0;
						}
						motors[2].pwm_percentage_float = (distX * motors[0].pwm_percentage_float) / distY;  //��������� �������� �������� ��� (� ���������)
						motors[1].pwm_percentage_float = (distZ * motors[0].pwm_percentage_float) / distY;
						if ((motors[0].counter >= (coordY[a+1] - 2)) && (motors[0].counter <= (coordY[a+1] + 2)))
						{
							if (a < 18)  //�������� ���������� �����
							{
								a++;
							}
							else  //���� ��� ����� ��������, �� ��������� ������� � ���������� ��������� ����� � ������
							{
								for (i = 0; i < MOTORS_COUNT; i++)
								{
									motors[i].pwm_percentage_float = 0.0;
									motors[i].pwm_value_float = 0.0;
									motors[i].pwm_percentage = 0;
									motors[i].pwm_value = 0;
								}
								check = 0;
								mode = 0;
								path = 0;
								a = 0;
							}
						}
					}
					if (index[a] == 1)  //�������� �� ��� Z ������������
					{
						if (motors[1].counter > coordZ[a+1])  //���� ������� ��������� �� ��������� ������, �� ������� � � �������� �����������
						{
							motors[1].pwm_percentage_float = -50.0;
						}
						if (motors[1].counter < coordZ[a+1])  //���� ����� ������, �� � ������ �����������
						{
							motors[1].pwm_percentage_float = 50.0;
						}
						motors[2].pwm_percentage_float = (distX * motors[1].pwm_percentage_float) / distZ;  //��������� �������� �������� ��� (� ���������)
						motors[0].pwm_percentage_float = (distY * motors[1].pwm_percentage_float) / distZ;
						if ((motors[1].counter >= (coordZ[a+1] - 2)) && (motors[1].counter <= (coordZ[a+1] + 2)))
						{
							if (a < 18)  //�������� ���������� �����
							{
								a++;
							}
							else  //���� ��� ����� ��������, �� ��������� ������� � ���������� ��������� ����� � ������
							{
								for (i = 0; i < MOTORS_COUNT; i++)
								{
									motors[i].pwm_percentage_float = 0.0;
									motors[i].pwm_value_float = 0.0;
									motors[i].pwm_percentage = 0;
									motors[i].pwm_value = 0;
								}
								check = 0;
								mode = 0;
								path = 0;
								a = 0;
							}
						}
					}
					for (i = 0; i < MOTORS_COUNT; i++)
					{
						motors[i].pwm_percentage = motors[i].pwm_percentage_float;  //����������� �������� ��� �� �������� �� ������ � ��������� �������� ��� (��� �����������)
					}
					for (i = 0; i < MOTORS_COUNT; i++)
					{
						motors[i].pwm_value_float = 32767 * motors[i].pwm_percentage_float / 100;  //��������� ��� ��� ������ �������
						motors[i].pwm_value = motors[i].pwm_value_float;  //�������� �������� ���� REAL � �������� ���� INT � ���������� �� ���������
						if ((!motors[i].endswitch_a_reached) && (!motors[i].endswitch_b_reached))
						{
							motors[i].reset_error = 0;
						}
						if ((motors[i].endswitch_a_reached) && (motors[i].pwm_percentage > 0))  //���� ��������� �������� ������, �� ������������� ��� ������� � ���������� ������
						{
							motors[i].reset_error = 1;
							for (j = 0; j < MOTORS_COUNT; j++)
							{
								motors[j].pwm_percentage_float = 0.0;
								motors[j].pwm_value_float = 0.0;
								motors[j].pwm_percentage = 0;
								motors[j].pwm_value = 0;
							}
						}
						if ((motors[i].endswitch_b_reached) && (motors[i].pwm_percentage < 0))
						{
							motors[i].reset_error = 1;
							for (j = 0; j < MOTORS_COUNT; j++)
							{
								motors[j].pwm_percentage_float = 0.0;
								motors[j].pwm_value_float = 0.0;
								motors[j].pwm_percentage = 0;
								motors[j].pwm_value = 0;
							}
						}
					}
					break;  //�������� 1-�� ������
				case 2:
					switch (path)  //��������� ��������� ������ � ������ ��������������� ������� ��������� ��������� �������� ��������
					{
						case 1:
							motors[0].pwm_percentage_float = 50.0;
							motors[2].pwm_percentage_float = 50.0;
							motors[1].pwm_percentage_float = 90 * cos(pi * n / 40);
							break;
						case 2:
							motors[0].pwm_percentage_float = 50.0;
							motors[2].pwm_percentage_float = 50.0;
							if ((n * n / 60) <= 100)  //��� �� ����� ���� ������ 100%
							{
								motors[1].pwm_percentage_float = n * n / 60;
							}
							else  //���� ������ 100%, �� ��������� ������� � ���������� ��������� ����� � ������
							{
								for (i = 0; i < MOTORS_COUNT; i++)
								{
									motors[i].pwm_percentage_float = 0.0;
									motors[i].pwm_value_float = 0.0;
									motors[i].pwm_percentage = 0;
									motors[i].pwm_value = 0;
								}
								check = 0;
								mode = 0;
								path = 0;
								n = 0;
							}
						case 0:
							break;
					}
					if (n < 80)  //�� 1 ������� �������� 10 �������� ��������� �����; ���� �������� ���������� 8 ������, �� � ����� 8-�� ������� ������� 80 ��������
					{
					n++;
					}
					else  //���� ��� �������� ��������, �� ��������� ������� � ���������� ��������� ����� � ������
					{
					for (i = 0; i < MOTORS_COUNT; i++)
					{
					motors[i].pwm_percentage_float = 0.0;
					motors[i].pwm_value_float = 0.0;
					motors[i].pwm_percentage = 0;
					motors[i].pwm_value = 0;
					}
					check = 0;
					mode = 0;
					path = 0;
					n = 0;
					}
					for (i = 0; i < MOTORS_COUNT; i++)
					{
						motors[i].pwm_percentage = motors[i].pwm_percentage_float;  //����������� �������� ��� �� �������� �� ������ � ��������� �������� ��� (��� �����������)
					}
					for (i = 0; i < MOTORS_COUNT; i++)
					{
						motors[i].pwm_value_float = 32767 * motors[i].pwm_percentage_float / 100;  //��������� ��� ��� ������ �������
						motors[i].pwm_value = motors[i].pwm_value_float;  //�������� �������� ���� REAL � �������� ���� INT � ���������� �� ���������
						if ((!motors[i].endswitch_a_reached) && (!motors[i].endswitch_b_reached))
						{
							motors[i].reset_error = 0;
						}
						if ((motors[i].endswitch_a_reached) && (motors[i].pwm_percentage > 0))  //���� ��������� �������� ������, �� ������������� ��� ������� � ���������� ������
						{
							motors[i].reset_error = 1;
							for (j = 0; j < MOTORS_COUNT; j++)
							{
								motors[j].pwm_percentage_float = 0.0;
								motors[j].pwm_value_float = 0.0;
								motors[j].pwm_percentage = 0;
								motors[j].pwm_value = 0;
							}
						}
						if ((motors[i].endswitch_b_reached) && (motors[i].pwm_percentage < 0))
						{
							motors[i].reset_error = 1;
							for (j = 0; j < MOTORS_COUNT; j++)
							{
								motors[j].pwm_percentage_float = 0.0;
								motors[j].pwm_value_float = 0.0;
								motors[j].pwm_percentage = 0;
								motors[j].pwm_value = 0;
							}
						}
					}
					break;  //�������� 2-�� ������
				case 0:
					break;
			}
		}
		else  //���� �������� �� ������, �� ��������� � ����� ������� ���������� ����� ��������� ����� (��� �������, ���������� � ������ ��������� � �.�.)
		{
			for (i = 0; i < MOTORS_COUNT; i++)
			{
				motors[i].pwm_value = 32767 * motors[i].pwm_percentage / 100;
				if ((!motors[i].endswitch_a_reached) && (!motors[i].endswitch_b_reached))
				{
					motors[i].reset_error = 0;
				}
				if ((motors[i].endswitch_a_reached) && (motors[i].pwm_percentage > 0))
				{
					motors[i].reset_error = 1;
					motors[i].pwm_percentage = 0;
					motors[i].pwm_value = 0;
				}
				if ((motors[i].endswitch_b_reached) && (motors[i].pwm_percentage < 0))
				{
					motors[i].reset_error = 1;
					motors[i].pwm_percentage = 0;
					motors[i].pwm_value = 0;
				}
			}
		}
	}
	else  //���� ��� ���������� �� �������, �� ��������� ��� �������
	{
		coil_pwm_value = 0;
		for (i = 0; i < MOTORS_COUNT; i++)
		{
			motors[i].pwm_value = 0;
		}
	}
}

void _EXIT ProgramExit(void)
{

}*/

#include <bur/plctypes.h>

#ifdef _DEFAULT_INCLUDES
#include <AsDefault.h>
#endif

void _INIT ProgramInit(void)
{
	//������������� ���� SDC �������
	Axis_X_HW.EncIf1_Typ = ncSDC_ENC16;
	Axis_X_HW.DiDoIf_Typ = ncSDC_DIDO;
	Axis_X_HW.DrvIf_Typ = ncSDC_DRVSERVO16;
	
	//������������� ����� ����������
	strcpy(Axis_X_HW.EncIf1_Name, "Axis_X_EncIf");
	strcpy(Axis_X_HW.DrvIf_Name, "Axis_X_DrvIf");
	strcpy(Axis_X_HW.DiDoIf_Name, "Axis_X_DiDoIf");
		
	//������������� ����� ���������� � ���������� ������
	Axis_X_EncIf.iEncOK = 1;
	Axis_X_DrvIf.iDrvOK = 1;
	Axis_X_DrvIf.iStatusEnable = 1;
	Axis_X_DiDoIf.iDriveReady = 1;
	
	fb_regulator.integrator.dt = 0.002;
	fb_regulator.integrator.direct = 0;
	fb_regulator.k_i = 1;
	fb_regulator.k_p = 0.0001;
	fb_regulator.max_abs_value = 24.0;
	
	axis_X.MaxSpeed = 100;
	
	pwm_period = 200;
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
	Axis_X_EncIf.iActPos = axis_X.counter;
	
	Axis_X_DiDoIf.iPosHwEnd = axis_X.endswitch_b_reached;
	Axis_X_DiDoIf.iNegHwEnd = axis_X.endswitch_a_reached;
	
	coil_pwm_value = coil_powered ? 32767 : 0;
	
	if (coil_powered)
	{
		fb_regulator.e = axis_X.SetSpeed - axis_X.FeedbackSpeed;
		FB_Regulator(&fb_regulator);
		
		axis_X.u = fb_regulator.u;
		FB_Axis(&axis_X);
	}
	else
	{
		axis_X.pwm_value = 0;
	}
}

void _EXIT ProgramExit(void)
{
	// Insert code here 

}

