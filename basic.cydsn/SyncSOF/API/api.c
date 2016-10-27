// ========================================
// Copyright 2013 David Turnbull AE9RB
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
// ========================================

#include "`$INSTANCE_NAME`_api.h"
#include <device.h>


void `$INSTANCE_NAME`_Start(void) {
    CY_SET_REG8(`$INSTANCE_NAME`_Counter2__CONTROL_AUX_CTL_REG, 0x20);
    CY_SET_REG8(`$INSTANCE_NAME`_Counter1__CONTROL_AUX_CTL_REG, 0x20);
    CY_SET_REG8(`$INSTANCE_NAME`_Counter0__CONTROL_AUX_CTL_REG, 0x20);
}

// Returns the buffer number 0-1 which is to be used for USB DMA
uint8 `$INSTANCE_NAME`_USB_Buffer(void) {
    return CY_GET_REG8(`$INSTANCE_NAME`_BUFFER__STATUS_REG);
}
