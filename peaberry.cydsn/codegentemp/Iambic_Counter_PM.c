/*******************************************************************************
* File Name: Iambic_Counter_PM.c  
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

#include "Iambic_Counter.h"

static Iambic_Counter_backupStruct Iambic_Counter_backup;


/*******************************************************************************
* Function Name: Iambic_Counter_SaveConfig
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
*  Iambic_Counter_backup:  Variables of this global structure are modified to 
*  store the values of non retention configuration registers when Sleep() API is 
*  called.
*
*******************************************************************************/
void Iambic_Counter_SaveConfig(void) 
{
    #if (!Iambic_Counter_UsingFixedFunction)

        Iambic_Counter_backup.CounterUdb = Iambic_Counter_ReadCounter();

        #if(!Iambic_Counter_ControlRegRemoved)
            Iambic_Counter_backup.CounterControlRegister = Iambic_Counter_ReadControlRegister();
        #endif /* (!Iambic_Counter_ControlRegRemoved) */

    #endif /* (!Iambic_Counter_UsingFixedFunction) */
}


/*******************************************************************************
* Function Name: Iambic_Counter_RestoreConfig
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
*  Iambic_Counter_backup:  Variables of this global structure are used to 
*  restore the values of non retention registers on wakeup from sleep mode.
*
*******************************************************************************/
void Iambic_Counter_RestoreConfig(void) 
{      
    #if (!Iambic_Counter_UsingFixedFunction)

       Iambic_Counter_WriteCounter(Iambic_Counter_backup.CounterUdb);

        #if(!Iambic_Counter_ControlRegRemoved)
            Iambic_Counter_WriteControlRegister(Iambic_Counter_backup.CounterControlRegister);
        #endif /* (!Iambic_Counter_ControlRegRemoved) */

    #endif /* (!Iambic_Counter_UsingFixedFunction) */
}


/*******************************************************************************
* Function Name: Iambic_Counter_Sleep
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
*  Iambic_Counter_backup.enableState:  Is modified depending on the enable 
*  state of the block before entering sleep mode.
*
*******************************************************************************/
void Iambic_Counter_Sleep(void) 
{
    #if(!Iambic_Counter_ControlRegRemoved)
        /* Save Counter's enable state */
        if(Iambic_Counter_CTRL_ENABLE == (Iambic_Counter_CONTROL & Iambic_Counter_CTRL_ENABLE))
        {
            /* Counter is enabled */
            Iambic_Counter_backup.CounterEnableState = 1u;
        }
        else
        {
            /* Counter is disabled */
            Iambic_Counter_backup.CounterEnableState = 0u;
        }
    #else
        Iambic_Counter_backup.CounterEnableState = 1u;
        if(Iambic_Counter_backup.CounterEnableState != 0u)
        {
            Iambic_Counter_backup.CounterEnableState = 0u;
        }
    #endif /* (!Iambic_Counter_ControlRegRemoved) */
    
    Iambic_Counter_Stop();
    Iambic_Counter_SaveConfig();
}


/*******************************************************************************
* Function Name: Iambic_Counter_Wakeup
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
*  Iambic_Counter_backup.enableState:  Is used to restore the enable state of 
*  block on wakeup from sleep mode.
*
*******************************************************************************/
void Iambic_Counter_Wakeup(void) 
{
    Iambic_Counter_RestoreConfig();
    #if(!Iambic_Counter_ControlRegRemoved)
        if(Iambic_Counter_backup.CounterEnableState == 1u)
        {
            /* Enable Counter's operation */
            Iambic_Counter_Enable();
        } /* Do nothing if Counter was disabled before */    
    #endif /* (!Iambic_Counter_ControlRegRemoved) */
    
}


/* [] END OF FILE */
