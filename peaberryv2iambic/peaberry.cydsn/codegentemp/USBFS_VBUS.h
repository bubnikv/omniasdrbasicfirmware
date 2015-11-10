/*******************************************************************************
* File Name: USBFS_VBUS.h  
* Version 2.10
*
* Description:
*  This file containts Control Register function prototypes and register defines
*
* Note:
*
********************************************************************************
* Copyright 2008-2014, Cypress Semiconductor Corporation.  All rights reserved.
* You may use this file only in accordance with the license, terms, conditions, 
* disclaimers, and limitations in the end user license agreement accompanying 
* the software package with which this file was provided.
*******************************************************************************/

#if !defined(CY_PINS_USBFS_VBUS_H) /* Pins USBFS_VBUS_H */
#define CY_PINS_USBFS_VBUS_H

#include "cytypes.h"
#include "cyfitter.h"
#include "cypins.h"
#include "USBFS_VBUS_aliases.h"


/***************************************
*        Function Prototypes             
***************************************/    

void    USBFS_VBUS_Write(uint8 value) ;
void    USBFS_VBUS_SetDriveMode(uint8 mode) ;
uint8   USBFS_VBUS_ReadDataReg(void) ;
uint8   USBFS_VBUS_Read(void) ;
uint8   USBFS_VBUS_ClearInterrupt(void) ;


/***************************************
*           API Constants        
***************************************/

/* Drive Modes */
#define USBFS_VBUS_DM_ALG_HIZ         PIN_DM_ALG_HIZ
#define USBFS_VBUS_DM_DIG_HIZ         PIN_DM_DIG_HIZ
#define USBFS_VBUS_DM_RES_UP          PIN_DM_RES_UP
#define USBFS_VBUS_DM_RES_DWN         PIN_DM_RES_DWN
#define USBFS_VBUS_DM_OD_LO           PIN_DM_OD_LO
#define USBFS_VBUS_DM_OD_HI           PIN_DM_OD_HI
#define USBFS_VBUS_DM_STRONG          PIN_DM_STRONG
#define USBFS_VBUS_DM_RES_UPDWN       PIN_DM_RES_UPDWN

/* Digital Port Constants */
#define USBFS_VBUS_MASK               USBFS_VBUS__MASK
#define USBFS_VBUS_SHIFT              USBFS_VBUS__SHIFT
#define USBFS_VBUS_WIDTH              1u


/***************************************
*             Registers        
***************************************/

/* Main Port Registers */
/* Pin State */
#define USBFS_VBUS_PS                     (* (reg8 *) USBFS_VBUS__PS)
/* Data Register */
#define USBFS_VBUS_DR                     (* (reg8 *) USBFS_VBUS__DR)
/* Port Number */
#define USBFS_VBUS_PRT_NUM                (* (reg8 *) USBFS_VBUS__PRT) 
/* Connect to Analog Globals */                                                  
#define USBFS_VBUS_AG                     (* (reg8 *) USBFS_VBUS__AG)                       
/* Analog MUX bux enable */
#define USBFS_VBUS_AMUX                   (* (reg8 *) USBFS_VBUS__AMUX) 
/* Bidirectional Enable */                                                        
#define USBFS_VBUS_BIE                    (* (reg8 *) USBFS_VBUS__BIE)
/* Bit-mask for Aliased Register Access */
#define USBFS_VBUS_BIT_MASK               (* (reg8 *) USBFS_VBUS__BIT_MASK)
/* Bypass Enable */
#define USBFS_VBUS_BYP                    (* (reg8 *) USBFS_VBUS__BYP)
/* Port wide control signals */                                                   
#define USBFS_VBUS_CTL                    (* (reg8 *) USBFS_VBUS__CTL)
/* Drive Modes */
#define USBFS_VBUS_DM0                    (* (reg8 *) USBFS_VBUS__DM0) 
#define USBFS_VBUS_DM1                    (* (reg8 *) USBFS_VBUS__DM1)
#define USBFS_VBUS_DM2                    (* (reg8 *) USBFS_VBUS__DM2) 
/* Input Buffer Disable Override */
#define USBFS_VBUS_INP_DIS                (* (reg8 *) USBFS_VBUS__INP_DIS)
/* LCD Common or Segment Drive */
#define USBFS_VBUS_LCD_COM_SEG            (* (reg8 *) USBFS_VBUS__LCD_COM_SEG)
/* Enable Segment LCD */
#define USBFS_VBUS_LCD_EN                 (* (reg8 *) USBFS_VBUS__LCD_EN)
/* Slew Rate Control */
#define USBFS_VBUS_SLW                    (* (reg8 *) USBFS_VBUS__SLW)

/* DSI Port Registers */
/* Global DSI Select Register */
#define USBFS_VBUS_PRTDSI__CAPS_SEL       (* (reg8 *) USBFS_VBUS__PRTDSI__CAPS_SEL) 
/* Double Sync Enable */
#define USBFS_VBUS_PRTDSI__DBL_SYNC_IN    (* (reg8 *) USBFS_VBUS__PRTDSI__DBL_SYNC_IN) 
/* Output Enable Select Drive Strength */
#define USBFS_VBUS_PRTDSI__OE_SEL0        (* (reg8 *) USBFS_VBUS__PRTDSI__OE_SEL0) 
#define USBFS_VBUS_PRTDSI__OE_SEL1        (* (reg8 *) USBFS_VBUS__PRTDSI__OE_SEL1) 
/* Port Pin Output Select Registers */
#define USBFS_VBUS_PRTDSI__OUT_SEL0       (* (reg8 *) USBFS_VBUS__PRTDSI__OUT_SEL0) 
#define USBFS_VBUS_PRTDSI__OUT_SEL1       (* (reg8 *) USBFS_VBUS__PRTDSI__OUT_SEL1) 
/* Sync Output Enable Registers */
#define USBFS_VBUS_PRTDSI__SYNC_OUT       (* (reg8 *) USBFS_VBUS__PRTDSI__SYNC_OUT) 


#if defined(USBFS_VBUS__INTSTAT)  /* Interrupt Registers */

    #define USBFS_VBUS_INTSTAT                (* (reg8 *) USBFS_VBUS__INTSTAT)
    #define USBFS_VBUS_SNAP                   (* (reg8 *) USBFS_VBUS__SNAP)

#endif /* Interrupt Registers */

#endif /* End Pins USBFS_VBUS_H */


/* [] END OF FILE */
