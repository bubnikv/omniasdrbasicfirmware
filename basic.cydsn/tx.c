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

#define TX_LED_BLINK_ON_MS 40
#define TX_LED_BLINK_OFF_MS 50

uint8 TX_State = 0;
uint8 TX_Phase = TX_PHASE_RECEIVING;
uint8 TX_Frequency = 0;

void TX_Main(void) {
    static uint8 blink;
    uint8 i;
    
    switch (TX_Phase) {
        case TX_PHASE_RECEIVING:
            // Remember the current state of tkey key down input.
            if (Status_Read() & STATUS_KEYER)
                TX_State |= TX_KEY_REQUESTED;
            else
                TX_State &= ~TX_KEY_REQUESTED;
            if (! (TX_State & TX_INHIBITED) && USBFS_initVar) {
                if (TX_State & (TX_PC_REQUESTED | TX_KEY_REQUESTED)) {
                    // Start the TX sequencing.
                    TX_State |= (TX_State & TX_PC_REQUESTED) ? TX_PC_ACTIVE : TX_KEY_ACTIVE;
                    TX_Phase = TX_PHASE_TX_ENABLE;
                    TX_IQ_Phase = 0;
                    // Let the Si570 thread switch the LO to Si570_TX_LO.
                    TX_Frequency = (TX_State & TX_PC_REQUESTED) == 0 && Si570_TX_LO != 0;
                    // Mute the receiver.
                    Control_Write(Control_Read() & ~CONTROL_RX);
                }
            }
            break;
        case TX_PHASE_TX_ENABLE:
            // Enable transmitter.
            Control_Write(Control_Read() | CONTROL_TX);
            TX_Phase = TX_PHASE_AMP_ENABLE;
            break;
        case TX_PHASE_AMP_ENABLE:
            // Enable an externa amplifier.
            Control_Write(Control_Read() & ~CONTROL_AMP);
            TX_Phase = (TX_State & TX_PC_ACTIVE) ? TX_PHASE_TXPC : TX_PHASE_IQTONE_RAMP_UP;
            blink = 1;
            break;
        case TX_PHASE_TXPC:
            // Transmitting PC generated audio data.
            if (TX_State & TX_PC_REQUESTED) {
                if (! (-- blink)) {
                    i = Control_Read();
                    if (i & CONTROL_LED) blink = TX_LED_BLINK_OFF_MS * 2;
                    else blink = TX_LED_BLINK_ON_MS * 2;
                    Control_Write(i ^ CONTROL_LED);
                }
            } else {
                // End of PC transmit, switch to receive.
                Control_Write((Control_Read() & ~(CONTROL_TX | CONTROL_LED)) | CONTROL_AMP);
                TX_Phase = TX_PHASE_TXPC_EXIT;
            }
            break;
        case TX_PHASE_TXPC_EXIT:
            Control_Write(Control_Read() | CONTROL_RX);
            TX_Phase = TX_PHASE_RECEIVING;
            TX_State &= ~TX_PC_ACTIVE;
            break;
        case TX_PHASE_IQTONE_RAMP_UP:
            // Transmitting an internal shaped IQ tone, keyed by the external key down signal.
            // Transition from TX_PHASE_IQTONE_RAMP_UP to TX_PHASE_IQTONE_STEADY is controlled by the IQ tone generator.
            break;
        case TX_PHASE_IQTONE_STEADY:
            // Transmitting an internal shaped IQ tone, keyed by the external key down signal.
            if ((Status_Read() & STATUS_KEYER) == 0) {
                // Key is released.
                TX_State &= ~TX_KEY_REQUESTED;
                TX_Phase = TX_PHASE_IQTONE_RAMP_DOWN;
                TX_IQ_Phase = 0;
            }
            break;
        case TX_PHASE_IQTONE_RAMP_DOWN:
            // Transmitting an internal shaped IQ tone, keyed by the external key down signal.
            // Transition from TX_PHASE_IQTONE_RAMP_DOWN to TX_PHASE_IQTONE_END is controlled by the IQ tone generator.
            break;
        case TX_PHASE_IQTONE_END:
            // Transmitting an internal shaped IQ tone, keyed by the external key down signal.
            Control_Write((Control_Read() & ~(CONTROL_TX | CONTROL_LED)) | CONTROL_AMP);
            TX_Phase = TX_PHASE_IQTONE_UNMUTE;
            TX_IQ_Phase = 0;
            break;
        case TX_PHASE_IQTONE_UNMUTE:
            Control_Write(Control_Read() | CONTROL_RX);
            TX_Phase = TX_PHASE_IQTONE_EXIT;
            TX_IQ_Phase = 0;
            // Switch back to receive LO frequency.
            TX_Frequency = 0;
            break;
        case TX_PHASE_IQTONE_EXIT:
            TX_Phase = TX_PHASE_RECEIVING;
            TX_State &= ~TX_KEY_ACTIVE;
            RX_MuteCounter = 10;
            break;
    }
    
}
