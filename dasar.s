section .data
    f1 db 'C'
    f2 db 'T'
    f3 db 'F'
    f4 db '{'
    f5 db 't'
    f6 db '4'
    f7 db 'h'
    f8 db 'u'
    f9 db 'n'
    f10 db 'k'
    f11 db '_'
    f12 db 'Y'
    f13 db '0'
    f14 db 'u'
    f15 db '_'
    f16 db 'f'
    f17 db '0'
    f18 db 'r'
    f19 db '_'
    f20 db 'S'
    f21 db '0'
    f22 db '1'
    f23 db 'v'
    f24 db '1'
    f25 db 'n'
    f26 db 'g'
    f27 db '}'
    newline db 0xa

section .text
    global _start

_start:
    ; syscall untuk write
    mov eax, 4
    ; File descriptor untuk stdout
    mov ebx, 1

    mov ecx, f1
    mov edx, 1
    ; Panggil syscall
    int 0x80

    mov ecx, f2
    ; Panggil syscall
    int 0x80

    mov ecx, f3
    ; Panggil syscall
    int 0x80

    mov ecx, f4
    ; Panggil syscall
    int 0x80

    mov ecx, f5
    ; Panggil syscall
    int 0x80

    mov ecx, f6
    ; Panggil syscall
    int 0x80

    mov ecx, f7
    ; Panggil syscall
    int 0x80

    mov ecx, f8
    ; Panggil syscall
    int 0x80

    mov ecx, f9
    ; Panggil syscall
    int 0x80

    mov ecx, f10
    ; Panggil syscall
    int 0x80

    mov ecx, f11
    ; Panggil syscall
    int 0x80

    mov ecx, f12
    ; Panggil syscall
    int 0x80

    mov ecx, f13
    ; Panggil syscall
    int 0x80

    mov ecx, f14
    ; Panggil syscall
    int 0x80

    mov ecx, f15
    ; Panggil syscall
    int 0x80

    mov ecx, f16
    ; Panggil syscall
    int 0x80

    mov ecx, f17
    ; Panggil syscall
    int 0x80

    mov ecx, f18
    ; Panggil syscall
    int 0x80

    mov ecx, f19
    ; Panggil syscall
    int 0x80

    mov ecx, f20
    ; Panggil syscall
    int 0x80

    mov ecx, f21
    ; Panggil syscall
    int 0x80

    mov ecx, f22
    ; Panggil syscall
    int 0x80

    mov ecx, f23
    ; Panggil syscall
    int 0x80

    mov ecx, f24
    ; Panggil syscall
    int 0x80

    mov ecx, f25
    ; Panggil syscall
    int 0x80

    mov ecx, f26
    ; Panggil syscall
    int 0x80

    mov ecx, f27
    ; Panggil syscall
    int 0x80

    ; syscall untuk exit
    mov eax, 1
    ; Kode keluar
    xor ebx, ebx
    ; Panggil syscall
    int 0x80
