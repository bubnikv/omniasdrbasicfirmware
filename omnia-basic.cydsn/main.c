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

#include <peaberry.h>
#include <iambino.h>

uint8 ee_external_sound;
uint8 ee_cw_mode;
uint8 ee_iambic_mode;
uint8 E_cw_message_toggle = TRUE; 



void main_init() {
    uint8 si_err, pcm_err;

    EEPROM_Start();
    CW_Hold_Timer_Start();
    Iambic_Counter_Start();
    CyGlobalIntEnable;
    CyDelay(3000);
    Sync_Start();
    I2C_Start();
    Settings_Init();
    si_err = Si570_Init();
    if (si_err) {
        I2C_Stop();
        I2C_Start();
        I2C_MasterClearStatus();
    }
    pcm_err = PCM3060_Init();
    if (si_err && pcm_err) ERROR("I2C ");
    if (si_err) ERROR("Si570 ");
    if (pcm_err) ERROR("PCM3060 ");
    if (CyXTAL_ReadStatus()) ERROR("XTAL ");
    Control_Write(Control_Read() & ~CONTROL_LED);
}

// A compliant USB device is required to monitor
// vbus voltage and shut down if it disappears.
void main_usb_vbus(void) {
    if (USBFS_VBusPresent()) {
        if(!USBFS_initVar) {
            USBFS_Start(0, USBFS_DWR_VDDD_OPERATION);
            Audio_Start();
            PCM3060_Start();
        }
    } else {
        if(USBFS_initVar) {
            TX_Request = 0;
            PCM3060_Stop();
            USBFS_Stop();
        }
    }
}

int main(){
    uint8 i;
    static uint8 beat = 0, beater = 0;
    uint16 usb_count = 0;
        
    //uint8 die_status;
    //int16 die_temp;
       
    main_init();
    get_cw_params();
        
     for(;;) {
        // USB Audio is very high priority
        Audio_Main();
        Sync_Main();
                
        // Everything else runs twice per millisecond
        // Keep T1 first for timing accuracy
        i = Status_Read() & STATUS_BEAT;
        if (beat != i) {
            switch(beater++) {
            case 0:
                if(!ee_cw_mode){
                    T1_Main();
                }else{
                    if(!ee_semi_breakin && !ee_external_sound){
                        T1_Main();
                    }
                }
                break;
            case 1:
                TX_Main();
                break;
            case 2:
                Settings_Main();
                break;
            case 3:
                Si570_Main();
                break;
            case 4:
                Band_Main();
                break;
            case 5:
                if (!(Status_Read() & STATUS_BOOT)) Bootloadable_Load();
                /*do{
                    die_status = DieTemp_1_GetTemp(&die_temp);
                }while (die_status != CYRET_SUCCESS);*/
                break;
            case 6:
                if(ee_cw_mode){Manage_Paddles_Port();}
                if(!TX_Request && ee_cw_mode){cw_blink();}
                break;
          
            default:
                if(usb_count++ >= 6000){
                    main_usb_vbus();
                    usb_count = 0;
                }
                beater = 0;
                beat = i;
            }
        }
            
    }
}

uint32 swap32(uint32 original) CYREENTRANT {
    uint8 *r, *o;
    uint32 ret;
    r = (void*)&ret;
    o = (void*)&original;
    r[0] = o[3];
    r[1] = o[2];
    r[2] = o[1];
    r[3] = o[0];
    return ret;
}

void ERROR(char* msg) {
    uint8 i, beat;
    uint16 timer = 0;
    
    if(USBFS_initVar) USBFS_Stop();
    Control_Write(Control_Read() & ~CONTROL_TX | CONTROL_LED | CONTROL_AMP | CONTROL_RX);
    Morse_Main(msg);
    
    for(;;) {
        i = Status_Read() & STATUS_BEAT;
        if (beat != i) {
            beat = i;
            if (!timer--) {
                timer = 480; // 5 WPM
                Morse_Main(0);
            }
        }    
    }
}