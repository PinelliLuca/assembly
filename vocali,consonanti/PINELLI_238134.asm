.586
.model flat
.code
_conta_vocali_consonanti proc
push ebp
mov ebp,esp
push ebx
push edx
push edi
push esi

mov eax,0
mov esi,0
mov ecx,0 ;vocali
mov edx,0 ;consonanti
mov ebx,dword ptr[ebp+8] ; stringa

ciclo:
cmp byte ptr[ebx+esi],0
je finito
mov al,byte ptr[ebx+esi] ;lettera corrente in al
cmp al, 96
ja minus
cmp al, 64
ja maius

jmp niente

minus:
cmp al, 122
jb minuscola
jmp niente

minuscola:
cmp al,'a'
je vocale
cmp al,'e'
je vocale
cmp al,'i'
je vocale
cmp al,'o'
je vocale
cmp al,'u'
je vocale
jmp consonante

maius:
cmp al, 91
jb maiuscola

maiuscola:
cmp al,'A'
je vocale
cmp al,'E'
je vocale
cmp al,'I'
je vocale
cmp al,'O'
je vocale
cmp al,'U'
je vocale
jmp consonante

vocale:
inc ecx
inc esi
jmp ciclo

consonante:
inc edx
inc esi
jmp ciclo

niente:
inc esi
jmp ciclo

finito:
mov eax,0
mov ebx,dword ptr[ebp+12]
mov [ebx],ecx
mov ebx,dword ptr[ebp+16]
mov [ebx],edx

add ecx,edx
cmp ecx,0
je vuota
cmp ecx,esi
je solo_lettere
jmp fine
vuota:
mov eax,-1
jmp fine
solo_lettere:

mov eax,-2
jmp fine

fine:
pop esi
pop edi
pop ebx
mov esp,ebp
pop ebp
ret
_conta_vocali_consonanti endp
end