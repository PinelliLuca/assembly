#include<stdio.h>
#include<string.h>
#include<stdlib.h>
int elimina_doppie(char *str, char lettera);

int main() {
	char str[] = "b11 mm11 1 111 11";
	int ret;
	ret = elimina_doppie(str, '1');
	printf("%d\n", ret);
		printf("%s", str);
	//corretto
}
/*
.586
.model flat
.code
_elimina_doppie proc
push ebp
mov ebp,esp
push ebx
push edi
push esi

mov eax,0
mov ebx, dword ptr[ebp+8] ;stringa
mov ecx, dword ptr[ebp+12] ;doppia

mov esi,0
mov edi,0
mov dl,' '

ciclo:
cmp byte ptr[ebx+esi],0
je fine
call funz
cmp eax,1
je occ

inc esi
jmp ciclo

occ:
inc edi
mov byte ptr[ebx+esi],dl
jmp ciclo


fine:
mov esi,0

pop esi
pop edi
pop ebx
mov esp,ebp
pop ebp
_elimina_doppie endp
;-----------
funz proc
controllo:
mov ch,byte ptr[ebx+esi]
cmp ch,cl
je occorrenze
jmp niente

occorrenze:

inc esi
mov ch, byte ptr[ebx +esi] ;controllo lettera successiva
cmp ch,0 ;se è finito salti
je finito
cmp ch, cl ;se è uguale anche la terza salti finchè non cambia perchè tanto non va bene e la lasci dov'è
je ciclo_uguaglianza
inc eax
jmp finito

ciclo_uguaglianza:
inc esi
mov ch,byte ptr[ebx+esi]
cmp ch,cl
je ciclo_uguaglianza
jmp finito

niente:
inc esi
finito:

ret
funz endp
end
*/