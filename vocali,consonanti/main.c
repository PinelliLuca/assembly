#include<stdio.h>
int conta_vocali_consonanti(unsigned char *src, int *dstV, int *dstC);
int main() {
	char str[255] = "CiAO MammA ";
	int dstV, dstC, ret;
	ret = conta_vocali_consonanti(str, &dstV, &dstC);
	printf("Vocali(5): %d\nConsonanti(4): %d\n", dstV, dstC);
	return 0;
}