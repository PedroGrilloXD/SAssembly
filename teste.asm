section .data
        msg db "Se voce esta vendo isso quer dizer que funcionou", 0x00
        msg_len equ $ - msg  ;


global _start
_start:
        mov eax, 0x04
        mov ebx, 0x01
        mov ecx, msg
        mov edx, msg_len
        int 0x80

        mov eax, 0x01
        mov ebx, 0
        int 0x80
