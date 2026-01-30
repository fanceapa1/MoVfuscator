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
mov $0x2, %eax
mov $0x00000001, %edx
mov $2, %ebx
movl %ebx, v_src
movl %eax, v_val
movl %ecx, backup_space
movl $0, %ecx
movb v_val, %ch
movb v_src, %cl
movb M + 458752(%ecx), %al
movl $0, v_eax
movb %al, v_eax
movl $0, %ecx
movb v_val, %ch
movb v_src, %cl
movb M + 524288(%ecx), %dl
movl $0, v_edx
movb %dl, v_edx
movl backup_space, %ecx
movl v_eax, %eax
movl v_edx, %edx
et_exit:
