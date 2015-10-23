/******************************************************************************
* File Name: RxI2S_Buff_dma.h  
* Version 1.70
*
*  Description:
*   Provides the function definitions for the DMA Controller.
*
*
********************************************************************************
* Copyright 2008-2010, Cypress Semiconductor Corporation.  All rights reserved.
* You may use this file only in accordance with the license, terms, conditions, 
* disclaimers, and limitations in the end user license agreement accompanying 
* the software package with which this file was provided.
********************************************************************************/
#if !defined(CY_DMA_RxI2S_Buff_DMA_H__)
#define CY_DMA_RxI2S_Buff_DMA_H__



#include <CYDMAC.H>
#include <CYFITTER.H>

#define RxI2S_Buff__TD_TERMOUT_EN (((0 != RxI2S_Buff__TERMOUT0_EN) ? TD_TERMOUT0_EN : 0) | \
    (RxI2S_Buff__TERMOUT1_EN ? TD_TERMOUT1_EN : 0))

/* Zero based index of RxI2S_Buff dma channel */
extern uint8 RxI2S_Buff_DmaHandle;


uint8 RxI2S_Buff_DmaInitialize(uint8 BurstCount, uint8 ReqestPerBurst, uint16 UpperSrcAddress, uint16 UpperDestAddress) ;
void  RxI2S_Buff_DmaRelease(void) ;


/* CY_DMA_RxI2S_Buff_DMA_H__ */
#endif
