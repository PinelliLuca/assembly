#include<stdio.h>

int cerca_combinazioni_numero(char *src, int num, int *vettori_num);

int main() {
	char str[255] = "bella la 1 vita 11 1 2345 111";
	int vettori_num[3];
	int	ret = cerca_combinazioni_numero(str, 1, vettori_num);

	printf("Prima occorrenza: %d\n", vettori_num[0]);
	printf("Seconda occorrenza: %d\n", vettori_num[1]);
	printf("Terza occorrenza: %d\n", vettori_num[2]);
	return 0;
}

