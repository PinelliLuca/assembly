.586
.model flat
.code
_elimina_doppie proc
push ebp
mov ebp,esp
push ebx
push esi
push edi

mov eax,0
mov esi,0

mov ebx,dword ptr[ebp+8] ;frase
mov ecx, dword ptr[ebp+12] ;lettera

ciclo:
cmp dword ptr[ebx+esi],0
je fine
mov ch, byte ptr[ebx+esi]
cmp ch,cl
je prima_occorrenza
inc esi
jmp ciclo

prima_occorrenza:
inc esi
mov ch, byte ptr[ebx+esi]
cmp ch,cl
je controllo ;salto se sono a due occorrenze per verificare se c'è anche la terza
jmp ciclo

controllo:
inc esi
mov ch, byte ptr[ebx+esi]
cmp ch,cl
je incremento
jmp change

change:
inc eax
mov ch,' '
mov byte ptr[ebx+esi-2],ch
mov byte ptr[ebx+esi-1],ch
jmp ciclo

incremento:
inc esi
mov ch,byte ptr[ebx+esi]
cmp ch,cl
je incremento
jmp ciclo


fine:
mov esi,0

pop edi
pop esi
pop ebx
mov esp,ebp
pop ebp
ret
_elimina_doppie endp
end
