#include<stdio.h>
int cerca_combinazioni_numero(char *src, int num, int *vettori_num);
int main() {
	char str[255] = "1b11ella 1 la vita 11 11 aa1 111 234 11 ";
	int vettori_num[3];
	int ret = cerca_combinazioni_numero(str, 1, vettori_num);
	printf("prima(3): %d\n", vettori_num[0]);
	printf("seconda(4): %d\n", vettori_num[1]);
	printf("terza(1) %d\n", vettori_num[2]);
	return 0;
}