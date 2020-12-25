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

ciclo:
cmp byte ptr[ebx+esi],0
je fine

mov ch,byte ptr[ebx+esi]
cmp ch,cl
je occorrenze
jmp niente

occorrenze:
inc esi
mov ch, byte ptr[ebx + esi] ;controllo lettera successiva
cmp ch,0 ;se è finito salti
je fine
mov ch, byte ptr[ebx+esi+1]
cmp ch, cl ;se è uguale anche la terza salti finchè non cambia perchè tanto non va bene e la lasci dov'è
je ciclo_uguaglianza
jmp change


ciclo_uguaglianza:
inc esi
mov ch,byte ptr[ebx+esi]
cmp ch,cl
je ciclo_uguaglianza
jmp ciclo

change:
inc eax
mov ch,' '
mov byte ptr[ebx+esi-1],ch
mov byte ptr[ebx+esi],ch
jmp ciclo

niente:
inc esi
jmp ciclo

fine:
mov esi,0


pop esi
pop edi
pop ebx
mov esp,ebp
pop ebp
ret
_elimina_doppie endp
end
