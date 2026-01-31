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
movl $0b11011111111110111111, %eax
mov $0, %ebx
mov $0, %ecx
movl $32, %edx
mov $0, %ecx
movl %eax, v_val
movl $2, v_src
movl $0, %ecx
movb v_val, %ch
movb v_src, %cl
movb M + 458752(%ecx), %al
movl $0, v_eax
movb %al, v_eax
movl v_eax, %eax
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %edx, v_dest
movl $0, %ecx
movb v_dest+0, %cl
movb M + 1180160(%ecx), %al
movb M + 1180416(%ecx), %bl
movb %al, v_dest+0
movl $0, %ecx
movb v_dest+1, %ch
movb %bl, %cl
movb M + 131072(%ecx), %al
movb M + 196608(%ecx), %dl
movb %al, v_dest+1
movb %dl, %bl
movl $0, %ecx
movb v_dest+2, %ch
movb %bl, %cl
movb M + 131072(%ecx), %al
movb M + 196608(%ecx), %dl
movb %al, v_dest+2
movb %dl, %bl
movl $0, %ecx
movb v_dest+3, %ch
movb %bl, %cl
movb M + 131072(%ecx), %al
movb M + 196608(%ecx), %dl
movb %al, v_dest+3
movb %dl, %bl
movl backup_space, %ecx
movl backup_space+4, %eax
movl backup_space+8, %ebx
movl v_dest, %edx
et_exit:
movl %ebx, %eax
movl $1, %ebx
movl $1, %eax
int $0x80
