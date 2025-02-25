section .data
        secret db "senhasecreta", 0 
        secretlen equ $ - secret

        openmsg db "fui descoberto"
        openmsglen equ $ - openmsg
        
section .text
global _start

_start:
        mov eax, [esp]
        cmp eax, 1
        jle end
        mov esi, [esp+8]
        mov edi, secret

comparte_loop:
        mov al, [esi]
        mov ah, [edi]
        cmp al, ah
        jne end
        cmp ah, 0
        je open
        inc esi 
        inc edi
        jmp comparte_loop
open:
        mov eax, 0x04
        mov ebx, 1
