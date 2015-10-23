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



uint8 Band_Main(void) {
    static uint32 lo;
    uint32 i;
    uint8 relay = FALSE;
        
    static uint8 inhibit_T1_and_Band = FALSE;
    static uint8 l_paddle = CFG_PADDLE_NORMAL;
    static uint8 l_mode = CFG_MODE_IAMBIC; 
    static uint8 l_spacing = CFG_SPACING_EL;
    static uint8 l_memory = CFG_MEMORY_TYPE_B;
    static float l_wpm = 18, l_weight = CFG_WEIGHT_DIST;
    static uint8 l_cw_mode = FALSE;
    static uint8 l_iambic_mode = FALSE;
    static float l_iambic_tuning = IAMBIC_CALIBRATION_SPEED;
    static uint8 l_sound = FALSE;
    static uint8 l_semi_breakin = FALSE;
    static uint8 l_tx_hold = TX_HOLD_DEFAULT;
    static uint8 l_semi_control = SEMI_USE_ATU;
     
     
    if(TX_Request){ // Do Not set magic numbers if in Transmit mode.  Setting the frequency to out of band while in transmit mode is a no no
        return(0);
    }
    if (Current_LO != lo) {
        i = swap32(lo = Current_LO);
        
        inhibit_T1_and_Band = FALSE;
        l_paddle = ee_paddle;
        l_mode = ee_mode; 
        l_spacing = ee_spacing;
        l_memory = ee_memory;
        l_wpm = (float) ee_wpm;
        l_weight = (float) ((float) ee_weight / 100);
        l_cw_mode = ee_cw_mode;
        l_iambic_mode = ee_iambic_mode;
        l_iambic_tuning = (float) ((float) ee_iambic_tuning * RATIO_FACTOR);
        l_sound = ee_external_sound;
        l_semi_breakin = ee_semi_breakin;
        l_tx_hold = ee_tx_hold;
        l_semi_control = ee_semi_control;
        
        
        
        if(i >= 0x10AAAAA8 && i <= 0x11800000) inhibit_T1_and_Band = TRUE; //Frequency is between 33.333333 and 35.000000 (Set mode freq range)
        // One big ass switch statement.  Lots of conditions to check for 
        
        // Watch for special IQ reversal frequencies
        switch (i) {
            case 0x10AAAAA8: Audio_IQ_Channels = 0; // 33.333333 MHz
                break; 
            case 0x10B8E38A: Audio_IQ_Channels = 1; // 33.444444 MHz
                break; 
            case 0x10C71C6D: Audio_IQ_Channels = 2; // 33.555555 MHz
                break;
            case 0x10D55550: Audio_IQ_Channels = 3; // 33.666666 MHz
                break;
                        
         // The following two cases turn CW Mode On and OFF
            case 0x10E38E32:                                    // 33.777777 Mhz 
                l_cw_mode = TRUE; 
                break;      
            case 0x10F1C715:                                    // 33.888888 Mhz
                l_cw_mode = FALSE; 
                Control_Write(Control_Read() & ~CONTROL_LED);   // Set the LED back to steady on
                break;     
                
            // The following two cases turn iambic Mode On and OFF
            case 0x10ffffb5:                                    // 33.999991 Mhz 
                l_iambic_mode = TRUE;                           // Turn on Iambic Mode
                break;    
            case 0x10ffffbd:                                    // 33.999992 Mhz
                l_iambic_mode = FALSE;                          // Turn off Iambic mode
                break;     
              
        // The following two cases turns  the external sound generation on and off.  If sound is on, T1 is off
            case 0x10ffffe7:                                    // 33.999997 Mhz
                l_sound = TRUE;
                break;     
            case 0x10ffffef:                                    // 33.999998 Mhz
                l_sound = FALSE;
                break;     
            
        // Reset the configuration options to default values    
            case 0x10fffff8:                                    // 33.999999 Mhz
                l_paddle = CFG_PADDLE_NORMAL;l_mode = CFG_MODE_IAMBIC; l_spacing = CFG_SPACING_EL;l_memory = CFG_MEMORY_TYPE_B;
                l_wpm = 18.0, l_weight = CFG_WEIGHT_DIST; l_sound = FALSE;l_cw_mode = FALSE;l_iambic_mode = FALSE;l_semi_breakin = FALSE;
                l_iambic_tuning = IAMBIC_CALIBRATION_SPEED;l_tx_hold = TX_HOLD_DEFAULT;l_semi_control = SEMI_USE_ATU;
                Control_Write(Control_Read() & ~CONTROL_LED);   // Set the LED back to steady on
                break;     
              
        // The next set of case statements set various Iambic parameters    
            
        //Set the paddle direction   
            case 0x112aaa97: l_paddle = CFG_PADDLE_NORMAL; break;           //34.333331     
            case 0x112aaa9f: l_paddle = CFG_PADDLE_REVERSE; break;          //34.333332   
                    
        //Set the type of Iambic Mode
            case 0x1138e371: l_mode = CFG_MODE_IAMBIC;break;                //34.444441
            case 0x1138e37a: l_mode = CFG_MODE_BUG;break;                   //34.444442
            case 0x1138e38a: l_mode = CFG_MODE_ULTIMATIC;break;             //34.444444
            
        //Set the memory element memory type.  Usually type B    
            case 0x1138e393: l_memory = CFG_MEMORY_TYPE_A;break;            //34.444445
            case 0x1138e39b: l_memory = CFG_MEMORY_TYPE_DAH;break;          //34.444446
            case 0x1138e3a4: l_memory = CFG_MEMORY_TYPE_DIT;break;          //34.444447
            case 0x1138e3ac: l_memory = CFG_MEMORY_TYPE_B;break;            //34.444448
            
        //Set the spacing mode
            case 0x11471c4c: l_spacing = CFG_SPACING_CHAR;break;            //34.555551
            case 0x11471c54: l_spacing = CFG_SPACING_EL;break;              //34.555552
            case 0x11471c5c: l_spacing = CFG_SPACING_NONE;break;            //34.555553
            case 0x11471c65: l_spacing = CFG_SPACING_WORD;break;            //34.555554
            
        //Set the weight
            case 0x111c71b4: l_weight = 0.30;break;           //34.222220
            case 0x111c71bd: l_weight = 0.35;break;           //34.222221
            case 0x111c71c5: l_weight = 0.40;break;           //34.222222
            case 0x111c71ce: l_weight = 0.45;break;           //34.222223
            case 0x111c71d6: l_weight = 0.50;break;           //34.222224
            case 0x111c71de: l_weight = 0.55;break;           //34.222225
            case 0x111c71e7: l_weight = 0.60;break;           //34.222226
            case 0x111c71ef: l_weight = 0.65;break;           //34.222227
            case 0x111c71f8: l_weight = 0.70;break;           //34.222228
            
        //Set semi breakin mode on and off
            case 0x11638e00: 
                l_semi_breakin = TRUE;                                          //34.777771
                break;       
            case 0x11638e08: 
                l_semi_breakin = FALSE;                                         //34.777772 
                Control_Write(Control_Read() & ~CONTROL_ATU_0);                 //Reset the ATU Port to Normal
                Control_Write(Control_Read() & ~CONTROL_AMP);                   //Reset the AMP Port to Normal
                break;    
                
            case 0x11471c6d: l_semi_control = SEMI_USE_ATU;break;   //34.555555 Use the ATU port to control TX mode
            case 0x11471c76: l_semi_control = SEMI_USE_AMP;break;   //34.555556 Use the AMP port to control TX mode
            
        
            case 0x11638e11: l_tx_hold = TX_HOLD_DEFAULT - (uint8)(TX_HOLD_DEFAULT * .30);break;    //34.777773
            case 0x11638e19: l_tx_hold = TX_HOLD_DEFAULT - (uint8)(TX_HOLD_DEFAULT * .20);break;    //34.777774
            case 0x11638e22: l_tx_hold = TX_HOLD_DEFAULT - (uint8)(TX_HOLD_DEFAULT * .10);break;    //34.777775
            case 0x11638e2a: l_tx_hold = TX_HOLD_DEFAULT;break;                         //34.777776
            case 0x11638e32: l_tx_hold = TX_HOLD_DEFAULT + (uint8)(TX_HOLD_DEFAULT * .10);break;    //34.777777
            case 0x11638e3b: l_tx_hold = TX_HOLD_DEFAULT + (uint8)(TX_HOLD_DEFAULT * .20);break;    //34.777778
            case 0x11638e43: l_tx_hold = TX_HOLD_DEFAULT + (uint8)(TX_HOLD_DEFAULT * .30);break;    //34.777779
        
        // Set the WPM  The standard ARRL practice speeds.  Good enough for them, then me too  :)
            case 0x1171c6d2: l_wpm = 5.0;break;                             //34.888880
            case 0x1171c6da: l_wpm = 7.0;break;                             //34.888881
            case 0x1171c6e3: l_wpm = 10.0;break;                            //34.888882
            case 0x1171c6eb: l_wpm = 13.0;break;                            //34.888883
            case 0x1171c6f3: l_wpm = 15.0;break;                            //34.888884
            case 0x1171c6fc: l_wpm = 18.0;break;                            //34.888885
            case 0x1171c704: l_wpm = 20.0;break;                            //34.888886
            case 0x1171c70d: l_wpm = 25.0;break;                            //34.888887
            case 0x1171c715: l_wpm = 30.0;break;                            //34.888888
            case 0x1171c71d: l_wpm = 35.0;break;                            //34.888889
            
        // Fine tune the iambic speed    
            case 0x117fffac: l_iambic_tuning = (IAMBIC_CALIBRATION_SPEED - (IAMBIC_CALIBRATION_SPEED * .10));break;    //34.999990
            case 0x117fffb5: l_iambic_tuning = (IAMBIC_CALIBRATION_SPEED - (IAMBIC_CALIBRATION_SPEED * .08));break;    //34.999991
            case 0x117fffbd: l_iambic_tuning = (IAMBIC_CALIBRATION_SPEED - (IAMBIC_CALIBRATION_SPEED * .06));break;    //34.999992
            case 0x117fffc5: l_iambic_tuning = (IAMBIC_CALIBRATION_SPEED - (IAMBIC_CALIBRATION_SPEED * .04));break;    //34.999993
            case 0x117fffce: l_iambic_tuning = (IAMBIC_CALIBRATION_SPEED - (IAMBIC_CALIBRATION_SPEED * .02));break;    //34.999994
            case 0x117fffd6: l_iambic_tuning = IAMBIC_CALIBRATION_SPEED;break;    //Default calibration                //34.999995
            case 0x117fffde: l_iambic_tuning = (IAMBIC_CALIBRATION_SPEED + (IAMBIC_CALIBRATION_SPEED * .02));break;    //34.999996
            case 0x117fffe7: l_iambic_tuning = (IAMBIC_CALIBRATION_SPEED + (IAMBIC_CALIBRATION_SPEED * .04));break;    //34.999997
            case 0x117fffef: l_iambic_tuning = (IAMBIC_CALIBRATION_SPEED + (IAMBIC_CALIBRATION_SPEED * .06));break;    //34.999998
            case 0x117ffff8: l_iambic_tuning = (IAMBIC_CALIBRATION_SPEED + (IAMBIC_CALIBRATION_SPEED * .08));break;    //34.999999
            case 0x117ffd0d: l_iambic_tuning = (IAMBIC_CALIBRATION_SPEED + (IAMBIC_CALIBRATION_SPEED * .10));break;    //34.999910   
       
        } //End of switch (i)
        
        if(!inhibit_T1_and_Band){ //Don't want to mess around with the T1 band or Relay if we setting operation modes
        // Band numbers for Elecraft T1
            if (i > 0X1B800000) T1_Band_Number = 12; // 55.000 MHz (This will not be set.  Peaberry doesn't go this high anyway)
            else if (i > 0xF800000) T1_Band_Number = 11; // 31.000 MHz (This will not be set.  Peaberry doesn't go this high anyway)
            else if (i > 0xD000000) T1_Band_Number = 10; // 26.000 MHz
            else if (i > 0xB000000) T1_Band_Number = 9; // 22.000 MHz
            else if (i > 0x9800000) T1_Band_Number = 8; // 19.000 MHz
            else if (i > 0x8000000) T1_Band_Number = 7; // 16.000 MHz
            else if (i > 0x6000000) T1_Band_Number = 6; // 12.000 MHz
            else if (i > 0x4800000) T1_Band_Number = 5; // 9.000 MHz
            else if (i > 0x3000000) T1_Band_Number = 4; // 6.000 MHz
            else if (i > 0x2800000) T1_Band_Number = 3; // 5.000 MHz
            else if (i > 0x1800000) T1_Band_Number = 2; // 3.000 MHz
            else if (i > 0x0C00000) T1_Band_Number = 1; // 1.500 MHz
            else T1_Band_Number = 0;
                    
            // Set relay to correct filter
            if (i > 0xB000000) relay = 0; // 22.000 MHz
            else if (i > 0x8000000) relay = 1; // 16.000 MHz
            else if (i > 0x4800000) relay = 0; // 9.000 MHz
            else if (i > 0x2800000) relay = 1; // 5.000 MHz
            else if (i > 0x1800000) relay = 0; // 3.000 MHz
            else relay = 1;
            E_cw_message_toggle = TRUE;
            if (relay)
                Control_Write(Control_Read() & ~CONTROL_XK);
            else
                Control_Write(Control_Read() | CONTROL_XK);
        }else{
            set_params(l_wpm,l_paddle,l_mode,l_spacing,l_weight,/*lag*/0,l_memory,l_sound,l_cw_mode,l_iambic_mode,l_iambic_tuning,l_semi_breakin,
                                                                                                              l_tx_hold,l_semi_control); 
            get_cw_params();
            E_cw_message_toggle = TRUE;
        }
        
        // Inhibit transmitter as necessary
        if (i > 0xC866666 && i < 0xDF99999) TX_Inhibit = 1;
        else TX_Inhibit = 0;
    }// End of:  if (Current_LO != lo)
return(0);
}


