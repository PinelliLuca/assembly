.586
.model flat
.code

_cerca_combinazioni_numero proc
push ebp
mov ebp,esp
push ebx
push esi
push edi

mov eax,0


mov ebx, dword ptr[ebp+8] ;stringa
mov ecx, dword ptr[ebp+12] ;numero da cercare
mov edx, dword ptr[ebp+16] ;vettori num

mov dword ptr[edx+0],0
mov dword ptr[edx+4],0
mov dword ptr[edx+8],0

mov esi,0

ciclo:
cmp byte ptr[ebx+esi],0
je fine
call funz 
cmp eax,1
je prima_occ
cmp eax,2
je seconda_occ
cmp eax,3
je terza_occ
jmp procedi

procedi:
inc esi
jmp ciclo

prima_occ:
inc dword ptr[edx+0]
jmp ciclo

seconda_occ:
inc dword ptr[edx+4]
jmp ciclo
terza_occ:
inc dword ptr[edx+8]
jmp ciclo

fine:
mov esi,0

pop edi
pop esi
pop ebx
mov esp,ebp
pop ebp
ret
_cerca_combinazioni_numero endp
;---------------------------------------------------
funz proc

controllo:
mov ch,byte ptr[ebx+esi]
sub ch,'0'

cmp ch,cl
je occorrenza
jmp niente

occorrenza:
inc eax
inc esi
mov ch,byte ptr[ebx+esi]
cmp ch,0
je finito
sub ch,'0'
cmp ch,cl
je seconda_occorrenza
jmp finito

seconda_occorrenza:
inc eax
inc esi
mov ch,byte ptr[ebx+esi]
sub ch,'0'
cmp ch,0
je finito
cmp ch,cl
je terza_occorrenza
jmp finito

terza_occorrenza:
inc eax
inc esi
jmp finito

niente: 
mov eax,0

finito:
ret
funz endp
end