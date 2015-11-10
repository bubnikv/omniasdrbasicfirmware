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
// 09/30/2014 Additions to support low latency CW and Iambic funtionality  Ron Patton


#include <peaberry.h>


/*void sound(){
    static uint8 sound_on = FALSE;
    uint8 i;
    
    i = Status_Read() & STATUS_SOUND_CLOCK;
    if (i) {
        if(sound_on){
            Control_Write(Control_Read() | CONTROL_ATU_1);
            sound_on = FALSE;
        }else{
            Control_Write(Control_Read() & ~CONTROL_ATU_1);
            sound_on = TRUE;
        }
    }
}*/

void sound(){
    //static uint8 sound_on = FALSE;
    uint8 status;
    
    status = Sound_Control_Read();
    if(status && SOUND_TOGGLE){
        Sound_Control_Write(status | SOUND_TOGGLE);
    }else{
        Sound_Control_Write(status & ~SOUND_TOGGLE);
    }
}


/* [] END OF FILE */
