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

// Bitmap of TX_xxx flags indicating TX state.
uint8 TX_State = 0;
// Phase of the IQ tone generator (position at the amplitude envelope of the IQ hump).
uint8 TX_Phase = TX_PHASE_RECEIVING;
// Is the TX frequency active? If false, Si570_RX_LO is active, otherwise Si570_TX_LO is active.
uint8 TX_Frequency = 0;

uint16 TX_HangCounter = 0;

struct AmpSequencingConfig AmpSequencingNew;
struct AmpSequencingConfig AmpSequencingCurrent;

void AmpSequencingReset()
{
    AmpSequencingNew.AMP_Enabled = 0;
    AmpSequencingNew.TX_Delay    = 0;
    AmpSequencingNew.TX_Hang     = 0;
    AmpSequencingCurrent.TX_Delay = 1;
}

uint32 KeyerDelayAcc  = 0;
uint32 KeyerDelayMask = 0;
uint32 KeyerDelayOut  = 0;

#define KEYER_PTT  (KeyerDelayAcc)
#define KEYER_DOWN ((KeyerDelayAcc & KeyerDelayOut) != 0)

void TX_Main(void) {
    static uint8 blink;
    uint8 i;
    uint8 status = Status_Read();
    KeyerDelayAcc = ((KeyerDelayAcc & KeyerDelayMask) << 1) | ((status & STATUS_KEYER) != 0);
    
    switch (TX_Phase) {
        case TX_PHASE_RECEIVING:
            AmpSequencingCurrent.AMP_Enabled = AmpSequencingNew.AMP_Enabled;
            if (AmpSequencingCurrent.TX_Delay != AmpSequencingNew.TX_Delay) {
                AmpSequencingCurrent.TX_Delay = AmpSequencingNew.TX_Delay;
                KeyerDelayAcc  = 0;
                KeyerDelayOut  = ((uint32)1) << AmpSequencingCurrent.TX_Delay;
                KeyerDelayMask = KeyerDelayOut - 1;
            }
            AmpSequencingCurrent.TX_Hang = AmpSequencingNew.TX_Hang;
            // Remember the current state of tkey key down input.
            if (status & STATUS_KEYER)
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
            // Enable an external amplifier.
            if (AmpSequencingCurrent.AMP_Enabled)
                Control_Write(Control_Read() & ~CONTROL_AMP);
            TX_Phase = (TX_State & TX_PC_ACTIVE) ? TX_PHASE_TXPC : 
                       (KEYER_DOWN) ? TX_PHASE_IQTONE_RAMP_UP : TX_PHASE_IQTONE_IDLE;
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
            if (! KEYER_DOWN) {
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
            TX_IQ_Phase = 0;
        case TX_PHASE_IQTONE_IDLE:
        {
            // Wait for the amplifier relay to switch to TX.
            if (KEYER_DOWN) {
                // The AMP relay sequencing and the signal has been delayed by the FPGA modules
                // ImabicKeyer and KeyDelay to avoid hot switching of the AMP relay.
                // Now it is safe to start the trasmitting.
                TX_Phase = TX_PHASE_IQTONE_RAMP_UP;
            } else if (! KEYER_PTT) {
                if (AmpSequencingNew.TX_Hang == 0) {
                    Control_Write((Control_Read() & ~(CONTROL_TX | CONTROL_LED)) | CONTROL_AMP);
                    TX_Phase = TX_PHASE_IQTONE_UNMUTE;
                } else {
                    TX_Phase = TX_PHASE_IQTONE_HANG;
                    TX_HangCounter = AmpSequencingNew.TX_Hang;
                }
            }
            break;
        }
        case TX_PHASE_IQTONE_HANG:
            // Wait for the keyamplifier relay to switch to TX.
            if (KEYER_DOWN)
                // The AMP relay sequencing and the signal has been delayed by the FPGA modules
                // ImabicKeyer and KeyDelay to avoid hot switching of the AMP relay.
                // Now it is safe to start the trasmitting.
                TX_Phase = TX_PHASE_IQTONE_RAMP_UP;
            else if (KEYER_PTT)
                // Key was pressed, but the key may be delayed.
                TX_Phase = (AmpSequencingCurrent.TX_Delay == 0) ? TX_PHASE_IQTONE_RAMP_UP : TX_PHASE_IQTONE_IDLE;
            else if (-- TX_HangCounter == 0) {
                // The FPGA module PttOffCounter indicates an end of TX.
                Control_Write((Control_Read() & ~(CONTROL_TX | CONTROL_LED)) | CONTROL_AMP);
                TX_Phase = TX_PHASE_IQTONE_UNMUTE;
                TX_IQ_Phase = 0;
            }
            break;
        case TX_PHASE_IQTONE_UNMUTE:
            if (KEYER_PTT) {
                TX_Phase = TX_PHASE_TX_ENABLE;
            } else {
                Control_Write(Control_Read() | CONTROL_RX);
                TX_Phase = TX_PHASE_IQTONE_EXIT;
                TX_IQ_Phase = 0;
                // Switch back to receive LO frequency.
                TX_Frequency = 0;
            }
            break;
        case TX_PHASE_IQTONE_EXIT:
            if (KEYER_PTT) {
                TX_Phase = TX_PHASE_TX_ENABLE;
                // Let the Si570 thread switch the LO to Si570_TX_LO.
                TX_Frequency = Si570_TX_LO != 0;
                // Mute the receiver.
                Control_Write(Control_Read() & ~CONTROL_RX);
            } else {
                TX_Phase = TX_PHASE_RECEIVING;
                TX_State &= ~TX_KEY_ACTIVE;
                RX_MuteCounter = 10;
            }
            break;
    }
    
}
