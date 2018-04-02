#include "`$INSTANCE_NAME`_api.h"
#include <device.h>

void `$INSTANCE_NAME`_Start(void) 
{
    // Reset the counter.
    CY_SET_REG8(`$INSTANCE_NAME`_Datapath_1_u0__16BIT_A0_REG, 0);
    CY_SET_REG8(`$INSTANCE_NAME`_Datapath_1_u2__16BIT_A0_REG, 0);
    // Reset the delay to a single tick.
    CY_SET_REG8(`$INSTANCE_NAME`_Datapath_1_u0__16BIT_D1_REG, 1);
    CY_SET_REG8(`$INSTANCE_NAME`_Datapath_1_u2__16BIT_D1_REG, 0);
    CY_SET_REG8(`$INSTANCE_NAME`_Datapath_1_u0__16BIT_D0_REG, 1);
    CY_SET_REG8(`$INSTANCE_NAME`_Datapath_1_u2__16BIT_D0_REG, 0);
}

void `$INSTANCE_NAME`_SetDelay(int8 delay)
{
    uint32 high = 1 << delay;
    uint32 mask = high - 1;
    // Reset the counter.
    CY_SET_REG16(`$INSTANCE_NAME`_Datapath_1_u0__16BIT_A0_REG, 0);
    CY_SET_REG16(`$INSTANCE_NAME`_Datapath_1_u2__16BIT_A0_REG, 0);
#if 1
    // Set the length of a shift register by a mask.
    CY_SET_REG16(`$INSTANCE_NAME`_Datapath_1_u0__16BIT_D1_REG, mask & 0x0ffff);
    CY_SET_REG16(`$INSTANCE_NAME`_Datapath_1_u1__16BIT_D1_REG, mask >> 16);
    // Set the highest bit of the shift register. This is the output of the shift register.
    CY_SET_REG16(`$INSTANCE_NAME`_Datapath_1_u0__16BIT_D0_REG, high & 0x0ffff);
    CY_SET_REG16(`$INSTANCE_NAME`_Datapath_1_u1__16BIT_D0_REG, high >> 16);
#else
    // Set the length of a shift register by a mask.
    CY_SET_REG16(`$INSTANCE_NAME`_Datapath_1_u2__16BIT_D1_REG, mask & 0x0ffff);
    CY_SET_REG16(`$INSTANCE_NAME`_Datapath_1_u0__16BIT_D1_REG, mask >> 16);
    // Set the highest bit of the shift register. This is the output of the shift register.
    CY_SET_REG16(`$INSTANCE_NAME`_Datapath_1_u2__16BIT_D0_REG, high & 0x0ffff);
    CY_SET_REG16(`$INSTANCE_NAME`_Datapath_1_u0__16BIT_D0_REG, high >> 16);
#endif
}
