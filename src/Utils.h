#ifndef UTILS_H_
#define UTILS_H_

#include <cstdio>
#include <cstdint>

namespace utils {
	void printInstruction(uint32_t inst) {
		for(int i = 31; i >= 0; i--) {
			printf("%d", (inst >> i) & 1);
			if(i % 4 == 0) printf(" ");
		}
        printf("\n");
	}
}

#endif // UTILS_H_