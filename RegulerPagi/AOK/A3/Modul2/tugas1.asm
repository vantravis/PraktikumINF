;YASYA NURRUS SILMI - 2014470070

%include "asm_io.inc"

segment .data
message1 db "Masukkan angka pertama = ",0
message2 db "Masukkan angka kedua = ",0
s_tambah db "+",0
s_kurang db "-",0
s_kali db "*",0
s_samaDengan db "=",0

segment .bss
input1   resd 1
input2   resd 1

segment .text

global _asm_main

_asm_main:
enter 0,0
pusha

popa
mov eax,message1
call print_string
mov ebx,input1
call get_int

mov eax,message2
call print_string
mov ebx,input2
call get_int

call print_nl

mov eax,[input1]
call print_int
mov eax,s_tambah
call print_string
mov eax,[input2]
call print_int
mov eax,s_samaDengan	
call print_string
mov eax,[input1]
add eax,[input2]
mov ebx,eax
mov eax,ebx
call print_int
call print_nl

mov eax,[input1]
call print_int
mov eax,s_kurang
call print_string
mov eax,[input2]
call print_int
mov eax,s_samaDengan	
call print_string
mov eax,[input1]
sub eax,[input2]
mov ebx,eax
mov eax,ebx
call print_int
call print_nl

mov eax,[input1]
call print_int
mov eax,s_kali
call print_string
mov eax,[input2]
call print_int
mov eax,s_samaDengan	
call print_string
mov eax,[input1]
imul eax,[input2]
mov ebx,eax
mov eax,ebx
call print_int
call print_nl

leave
ret

get_int:
        call read_int
        mov [ebx], eax
        ret                       
