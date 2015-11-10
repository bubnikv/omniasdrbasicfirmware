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

uint8 E_key_0;
uint8 E_key_1;


uint8 cw_timer(uint8 start){
    uint8 ret_status;
        
    if(start){
        CW_Control_Write(1); //Resets and Starts the timer
        ret_status = FALSE;
    }else{
        if (CW_Hold_Timer_ReadStatusRegister() & 0x80){//Check if the timer has expired
            ret_status = TRUE;
        }else{
            ret_status = FALSE;
        }
    }
    return ret_status;   
}


void cw_blink(void){
    
    char *cw_msg = {"C  "};
    char *cw_and_iambic = {"C I  "};
    char *cw_and_semi = {"C S  "};
    char *cw_and_iambic_and_semi = {"C I S  "};
    //static char *msg;
    static uint8 i, beat;
    static uint16 timer = 0;
     
    switch(E_cw_message_toggle) {
        case FALSE:
            i = Status_Read() & STATUS_BEAT;
            if (beat != i) {
                beat = i;
                if (!timer--) {
                    timer = 300; 
                    Morse_Main(0);
                }
            }
            break;
        case TRUE:
           if(ee_cw_mode && !ee_iambic_mode && !ee_semi_breakin){
                //msg = cw_msg;
                Morse_Main(cw_msg);
            }
            if(ee_cw_mode && ee_iambic_mode && !ee_semi_breakin){
                Morse_Main(cw_and_iambic);
                //msg = cw_and_iambic;
            }
            if(ee_cw_mode && !ee_iambic_mode && ee_semi_breakin){
                Morse_Main(cw_and_semi);
                //msg = cw_and_semi;
            }
            if(ee_cw_mode && ee_iambic_mode && ee_semi_breakin){
                Morse_Main(cw_and_iambic_and_semi);
                //msg = cw_and_iambic_and_semi;
            }
            E_cw_message_toggle = FALSE;
            break;
    }
}   
 
void cw_normal(void){
    static uint8 cw_transmit = FALSE;
    
    if(TX_Request){
        if( (E_key_0) && (E_key_1)){ //No key pressed
            if(cw_transmit){
                cw_transmit = FALSE;
                Control_Write(Control_Read() & ~CONTROL_TX);
                if(ee_external_sound)Control_Write(Control_Read() & ~CONTROL_ATU_1);
            }
        }else if(!E_key_0 || !E_key_1){ //Key is pressed
            if(!cw_transmit){
                Control_Write(Control_Read() | CONTROL_TX);
                cw_transmit = TRUE;
                if(ee_external_sound) Control_Write(Control_Read() | CONTROL_ATU_1);
            }
        }
    }
}

// The follow routine implements semi break-in mode.  When either key_0 or key_1 are activated the Peaberry signals the host application 
// to go into transmit mode via the ATU to PC Comm port connection.  The routine will keep the host application in TX mode until cd_delay_counter has
// counted down to zero.

void cw_semi_breakin(void){
    static uint8 state = 0;
    uint8 cw_timer_status;
          
    switch (state){
        case 0:   //Initial state   No key press No TX_Request TX line not active.  Now check for key press
            if(!E_key_0 || !E_key_1){ //A Key is pressed. Turn on TX Mode.  Wait for next state to check key again for key press
                switch(ee_semi_control){//Signal host application to turn on TX Mode via comm port
                    case SEMI_USE_ATU:
                        Control_Write((Control_Read()) | (CONTROL_ATU_0_OE | CONTROL_ATU_0)); 
                        break;
                    case SEMI_USE_AMP:
                        Control_Write((Control_Read()) & ~CONTROL_AMP);  // Turn AMP Line ON
                        break;
                }
                cw_timer_status = cw_timer(TRUE);
                state = 1;
            }
            break;
            
        case 1: //Check for TX request and Key down
            if(TX_Request){ //Should be in TX_Request state
                if(!E_key_0 || !E_key_1){ // Key down
                    cw_timer_status = cw_timer(TRUE);//Reset and Start the CW hold timer
                    Control_Write(Control_Read() | CONTROL_TX); 
                    if(ee_external_sound) Control_Write(Control_Read() | CONTROL_ATU_1); //Turn on the external sound oscillator
                }
                state = 2; //Next state.  Check for Key up
            }else{
                state = 3; //TX request was not on for this iteration.  
            }
            break;
        
        case 2: // Check for Key up
            if( (E_key_0) && (E_key_1)){  //No key is active
                Control_Write(Control_Read() & ~CONTROL_TX);  // Turn off the TX line
                if(ee_external_sound)Control_Write(Control_Read() & ~CONTROL_ATU_1); //Turn off the external sound oscillator
            }
            state = 3;
            break;
            
        case 3:
            cw_timer_status = cw_timer(FALSE);
            if(cw_timer_status){
                switch(ee_semi_control){//Signal host application to turn off TX mode via the comm port
                    case SEMI_USE_ATU:
                        Control_Write(Control_Read() & ~CONTROL_ATU_0);
                        break;
                    case SEMI_USE_AMP:
                        Control_Write((Control_Read()) | CONTROL_AMP);   // Turn AMP Line OFF
                        break;
                }
                state = 0;
            }else{
                state = 1;
            }
            break;
    }//End of switch(state)
 }

void Manage_Paddles_Port(void)
{
    uint8 key;
    uint8 paddles_section;
    
    paddles_section = CyEnterCriticalSection();
    key = Status_Read();
    CyExitCriticalSection(paddles_section);
    
    if (key & STATUS_KEY_0)E_key_0 = TRUE; else E_key_0 = FALSE;
    if (key & STATUS_KEY_1)E_key_1 = TRUE; else E_key_1 = FALSE;
    if(!ee_iambic_mode){
        if(!ee_semi_breakin){
            cw_normal();
        }else{
            cw_semi_breakin();
        }
    }else{
        iambic();
    }
}




   