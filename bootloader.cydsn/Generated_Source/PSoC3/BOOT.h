/*******************************************************************************
* File Name: BOOT.h  
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

#if !defined(CY_PINS_BOOT_H) /* Pins BOOT_H */
#define CY_PINS_BOOT_H

#include "cytypes.h"
#include "cyfitter.h"
#include "cypins.h"
#include "BOOT_aliases.h"


/***************************************
*        Function Prototypes             
***************************************/    

void    BOOT_Write(uint8 value) ;
void    BOOT_SetDriveMode(uint8 mode) ;
uint8   BOOT_ReadDataReg(void) ;
uint8   BOOT_Read(void) ;
uint8   BOOT_ClearInterrupt(void) ;


/***************************************
*           API Constants        
***************************************/

/* Drive Modes */
#define BOOT_DM_ALG_HIZ         PIN_DM_ALG_HIZ
#define BOOT_DM_DIG_HIZ         PIN_DM_DIG_HIZ
#define BOOT_DM_RES_UP          PIN_DM_RES_UP
#define BOOT_DM_RES_DWN         PIN_DM_RES_DWN
#define BOOT_DM_OD_LO           PIN_DM_OD_LO
#define BOOT_DM_OD_HI           PIN_DM_OD_HI
#define BOOT_DM_STRONG          PIN_DM_STRONG
#define BOOT_DM_RES_UPDWN       PIN_DM_RES_UPDWN

/* Digital Port Constants */
#define BOOT_MASK               BOOT__MASK
#define BOOT_SHIFT              BOOT__SHIFT
#define BOOT_WIDTH              1u


/***************************************
*             Registers        
***************************************/

/* Main Port Registers */
/* Pin State */
#define BOOT_PS                     (* (reg8 *) BOOT__PS)
/* Data Register */
#define BOOT_DR                     (* (reg8 *) BOOT__DR)
/* Port Number */
#define BOOT_PRT_NUM                (* (reg8 *) BOOT__PRT) 
/* Connect to Analog Globals */                                                  
#define BOOT_AG                     (* (reg8 *) BOOT__AG)                       
/* Analog MUX bux enable */
#define BOOT_AMUX                   (* (reg8 *) BOOT__AMUX) 
/* Bidirectional Enable */                                                        
#define BOOT_BIE                    (* (reg8 *) BOOT__BIE)
/* Bit-mask for Aliased Register Access */
#define BOOT_BIT_MASK               (* (reg8 *) BOOT__BIT_MASK)
/* Bypass Enable */
#define BOOT_BYP                    (* (reg8 *) BOOT__BYP)
/* Port wide control signals */                                                   
#define BOOT_CTL                    (* (reg8 *) BOOT__CTL)
/* Drive Modes */
#define BOOT_DM0                    (* (reg8 *) BOOT__DM0) 
#define BOOT_DM1                    (* (reg8 *) BOOT__DM1)
#define BOOT_DM2                    (* (reg8 *) BOOT__DM2) 
/* Input Buffer Disable Override */
#define BOOT_INP_DIS                (* (reg8 *) BOOT__INP_DIS)
/* LCD Common or Segment Drive */
#define BOOT_LCD_COM_SEG            (* (reg8 *) BOOT__LCD_COM_SEG)
/* Enable Segment LCD */
#define BOOT_LCD_EN                 (* (reg8 *) BOOT__LCD_EN)
/* Slew Rate Control */
#define BOOT_SLW                    (* (reg8 *) BOOT__SLW)

/* DSI Port Registers */
/* Global DSI Select Register */
#define BOOT_PRTDSI__CAPS_SEL       (* (reg8 *) BOOT__PRTDSI__CAPS_SEL) 
/* Double Sync Enable */
#define BOOT_PRTDSI__DBL_SYNC_IN    (* (reg8 *) BOOT__PRTDSI__DBL_SYNC_IN) 
/* Output Enable Select Drive Strength */
#define BOOT_PRTDSI__OE_SEL0        (* (reg8 *) BOOT__PRTDSI__OE_SEL0) 
#define BOOT_PRTDSI__OE_SEL1        (* (reg8 *) BOOT__PRTDSI__OE_SEL1) 
/* Port Pin Output Select Registers */
#define BOOT_PRTDSI__OUT_SEL0       (* (reg8 *) BOOT__PRTDSI__OUT_SEL0) 
#define BOOT_PRTDSI__OUT_SEL1       (* (reg8 *) BOOT__PRTDSI__OUT_SEL1) 
/* Sync Output Enable Registers */
#define BOOT_PRTDSI__SYNC_OUT       (* (reg8 *) BOOT__PRTDSI__SYNC_OUT) 


#if defined(BOOT__INTSTAT)  /* Interrupt Registers */

    #define BOOT_INTSTAT                (* (reg8 *) BOOT__INTSTAT)
    #define BOOT_SNAP                   (* (reg8 *) BOOT__SNAP)

#endif /* Interrupt Registers */

#endif /* End Pins BOOT_H */


/* [] END OF FILE */
