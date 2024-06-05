section .data
    galf1 db '}{galf_',0            
    galf2 db 'si_siht{GALF',0        
    prompt db 'prompt the enter: ',0
    e_k db 'TtVo1',0              

section .text
    global _start

_start:
    mov eax, 4
    mov ebx, 1
    mov ecx, prompt
    mov edx, 20
    int 0x80

    mov eax, 3
    mov ebx, 0
    mov ecx, e_k
    mov edx, 20
    int 0x80

    mov eax, 4
    mov ebx, 1
    mov ecx, galf1
    mov edx, 7
    int 0x80

    mov ecx, galf2
    mov edx, 14
    int 0x80

    mov eax, 4
    mov ebx, 1
    mov ecx, e_k
    mov edx, 5
    int 0x80

    cmp dword [e_k], 'TtVo1'
    jne not_matched
    jmp exit

not_matched:
    mov eax, 4
    mov ebx, 1
    mov ecx, not_matched_msg
    mov edx, 14
    int 0x80
    jmp exit

exit:
    mov eax, 1
    xor ebx, ebx
    int 0x80

section .data
    not_matched_msg db 'Wrong key! Try again.',0
