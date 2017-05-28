#ifndef IQHUMP_H
#define IQHUMP_H
   
#include "cytypes.h"

#define IQHUMP_1KHZ
#define IQHUMP8

#ifdef IQHUMP_1KHZ
    #ifdef IQHUMP4
        extern const int16 code iqhump4_1khz[1728];
    #endif
        #ifdef IQHUMP6
    extern const int16 code iqhump6_1khz[2496];
    #endif
    #ifdef IQHUMP8
        extern const int16 code iqhump8_1khz[3264];
    #endif
#endif

#ifdef IQHUMP_4KHZ
    #ifdef IQHUMP4
        extern const int16 code iqhump4_4khz[1728];
    #endif
    #ifdef IQHUMP6
        extern const int16 code iqhump6_4khz[2496];
    #endif
    #ifdef IQHUMP8
        extern const int16 code iqhump8_4khz[3264];
    #endif
#endif

#ifdef UNMUTEHUMP
extern const int16 code unmutehump1[96];
extern const int16 code unmutehump2[192];
#endif /* UNMUTEHUMP */

#ifdef WHITENOISETABLE
extern const int16 code white_noise[384];
#endif /* WHITENOISETABLE */

#endif /* IQHUMP_H */
