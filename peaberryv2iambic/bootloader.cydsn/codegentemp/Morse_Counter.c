/*******************************************************************************
* File Name: Morse_Counter.c  
* Version 3.0
*
*  Description:
*     The Counter component consists of a 8, 16, 24 or 32-bit counter with
*     a selectable period between 2 and 2^Width - 1.  
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

uint8 Morse_Counter_initVar = 0u;


/*******************************************************************************
* Function Name: Morse_Counter_Init
********************************************************************************
* Summary:
*     Initialize to the schematic state
* 
* Parameters:  
*  void  
*
* Return: 
*  void
*
*******************************************************************************/
void Morse_Counter_Init(void) 
{
        #if (!Morse_Counter_UsingFixedFunction && !Morse_Counter_ControlRegRemoved)
            uint8 ctrl;
        #endif /* (!Morse_Counter_UsingFixedFunction && !Morse_Counter_ControlRegRemoved) */
        
        #if(!Morse_Counter_UsingFixedFunction) 
            /* Interrupt State Backup for Critical Region*/
            uint8 Morse_Counter_interruptState;
        #endif /* (!Morse_Counter_UsingFixedFunction) */
        
        #if (Morse_Counter_UsingFixedFunction)
            /* Clear all bits but the enable bit (if it's already set for Timer operation */
            Morse_Counter_CONTROL &= Morse_Counter_CTRL_ENABLE;
            
            /* Clear the mode bits for continuous run mode */
            #if (CY_PSOC5A)
                Morse_Counter_CONTROL2 &= ((uint8)(~Morse_Counter_CTRL_MODE_MASK));
            #endif /* (CY_PSOC5A) */
            #if (CY_PSOC3 || CY_PSOC5LP)
                Morse_Counter_CONTROL3 &= ((uint8)(~Morse_Counter_CTRL_MODE_MASK));                
            #endif /* (CY_PSOC3 || CY_PSOC5LP) */
            /* Check if One Shot mode is enabled i.e. RunMode !=0*/
            #if (Morse_Counter_RunModeUsed != 0x0u)
                /* Set 3rd bit of Control register to enable one shot mode */
                Morse_Counter_CONTROL |= Morse_Counter_ONESHOT;
            #endif /* (Morse_Counter_RunModeUsed != 0x0u) */
            
            /* Set the IRQ to use the status register interrupts */
            Morse_Counter_CONTROL2 |= Morse_Counter_CTRL2_IRQ_SEL;
            
            /* Clear and Set SYNCTC and SYNCCMP bits of RT1 register */
            Morse_Counter_RT1 &= ((uint8)(~Morse_Counter_RT1_MASK));
            Morse_Counter_RT1 |= Morse_Counter_SYNC;     
                    
            /*Enable DSI Sync all all inputs of the Timer*/
            Morse_Counter_RT1 &= ((uint8)(~Morse_Counter_SYNCDSI_MASK));
            Morse_Counter_RT1 |= Morse_Counter_SYNCDSI_EN;

        #else
            #if(!Morse_Counter_ControlRegRemoved)
            /* Set the default compare mode defined in the parameter */
            ctrl = Morse_Counter_CONTROL & ((uint8)(~Morse_Counter_CTRL_CMPMODE_MASK));
            Morse_Counter_CONTROL = ctrl | Morse_Counter_DEFAULT_COMPARE_MODE;
            
            /* Set the default capture mode defined in the parameter */
            ctrl = Morse_Counter_CONTROL & ((uint8)(~Morse_Counter_CTRL_CAPMODE_MASK));
            
            #if( 0 != Morse_Counter_CAPTURE_MODE_CONF)
                Morse_Counter_CONTROL = ctrl | Morse_Counter_DEFAULT_CAPTURE_MODE;
            #else
                Morse_Counter_CONTROL = ctrl;
            #endif /* 0 != Morse_Counter_CAPTURE_MODE */ 
            
            #endif /* (!Morse_Counter_ControlRegRemoved) */
        #endif /* (Morse_Counter_UsingFixedFunction) */
        
        /* Clear all data in the FIFO's */
        #if (!Morse_Counter_UsingFixedFunction)
            Morse_Counter_ClearFIFO();
        #endif /* (!Morse_Counter_UsingFixedFunction) */
        
        /* Set Initial values from Configuration */
        Morse_Counter_WritePeriod(Morse_Counter_INIT_PERIOD_VALUE);
        #if (!(Morse_Counter_UsingFixedFunction && (CY_PSOC5A)))
            Morse_Counter_WriteCounter(Morse_Counter_INIT_COUNTER_VALUE);
        #endif /* (!(Morse_Counter_UsingFixedFunction && (CY_PSOC5A))) */
        Morse_Counter_SetInterruptMode(Morse_Counter_INIT_INTERRUPTS_MASK);
        
        #if (!Morse_Counter_UsingFixedFunction)
            /* Read the status register to clear the unwanted interrupts */
            (void)Morse_Counter_ReadStatusRegister();
            /* Set the compare value (only available to non-fixed function implementation */
            Morse_Counter_WriteCompare(Morse_Counter_INIT_COMPARE_VALUE);
            /* Use the interrupt output of the status register for IRQ output */
            
            /* CyEnterCriticalRegion and CyExitCriticalRegion are used to mark following region critical*/
            /* Enter Critical Region*/
            Morse_Counter_interruptState = CyEnterCriticalSection();
            
            Morse_Counter_STATUS_AUX_CTRL |= Morse_Counter_STATUS_ACTL_INT_EN_MASK;
            
            /* Exit Critical Region*/
            CyExitCriticalSection(Morse_Counter_interruptState);
            
        #endif /* (!Morse_Counter_UsingFixedFunction) */
}


/*******************************************************************************
* Function Name: Morse_Counter_Enable
********************************************************************************
* Summary:
*     Enable the Counter
* 
* Parameters:  
*  void  
*
* Return: 
*  void
*
* Side Effects: 
*   If the Enable mode is set to Hardware only then this function has no effect 
*   on the operation of the counter.
*
*******************************************************************************/
void Morse_Counter_Enable(void) 
{
    /* Globally Enable the Fixed Function Block chosen */
    #if (Morse_Counter_UsingFixedFunction)
        Morse_Counter_GLOBAL_ENABLE |= Morse_Counter_BLOCK_EN_MASK;
        Morse_Counter_GLOBAL_STBY_ENABLE |= Morse_Counter_BLOCK_STBY_EN_MASK;
    #endif /* (Morse_Counter_UsingFixedFunction) */  
        
    /* Enable the counter from the control register  */
    /* If Fixed Function then make sure Mode is set correctly */
    /* else make sure reset is clear */
    #if(!Morse_Counter_ControlRegRemoved || Morse_Counter_UsingFixedFunction)
        Morse_Counter_CONTROL |= Morse_Counter_CTRL_ENABLE;                
    #endif /* (!Morse_Counter_ControlRegRemoved || Morse_Counter_UsingFixedFunction) */
    
}


/*******************************************************************************
* Function Name: Morse_Counter_Start
********************************************************************************
* Summary:
*  Enables the counter for operation 
*
* Parameters:  
*  void  
*
* Return: 
*  void
*
* Global variables:
*  Morse_Counter_initVar: Is modified when this function is called for the  
*   first time. Is used to ensure that initialization happens only once.
*
*******************************************************************************/
void Morse_Counter_Start(void) 
{
    if(Morse_Counter_initVar == 0u)
    {
        Morse_Counter_Init();
        
        Morse_Counter_initVar = 1u; /* Clear this bit for Initialization */        
    }
    
    /* Enable the Counter */
    Morse_Counter_Enable();        
}


/*******************************************************************************
* Function Name: Morse_Counter_Stop
********************************************************************************
* Summary:
* Halts the counter, but does not change any modes or disable interrupts.
*
* Parameters:  
*  void  
*
* Return: 
*  void
*
* Side Effects: If the Enable mode is set to Hardware only then this function
*               has no effect on the operation of the counter.
*
*******************************************************************************/
void Morse_Counter_Stop(void) 
{
    /* Disable Counter */
    #if(!Morse_Counter_ControlRegRemoved || Morse_Counter_UsingFixedFunction)
        Morse_Counter_CONTROL &= ((uint8)(~Morse_Counter_CTRL_ENABLE));        
    #endif /* (!Morse_Counter_ControlRegRemoved || Morse_Counter_UsingFixedFunction) */
    
    /* Globally disable the Fixed Function Block chosen */
    #if (Morse_Counter_UsingFixedFunction)
        Morse_Counter_GLOBAL_ENABLE &= ((uint8)(~Morse_Counter_BLOCK_EN_MASK));
        Morse_Counter_GLOBAL_STBY_ENABLE &= ((uint8)(~Morse_Counter_BLOCK_STBY_EN_MASK));
    #endif /* (Morse_Counter_UsingFixedFunction) */
}


/*******************************************************************************
* Function Name: Morse_Counter_SetInterruptMode
********************************************************************************
* Summary:
* Configures which interrupt sources are enabled to generate the final interrupt
*
* Parameters:  
*  InterruptsMask: This parameter is an or'd collection of the status bits
*                   which will be allowed to generate the counters interrupt.   
*
* Return: 
*  void
*
*******************************************************************************/
void Morse_Counter_SetInterruptMode(uint8 interruptsMask) 
{
    Morse_Counter_STATUS_MASK = interruptsMask;
}


/*******************************************************************************
* Function Name: Morse_Counter_ReadStatusRegister
********************************************************************************
* Summary:
*   Reads the status register and returns it's state. This function should use
*       defined types for the bit-field information as the bits in this
*       register may be permuteable.
*
* Parameters:  
*  void
*
* Return: 
*  (uint8) The contents of the status register
*
* Side Effects:
*   Status register bits may be clear on read. 
*
*******************************************************************************/
uint8   Morse_Counter_ReadStatusRegister(void) 
{
    return Morse_Counter_STATUS;
}


#if(!Morse_Counter_ControlRegRemoved)
/*******************************************************************************
* Function Name: Morse_Counter_ReadControlRegister
********************************************************************************
* Summary:
*   Reads the control register and returns it's state. This function should use
*       defined types for the bit-field information as the bits in this
*       register may be permuteable.
*
* Parameters:  
*  void
*
* Return: 
*  (uint8) The contents of the control register
*
*******************************************************************************/
uint8   Morse_Counter_ReadControlRegister(void) 
{
    return Morse_Counter_CONTROL;
}


/*******************************************************************************
* Function Name: Morse_Counter_WriteControlRegister
********************************************************************************
* Summary:
*   Sets the bit-field of the control register.  This function should use
*       defined types for the bit-field information as the bits in this
*       register may be permuteable.
*
* Parameters:  
*  void
*
* Return: 
*  (uint8) The contents of the control register
*
*******************************************************************************/
void    Morse_Counter_WriteControlRegister(uint8 control) 
{
    Morse_Counter_CONTROL = control;
}

#endif  /* (!Morse_Counter_ControlRegRemoved) */


#if (!(Morse_Counter_UsingFixedFunction && (CY_PSOC5A)))
/*******************************************************************************
* Function Name: Morse_Counter_WriteCounter
********************************************************************************
* Summary:
*   This funtion is used to set the counter to a specific value
*
* Parameters:  
*  counter:  New counter value. 
*
* Return: 
*  void 
*
*******************************************************************************/
void Morse_Counter_WriteCounter(uint8 counter) \
                                   
{
    #if(Morse_Counter_UsingFixedFunction)
        /* assert if block is already enabled */
        CYASSERT (0u == (Morse_Counter_GLOBAL_ENABLE & Morse_Counter_BLOCK_EN_MASK));
        /* If block is disabled, enable it and then write the counter */
        Morse_Counter_GLOBAL_ENABLE |= Morse_Counter_BLOCK_EN_MASK;
        CY_SET_REG16(Morse_Counter_COUNTER_LSB_PTR, (uint16)counter);
        Morse_Counter_GLOBAL_ENABLE &= ((uint8)(~Morse_Counter_BLOCK_EN_MASK));
    #else
        CY_SET_REG8(Morse_Counter_COUNTER_LSB_PTR, counter);
    #endif /* (Morse_Counter_UsingFixedFunction) */
}
#endif /* (!(Morse_Counter_UsingFixedFunction && (CY_PSOC5A))) */


/*******************************************************************************
* Function Name: Morse_Counter_ReadCounter
********************************************************************************
* Summary:
* Returns the current value of the counter.  It doesn't matter
* if the counter is enabled or running.
*
* Parameters:  
*  void:  
*
* Return: 
*  (uint8) The present value of the counter.
*
*******************************************************************************/
uint8 Morse_Counter_ReadCounter(void) 
{
    /* Force capture by reading Accumulator */
    /* Must first do a software capture to be able to read the counter */
    /* It is up to the user code to make sure there isn't already captured data in the FIFO */
    #if(Morse_Counter_UsingFixedFunction)
		(void)CY_GET_REG16(Morse_Counter_COUNTER_LSB_PTR);
	#else
		(void)CY_GET_REG8(Morse_Counter_COUNTER_LSB_PTR_8BIT);
	#endif/* (Morse_Counter_UsingFixedFunction) */
    
    /* Read the data from the FIFO (or capture register for Fixed Function)*/
    #if(Morse_Counter_UsingFixedFunction)
        return ((uint8)CY_GET_REG16(Morse_Counter_STATICCOUNT_LSB_PTR));
    #else
        return (CY_GET_REG8(Morse_Counter_STATICCOUNT_LSB_PTR));
    #endif /* (Morse_Counter_UsingFixedFunction) */
}


/*******************************************************************************
* Function Name: Morse_Counter_ReadCapture
********************************************************************************
* Summary:
*   This function returns the last value captured.
*
* Parameters:  
*  void
*
* Return: 
*  (uint8) Present Capture value.
*
*******************************************************************************/
uint8 Morse_Counter_ReadCapture(void) 
{
    #if(Morse_Counter_UsingFixedFunction)
        return ((uint8)CY_GET_REG16(Morse_Counter_STATICCOUNT_LSB_PTR));
    #else
        return (CY_GET_REG8(Morse_Counter_STATICCOUNT_LSB_PTR));
    #endif /* (Morse_Counter_UsingFixedFunction) */
}


/*******************************************************************************
* Function Name: Morse_Counter_WritePeriod
********************************************************************************
* Summary:
* Changes the period of the counter.  The new period 
* will be loaded the next time terminal count is detected.
*
* Parameters:  
*  period: (uint8) A value of 0 will result in
*         the counter remaining at zero.  
*
* Return: 
*  void
*
*******************************************************************************/
void Morse_Counter_WritePeriod(uint8 period) 
{
    #if(Morse_Counter_UsingFixedFunction)
        CY_SET_REG16(Morse_Counter_PERIOD_LSB_PTR,(uint16)period);
    #else
        CY_SET_REG8(Morse_Counter_PERIOD_LSB_PTR, period);
    #endif /* (Morse_Counter_UsingFixedFunction) */
}


/*******************************************************************************
* Function Name: Morse_Counter_ReadPeriod
********************************************************************************
* Summary:
* Reads the current period value without affecting counter operation.
*
* Parameters:  
*  void:  
*
* Return: 
*  (uint8) Present period value.
*
*******************************************************************************/
uint8 Morse_Counter_ReadPeriod(void) 
{
    #if(Morse_Counter_UsingFixedFunction)
        return ((uint8)CY_GET_REG16(Morse_Counter_PERIOD_LSB_PTR));
    #else
        return (CY_GET_REG8(Morse_Counter_PERIOD_LSB_PTR));
    #endif /* (Morse_Counter_UsingFixedFunction) */
}


#if (!Morse_Counter_UsingFixedFunction)
/*******************************************************************************
* Function Name: Morse_Counter_WriteCompare
********************************************************************************
* Summary:
* Changes the compare value.  The compare output will 
* reflect the new value on the next UDB clock.  The compare output will be 
* driven high when the present counter value compares true based on the 
* configured compare mode setting. 
*
* Parameters:  
*  Compare:  New compare value. 
*
* Return: 
*  void
*
*******************************************************************************/
void Morse_Counter_WriteCompare(uint8 compare) \
                                   
{
    #if(Morse_Counter_UsingFixedFunction)
        CY_SET_REG16(Morse_Counter_COMPARE_LSB_PTR, (uint16)compare);
    #else
        CY_SET_REG8(Morse_Counter_COMPARE_LSB_PTR, compare);
    #endif /* (Morse_Counter_UsingFixedFunction) */
}


/*******************************************************************************
* Function Name: Morse_Counter_ReadCompare
********************************************************************************
* Summary:
* Returns the compare value.
*
* Parameters:  
*  void:
*
* Return: 
*  (uint8) Present compare value.
*
*******************************************************************************/
uint8 Morse_Counter_ReadCompare(void) 
{
    return (CY_GET_REG8(Morse_Counter_COMPARE_LSB_PTR));
}


#if (Morse_Counter_COMPARE_MODE_SOFTWARE)
/*******************************************************************************
* Function Name: Morse_Counter_SetCompareMode
********************************************************************************
* Summary:
*  Sets the software controlled Compare Mode.
*
* Parameters:
*  compareMode:  Compare Mode Enumerated Type.
*
* Return:
*  void
*
*******************************************************************************/
void Morse_Counter_SetCompareMode(uint8 compareMode) 
{
    /* Clear the compare mode bits in the control register */
    Morse_Counter_CONTROL &= ((uint8)(~Morse_Counter_CTRL_CMPMODE_MASK));
    
    /* Write the new setting */
    Morse_Counter_CONTROL |= compareMode;
}
#endif  /* (Morse_Counter_COMPARE_MODE_SOFTWARE) */


#if (Morse_Counter_CAPTURE_MODE_SOFTWARE)
/*******************************************************************************
* Function Name: Morse_Counter_SetCaptureMode
********************************************************************************
* Summary:
*  Sets the software controlled Capture Mode.
*
* Parameters:
*  captureMode:  Capture Mode Enumerated Type.
*
* Return:
*  void
*
*******************************************************************************/
void Morse_Counter_SetCaptureMode(uint8 captureMode) 
{
    /* Clear the capture mode bits in the control register */
    Morse_Counter_CONTROL &= ((uint8)(~Morse_Counter_CTRL_CAPMODE_MASK));
    
    /* Write the new setting */
    Morse_Counter_CONTROL |= ((uint8)((uint8)captureMode << Morse_Counter_CTRL_CAPMODE0_SHIFT));
}
#endif  /* (Morse_Counter_CAPTURE_MODE_SOFTWARE) */


/*******************************************************************************
* Function Name: Morse_Counter_ClearFIFO
********************************************************************************
* Summary:
*   This function clears all capture data from the capture FIFO
*
* Parameters:  
*  void:
*
* Return: 
*  None
*
*******************************************************************************/
void Morse_Counter_ClearFIFO(void) 
{

    while(0u != (Morse_Counter_ReadStatusRegister() & Morse_Counter_STATUS_FIFONEMP))
    {
        (void)Morse_Counter_ReadCapture();
    }

}
#endif  /* (!Morse_Counter_UsingFixedFunction) */


/* [] END OF FILE */

