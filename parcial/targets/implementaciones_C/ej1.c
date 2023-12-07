#include <stdio.h>
#include <stdint.h>
#define N 12

int main(){

	int32_t arr[N] = {
		0xFFFFFFFF, 0x95555555, 0xF4444444, 0xF1111111,
		0xFFFFFF00, 0xF5005555, 0x95444444, 0xF1113311,
		0xFF00FFFF, 0xf5550055, 0xA4444433, 0xA1551111
	};

	int32_t suma = 0x00000000;
	int32_t i = 0;
	int32_t n = 12;
	for(i = 0; i < n; i++) {
		if((i & 0x1) == 0x1 ) {
			suma |= arr[i];
		}
	}
	printf("Suma %08x", suma);
	
	return 0;
}
