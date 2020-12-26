#include <stdio.h>

int elimina_doppie(char *str, char lettera);

int main() {
	char str[255] = "uso11gli 1 al11posto11degli11spazi1111";
	int ret;
	ret = elimina_doppie(str, '1');
	printf("%s\n", str);
	printf("%d", ret);
	return 0;
}