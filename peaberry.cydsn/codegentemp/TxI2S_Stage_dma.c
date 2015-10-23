/***************************************************************************
* File Name: TxI2S_Stage_dma.c  
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
#include <TxI2S_Stage_dma.H>



/****************************************************************************
* 
* The following defines are available in Cyfitter.h
* 
* 
* 
* TxI2S_Stage__DRQ_CTL_REG
* 
* 
* TxI2S_Stage__DRQ_NUMBER
* 
* Number of TD's used by this channel.
* TxI2S_Stage__NUMBEROF_TDS
* 
* Priority of this channel.
* TxI2S_Stage__PRIORITY
* 
* True if TxI2S_Stage_TERMIN_SEL is used.
* TxI2S_Stage__TERMIN_EN
* 
* TERMIN interrupt line to signal terminate.
* TxI2S_Stage__TERMIN_SEL
* 
* 
* True if TxI2S_Stage_TERMOUT0_SEL is used.
* TxI2S_Stage__TERMOUT0_EN
* 
* 
* TERMOUT0 interrupt line to signal completion.
* TxI2S_Stage__TERMOUT0_SEL
* 
* 
* True if TxI2S_Stage_TERMOUT1_SEL is used.
* TxI2S_Stage__TERMOUT1_EN
* 
* 
* TERMOUT1 interrupt line to signal completion.
* TxI2S_Stage__TERMOUT1_SEL
* 
****************************************************************************/


/* Zero based index of TxI2S_Stage dma channel */
uint8 TxI2S_Stage_DmaHandle = DMA_INVALID_CHANNEL;

/*********************************************************************
* Function Name: uint8 TxI2S_Stage_DmaInitalize
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
uint8 TxI2S_Stage_DmaInitialize(uint8 BurstCount, uint8 ReqestPerBurst, uint16 UpperSrcAddress, uint16 UpperDestAddress) 
{

    /* Allocate a DMA channel. */
    TxI2S_Stage_DmaHandle = (uint8)TxI2S_Stage__DRQ_NUMBER;

    /* Configure the channel. */
    (void)CyDmaChSetConfiguration(TxI2S_Stage_DmaHandle,
                                  BurstCount,
                                  ReqestPerBurst,
                                  (uint8)TxI2S_Stage__TERMOUT0_SEL,
                                  (uint8)TxI2S_Stage__TERMOUT1_SEL,
                                  (uint8)TxI2S_Stage__TERMIN_SEL);

    /* Set the extended address for the transfers */
    (void)CyDmaChSetExtendedAddress(TxI2S_Stage_DmaHandle, UpperSrcAddress, UpperDestAddress);

    /* Set the priority for this channel */
    (void)CyDmaChPriority(TxI2S_Stage_DmaHandle, (uint8)TxI2S_Stage__PRIORITY);
    
    return TxI2S_Stage_DmaHandle;
}

/*********************************************************************
* Function Name: void TxI2S_Stage_DmaRelease
**********************************************************************
* Summary:
*   Frees the channel associated with TxI2S_Stage.
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
void TxI2S_Stage_DmaRelease(void) 
{
    /* Disable the channel */
    (void)CyDmaChDisable(TxI2S_Stage_DmaHandle);
}

