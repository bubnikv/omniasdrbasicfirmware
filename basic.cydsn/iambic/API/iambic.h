#if !defined (`$INSTANCE_NAME`_IAMBIC_H)
#define `$INSTANCE_NAME`_IAMBIC_H

#include "cytypes.h"

void `$INSTANCE_NAME`_SetSpeed(uint8);
uint8 `$INSTANCE_NAME`_GetSpeed();

void `$INSTANCE_NAME`_SetMode(uint8);
uint8 `$INSTANCE_NAME`_GetMode();

#ifndef IAMBIC_H
#define IAMBIC_H
#define IAMBIC_MODE_B       (1 << 0)
#define IAMBIC_SKEY         (1 << 1)
#define IAMBIC_AUTOSPACE    (1 << 2)
#define IAMBIC_RST_N        (1 << 7)
#endif

#endif
