/*******************************************************************************
* File Name: USBFS_VBUS.c  
* Version 2.10
*
* Description:
*  This file contains API to enable firmware control of a Pins component.
*
* Note:
*
********************************************************************************
* Copyright 2008-2014, Cypress Semiconductor Corporation.  All rights reserved.
* You may use this file only in accordance with the license, terms, conditions, 
* disclaimers, and limitations in the end user license agreement accompanying 
* the software package with which this file was provided.
*******************************************************************************/

#include "cytypes.h"
#include "USBFS_VBUS.h"


/*******************************************************************************
* Function Name: USBFS_VBUS_Write
********************************************************************************
*
* Summary:
*  Assign a new value to the digital port's data output register.  
*
* Parameters:  
*  prtValue:  The value to be assigned to the Digital Port. 
*
* Return: 
*  None 
*  
*******************************************************************************/
void USBFS_VBUS_Write(uint8 value) 
{
    uint8 staticBits = (USBFS_VBUS_DR & (uint8)(~USBFS_VBUS_MASK));
    USBFS_VBUS_DR = staticBits | ((uint8)(value << USBFS_VBUS_SHIFT) & USBFS_VBUS_MASK);
}


/*******************************************************************************
* Function Name: USBFS_VBUS_SetDriveMode
********************************************************************************
*
* Summary:
*  Change the drive mode on the pins of the port.
* 
* Parameters:  
*  mode:  Change the pins to one of the following drive modes.
*
*  USBFS_VBUS_DM_STRONG     Strong Drive 
*  USBFS_VBUS_DM_OD_HI      Open Drain, Drives High 
*  USBFS_VBUS_DM_OD_LO      Open Drain, Drives Low 
*  USBFS_VBUS_DM_RES_UP     Resistive Pull Up 
*  USBFS_VBUS_DM_RES_DWN    Resistive Pull Down 
*  USBFS_VBUS_DM_RES_UPDWN  Resistive Pull Up/Down 
*  USBFS_VBUS_DM_DIG_HIZ    High Impedance Digital 
*  USBFS_VBUS_DM_ALG_HIZ    High Impedance Analog 
*
* Return: 
*  None
*
*******************************************************************************/
void USBFS_VBUS_SetDriveMode(uint8 mode) 
{
	CyPins_SetPinDriveMode(USBFS_VBUS_0, mode);
}


/*******************************************************************************
* Function Name: USBFS_VBUS_Read
********************************************************************************
*
* Summary:
*  Read the current value on the pins of the Digital Port in right justified 
*  form.
*
* Parameters:  
*  None 
*
* Return: 
*  Returns the current value of the Digital Port as a right justified number
*  
* Note:
*  Macro USBFS_VBUS_ReadPS calls this function. 
*  
*******************************************************************************/
uint8 USBFS_VBUS_Read(void) 
{
    return (USBFS_VBUS_PS & USBFS_VBUS_MASK) >> USBFS_VBUS_SHIFT;
}


/*******************************************************************************
* Function Name: USBFS_VBUS_ReadDataReg
********************************************************************************
*
* Summary:
*  Read the current value assigned to a Digital Port's data output register
*
* Parameters:  
*  None 
*
* Return: 
*  Returns the current value assigned to the Digital Port's data output register
*  
*******************************************************************************/
uint8 USBFS_VBUS_ReadDataReg(void) 
{
    return (USBFS_VBUS_DR & USBFS_VBUS_MASK) >> USBFS_VBUS_SHIFT;
}


/* If Interrupts Are Enabled for this Pins component */ 
#if defined(USBFS_VBUS_INTSTAT) 

    /*******************************************************************************
    * Function Name: USBFS_VBUS_ClearInterrupt
    ********************************************************************************
    *
    * Summary:
    *  Clears any active interrupts attached to port and returns the value of the 
    *  interrupt status register.
    *
    * Parameters:  
    *  None 
    *
    * Return: 
    *  Returns the value of the interrupt status register
    *  
    *******************************************************************************/
    uint8 USBFS_VBUS_ClearInterrupt(void) 
    {
        return (USBFS_VBUS_INTSTAT & USBFS_VBUS_MASK) >> USBFS_VBUS_SHIFT;
    }

#endif /* If Interrupts Are Enabled for this Pins component */ 


/* [] END OF FILE */
