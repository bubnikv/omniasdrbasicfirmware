#include "cytypes.h"
#include "`$INSTANCE_NAME`_iambic.h"
//#include "`$INSTANCE_NAME`_defs.h"
//#include "cyfitter.h"


void `$INSTANCE_NAME`_SetSpeed(uint8 val)
{
//    CY_SET_REG8(`$INSTANCE_NAME`_cntr8_D0_PTR,val);
    CY_SET_REG8(`$INSTANCE_NAME`_cntr8_u0__D0_REG,val);
}

uint8 `$INSTANCE_NAME`_GetSpeed()
{
//    return CY_GET_REG8(`$INSTANCE_NAME`_cntr8_D0_PTR);
    return CY_GET_REG8(`$INSTANCE_NAME`_cntr8_u0__D0_REG);
}

void `$INSTANCE_NAME`_SetMode(uint8 val)
{
//    CY_SET_REG8(`$INSTANCE_NAME`_cntr8_D0_PTR,val);
    CY_SET_REG8(`$INSTANCE_NAME`_IAMBIC_CONTROL__CONTROL_REG,val);
}

uint8 `$INSTANCE_NAME`_GetMode()
{
//    return CY_GET_REG8(`$INSTANCE_NAME`_cntr8_D0_PTR);
    return CY_GET_REG8(`$INSTANCE_NAME`_IAMBIC_CONTROL__CONTROL_REG);
}