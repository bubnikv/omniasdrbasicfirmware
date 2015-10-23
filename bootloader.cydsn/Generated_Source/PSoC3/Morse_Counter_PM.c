/*******************************************************************************
* File Name: Morse_Counter_PM.c  
* Version 3.0
*
*  Description:
*    This file provides the power management source code to API for the
*    Counter.  
*
*   Note:
*     None
*
********************************************************************************
* Copyright 2008-2012, Cypress Semiconductor Corporation.  All rights reserved.
* You may use this file only in accordance with the license, terms, conditions, 
* disclaimers, and limitations in the end user license agreement accompanying 
* the software package with which this file was provided.
*******************************************************************************/

#include "Morse_Counter.h"

static Morse_Counter_backupStruct Morse_Counter_backup;


/*******************************************************************************
* Function Name: Morse_Counter_SaveConfig
********************************************************************************
* Summary:
*     Save the current user configuration
*
* Parameters:  
*  void
*
* Return: 
*  void
*
* Global variables:
*  Morse_Counter_backup:  Variables of this global structure are modified to 
*  store the values of non retention configuration registers when Sleep() API is 
*  called.
*
*******************************************************************************/
void Morse_Counter_SaveConfig(void) 
{
    #if (!Morse_Counter_UsingFixedFunction)

        Morse_Counter_backup.CounterUdb = Morse_Counter_ReadCounter();

        #if(!Morse_Counter_ControlRegRemoved)
            Morse_Counter_backup.CounterControlRegister = Morse_Counter_ReadControlRegister();
        #endif /* (!Morse_Counter_ControlRegRemoved) */

    #endif /* (!Morse_Counter_UsingFixedFunction) */
}


/*******************************************************************************
* Function Name: Morse_Counter_RestoreConfig
********************************************************************************
*
* Summary:
*  Restores the current user configuration.
*
* Parameters:  
*  void
*
* Return: 
*  void
*
* Global variables:
*  Morse_Counter_backup:  Variables of this global structure are used to 
*  restore the values of non retention registers on wakeup from sleep mode.
*
*******************************************************************************/
void Morse_Counter_RestoreConfig(void) 
{      
    #if (!Morse_Counter_UsingFixedFunction)

       Morse_Counter_WriteCounter(Morse_Counter_backup.CounterUdb);

        #if(!Morse_Counter_ControlRegRemoved)
            Morse_Counter_WriteControlRegister(Morse_Counter_backup.CounterControlRegister);
        #endif /* (!Morse_Counter_ControlRegRemoved) */

    #endif /* (!Morse_Counter_UsingFixedFunction) */
}


/*******************************************************************************
* Function Name: Morse_Counter_Sleep
********************************************************************************
* Summary:
*     Stop and Save the user configuration
*
* Parameters:  
*  void
*
* Return: 
*  void
*
* Global variables:
*  Morse_Counter_backup.enableState:  Is modified depending on the enable 
*  state of the block before entering sleep mode.
*
*******************************************************************************/
void Morse_Counter_Sleep(void) 
{
    #if(!Morse_Counter_ControlRegRemoved)
        /* Save Counter's enable state */
        if(Morse_Counter_CTRL_ENABLE == (Morse_Counter_CONTROL & Morse_Counter_CTRL_ENABLE))
        {
            /* Counter is enabled */
            Morse_Counter_backup.CounterEnableState = 1u;
        }
        else
        {
            /* Counter is disabled */
            Morse_Counter_backup.CounterEnableState = 0u;
        }
    #else
        Morse_Counter_backup.CounterEnableState = 1u;
        if(Morse_Counter_backup.CounterEnableState != 0u)
        {
            Morse_Counter_backup.CounterEnableState = 0u;
        }
    #endif /* (!Morse_Counter_ControlRegRemoved) */
    
    Morse_Counter_Stop();
    Morse_Counter_SaveConfig();
}


/*******************************************************************************
* Function Name: Morse_Counter_Wakeup
********************************************************************************
*
* Summary:
*  Restores and enables the user configuration
*  
* Parameters:  
*  void
*
* Return: 
*  void
*
* Global variables:
*  Morse_Counter_backup.enableState:  Is used to restore the enable state of 
*  block on wakeup from sleep mode.
*
*******************************************************************************/
void Morse_Counter_Wakeup(void) 
{
    Morse_Counter_RestoreConfig();
    #if(!Morse_Counter_ControlRegRemoved)
        if(Morse_Counter_backup.CounterEnableState == 1u)
        {
            /* Enable Counter's operation */
            Morse_Counter_Enable();
        } /* Do nothing if Counter was disabled before */    
    #endif /* (!Morse_Counter_ControlRegRemoved) */
    
}


/* [] END OF FILE */
