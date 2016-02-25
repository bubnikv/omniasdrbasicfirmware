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
// 09/30/2014 Additions to support low latency CW and Iambic funtionality  Ron Patton / W4MMP
// 01/01/2015 Added Semi Break-in Support Ron Patton / W4MMP

// Variable naming conventions:     E_<variable> -> Externally defined global 
//                                  ff_<variable> -> Externally defined global stored in flash memory
//                                  ee_<variable> -> Externally defined global stored in EEPROM memory
//                                  l_<variable> -> locally defined variable
//                                  All UPPERCASE -> Define

#ifndef PEABERRY_H
#define PEABERRY_H

#include <device.h>

#define TRUE 1
#define FALSE 0   
    
#define FIRMWARE_VERSION 0x1410 // Version 16.20 --  {YY}.{[M]M}{Release Number}  (the bytes are reversed)  
#define FIRMWARE_VERSION_MAJOR 0x10
#define FIRMWARE_VERSION_MINOR 0x14
    
typedef uint16 uint16_t;
typedef uint8 uint8_t;
typedef uint8 int8_t;    
    
#define TX_LED_BLINK_ON_MS 40
#define TX_LED_BLINK_OFF_MS 50   
    
// Status register bits
#define STATUS_KEY_0  0x01
#define STATUS_KEY_1  0x02
#define STATUS_BOOT   0x04
#define STATUS_BEAT   0x08
#define STATUS_ATU_0  0x10
//#define STATUS_IAMBIC_CLOCK 0x20    
//#define CW_TIMER_EXPIRED 0x01

// Control register bits
#define CONTROL_LED      0x01
#define CONTROL_RX       0x02
#define CONTROL_TX       0x04
#define CONTROL_AMP      0x08
#define CONTROL_XK       0x10
#define CONTROL_ATU_0    0x20
#define CONTROL_ATU_0_OE 0x40
#define CONTROL_ATU_1    0x80

//#define SOUND_TOGGLE    0x01
    
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
extern uint8 ee_cw_mode;
extern uint8 ee_iambic_mode;
extern uint8 ee_external_sound;
extern uint8 E_cw_message_toggle;


// morse.c
void Morse_Main(char* msg);

// audio.c
extern uint8 Audio_IQ_Channels;
void Audio_Start(void);
void Audio_Main(void);

// sync.c
void Sync_Start(void);
void Sync_Main(void);

// band.c
uint8 Band_Main(void);

// si570.c
#define SI570_STARTUP_FREQ 56.32
extern volatile uint32 Si570_Xtal, Si570_LO;
extern uint32 Current_LO;
extern uint8 Si570_Buf[], Si570_Factory[], Si570_OLD[];
uint8 Si570_Init(void);
void Si570_Main(void);
void Si570_Fake_Reset(void);

// pcm3060.c
uint8 PCM3060_Init(void);
void PCM3060_Start(void);
uint8 PCM3060_Stop(void);
uint8* PCM3060_TxBuf(void);
uint8* PCM3060_RxBuf(void);

// settings.c
void Settings_Init(void);
void Settings_Main(void);

// tx.c
extern uint8 TX_Request;
extern uint8 TX_Inhibit;
void TX_Main(void);

// t1.c
extern uint8 T1_Band_Number;
extern uint8 T1_Tune_Request;
void T1_Main(void);

// cw.c
void Manage_Paddles_Port(void);
void cw_blink(void);
uint8 cw_timer(uint8 start);
extern uint8 E_key_0;
extern uint8 E_key_1;



// iambic.c
void iambic(void);
void cfg_set_speed(float wpm);
void set_params(float wpm,uint8 paddle,uint8 mode,uint8 spacing,float weight,uint8 lag,uint8 memory,
                                uint8 e_sound,uint8 l_cw_mode,uint8 l_iambic_mode,float l_iambic_tuning,uint8 l_semi_breakin,
                                                                                                uint8 l_tx_hold,uint8 l_semi_control);
void get_cw_params(void);
extern uint8 ee_written,ee_mode,ee_memory,ee_spacing,ee_paddle,ee_lag,ee_semi_breakin,ee_tx_hold,ee_wpm,ee_weight,
                                                                                                ee_iambic_tuning,ee_semi_control;


#endif //PEABERRY_H
