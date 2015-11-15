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

#define CFG_LAG_MAX 25
#define CFG_WEIGHT_DIST 0.50

// Morse code timings.
#define DIT 1
#define DAH 3

// Keying modes
#define CFG_MODE_IAMBIC 0
#define CFG_MODE_ULTIMATIC 1
#define CFG_MODE_BUG 2
#define CFG_MODE_STRAIGHT 3

// Keying memory
#define CFG_MEMORY_TYPE_A 0
#define CFG_MEMORY_TYPE_DAH 1
#define CFG_MEMORY_TYPE_DIT 2
#define CFG_MEMORY_TYPE_B 3

// Keying spacing
#define CFG_SPACING_NONE 0
#define CFG_SPACING_EL 1
#define CFG_SPACING_CHAR 2
#define CFG_SPACING_WORD 3

// Paddle reversal
#define CFG_PADDLE_NORMAL 0
#define CFG_PADDLE_REVERSE 1

// Debounce straight key both up and down.
#define KEY_DEBOUNCE_SRAIGHT 8000

// Start looking for key input 2ms early in case the key is bouncing
// up at the moment we're suppose to start a new dit or dah.
#define KEY_DEBOUNCE_IAMBIC 2000


#define IAMBIC_CALIBRATION_SPEED  1200000
#define RATIO_FACTOR 10000
#define TX_HOLD_DEFAULT 127

#define EE_FIRMWARE_VERSION 0u
#define EE_PADDLE_REGISTER 1u
#define EE_MODE_REGISTER 2u
#define EE_SPACING_REGISTER 3u
#define EE_LAG_REGISTER 4u
#define EE_MEMORY_REGISTER 5u
#define EE_INTERNAL_SOUND_REGISTER 6u
#define EE_EXTERNAL_SOUND_REGISTER 7u
#define EE_CW_MODE_REGISTER 8u
#define EE_IAMBIC_MODE_REGISTER 9u
#define EE_SEMI_BREAKIN 10u
#define EE_TX_HOLD 11u
#define EE_WPM 12u
#define EE_WEIGHT 13u
#define EE_IAMBIC_TUNING 14u
#define EE_SEMI_CONTROL 15u

#define SEMI_USE_ATU 0
#define SEMI_USE_AMP 1



