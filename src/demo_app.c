/*
 * The MIT License (MIT)
 *
 * Copyright (c) [2015] [Marco Russi]
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in all
 * copies or substantial portions of the Software.
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 * SOFTWARE.
*/

/*
 * This file demo_app.c represents an application demo for the framework.
 *
 * Author : Marco Russi
 *
 * Evolution of the file:
 * 06/08/2015 - File created - Marco Russi
 *
*/


/* ---------- Inclusion files ----------- */

#include "framework/hal/p32mx795f512l.h"
#include "framework/fw_common.h"

#include "framework/hal/pwm.h"
#include "framework/hal/adc.h"
#include "framework/hal/can.h"
#include "framework/hal/port.h"

#include "framework/sal/dio/outch.h"
#include "framework/sal/dio/inch.h"
#include "framework/sal/rtos/rtos.h"

#include "demo_app.h"




/* ------- Local functions prototypes ---------------  */

LOCAL void toggleLED( void );




/* --------------- Exported functions --------------- */

/* CAN task init */
EXPORTED void APP_CAN_Init( void )
{
    CAN_stCanInitParameters stCanInitParameters;

    /* Synch | Prop | Phase Seg 1 | Phase Seg 2 | */
    /* 1 Tq  | 3 Tq |    3 Tq     |     3 Tq    | */
    /* Jump width 1 Tq */
    /* Bus sampled once */
    stCanInitParameters.eBusSample = CAN_BUS_LINE_IS_SAMPLED_ONCE;
    stCanInitParameters.ePhaseSeg1 = CAN_PHASE_SEGMENT_1_3_TQ;
    stCanInitParameters.ePhaseSeg2 = CAN_PHASE_SEGMENT_2_3_TQ;
    stCanInitParameters.ePropagation = CAN_PROPAGATION_3_TQ;
    stCanInitParameters.eSynchJumpWidth = CAN_SYNCH_JUMP_WIDTH_1_TQ;
    stCanInitParameters.eWakeUpFilter = CAN_BUS_LINE_FILTER_DISABLED;
    /* Baud rate is 500 Kbps */
    stCanInitParameters.usBaudRateKbs = US_500;

    /* Init CAN module */
    CAN_Initialise(stCanInitParameters);
}




/* ADC task init */
EXPORTED void APP_ADC_Init( void )
{
    /* Init ADC module in AUTO MODE and start */
    ADC_Init(ADC_MODE_MANUAL_ACQ);

    /* if ADC is in idle */
    if(B_TRUE == ADC_CheckIsAcqFinished())
    {
        /* Start channels acquisition */
        ADC_StartChnAcq(ADC_CHN_AN0 | ADC_CHN_AN1 | ADC_CHN_AN2 | ADC_CHN_AN3, 4);
    }
    else
    {
        /* ADC acquisition in progress - wait */
    }
}




/* Interaction task init */
EXPORTED void APP_Interaction_Init( void )
{
    //RTOS_SetCallback (RTOS_CB_ID_1, RTOS_CB_TYPE_PERIODIC, 500, &toggleLED);

    OUTCH_SetChannelStatus( OUTCH_KE_ILL_CH_1, OUTCH_KE_CH_TURN_OFF );
    //OUTCH_SetIlluminationLevel( OUTCH_KE_FIRST_ILL_CH, OUTCH_KE_ILL_LEVEL_5 );

    OUTCH_SetChannelStatus( OUTCH_KE_ILL_CH_2, OUTCH_KE_CH_TURN_OFF );
    //OUTCH_SetIlluminationLevel( OUTCH_KE_FIRST_ILL_CH, OUTCH_KE_ILL_LEVEL_5 );

    OUTCH_SetChannelStatus( OUTCH_KE_ILL_CH_3, OUTCH_KE_CH_BLINKING );
    //OUTCH_SetIlluminationLevel( OUTCH_KE_ILL_CH_1, OUTCH_KE_ILL_LEVEL_1 );
}




/* CAN periodic task */
EXPORTED void APP_CAN_PeriodicTask( void )
{
    /* TODO */
}




/* ADC periodic task */
EXPORTED void APP_ADC_PeriodicTask( void )
{
    /* TODO */
}




/* Interaction periodic task */
EXPORTED void APP_Interaction_PeriodicTask( void )
{
    INCH_ke_ChannelTrans eTrans;

    eTrans = INCH_GetChannelTransition(INCH_KE_CHANNEL_1);

    if(INCH_KE_FALLING_EDGE == eTrans)
    {
        OUTCH_SetChannelStatus(OUTCH_KE_CHANNEL_1, OUTCH_KE_CH_TOGGLE);
    }
    /*
    else if(INCH_KE_RISING_EDGE == eTrans)
    {
        OUTCH_SetChannelStatus(OUTCH_KE_CHANNEL_1, OUTCH_KE_CH_TURN_ON);
    }
    */
    else
    {
        /* do nothing */
    }
/*
    if(INCH_KE_STATUS_PRESSED == INCH_GetChannelStatus(INCH_KE_CHANNEL_1))
    {
        PORT_SetPortPin(PORT_ID_D, PORT_PIN_0);
    }
    else
    {
        PORT_ClearPortPin(PORT_ID_D, PORT_PIN_0);
    }
*/
    eTrans = INCH_GetChannelTransition(INCH_KE_CHANNEL_2);

    if(INCH_KE_FALLING_EDGE == eTrans)
    {
        OUTCH_SetChannelStatus(OUTCH_KE_CHANNEL_2, OUTCH_KE_CH_TOGGLE);
    }
    /*
    else if(INCH_KE_RISING_EDGE == eTrans)
    {
        OUTCH_SetChannelStatus(OUTCH_KE_CHANNEL_2, OUTCH_KE_CH_TURN_ON);
    }
    */
    else
    {
        /* do nothing */
    }
/*
    if(INCH_KE_STATUS_PRESSED == INCH_GetChannelStatus(INCH_KE_CHANNEL_2))
    {
        PORT_SetPortPin(PORT_ID_D, PORT_PIN_1);
    }
    else
    {
        PORT_ClearPortPin(PORT_ID_D, PORT_PIN_1);
    }
*/
}




/* ---------------- Local functions ---------------- */

/* toggle LED */
LOCAL void toggleLED( void )
{
    OUTCH_SetChannelStatus( OUTCH_KE_ILL_CH_3, OUTCH_KE_CH_TOGGLE );
}




/* End of file */
