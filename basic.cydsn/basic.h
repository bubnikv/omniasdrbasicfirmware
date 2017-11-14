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

#ifndef PEABERRY_H
#define PEABERRY_H

#include <device.h>

#define FIRMWARE_VERSION 0x6410 // Version 16.100 --  {YY}.{[M]M}{Release Number}  (the bytes are reversed)  
#define FIRMWARE_VERSION_MAJOR 0x10
#define FIRMWARE_VERSION_MINOR 0x64
    
// Status register bits
#define STATUS_KEY_0  0x01
#define STATUS_KEY_1  0x02
#define STATUS_BOOT   0x04
#define STATUS_BEAT   0x08
#define STATUS_ATU_0  0x10
#define STATUS_KEYER  0x20

// Control register bits
#define CONTROL_LED      0x01
#define CONTROL_RX       0x02
#define CONTROL_TX       0x04
#define CONTROL_AMP      0x08
#define CONTROL_XK       0x10
#define CONTROL_ATU_0    0x20
#define CONTROL_ATU_0_OE 0x40
#define CONTROL_ATU_1    0x80

// Max buffer size for 1ms
#define I2S_BUF_SIZE (96u * 2 * 2)

// Unvisible stuff from Cypress that they expect us to use and don't export
uint8 USBFS_InitControlRead(void);
uint8 USBFS_InitControlWrite(void);
extern volatile T_USBFS_TD USBFS_currentTD;
extern volatile T_USBFS_EP_CTL_BLOCK USBFS_EP[];
extern uint8 USBFS_initVar;
extern uint8 USBFS_DmaTd[USBFS_MAX_EP];
extern uint8 USBFS_DmaChan[USBFS_MAX_EP];

// main.c
uint32 swap32(uint32) CYREENTRANT;
void ERROR(char* msg);

// morse.c
void Morse_Main(char* msg);

// audio.c
extern uint8 Audio_IQ_Channels;
extern uint16 RX_MuteCounter;
void Audio_Start(void);
void Audio_Main(void);

// sync.c
void Sync_Start(void);
void Sync_Main(void);

// band.c
void Band_Main(void);

// buttons.c
void Buttons_Start(void);
void Buttons_Stop(void);

// si570.c
#define SI570_STARTUP_FREQ 56.32
extern volatile uint32 Si570_Xtal;
// Current local oscillator frequency, in freq_hz * 4 * 2.097152
extern volatile uint32 Si570_RX_LO;
extern volatile uint32 Si570_TX_LO;
extern uint32 Current_LO;
extern uint8 Si570_Buf[];
extern uint8 Si570_Factory[];
// Receive buffer for the CMD_SET_FREQ_REG command.
extern uint8 Si570_FreqReg_Deprecated[];
uint8 Si570_Init(void);
void Si570_Main(void);
void Si570_Fake_Reset(void);

// pcm3060.c
uint8 PCM3060_Init(void);
void PCM3060_Start(void);
uint8 PCM3060_Stop(void);
uint8* PCM3060_TxBuf(void);
extern void PCM3060_SetTxBufAddress(uint16 source);
extern void PCM3060_SetTxBufAddressDefault();
uint8* PCM3060_RxBuf(void);

// settings.c
void Settings_Init(void);
void Settings_Main(void);
extern uint8 keyer_cntr;
extern uint8 keyer_mode;

// sidetone.c
void Tone_Init(void);
void Tone_Start(void);
void Tone_Stop(void);

// tx.c
// Bitmap of TX_xxx flags indicating TX state.
extern uint8 TX_State;
// Transmit is inhibited, because the IF frequency is out of the HAM bands.
#define TX_INHIBITED     0x01
// PC requested to TX using the libusb DG8SAQ / PE0FKO protocol.
#define TX_PC_REQUESTED  0x02
// PC requested to TX and the request has been granted, therefore the radio is in transmit mode.
// In that case the internal TX IQ tone generator will be supressed.
#define TX_PC_ACTIVE     0x04
// Sampled key down signal of the external straight key or an external iambic keyer output.
// If the TX is not requested by the PC, the key signal triggers transmit mode with an internal IQ tone generator.
#define TX_KEY_REQUESTED 0x08
// Key was down, therefore the transceiver went into the IQ tone transmit phase. This is mutually exculsive
// with TX_PC_ACTIVE.
#define TX_KEY_ACTIVE    0x10

// Phase of the TX process. This is used to sequence the receive muting, transmitter keying and PA activation.
extern uint8 TX_Phase;
#define TX_PHASE_RECEIVING           0
#define TX_PHASE_TX_ENABLE           1
#define TX_PHASE_AMP_ENABLE          2
// Transmitting PC audio data.
#define TX_PHASE_TXPC                10
// End the transmit of PC audio data.
#define TX_PHASE_TXPC_EXIT           11
// Transmitting an internal shaped IQ tone, keyed by the external key down signal.
#define TX_PHASE_IQTONE_RAMP_UP      20
#define TX_PHASE_IQTONE_STEADY       21
#define TX_PHASE_IQTONE_RAMP_DOWN    22
#define TX_PHASE_IQTONE_END          23
#define TX_PHASE_IQTONE_UNMUTE       24
#define TX_PHASE_IQTONE_EXIT         25

// Phase of the IQ tone generator (position at the amplitude envelope of the IQ hump).
extern uint8 TX_IQ_Phase;

// Is the TX frequency active? If false, Si570_RX_LO is active, otherwise Si570_TX_LO is active.
extern uint8 TX_Frequency;

void TX_Main(void);

// t1.c
extern uint8 T1_Band_Number;
extern uint8 T1_Tune_Request;
void T1_Main(void);

#endif //PEABERRY_H
