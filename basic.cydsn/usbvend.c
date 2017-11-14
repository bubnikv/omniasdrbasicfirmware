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

#include <basic.h>

uint32 result;

// Maps PSoC registers into one that looks like the AVR
uint8 emulated_register(void) {
    uint8 reg = 0, key;
    if (TX_State & TX_PC_REQUESTED) reg |= 0x10;
    key = Status_Read();
    if (key & STATUS_KEY_0) reg |= 0x20;
    if (key & STATUS_KEY_1) reg |= 0x02;
    return reg;
}

uint8 USBFS_HandleVendorRqst(void) 
{
    uint8 requestHandled = USBFS_FALSE;
    uint8 reqType, reqCmd;
    
    reqType = CY_GET_REG8(USBFS_bmRequestType);
    reqCmd = CY_GET_REG8(USBFS_bRequest);

    if ((reqType & USBFS_RQST_DIR_MASK) == USBFS_RQST_DIR_D2H)
    {
        switch (reqCmd)
        {
            case 0x00: // CMD_GET_VERSION
                *(uint16*)&result = FIRMWARE_VERSION; 
                USBFS_currentTD.pData = (void *)&result;
                USBFS_currentTD.count = 2;
                requestHandled  = USBFS_InitControlRead();
                break;
            case 0x02: // CMD_GET_PIN
                // used on the test tab in cfgsr
                *(uint8*)&result = emulated_register();
                result |= 0x08000000; // 3.3v indicator
                USBFS_currentTD.pData = (void *)&result;
                USBFS_currentTD.count = 1;
                requestHandled  = USBFS_InitControlRead();
                break;
            case 0x3A: // CMD_GET_FREQ
                USBFS_currentTD.pData = (void *)&Si570_RX_LO;
                USBFS_currentTD.count = sizeof(Si570_RX_LO);
                requestHandled  = USBFS_InitControlRead();
                break;
            case 0x3C: // CMD_GET_STARTUP
                result = swap32(SI570_STARTUP_FREQ * 0x0200000);
                USBFS_currentTD.pData = (void *)&result;
                USBFS_currentTD.count = sizeof(result);
                requestHandled  = USBFS_InitControlRead();
                break;
            case 0x3D: // CMD_GET_XTAL
                USBFS_currentTD.pData = (void *)&Si570_Xtal;
                USBFS_currentTD.count = sizeof(Si570_Xtal);
                requestHandled  = USBFS_InitControlRead();
                break;
            case 0x3F: // CMD_GET_SI570
                USBFS_currentTD.pData = (void *)(Si570_Buf+2);
                USBFS_currentTD.count = 6;
                requestHandled  = USBFS_InitControlRead();
                break;
            case 0x50: // CMD_SET_USRP1
                if (CY_GET_REG8(USBFS_wValueLo) & 0x01)
                    TX_State |= TX_PC_REQUESTED;
                else
                    TX_State &= ~TX_PC_REQUESTED;
                //nobreak, returns key value
            case 0x51: // CMD_GET_CW_KEY
                *(uint8*)&result = emulated_register();
                USBFS_currentTD.pData = (void *)&result;
                USBFS_currentTD.count = 1;
                requestHandled  = USBFS_InitControlRead();
                break;
            case 0x20: // CMD_SET_SI570
                // Fake a reset!  Used for calibration.
                if (CY_GET_REG8(USBFS_wValueHi) == 0x87 && CY_GET_REG16(USBFS_wIndex) == 0x01) {
                    Si570_Fake_Reset();
                    *(uint8*)&result = 0;
                    USBFS_currentTD.pData = (void *)&result;
                    USBFS_currentTD.count = 1;
                    requestHandled  = USBFS_InitControlRead();
                }
                break;
                
            case 0x2e: // Reading of the AD buttons converter, for testing purposes only.
                *(uint8*)&result = ADC_Buttons_Read8();
                USBFS_currentTD.pData = (void *)&result;
                USBFS_currentTD.count = 1;
                requestHandled  = USBFS_InitControlRead();
                break;
            case 0x61: // CMD_GET_CW_TX_FREQ
                USBFS_currentTD.pData = (void *)&Si570_TX_LO;
                USBFS_currentTD.count = sizeof(Si570_TX_LO);
                requestHandled  = USBFS_InitControlRead();
                break;
        }
    }
    if ((reqType & USBFS_RQST_DIR_MASK) == USBFS_RQST_DIR_H2D)
    {
        switch (reqCmd)
        {
            case 0x30: // CMD_SET_FREQ_REG
                USBFS_currentTD.pData = (void *)&Si570_FreqReg_Deprecated;
                USBFS_currentTD.count = 6;
                requestHandled  = USBFS_InitControlWrite();
                break;
            case 0x32: // CMD_SET_FREQ
                USBFS_currentTD.pData = (void *)&Si570_RX_LO;
                USBFS_currentTD.count = sizeof(Si570_RX_LO);
                requestHandled  = USBFS_InitControlWrite();
                break;
            case 0x33: // CMD_SET_XTAL
                USBFS_currentTD.pData = (void *)&Si570_Xtal;
                USBFS_currentTD.count = sizeof(Si570_Xtal);
                requestHandled  = USBFS_InitControlWrite();
                break;
            case 0x60: // CMD_SET_CW_TX_FREQ
                USBFS_currentTD.pData = (void *)&Si570_TX_LO;
                USBFS_currentTD.count = sizeof(Si570_TX_LO);
                requestHandled  = USBFS_InitControlWrite();
                break;
            case 0x65: // CMD_SET_CW_KEYER_SPEED
                USBFS_currentTD.pData = (void *)&keyer_cntr;
                USBFS_currentTD.count = 1;
                requestHandled  = USBFS_InitControlWrite();
                break;
            case 0x66: // CMD_SET_CW_KEYER_MODE
                USBFS_currentTD.pData = (void *)&keyer_mode;
                USBFS_currentTD.count = 1;
                requestHandled  = USBFS_InitControlWrite();
                break;
        }
    }

    return(requestHandled);
}

