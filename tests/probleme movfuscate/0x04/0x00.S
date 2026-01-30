.data
M: .incbin "tables.bin"
backup_space: .space 16
v_eax: .space 4
v_ebx: .space 4
v_ecx: .space 4
v_edx: .space 4
v_esp: .space 4
v_esi: .space 4
v_src: .space 4
v_dest: .space 4
v_val: .space 4
v_res: .space 4
v_temp: .space 4
v_mul_src: .space 4
n: .long 6
v: .word 10, 20, 40, 60, 100, 5
.text
.global main
main:
movl %eax, backup_space+4
movl $v, %eax
movl %eax, %edi
movl backup_space+4, %eax
mov $1, %ecx
mov (%edi, %ecx, 4), %edx
etexit:
mov $1, %eax
mov $0, %ebx
int $0x80
