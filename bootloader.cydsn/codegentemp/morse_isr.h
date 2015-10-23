/*******************************************************************************
* File Name: morse_isr.h
* Version 1.70
*
*  Description:
*   Provides the function definitions for the Interrupt Controller.
*
*
********************************************************************************
* Copyright 2008-2015, Cypress Semiconductor Corporation.  All rights reserved.
* You may use this file only in accordance with the license, terms, conditions, 
* disclaimers, and limitations in the end user license agreement accompanying 
* the software package with which this file was provided.
*******************************************************************************/

#if !defined(CY_ISR_morse_isr_H)
#define CY_ISR_morse_isr_H

#include <cytypes.h>
#include <cyfitter.h>

/* Interrupt Controller API. */
void morse_isr_Start(void) ;
void morse_isr_StartEx(cyisraddress address) ;
void morse_isr_Stop(void) ;

CY_ISR_PROTO(morse_isr_Interrupt);

void morse_isr_SetVector(cyisraddress address) ;
cyisraddress morse_isr_GetVector(void) ;

void morse_isr_SetPriority(uint8 priority) ;
uint8 morse_isr_GetPriority(void) ;

void morse_isr_Enable(void) ;
uint8 morse_isr_GetState(void) ;
void morse_isr_Disable(void) ;

void morse_isr_SetPending(void) ;
void morse_isr_ClearPending(void) ;


/* Interrupt Controller Constants */

/* Address of the INTC.VECT[x] register that contains the Address of the morse_isr ISR. */
#define morse_isr_INTC_VECTOR            ((reg16 *) morse_isr__INTC_VECT)

/* Address of the morse_isr ISR priority. */
#define morse_isr_INTC_PRIOR             ((reg8 *) morse_isr__INTC_PRIOR_REG)

/* Priority of the morse_isr interrupt. */
#define morse_isr_INTC_PRIOR_NUMBER      morse_isr__INTC_PRIOR_NUM

/* Address of the INTC.SET_EN[x] byte to bit enable morse_isr interrupt. */
#define morse_isr_INTC_SET_EN            ((reg8 *) morse_isr__INTC_SET_EN_REG)

/* Address of the INTC.CLR_EN[x] register to bit clear the morse_isr interrupt. */
#define morse_isr_INTC_CLR_EN            ((reg8 *) morse_isr__INTC_CLR_EN_REG)

/* Address of the INTC.SET_PD[x] register to set the morse_isr interrupt state to pending. */
#define morse_isr_INTC_SET_PD            ((reg8 *) morse_isr__INTC_SET_PD_REG)

/* Address of the INTC.CLR_PD[x] register to clear the morse_isr interrupt. */
#define morse_isr_INTC_CLR_PD            ((reg8 *) morse_isr__INTC_CLR_PD_REG)



#endif /* CY_ISR_morse_isr_H */


/* [] END OF FILE */
