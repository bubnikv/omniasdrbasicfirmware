/*******************************************************************************
* File Name: cyfitter_cfg.h
* 
* PSoC Creator  3.3
*
* Description:
* This file provides basic startup and mux configration settings
* This file is automatically generated by PSoC Creator.
*
********************************************************************************
* Copyright (c) 2007-2015 Cypress Semiconductor.  All rights reserved.
* You may use this file only in accordance with the license, terms, conditions, 
* disclaimers, and limitations in the end user license agreement accompanying 
* the software package with which this file was provided.
********************************************************************************/

#ifndef CYFITTER_CFG_H
#define CYFITTER_CFG_H

#include "cytypes.h"

extern void cyfitter_cfg(void);

/* For internal use in cyfitter_cfg */
#ifndef CYCONFIGCPY_DECLARED
	extern void cymemzero(void CYFAR *addr, uint16 size);
	extern void cyconfigcpy(uint16 size, const void CYFAR *src, void CYFAR *dest) small;
	extern void cyconfigcpycode(uint16 size, const void CYCODE *src, void CYFAR *dest);
#endif

/* For internal use in cyfitter_cfg */
extern void cfg_write_bytes_code(const void CYCODE *table);
/* For internal use in cyfitter_cfg */
extern void cfg_write_bytes(const void CYFAR *table);
/* Analog Set/Unset methods */
extern void SetAnalogRoutingPumps(uint8 enabled);


#endif /* CYFITTER_CFG_H */

/*[]*/
