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

#define XTAL_MIN (114.285 - 2)
#define XTAL_MAX (114.285 + 2)

uint8 buffer[CYDEV_EEPROM_ROW_SIZE];

#define XTAL_DATA(mem) (*(reg32*)(mem+0))
#define REVERSE_DATA(mem) (*(reg8*)(mem+4))

void Settings_Init(void) {
    float crystal_freq;
    EEPROM_Start();
    
    crystal_freq = ((float)swap32(*(reg32*)CYDEV_EE_BASE) / 0x01000000);
    
    if (
        crystal_freq < XTAL_MIN || crystal_freq > XTAL_MAX ||
        REVERSE_DATA(CYDEV_EE_BASE) > 3
    ) {
        // New radio! Si570_Start() will compute xtal
        // and it will immediately be stored in eeprom.
        Si570_Xtal = 0;
        Audio_IQ_Channels = 0;
    } else {
        Si570_Xtal = XTAL_DATA(CYDEV_EE_BASE);
        Audio_IQ_Channels = REVERSE_DATA(CYDEV_EE_BASE);
    }
    
}

// speed = (f(clk) * 60) / (wpm * 50) (Using PARIS standard timing.)
// At 1000 Hz clk, 12 wpm is speed=100, 5 wpm is speed = 240, and 20 wpm is speed = 60
uint8 keyer_cntr_current = 0;
uint8 keyer_cntr = 60; // 20 WPM
uint8 keyer_mode_current = IAMBIC_RST_N;
uint8 keyer_mode = IAMBIC_MODE_B | IAMBIC_SKEY | IAMBIC_RST_N;

void Settings_Main(void) {
    uint8 i;
    
    if (XTAL_DATA(CYDEV_EE_BASE) != Si570_Xtal ||
        REVERSE_DATA(CYDEV_EE_BASE) != Audio_IQ_Channels) {
        if (EEPROM_QueryWrite() != CYRET_STARTED) {
            for (i=4; i < CYDEV_EEPROM_ROW_SIZE; i++) buffer[i] = 0;
            XTAL_DATA(buffer) = Si570_Xtal;
            REVERSE_DATA(buffer) = Audio_IQ_Channels;
            CySetTemp();
            EEPROM_StartWrite(buffer, 0);
        }
    }

    if (keyer_cntr != keyer_cntr_current) {
        keyer_cntr_current = keyer_cntr;
        IambicKeyer_SetSpeed(keyer_cntr_current);
    }
    if (keyer_mode != keyer_mode_current) {
        keyer_mode_current = keyer_mode;
        IambicKeyer_SetMode(keyer_mode_current);
    }
}
