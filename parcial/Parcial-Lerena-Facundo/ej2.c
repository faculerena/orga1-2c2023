#include <stdio.h>
#include <stdint.h>
#define N 12

int main(){

    int32_t src[N] = {
        0xFFFFFFFF, 0x95555555, 0xF4444444, 0xF1111111,
        0xFFFFFF00, 0xF5005555, 0x95444444, 0xF1113311,
        0xFF00FFFF, 0xf5550055, 0xA4444433, 0xA1551111
    };
    
    int32_t dst[N] = {
        0xF5005555, 0x95444444, 0xF1113311, 0xFFFFFF00,
        0xF1111111, 0xFFFFFFFF, 0x95555555, 0xF4444444,
        0xA1551111, 0xFF00FFFF, 0xf5550055, 0xA4444433
    };

    int32_t i = 0;
    int32_t n = 12;
    
    for(i = 0; i < n; i++) {
        dst[i] |= src[i];
        printf(" %08x", dst[i]);
    }

    return 0;
}