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

    // Iambino - Iambic Keyer for Arduino
// Copyright (C) 2013 David Turnbull AE9RB
// 
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
// 
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
// 
// You should have received a copy of the GNU General Public License
// along with this program.  If not, see <http://www.gnu.org/licenses/>.
// 09/30/2014 Additions to support low latency CW and Iambic funtionality  Ron Patton / W4MMP
// 01/01/2015 Added Semi Break-in Support Ron Patton / W4MMP


#include <peaberry.h>
#include <iambino.h>

uint8 ee_firmware_version,ee_mode,ee_memory,ee_spacing,ee_paddle,ee_lag,ee_semi_breakin,ee_tx_hold,ee_weight,ee_wpm,
                                                                ee_iambic_tuning,ee_semi_control;

struct cfg {
  int8_t  mode;
  int8_t  memory;
  int8_t  spacing;
  float   weight;
  uint8_t paddle;
  uint8_t lag;
} cfg;

static uint8 pa_on = FALSE;  //Flag to indicate the state of the Power Amplifier Finals - On or Off
static long cfg_speed_micros;
static long tx_timer;
static uint32 tx_hold;

void get_cw_params(void){
    reg8 *RegPointer;
    double l_cw_delay_period;
            
    //Get the address of the Second EEPROM row
    RegPointer = (reg8 *) (CYDEV_EE_BASE + CYDEV_EEPROM_ROW_SIZE);
        
    ee_firmware_version = RegPointer[EE_FIRMWARE_VERSION];
    if(ee_firmware_version != FIRMWARE_VERSION_MINOR){
        set_params(18.0,CFG_PADDLE_NORMAL,CFG_MODE_IAMBIC,CFG_SPACING_EL,CFG_WEIGHT_DIST,/*lag*/0,CFG_MEMORY_TYPE_B,
                                                                                    FALSE,FALSE,FALSE,FALSE,FALSE,TX_HOLD_DEFAULT,SEMI_USE_ATU); 
    }
        
    ee_paddle = RegPointer[EE_PADDLE_REGISTER];
    ee_mode = RegPointer[EE_MODE_REGISTER];
    ee_spacing = RegPointer[EE_SPACING_REGISTER];
    ee_lag= RegPointer[EE_LAG_REGISTER];
    ee_memory = RegPointer[EE_MEMORY_REGISTER];
    ee_external_sound = RegPointer[EE_EXTERNAL_SOUND_REGISTER];
    ee_cw_mode = RegPointer[EE_CW_MODE_REGISTER];
    ee_iambic_mode = RegPointer[EE_IAMBIC_MODE_REGISTER];
    ee_semi_breakin = RegPointer[EE_SEMI_BREAKIN];
    ee_tx_hold = RegPointer[EE_TX_HOLD];
    ee_wpm = RegPointer[EE_WPM];
    ee_weight = RegPointer[EE_WEIGHT];
    ee_iambic_tuning = RegPointer[EE_IAMBIC_TUNING];
    ee_semi_control = RegPointer[EE_SEMI_CONTROL];
    
  
    l_cw_delay_period = (1969 *  (double)ee_tx_hold / (double)ee_wpm);
    CW_Hold_Timer_WritePeriod((uint16)l_cw_delay_period);
  
    cfg_set_speed((float)ee_wpm);
    cfg.paddle = ee_paddle;
    cfg.mode = ee_mode;
    cfg.spacing = ee_spacing;
    cfg.weight = (float)((float)ee_weight / 100);
    cfg.lag = ee_lag;
    cfg.memory = ee_memory;
}

void set_params(float wpm,uint8 paddle,uint8 mode,uint8 spacing,float weight, uint8 lag,uint8 memory,
                 uint8 l_sound,uint8 l_cw_mode,uint8 l_iambic_mode,float l_iambic_tuning,uint8 l_semi_breakin,uint8 l_tx_hold,uint8 l_semi_control)
{
    uint8 error;
    uint8 is_written = 1;
    uint8 iambic_section;
   
    CySetTemp();
    iambic_section = CyEnterCriticalSection();  
         
    // This writes variable data to EEPROM
    error = EEPROM_ByteWrite(FIRMWARE_VERSION_MINOR,1u,EE_FIRMWARE_VERSION);
    error = EEPROM_ByteWrite(paddle,1u,EE_PADDLE_REGISTER);
    error = EEPROM_ByteWrite(mode,1u,EE_MODE_REGISTER);
    error = EEPROM_ByteWrite(spacing,1u,EE_SPACING_REGISTER);
    error = EEPROM_ByteWrite(lag,1u,EE_LAG_REGISTER);
    error = EEPROM_ByteWrite(memory,1u,EE_MEMORY_REGISTER);
    error = EEPROM_ByteWrite(l_sound,1u,EE_EXTERNAL_SOUND_REGISTER);
    error = EEPROM_ByteWrite(l_cw_mode,1u,EE_CW_MODE_REGISTER);
    error = EEPROM_ByteWrite(l_iambic_mode,1u,EE_IAMBIC_MODE_REGISTER);
    error = EEPROM_ByteWrite(l_semi_breakin,1u,EE_SEMI_BREAKIN);
    error = EEPROM_ByteWrite(l_semi_control,1u,EE_SEMI_CONTROL);
    error = EEPROM_ByteWrite(l_tx_hold,1u,EE_TX_HOLD);
    error = EEPROM_ByteWrite(((uint8) (weight * 100)),1u,EE_WEIGHT);
    error = EEPROM_ByteWrite(((uint8)(wpm)),1u,EE_WPM);
    error = EEPROM_ByteWrite(((uint8) (l_iambic_tuning / RATIO_FACTOR)),1u,EE_IAMBIC_TUNING);
       
    CyExitCriticalSection(iambic_section);
}

void cfg_set_speed(float wpm) {
     cfg_speed_micros = ((long)((long)ee_iambic_tuning * RATIO_FACTOR) / (long)wpm);
}

void tx_send(long mark) {
    uint8 cw_timer_status;
       
    if(ee_semi_breakin){
        switch(ee_semi_control){//Signal host application to turn on TX Mode via comm port
            case SEMI_USE_ATU:
                Control_Write((Control_Read()) | (CONTROL_ATU_0_OE | CONTROL_ATU_0)); 
                break;
            case SEMI_USE_AMP:
                Control_Write((Control_Read()) | CONTROL_AMP);
                break;
        }
        cw_timer_status = cw_timer(TRUE);
    }
    if (ee_cw_mode && TX_Request){
        if(!pa_on){
            Control_Write(Control_Read() | CONTROL_TX);
            pa_on = TRUE;
            if(ee_external_sound) Control_Write(Control_Read() | CONTROL_ATU_1);
        }
    }
  tx_timer = mark;
}

uint8 tx_loop(long mark) {
    static uint8 status = FALSE;
    
    if (ee_cw_mode && TX_Request){
        if(pa_on){
            if(tx_timer - mark < 0){
                Control_Write(Control_Read() & ~CONTROL_TX);
                pa_on = FALSE;
                if(ee_external_sound)Control_Write(Control_Read() & ~CONTROL_ATU_1);
            }
        }
        if((pa_on == FALSE) && TX_Request){
            status = TRUE;
        }else{
            status = FALSE;
        }
    }
    return status;
}

uint8_t key_read() {
    uint8_t k0,k1;
    
    k0 = E_key_0 ^ 1;
    k1 = E_key_1 ^ 1;
  
    if (cfg.mode == CFG_MODE_STRAIGHT) {
        k0 <<= 1;
        k1 = 0;
    } else if (cfg.paddle == CFG_PADDLE_NORMAL) {
        k1 <<= 1;
    } else {
        k0 <<= 1;
    }
    return (k0|k1);
}

uint8_t key_loop(long mark) {
  static uint8_t last, spacing=2, ultimatic, state=3, staged=0, mcode=0x80;
  static long read_after, start_after;
  uint8 k0,k1,ret = 0;
  long i;
  
  k0 = key_read();
  k1 = k0 & 2;
  k0 = k0 & 1;
  
  switch(state) {
  case 1: // waiting until ready for read
    if (cfg.spacing == CFG_SPACING_NONE)
      if ((k0 && last == DIT) || (k1 && last == DAH))
        read_after = mark /*+ KEY_DEBOUNCE_IAMBIC*/;
    if (read_after - mark < 0) state = 2;
    break;
  case 2: // waiting and reading
    if (start_after - mark < 0) state = 3;
    if (spacing < 4) break;
    //nobreak;
  case 3: // idle, spacing
    if (start_after - mark < 0) {
      switch (spacing) {
      case 0:
      case 2:
      case 3:
        break;
      case 1:
        ret = mcode;
        mcode=0x80;
        if (cfg.spacing >= CFG_SPACING_CHAR) state = 2;
        break;
      case 4:
        ret = mcode;
        //nobreak
      case 5:
      case 6:
        if (cfg.spacing >= CFG_SPACING_WORD) state = 2;
        break;
      }
      if (spacing < 7) spacing += 1;
      if (cfg.mode == CFG_MODE_BUG) state = 3;
      start_after += DIT * cfg_speed_micros;
    }
    break;
  case 4: // debouncing straight/bug down
    if (start_after - mark < 0) state = 5;
    break;
  case 5: // holding straight/bug
    break;
  case 6: // debouncing straight/bug up
    if (read_after - mark < 0) {
      state = 3;
      staged = 0;
      start_after = mark + DIT * cfg_speed_micros;
      spacing = 0;
      if (mcode & 0x01) {
        mcode = 0xFF;
      } else {
        mcode >>= 1;
        mcode |= 0x80;
      }
    }
    break;
  }

  if (cfg.mode == CFG_MODE_STRAIGHT || cfg.mode == CFG_MODE_BUG) {
    if (k1) {
      i = mark /*+ KEY_DEBOUNCE_SRAIGHT*/;
      if (state < 4) {
        state = 4;
        start_after = i;
      }
      if (state < 6) {
        read_after = i;
        tx_send(i);
        ret = TRUE;
      }
      last = DAH;
      staged = 0;
    } 
    else if (state == 5) {
      if (staged == DIT) {
        state = 3;
      } else {
        state = 6;
        tx_send(mark);
        ret = TRUE;
      }
    }
  } else {
    if (state > 3) state = 6;
  }
  
  if (!staged) {
    if (state > 1) {
      if (k0 && k1) {
        if (ultimatic && cfg.mode == CFG_MODE_ULTIMATIC) staged = last;
        else if (last == DIT) staged = DAH;
        else staged = DIT;
        ultimatic = 1;
      } else {
        if (k0) staged = DIT;
        if (k1) staged = DAH;
        ultimatic = 0;
      }
    }
    else if (!ultimatic || cfg.mode != CFG_MODE_ULTIMATIC) {
      if (k0 && (last == DAH || spacing > 0)) {
        if (cfg.memory & CFG_MEMORY_TYPE_DIT) {
          staged = DIT;
          ultimatic = 1;
        }
      }
      if (k1 && (last == DIT || spacing > 0)) {
        if (cfg.memory & CFG_MEMORY_TYPE_DAH) {
          staged = DAH;
          ultimatic = 1;
        }
      }
    }
  }
  
  if (state == 3 && staged) {
    i = mark + (long)staged * cfg_speed_micros;
    i += DIT * cfg_speed_micros * (cfg.weight * 2 - 1);
    read_after = start_after = i + (long)cfg.lag * 1000;
    tx_send(start_after);
    ret = TRUE;
    i += DIT * cfg_speed_micros * (2.0 - cfg.weight * 2);
    if (cfg.spacing >= CFG_SPACING_EL) {
      read_after = i /*- KEY_DEBOUNCE_IAMBIC*/;
      start_after = i;
    }
    spacing = 0;
    if (mcode & 0x01) {
      if (mcode != 0x01 || staged==DAH) mcode = 0xFF;
    } else {
      mcode >>= 1;
      if (staged==DAH) mcode |= 0x80;
    }
    last = staged;
    staged = 0;
    state = 1;
  }

  if (cfg.mode == CFG_MODE_STRAIGHT) return 0;
  return ret;
}

void iambic(){
    long mark;
    uint8_t key_down = FALSE;
    uint8 tx_loop_status;
    uint8 cw_timer_status;
            
    mark = Iambic_Counter_ReadCounter();
    key_down = key_loop(mark);
    tx_loop_status = tx_loop(mark);
    if(ee_semi_breakin){
        if(tx_loop_status){
            cw_timer_status = cw_timer(FALSE);
            if(cw_timer_status){ 
                switch(ee_semi_control){//Signal host application to turn off TX mode via the comm port
                    case SEMI_USE_ATU:
                        Control_Write(Control_Read() & ~CONTROL_ATU_0);
                        break;
                    case SEMI_USE_AMP:
                        Control_Write((Control_Read()) & ~CONTROL_AMP);
                        break;
                }
            }
        }
    }
}
  




