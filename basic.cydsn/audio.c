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
#include <iqhump.h>

// Constants from our USBFS enumeration
#define RX_ENDPOINT     2
#define RX_INTERFACE    2
#define TX_ENDPOINT     3
#define TX_INTERFACE    3

// IQ Reversal option
// 0: RX=norm TX=norm
// 1: RX=rev TX=norm
// 2: RX=norm TX=rev
// 3: RX=rev TX=rev
uint8 Audio_IQ_Channels;

// This implements similar logic as USBFS_LoadInEP.
void Audio_USB_LoadInEP(uint8 epNumber, uint8 *pData, uint16 length)
{
    uint8 ri, td_config;
    uint8 *p;

    ri = ((epNumber - USBFS_EP1) << USBFS_EPX_CNTX_ADDR_SHIFT);
    p = (uint8 *)&USBFS_ARB_RW1_DR_PTR[ri];
    if (Audio_IQ_Channels & 0x01) {
        td_config = TD_TERMIN_EN | TD_INC_SRC_ADR | TD_SWAP_EN;
    } else {
        td_config = TD_TERMIN_EN | TD_INC_SRC_ADR | TD_SWAP_EN | TD_SWAP_SIZE4;
    }
    CY_SET_REG8(&USBFS_SIE_EP1_CNT0_PTR[ri], (length >> 8u) | (USBFS_EP[epNumber].epToggle));
    CY_SET_REG8(&USBFS_SIE_EP1_CNT1_PTR[ri],  length & 0xFFu);
    CyDmaChDisable(USBFS_DmaChan[epNumber]);
    CyDmaTdSetConfiguration(USBFS_DmaTd[epNumber], length, USBFS_DmaTd[epNumber], td_config);
    CyDmaTdSetAddress(USBFS_DmaTd[epNumber],  LO16((uint32)pData), LO16((uint32)p));
    CyDmaClearPendingDrq(USBFS_DmaChan[epNumber]);
    CyDmaChSetInitialTd(USBFS_DmaChan[epNumber], USBFS_DmaTd[epNumber]);
    CyDmaChEnable(USBFS_DmaChan[epNumber], 1);
    USBFS_EP[epNumber].apiEpState = USBFS_NO_EVENT_PENDING;
    USBFS_ARB_EP1_CFG_PTR[ri] |= USBFS_ARB_EPX_CFG_IN_DATA_RDY;
}

// This implements similar logic as USBFS_ReadOutEP.
void Audio_USB_ReadOutEP(uint8 epNumber, uint8 *pData, uint16 length)
{
    uint8 ri, td_config;
    uint8 *p;

    ri = ((epNumber - USBFS_EP1) << USBFS_EPX_CNTX_ADDR_SHIFT);
    p = (uint8 *)&USBFS_ARB_RW1_DR_PTR[ri];
    if (Audio_IQ_Channels & 0x02) {
        td_config = TD_TERMIN_EN | TD_INC_DST_ADR | TD_SWAP_EN;
    } else {
        td_config = TD_TERMIN_EN | TD_INC_DST_ADR | TD_SWAP_EN | TD_SWAP_SIZE4;
    }
    CyDmaChDisable(USBFS_DmaChan[epNumber]);
    CyDmaTdSetConfiguration(USBFS_DmaTd[epNumber], length, USBFS_DmaTd[epNumber], td_config);
    CyDmaTdSetAddress(USBFS_DmaTd[epNumber],  LO16((uint32)p), LO16((uint32)pData));
    CyDmaClearPendingDrq(USBFS_DmaChan[epNumber]);
    CyDmaChSetInitialTd(USBFS_DmaChan[epNumber], USBFS_DmaTd[epNumber]);
    CyDmaChEnable(USBFS_DmaChan[epNumber], 1);
}

uint8 TX_Enabled;

void Audio_Start(void) {
    if(USBFS_DmaTd[RX_ENDPOINT] == DMA_INVALID_TD)
        USBFS_InitEP_DMA(RX_ENDPOINT, PCM3060_RxBuf());
    if(USBFS_DmaTd[TX_ENDPOINT] == DMA_INVALID_TD)
        USBFS_InitEP_DMA(TX_ENDPOINT, PCM3060_TxBuf());
    TX_Enabled = 0;
    Audio_USB_ReadOutEP(TX_ENDPOINT, PCM3060_TxBuf(), 0);
}

uint8 TX_IQ_Phase = 0;
uint16 RX_MuteCounter = 0;

void Audio_Main(void) {

    if (USBFS_GetInterfaceSetting(TX_INTERFACE)) {
        if (!TX_Enabled) {
            USBFS_EnableOutEP(TX_ENDPOINT);
            TX_Enabled = 1;
        }
    } else {
        if (TX_Enabled) {
            USBFS_DisableOutEP(TX_ENDPOINT);
            TX_Enabled = 0;
        }
    }

    if(USBFS_IsConfigurationChanged()) {
        USBFS_EnableOutEP(TX_ENDPOINT);
    }
    
    if (USBFS_GetEPState(TX_ENDPOINT) == USBFS_OUT_BUFFER_FULL) {
        if (TX_Phase < TX_PHASE_IQTONE_RAMP_UP || 
            TX_Phase > TX_PHASE_IQTONE_RAMP_DOWN)
            Audio_USB_ReadOutEP(TX_ENDPOINT, PCM3060_TxBuf(), I2S_BUF_SIZE);
        USBFS_EnableOutEP(TX_ENDPOINT);
    }

    if (USBFS_GetEPState(RX_ENDPOINT) == USBFS_IN_BUFFER_EMPTY) {
        if (TX_State & TX_KEY_ACTIVE) {
            // Mute the receiver audio. This is important with the internally generated IQ tone,
            // when the receiver SDR software does not know of the transmitter existence.
            memset(PCM3060_RxBuf(), 0, 96 * 2 * sizeof(int16));
            // Fill in the transmit data based on the IQ generator phase.
            switch (TX_Phase) {
#ifdef IQHUMP8
            case TX_PHASE_IQTONE_RAMP_UP:
                memcpy(PCM3060_TxBuf(), (void*)(iqhump8_1khz + (TX_IQ_Phase * 96 * 2)), 96 * 2 * sizeof(int16));
                if (++ TX_IQ_Phase == 8) {
                    TX_Phase = TX_PHASE_IQTONE_STEADY;
                    TX_IQ_Phase = 0;
                }
                break;
            case TX_PHASE_IQTONE_STEADY:
                memcpy(PCM3060_TxBuf(), (void*)(iqhump8_1khz + ((TX_IQ_Phase + 8) * 96 * 2)), 96 * 2 * sizeof(int16));
                break;
            case TX_PHASE_IQTONE_RAMP_DOWN:
                if (TX_IQ_Phase == 9) {
                    TX_Phase = TX_PHASE_IQTONE_END;
                    TX_IQ_Phase = 0;
                } else {
                    if (TX_IQ_Phase < 8)
                        memcpy(PCM3060_TxBuf(), (void*)(iqhump8_1khz + ((TX_IQ_Phase + 9) * 96 * 2)), 96 * 2 * sizeof(int16));
                    ++ TX_IQ_Phase;
                }
                break;
#endif
#ifdef IQHUMP6
            case TX_PHASE_IQTONE_RAMP_UP:
                memcpy(PCM3060_TxBuf(), (void*)(iqhump6_1khz + (TX_IQ_Phase * 96 * 2)), 96 * 2 * sizeof(int16));
                if (++ TX_IQ_Phase == 6) {
                    TX_Phase = TX_PHASE_IQTONE_STEADY;
                    TX_IQ_Phase = 0;
                }
                break;
            case TX_PHASE_IQTONE_STEADY:
                memcpy(PCM3060_TxBuf(), (void*)(iqhump6_1khz + ((TX_IQ_Phase + 6) * 96 * 2)), 96 * 2 * sizeof(int16));
                break;
            case TX_PHASE_IQTONE_RAMP_DOWN:
                if (TX_IQ_Phase == 7) {
                    TX_Phase = TX_PHASE_IQTONE_END;
                    TX_IQ_Phase = 0;
                } else {
                    if (TX_IQ_Phase < 6)
                        memcpy(PCM3060_TxBuf(), (void*)(iqhump6_1khz + ((TX_IQ_Phase + 7) * 96 * 2)), 96 * 2 * sizeof(int16));
                    ++ TX_IQ_Phase;
                }
                break;
#endif
#ifdef IQHUMP4
            case TX_PHASE_IQTONE_RAMP_UP:
//                memcpy(PCM3060_TxBuf(), (void*)(iqhump4_1khz + (TX_IQ_Phase * 96 * 2)), 96 * 2 * sizeof(int16));
                PCM3060_SetTxBufAddress(LO16((uint32)(iqhump4_1khz + (TX_IQ_Phase * 96 * 2))));
                if (++ TX_IQ_Phase == 4) {
                    TX_Phase = TX_PHASE_IQTONE_STEADY;
                    TX_IQ_Phase = 0;
                }
                break;
            case TX_PHASE_IQTONE_STEADY:
//                memcpy(PCM3060_TxBuf(), (void*)(iqhump4_1khz + ((TX_IQ_Phase + 5) * 96 * 2)), 96 * 2 * sizeof(int16));
                PCM3060_SetTxBufAddress(LO16((uint32)(iqhump4_1khz + ((TX_IQ_Phase + 5) * 96 * 2))));
                break;
            case TX_PHASE_IQTONE_RAMP_DOWN:
                if (TX_IQ_Phase == 5) {
                    TX_Phase = TX_PHASE_IQTONE_END;
                    TX_IQ_Phase = 0;
                    PCM3060_SetTxBufAddressDefault();
                } else {
                    if (TX_IQ_Phase < 4) {
//                        memcpy(PCM3060_TxBuf(), (void*)(iqhump4_1khz + ((TX_IQ_Phase + 5) * 96 * 2)), 96 * 2 * sizeof(int16));
                        PCM3060_SetTxBufAddress(LO16((uint32)(iqhump4_1khz + ((TX_IQ_Phase + 5) * 96 * 2))));
                    } else
                        PCM3060_SetTxBufAddressDefault();
                    ++ TX_IQ_Phase;
                }
                break;
#endif
            default:
                // Don't touch the transmit buffer, as it is being zeroed by a DMA after it is consumed by the codec.
                PCM3060_SetTxBufAddressDefault();
            }
        } else if (RX_MuteCounter > 0) {
            // Mute the receiver audio after transition from transmit to receve,
            // before the decoupling capacitors in the receive path charge.
            -- RX_MuteCounter;
            memset(PCM3060_RxBuf(), 0, 96 * 2 * sizeof(int16));
            PCM3060_SetTxBufAddressDefault();
        } else
            PCM3060_SetTxBufAddressDefault();
        
/* Testing the compiler performance when doing simple tasks like copying a block of memory. The Keil compiler sucks.
        else {
            static uint16 cntr = 0;
            if (++ cntr > 500) {
                uint8 i;
                int16 *buf = (int16*)PCM3060_RxBuf();
#if 0
                //memset(PCM3060_RxBuf(), 0, 96 * 2 * sizeof(int16));
//                memcpy(buf, (void*)white_noise, 96 * 2 * sizeof(int16));
                memcpy(buf, (void*)white_noise, 96 * 2 * sizeof(int16));
                memcpy(buf, (void*)(white_noise + (rand() >> 8)), 96 * 2 * sizeof(int16));
#else
                uint8 offset = rand();
                for (i = 0; i < 192; ++ i)
                    buf[i] = white_noise[i+offset];
#endif
            }
            if (cntr == 1000)
                cntr = 0;
        }
*/

		Audio_USB_LoadInEP(RX_ENDPOINT, PCM3060_RxBuf(), I2S_BUF_SIZE);
	}
}
