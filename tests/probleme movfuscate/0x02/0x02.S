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
.text
.global main
main:
movl $0, %ecx
movl $3, %eax
movl $5, %ebx
movl $1, %ecx
end:
movl $1, %eax
mov $0, %ebx
int $0x80
