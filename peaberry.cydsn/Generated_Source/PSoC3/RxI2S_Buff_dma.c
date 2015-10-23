/***************************************************************************
* File Name: RxI2S_Buff_dma.c  
* Version 1.70
*
*  Description:
*   Provides an API for the DMAC component. The API includes functions
*   for the DMA controller, DMA channels and Transfer Descriptors.
*
*
*   Note:
*     This module requires the developer to finish or fill in the auto
*     generated funcions and setup the dma channel and TD's.
*
********************************************************************************
* Copyright 2008-2010, Cypress Semiconductor Corporation.  All rights reserved.
* You may use this file only in accordance with the license, terms, conditions, 
* disclaimers, and limitations in the end user license agreement accompanying 
* the software package with which this file was provided.
********************************************************************************/
#include <CYLIB.H>
#include <CYDMAC.H>
#include <RxI2S_Buff_dma.H>



/****************************************************************************
* 
* The following defines are available in Cyfitter.h
* 
* 
* 
* RxI2S_Buff__DRQ_CTL_REG
* 
* 
* RxI2S_Buff__DRQ_NUMBER
* 
* Number of TD's used by this channel.
* RxI2S_Buff__NUMBEROF_TDS
* 
* Priority of this channel.
* RxI2S_Buff__PRIORITY
* 
* True if RxI2S_Buff_TERMIN_SEL is used.
* RxI2S_Buff__TERMIN_EN
* 
* TERMIN interrupt line to signal terminate.
* RxI2S_Buff__TERMIN_SEL
* 
* 
* True if RxI2S_Buff_TERMOUT0_SEL is used.
* RxI2S_Buff__TERMOUT0_EN
* 
* 
* TERMOUT0 interrupt line to signal completion.
* RxI2S_Buff__TERMOUT0_SEL
* 
* 
* True if RxI2S_Buff_TERMOUT1_SEL is used.
* RxI2S_Buff__TERMOUT1_EN
* 
* 
* TERMOUT1 interrupt line to signal completion.
* RxI2S_Buff__TERMOUT1_SEL
* 
****************************************************************************/


/* Zero based index of RxI2S_Buff dma channel */
uint8 RxI2S_Buff_DmaHandle = DMA_INVALID_CHANNEL;

/*********************************************************************
* Function Name: uint8 RxI2S_Buff_DmaInitalize
**********************************************************************
* Summary:
*   Allocates and initialises a channel of the DMAC to be used by the
*   caller.
*
* Parameters:
*   BurstCount.
*       
*       
*   ReqestPerBurst.
*       
*       
*   UpperSrcAddress.
*       
*       
*   UpperDestAddress.
*       
*
* Return:
*   The channel that can be used by the caller for DMA activity.
*   DMA_INVALID_CHANNEL (0xFF) if there are no channels left. 
*
*
*******************************************************************/
uint8 RxI2S_Buff_DmaInitialize(uint8 BurstCount, uint8 ReqestPerBurst, uint16 UpperSrcAddress, uint16 UpperDestAddress) 
{

    /* Allocate a DMA channel. */
    RxI2S_Buff_DmaHandle = (uint8)RxI2S_Buff__DRQ_NUMBER;

    /* Configure the channel. */
    (void)CyDmaChSetConfiguration(RxI2S_Buff_DmaHandle,
                                  BurstCount,
                                  ReqestPerBurst,
                                  (uint8)RxI2S_Buff__TERMOUT0_SEL,
                                  (uint8)RxI2S_Buff__TERMOUT1_SEL,
                                  (uint8)RxI2S_Buff__TERMIN_SEL);

    /* Set the extended address for the transfers */
    (void)CyDmaChSetExtendedAddress(RxI2S_Buff_DmaHandle, UpperSrcAddress, UpperDestAddress);

    /* Set the priority for this channel */
    (void)CyDmaChPriority(RxI2S_Buff_DmaHandle, (uint8)RxI2S_Buff__PRIORITY);
    
    return RxI2S_Buff_DmaHandle;
}

/*********************************************************************
* Function Name: void RxI2S_Buff_DmaRelease
**********************************************************************
* Summary:
*   Frees the channel associated with RxI2S_Buff.
*
*
* Parameters:
*   void.
*
*
*
* Return:
*   void.
*
*******************************************************************/
void RxI2S_Buff_DmaRelease(void) 
{
    /* Disable the channel */
    (void)CyDmaChDisable(RxI2S_Buff_DmaHandle);
}

