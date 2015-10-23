/*******************************************************************************
* File Name: CW_Hold_Timer_PM.c
* Version 2.70
*
*  Description:
*     This file provides the power management source code to API for the
*     Timer.
*
*   Note:
*     None
*
*******************************************************************************
* Copyright 2008-2014, Cypress Semiconductor Corporation.  All rights reserved.
* You may use this file only in accordance with the license, terms, conditions,
* disclaimers, and limitations in the end user license agreement accompanying
* the software package with which this file was provided.
********************************************************************************/

#include "CW_Hold_Timer.h"

static CW_Hold_Timer_backupStruct CW_Hold_Timer_backup;


/*******************************************************************************
* Function Name: CW_Hold_Timer_SaveConfig
********************************************************************************
*
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
*  CW_Hold_Timer_backup:  Variables of this global structure are modified to
*  store the values of non retention configuration registers when Sleep() API is
*  called.
*
*******************************************************************************/
void CW_Hold_Timer_SaveConfig(void) 
{
    #if (!CW_Hold_Timer_UsingFixedFunction)
        CW_Hold_Timer_backup.TimerUdb = CW_Hold_Timer_ReadCounter();
        CW_Hold_Timer_backup.InterruptMaskValue = CW_Hold_Timer_STATUS_MASK;
        #if (CW_Hold_Timer_UsingHWCaptureCounter)
            CW_Hold_Timer_backup.TimerCaptureCounter = CW_Hold_Timer_ReadCaptureCount();
        #endif /* Back Up capture counter register  */

        #if(!CW_Hold_Timer_UDB_CONTROL_REG_REMOVED)
            CW_Hold_Timer_backup.TimerControlRegister = CW_Hold_Timer_ReadControlRegister();
        #endif /* Backup the enable state of the Timer component */
    #endif /* Backup non retention registers in UDB implementation. All fixed function registers are retention */
}


/*******************************************************************************
* Function Name: CW_Hold_Timer_RestoreConfig
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
*  CW_Hold_Timer_backup:  Variables of this global structure are used to
*  restore the values of non retention registers on wakeup from sleep mode.
*
*******************************************************************************/
void CW_Hold_Timer_RestoreConfig(void) 
{   
    #if (!CW_Hold_Timer_UsingFixedFunction)

        CW_Hold_Timer_WriteCounter(CW_Hold_Timer_backup.TimerUdb);
        CW_Hold_Timer_STATUS_MASK =CW_Hold_Timer_backup.InterruptMaskValue;
        #if (CW_Hold_Timer_UsingHWCaptureCounter)
            CW_Hold_Timer_SetCaptureCount(CW_Hold_Timer_backup.TimerCaptureCounter);
        #endif /* Restore Capture counter register*/

        #if(!CW_Hold_Timer_UDB_CONTROL_REG_REMOVED)
            CW_Hold_Timer_WriteControlRegister(CW_Hold_Timer_backup.TimerControlRegister);
        #endif /* Restore the enable state of the Timer component */
    #endif /* Restore non retention registers in the UDB implementation only */
}


/*******************************************************************************
* Function Name: CW_Hold_Timer_Sleep
********************************************************************************
*
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
*  CW_Hold_Timer_backup.TimerEnableState:  Is modified depending on the
*  enable state of the block before entering sleep mode.
*
*******************************************************************************/
void CW_Hold_Timer_Sleep(void) 
{
    #if(!CW_Hold_Timer_UDB_CONTROL_REG_REMOVED)
        /* Save Counter's enable state */
        if(CW_Hold_Timer_CTRL_ENABLE == (CW_Hold_Timer_CONTROL & CW_Hold_Timer_CTRL_ENABLE))
        {
            /* Timer is enabled */
            CW_Hold_Timer_backup.TimerEnableState = 1u;
        }
        else
        {
            /* Timer is disabled */
            CW_Hold_Timer_backup.TimerEnableState = 0u;
        }
    #endif /* Back up enable state from the Timer control register */
    CW_Hold_Timer_Stop();
    CW_Hold_Timer_SaveConfig();
}


/*******************************************************************************
* Function Name: CW_Hold_Timer_Wakeup
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
*  CW_Hold_Timer_backup.enableState:  Is used to restore the enable state of
*  block on wakeup from sleep mode.
*
*******************************************************************************/
void CW_Hold_Timer_Wakeup(void) 
{
    CW_Hold_Timer_RestoreConfig();
    #if(!CW_Hold_Timer_UDB_CONTROL_REG_REMOVED)
        if(CW_Hold_Timer_backup.TimerEnableState == 1u)
        {     /* Enable Timer's operation */
                CW_Hold_Timer_Enable();
        } /* Do nothing if Timer was disabled before */
    #endif /* Remove this code section if Control register is removed */
}


/* [] END OF FILE */
