/*******************************************************************************
* File Name: CW_Control_PM.c
* Version 1.80
*
* Description:
*  This file contains the setup, control, and status commands to support 
*  the component operation in the low power mode. 
*
* Note:
*
********************************************************************************
* Copyright 2015, Cypress Semiconductor Corporation.  All rights reserved.
* You may use this file only in accordance with the license, terms, conditions, 
* disclaimers, and limitations in the end user license agreement accompanying 
* the software package with which this file was provided.
*******************************************************************************/

#include "CW_Control.h"

/* Check for removal by optimization */
#if !defined(CW_Control_Sync_ctrl_reg__REMOVED)

static CW_Control_BACKUP_STRUCT  CW_Control_backup = {0u};

    
/*******************************************************************************
* Function Name: CW_Control_SaveConfig
********************************************************************************
*
* Summary:
*  Saves the control register value.
*
* Parameters:
*  None
*
* Return:
*  None
*
*******************************************************************************/
void CW_Control_SaveConfig(void) 
{
    CW_Control_backup.controlState = CW_Control_Control;
}


/*******************************************************************************
* Function Name: CW_Control_RestoreConfig
********************************************************************************
*
* Summary:
*  Restores the control register value.
*
* Parameters:
*  None
*
* Return:
*  None
*
*
*******************************************************************************/
void CW_Control_RestoreConfig(void) 
{
     CW_Control_Control = CW_Control_backup.controlState;
}


/*******************************************************************************
* Function Name: CW_Control_Sleep
********************************************************************************
*
* Summary:
*  Prepares the component for entering the low power mode.
*
* Parameters:
*  None
*
* Return:
*  None
*
*******************************************************************************/
void CW_Control_Sleep(void) 
{
    CW_Control_SaveConfig();
}


/*******************************************************************************
* Function Name: CW_Control_Wakeup
********************************************************************************
*
* Summary:
*  Restores the component after waking up from the low power mode.
*
* Parameters:
*  None
*
* Return:
*  None
*
*******************************************************************************/
void CW_Control_Wakeup(void)  
{
    CW_Control_RestoreConfig();
}

#endif /* End check for removal by optimization */


/* [] END OF FILE */
