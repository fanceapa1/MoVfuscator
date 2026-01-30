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
s: .long 0
.text
.global main
main:
movl n, %ecx
mov $0, %eax
mov $0, %ebx
movl %ecx, %eax
movl %eax, v_val
movl %eax, v_mul_src
movl $0, v_res
movl $0, %ecx
movb v_val+0, %ch
movb v_mul_src+0, %cl
movb M + 262144(%ecx), %al
movl $0, v_temp
movb %al, v_temp+0
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %edx, backup_space+12
movl v_temp, %ecx
movl %ecx, v_src
movl v_res, %ecx
movl %ecx, v_dest

movl $0, %ebx
movl $0, %ecx
movb v_dest+0, %cl
movb v_src+0, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+0
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+1, %cl
movb v_src+1, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+1
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+2, %cl
movb v_src+2, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+2
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+3, %cl
movb v_src+3, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+3
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl backup_space, %ecx
movl backup_space+4, %eax
movl backup_space+8, %ebx
movl backup_space+12, %edx
movl %eax, backup_space+4
movl v_dest, %eax
movl %eax, v_res
movl backup_space+4, %eax

movl $0, %ecx
movb v_val+0, %ch
movb v_mul_src+0, %cl
movb M + 327680(%ecx), %al
movl $0, v_temp
movb %al, v_temp+1
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %edx, backup_space+12
movl v_temp, %ecx
movl %ecx, v_src
movl v_res, %ecx
movl %ecx, v_dest

movl $0, %ebx
movl $0, %ecx
movb v_dest+0, %cl
movb v_src+0, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+0
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+1, %cl
movb v_src+1, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+1
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+2, %cl
movb v_src+2, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+2
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+3, %cl
movb v_src+3, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+3
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl backup_space, %ecx
movl backup_space+4, %eax
movl backup_space+8, %ebx
movl backup_space+12, %edx
movl %eax, backup_space+4
movl v_dest, %eax
movl %eax, v_res
movl backup_space+4, %eax

movl $0, %ecx
movb v_val+0, %ch
movb v_mul_src+1, %cl
movb M + 262144(%ecx), %al
movl $0, v_temp
movb %al, v_temp+1
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %edx, backup_space+12
movl v_temp, %ecx
movl %ecx, v_src
movl v_res, %ecx
movl %ecx, v_dest

movl $0, %ebx
movl $0, %ecx
movb v_dest+0, %cl
movb v_src+0, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+0
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+1, %cl
movb v_src+1, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+1
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+2, %cl
movb v_src+2, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+2
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+3, %cl
movb v_src+3, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+3
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl backup_space, %ecx
movl backup_space+4, %eax
movl backup_space+8, %ebx
movl backup_space+12, %edx
movl %eax, backup_space+4
movl v_dest, %eax
movl %eax, v_res
movl backup_space+4, %eax

movl $0, %ecx
movb v_val+0, %ch
movb v_mul_src+1, %cl
movb M + 327680(%ecx), %al
movl $0, v_temp
movb %al, v_temp+2
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %edx, backup_space+12
movl v_temp, %ecx
movl %ecx, v_src
movl v_res, %ecx
movl %ecx, v_dest

movl $0, %ebx
movl $0, %ecx
movb v_dest+0, %cl
movb v_src+0, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+0
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+1, %cl
movb v_src+1, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+1
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+2, %cl
movb v_src+2, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+2
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+3, %cl
movb v_src+3, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+3
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl backup_space, %ecx
movl backup_space+4, %eax
movl backup_space+8, %ebx
movl backup_space+12, %edx
movl %eax, backup_space+4
movl v_dest, %eax
movl %eax, v_res
movl backup_space+4, %eax

movl $0, %ecx
movb v_val+0, %ch
movb v_mul_src+2, %cl
movb M + 262144(%ecx), %al
movl $0, v_temp
movb %al, v_temp+2
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %edx, backup_space+12
movl v_temp, %ecx
movl %ecx, v_src
movl v_res, %ecx
movl %ecx, v_dest

movl $0, %ebx
movl $0, %ecx
movb v_dest+0, %cl
movb v_src+0, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+0
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+1, %cl
movb v_src+1, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+1
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+2, %cl
movb v_src+2, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+2
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+3, %cl
movb v_src+3, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+3
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl backup_space, %ecx
movl backup_space+4, %eax
movl backup_space+8, %ebx
movl backup_space+12, %edx
movl %eax, backup_space+4
movl v_dest, %eax
movl %eax, v_res
movl backup_space+4, %eax

movl $0, %ecx
movb v_val+0, %ch
movb v_mul_src+2, %cl
movb M + 327680(%ecx), %al
movl $0, v_temp
movb %al, v_temp+3
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %edx, backup_space+12
movl v_temp, %ecx
movl %ecx, v_src
movl v_res, %ecx
movl %ecx, v_dest

movl $0, %ebx
movl $0, %ecx
movb v_dest+0, %cl
movb v_src+0, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+0
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+1, %cl
movb v_src+1, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+1
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+2, %cl
movb v_src+2, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+2
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+3, %cl
movb v_src+3, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+3
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl backup_space, %ecx
movl backup_space+4, %eax
movl backup_space+8, %ebx
movl backup_space+12, %edx
movl %eax, backup_space+4
movl v_dest, %eax
movl %eax, v_res
movl backup_space+4, %eax

movl $0, %ecx
movb v_val+0, %ch
movb v_mul_src+3, %cl
movb M + 262144(%ecx), %al
movl $0, v_temp
movb %al, v_temp+3
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %edx, backup_space+12
movl v_temp, %ecx
movl %ecx, v_src
movl v_res, %ecx
movl %ecx, v_dest

movl $0, %ebx
movl $0, %ecx
movb v_dest+0, %cl
movb v_src+0, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+0
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+1, %cl
movb v_src+1, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+1
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+2, %cl
movb v_src+2, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+2
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+3, %cl
movb v_src+3, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+3
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl backup_space, %ecx
movl backup_space+4, %eax
movl backup_space+8, %ebx
movl backup_space+12, %edx
movl %eax, backup_space+4
movl v_dest, %eax
movl %eax, v_res
movl backup_space+4, %eax

movl $0, %ecx
movb v_val+1, %ch
movb v_mul_src+0, %cl
movb M + 262144(%ecx), %al
movl $0, v_temp
movb %al, v_temp+1
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %edx, backup_space+12
movl v_temp, %ecx
movl %ecx, v_src
movl v_res, %ecx
movl %ecx, v_dest

movl $0, %ebx
movl $0, %ecx
movb v_dest+0, %cl
movb v_src+0, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+0
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+1, %cl
movb v_src+1, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+1
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+2, %cl
movb v_src+2, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+2
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+3, %cl
movb v_src+3, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+3
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl backup_space, %ecx
movl backup_space+4, %eax
movl backup_space+8, %ebx
movl backup_space+12, %edx
movl %eax, backup_space+4
movl v_dest, %eax
movl %eax, v_res
movl backup_space+4, %eax

movl $0, %ecx
movb v_val+1, %ch
movb v_mul_src+0, %cl
movb M + 327680(%ecx), %al
movl $0, v_temp
movb %al, v_temp+2
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %edx, backup_space+12
movl v_temp, %ecx
movl %ecx, v_src
movl v_res, %ecx
movl %ecx, v_dest

movl $0, %ebx
movl $0, %ecx
movb v_dest+0, %cl
movb v_src+0, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+0
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+1, %cl
movb v_src+1, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+1
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+2, %cl
movb v_src+2, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+2
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+3, %cl
movb v_src+3, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+3
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl backup_space, %ecx
movl backup_space+4, %eax
movl backup_space+8, %ebx
movl backup_space+12, %edx
movl %eax, backup_space+4
movl v_dest, %eax
movl %eax, v_res
movl backup_space+4, %eax

movl $0, %ecx
movb v_val+1, %ch
movb v_mul_src+1, %cl
movb M + 262144(%ecx), %al
movl $0, v_temp
movb %al, v_temp+2
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %edx, backup_space+12
movl v_temp, %ecx
movl %ecx, v_src
movl v_res, %ecx
movl %ecx, v_dest

movl $0, %ebx
movl $0, %ecx
movb v_dest+0, %cl
movb v_src+0, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+0
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+1, %cl
movb v_src+1, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+1
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+2, %cl
movb v_src+2, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+2
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+3, %cl
movb v_src+3, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+3
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl backup_space, %ecx
movl backup_space+4, %eax
movl backup_space+8, %ebx
movl backup_space+12, %edx
movl %eax, backup_space+4
movl v_dest, %eax
movl %eax, v_res
movl backup_space+4, %eax

movl $0, %ecx
movb v_val+1, %ch
movb v_mul_src+1, %cl
movb M + 327680(%ecx), %al
movl $0, v_temp
movb %al, v_temp+3
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %edx, backup_space+12
movl v_temp, %ecx
movl %ecx, v_src
movl v_res, %ecx
movl %ecx, v_dest

movl $0, %ebx
movl $0, %ecx
movb v_dest+0, %cl
movb v_src+0, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+0
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+1, %cl
movb v_src+1, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+1
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+2, %cl
movb v_src+2, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+2
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+3, %cl
movb v_src+3, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+3
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl backup_space, %ecx
movl backup_space+4, %eax
movl backup_space+8, %ebx
movl backup_space+12, %edx
movl %eax, backup_space+4
movl v_dest, %eax
movl %eax, v_res
movl backup_space+4, %eax

movl $0, %ecx
movb v_val+1, %ch
movb v_mul_src+2, %cl
movb M + 262144(%ecx), %al
movl $0, v_temp
movb %al, v_temp+3
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %edx, backup_space+12
movl v_temp, %ecx
movl %ecx, v_src
movl v_res, %ecx
movl %ecx, v_dest

movl $0, %ebx
movl $0, %ecx
movb v_dest+0, %cl
movb v_src+0, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+0
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+1, %cl
movb v_src+1, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+1
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+2, %cl
movb v_src+2, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+2
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+3, %cl
movb v_src+3, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+3
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl backup_space, %ecx
movl backup_space+4, %eax
movl backup_space+8, %ebx
movl backup_space+12, %edx
movl %eax, backup_space+4
movl v_dest, %eax
movl %eax, v_res
movl backup_space+4, %eax

movl $0, %ecx
movb v_val+2, %ch
movb v_mul_src+0, %cl
movb M + 262144(%ecx), %al
movl $0, v_temp
movb %al, v_temp+2
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %edx, backup_space+12
movl v_temp, %ecx
movl %ecx, v_src
movl v_res, %ecx
movl %ecx, v_dest

movl $0, %ebx
movl $0, %ecx
movb v_dest+0, %cl
movb v_src+0, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+0
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+1, %cl
movb v_src+1, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+1
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+2, %cl
movb v_src+2, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+2
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+3, %cl
movb v_src+3, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+3
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl backup_space, %ecx
movl backup_space+4, %eax
movl backup_space+8, %ebx
movl backup_space+12, %edx
movl %eax, backup_space+4
movl v_dest, %eax
movl %eax, v_res
movl backup_space+4, %eax

movl $0, %ecx
movb v_val+2, %ch
movb v_mul_src+0, %cl
movb M + 327680(%ecx), %al
movl $0, v_temp
movb %al, v_temp+3
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %edx, backup_space+12
movl v_temp, %ecx
movl %ecx, v_src
movl v_res, %ecx
movl %ecx, v_dest

movl $0, %ebx
movl $0, %ecx
movb v_dest+0, %cl
movb v_src+0, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+0
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+1, %cl
movb v_src+1, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+1
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+2, %cl
movb v_src+2, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+2
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+3, %cl
movb v_src+3, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+3
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl backup_space, %ecx
movl backup_space+4, %eax
movl backup_space+8, %ebx
movl backup_space+12, %edx
movl %eax, backup_space+4
movl v_dest, %eax
movl %eax, v_res
movl backup_space+4, %eax

movl $0, %ecx
movb v_val+2, %ch
movb v_mul_src+1, %cl
movb M + 262144(%ecx), %al
movl $0, v_temp
movb %al, v_temp+3
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %edx, backup_space+12
movl v_temp, %ecx
movl %ecx, v_src
movl v_res, %ecx
movl %ecx, v_dest

movl $0, %ebx
movl $0, %ecx
movb v_dest+0, %cl
movb v_src+0, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+0
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+1, %cl
movb v_src+1, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+1
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+2, %cl
movb v_src+2, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+2
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+3, %cl
movb v_src+3, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+3
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl backup_space, %ecx
movl backup_space+4, %eax
movl backup_space+8, %ebx
movl backup_space+12, %edx
movl %eax, backup_space+4
movl v_dest, %eax
movl %eax, v_res
movl backup_space+4, %eax

movl $0, %ecx
movb v_val+3, %ch
movb v_mul_src+0, %cl
movb M + 262144(%ecx), %al
movl $0, v_temp
movb %al, v_temp+3
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %edx, backup_space+12
movl v_temp, %ecx
movl %ecx, v_src
movl v_res, %ecx
movl %ecx, v_dest

movl $0, %ebx
movl $0, %ecx
movb v_dest+0, %cl
movb v_src+0, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+0
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+1, %cl
movb v_src+1, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+1
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+2, %cl
movb v_src+2, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+2
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+3, %cl
movb v_src+3, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+3
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl backup_space, %ecx
movl backup_space+4, %eax
movl backup_space+8, %ebx
movl backup_space+12, %edx
movl %eax, backup_space+4
movl v_dest, %eax
movl %eax, v_res
movl backup_space+4, %eax

movl v_res, %eax
movl $0, %edx
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %edx, backup_space+12
movl %eax, v_src
movl %ebx, v_dest

movl $0, %ebx
movl $0, %ecx
movb v_dest+0, %cl
movb v_src+0, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+0
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+1, %cl
movb v_src+1, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+1
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+2, %cl
movb v_src+2, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+2
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+3, %cl
movb v_src+3, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+3
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl backup_space, %ecx
movl backup_space+4, %eax
movl backup_space+8, %ebx
movl backup_space+12, %edx
movl v_dest, %ebx
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %ecx, v_dest
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
movl v_dest, %ecx
movl %ecx, %eax
movl %eax, v_val
movl %eax, v_mul_src
movl $0, v_res
movl $0, %ecx
movb v_val+0, %ch
movb v_mul_src+0, %cl
movb M + 262144(%ecx), %al
movl $0, v_temp
movb %al, v_temp+0
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %edx, backup_space+12
movl v_temp, %ecx
movl %ecx, v_src
movl v_res, %ecx
movl %ecx, v_dest

movl $0, %ebx
movl $0, %ecx
movb v_dest+0, %cl
movb v_src+0, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+0
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+1, %cl
movb v_src+1, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+1
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+2, %cl
movb v_src+2, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+2
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+3, %cl
movb v_src+3, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+3
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl backup_space, %ecx
movl backup_space+4, %eax
movl backup_space+8, %ebx
movl backup_space+12, %edx
movl %eax, backup_space+4
movl v_dest, %eax
movl %eax, v_res
movl backup_space+4, %eax

movl $0, %ecx
movb v_val+0, %ch
movb v_mul_src+0, %cl
movb M + 327680(%ecx), %al
movl $0, v_temp
movb %al, v_temp+1
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %edx, backup_space+12
movl v_temp, %ecx
movl %ecx, v_src
movl v_res, %ecx
movl %ecx, v_dest

movl $0, %ebx
movl $0, %ecx
movb v_dest+0, %cl
movb v_src+0, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+0
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+1, %cl
movb v_src+1, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+1
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+2, %cl
movb v_src+2, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+2
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+3, %cl
movb v_src+3, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+3
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl backup_space, %ecx
movl backup_space+4, %eax
movl backup_space+8, %ebx
movl backup_space+12, %edx
movl %eax, backup_space+4
movl v_dest, %eax
movl %eax, v_res
movl backup_space+4, %eax

movl $0, %ecx
movb v_val+0, %ch
movb v_mul_src+1, %cl
movb M + 262144(%ecx), %al
movl $0, v_temp
movb %al, v_temp+1
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %edx, backup_space+12
movl v_temp, %ecx
movl %ecx, v_src
movl v_res, %ecx
movl %ecx, v_dest

movl $0, %ebx
movl $0, %ecx
movb v_dest+0, %cl
movb v_src+0, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+0
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+1, %cl
movb v_src+1, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+1
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+2, %cl
movb v_src+2, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+2
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+3, %cl
movb v_src+3, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+3
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl backup_space, %ecx
movl backup_space+4, %eax
movl backup_space+8, %ebx
movl backup_space+12, %edx
movl %eax, backup_space+4
movl v_dest, %eax
movl %eax, v_res
movl backup_space+4, %eax

movl $0, %ecx
movb v_val+0, %ch
movb v_mul_src+1, %cl
movb M + 327680(%ecx), %al
movl $0, v_temp
movb %al, v_temp+2
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %edx, backup_space+12
movl v_temp, %ecx
movl %ecx, v_src
movl v_res, %ecx
movl %ecx, v_dest

movl $0, %ebx
movl $0, %ecx
movb v_dest+0, %cl
movb v_src+0, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+0
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+1, %cl
movb v_src+1, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+1
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+2, %cl
movb v_src+2, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+2
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+3, %cl
movb v_src+3, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+3
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl backup_space, %ecx
movl backup_space+4, %eax
movl backup_space+8, %ebx
movl backup_space+12, %edx
movl %eax, backup_space+4
movl v_dest, %eax
movl %eax, v_res
movl backup_space+4, %eax

movl $0, %ecx
movb v_val+0, %ch
movb v_mul_src+2, %cl
movb M + 262144(%ecx), %al
movl $0, v_temp
movb %al, v_temp+2
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %edx, backup_space+12
movl v_temp, %ecx
movl %ecx, v_src
movl v_res, %ecx
movl %ecx, v_dest

movl $0, %ebx
movl $0, %ecx
movb v_dest+0, %cl
movb v_src+0, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+0
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+1, %cl
movb v_src+1, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+1
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+2, %cl
movb v_src+2, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+2
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+3, %cl
movb v_src+3, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+3
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl backup_space, %ecx
movl backup_space+4, %eax
movl backup_space+8, %ebx
movl backup_space+12, %edx
movl %eax, backup_space+4
movl v_dest, %eax
movl %eax, v_res
movl backup_space+4, %eax

movl $0, %ecx
movb v_val+0, %ch
movb v_mul_src+2, %cl
movb M + 327680(%ecx), %al
movl $0, v_temp
movb %al, v_temp+3
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %edx, backup_space+12
movl v_temp, %ecx
movl %ecx, v_src
movl v_res, %ecx
movl %ecx, v_dest

movl $0, %ebx
movl $0, %ecx
movb v_dest+0, %cl
movb v_src+0, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+0
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+1, %cl
movb v_src+1, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+1
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+2, %cl
movb v_src+2, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+2
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+3, %cl
movb v_src+3, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+3
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl backup_space, %ecx
movl backup_space+4, %eax
movl backup_space+8, %ebx
movl backup_space+12, %edx
movl %eax, backup_space+4
movl v_dest, %eax
movl %eax, v_res
movl backup_space+4, %eax

movl $0, %ecx
movb v_val+0, %ch
movb v_mul_src+3, %cl
movb M + 262144(%ecx), %al
movl $0, v_temp
movb %al, v_temp+3
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %edx, backup_space+12
movl v_temp, %ecx
movl %ecx, v_src
movl v_res, %ecx
movl %ecx, v_dest

movl $0, %ebx
movl $0, %ecx
movb v_dest+0, %cl
movb v_src+0, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+0
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+1, %cl
movb v_src+1, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+1
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+2, %cl
movb v_src+2, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+2
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+3, %cl
movb v_src+3, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+3
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl backup_space, %ecx
movl backup_space+4, %eax
movl backup_space+8, %ebx
movl backup_space+12, %edx
movl %eax, backup_space+4
movl v_dest, %eax
movl %eax, v_res
movl backup_space+4, %eax

movl $0, %ecx
movb v_val+1, %ch
movb v_mul_src+0, %cl
movb M + 262144(%ecx), %al
movl $0, v_temp
movb %al, v_temp+1
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %edx, backup_space+12
movl v_temp, %ecx
movl %ecx, v_src
movl v_res, %ecx
movl %ecx, v_dest

movl $0, %ebx
movl $0, %ecx
movb v_dest+0, %cl
movb v_src+0, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+0
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+1, %cl
movb v_src+1, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+1
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+2, %cl
movb v_src+2, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+2
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+3, %cl
movb v_src+3, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+3
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl backup_space, %ecx
movl backup_space+4, %eax
movl backup_space+8, %ebx
movl backup_space+12, %edx
movl %eax, backup_space+4
movl v_dest, %eax
movl %eax, v_res
movl backup_space+4, %eax

movl $0, %ecx
movb v_val+1, %ch
movb v_mul_src+0, %cl
movb M + 327680(%ecx), %al
movl $0, v_temp
movb %al, v_temp+2
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %edx, backup_space+12
movl v_temp, %ecx
movl %ecx, v_src
movl v_res, %ecx
movl %ecx, v_dest

movl $0, %ebx
movl $0, %ecx
movb v_dest+0, %cl
movb v_src+0, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+0
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+1, %cl
movb v_src+1, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+1
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+2, %cl
movb v_src+2, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+2
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+3, %cl
movb v_src+3, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+3
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl backup_space, %ecx
movl backup_space+4, %eax
movl backup_space+8, %ebx
movl backup_space+12, %edx
movl %eax, backup_space+4
movl v_dest, %eax
movl %eax, v_res
movl backup_space+4, %eax

movl $0, %ecx
movb v_val+1, %ch
movb v_mul_src+1, %cl
movb M + 262144(%ecx), %al
movl $0, v_temp
movb %al, v_temp+2
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %edx, backup_space+12
movl v_temp, %ecx
movl %ecx, v_src
movl v_res, %ecx
movl %ecx, v_dest

movl $0, %ebx
movl $0, %ecx
movb v_dest+0, %cl
movb v_src+0, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+0
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+1, %cl
movb v_src+1, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+1
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+2, %cl
movb v_src+2, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+2
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+3, %cl
movb v_src+3, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+3
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl backup_space, %ecx
movl backup_space+4, %eax
movl backup_space+8, %ebx
movl backup_space+12, %edx
movl %eax, backup_space+4
movl v_dest, %eax
movl %eax, v_res
movl backup_space+4, %eax

movl $0, %ecx
movb v_val+1, %ch
movb v_mul_src+1, %cl
movb M + 327680(%ecx), %al
movl $0, v_temp
movb %al, v_temp+3
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %edx, backup_space+12
movl v_temp, %ecx
movl %ecx, v_src
movl v_res, %ecx
movl %ecx, v_dest

movl $0, %ebx
movl $0, %ecx
movb v_dest+0, %cl
movb v_src+0, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+0
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+1, %cl
movb v_src+1, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+1
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+2, %cl
movb v_src+2, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+2
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+3, %cl
movb v_src+3, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+3
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl backup_space, %ecx
movl backup_space+4, %eax
movl backup_space+8, %ebx
movl backup_space+12, %edx
movl %eax, backup_space+4
movl v_dest, %eax
movl %eax, v_res
movl backup_space+4, %eax

movl $0, %ecx
movb v_val+1, %ch
movb v_mul_src+2, %cl
movb M + 262144(%ecx), %al
movl $0, v_temp
movb %al, v_temp+3
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %edx, backup_space+12
movl v_temp, %ecx
movl %ecx, v_src
movl v_res, %ecx
movl %ecx, v_dest

movl $0, %ebx
movl $0, %ecx
movb v_dest+0, %cl
movb v_src+0, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+0
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+1, %cl
movb v_src+1, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+1
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+2, %cl
movb v_src+2, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+2
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+3, %cl
movb v_src+3, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+3
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl backup_space, %ecx
movl backup_space+4, %eax
movl backup_space+8, %ebx
movl backup_space+12, %edx
movl %eax, backup_space+4
movl v_dest, %eax
movl %eax, v_res
movl backup_space+4, %eax

movl $0, %ecx
movb v_val+2, %ch
movb v_mul_src+0, %cl
movb M + 262144(%ecx), %al
movl $0, v_temp
movb %al, v_temp+2
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %edx, backup_space+12
movl v_temp, %ecx
movl %ecx, v_src
movl v_res, %ecx
movl %ecx, v_dest

movl $0, %ebx
movl $0, %ecx
movb v_dest+0, %cl
movb v_src+0, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+0
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+1, %cl
movb v_src+1, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+1
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+2, %cl
movb v_src+2, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+2
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+3, %cl
movb v_src+3, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+3
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl backup_space, %ecx
movl backup_space+4, %eax
movl backup_space+8, %ebx
movl backup_space+12, %edx
movl %eax, backup_space+4
movl v_dest, %eax
movl %eax, v_res
movl backup_space+4, %eax

movl $0, %ecx
movb v_val+2, %ch
movb v_mul_src+0, %cl
movb M + 327680(%ecx), %al
movl $0, v_temp
movb %al, v_temp+3
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %edx, backup_space+12
movl v_temp, %ecx
movl %ecx, v_src
movl v_res, %ecx
movl %ecx, v_dest

movl $0, %ebx
movl $0, %ecx
movb v_dest+0, %cl
movb v_src+0, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+0
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+1, %cl
movb v_src+1, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+1
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+2, %cl
movb v_src+2, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+2
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+3, %cl
movb v_src+3, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+3
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl backup_space, %ecx
movl backup_space+4, %eax
movl backup_space+8, %ebx
movl backup_space+12, %edx
movl %eax, backup_space+4
movl v_dest, %eax
movl %eax, v_res
movl backup_space+4, %eax

movl $0, %ecx
movb v_val+2, %ch
movb v_mul_src+1, %cl
movb M + 262144(%ecx), %al
movl $0, v_temp
movb %al, v_temp+3
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %edx, backup_space+12
movl v_temp, %ecx
movl %ecx, v_src
movl v_res, %ecx
movl %ecx, v_dest

movl $0, %ebx
movl $0, %ecx
movb v_dest+0, %cl
movb v_src+0, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+0
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+1, %cl
movb v_src+1, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+1
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+2, %cl
movb v_src+2, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+2
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+3, %cl
movb v_src+3, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+3
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl backup_space, %ecx
movl backup_space+4, %eax
movl backup_space+8, %ebx
movl backup_space+12, %edx
movl %eax, backup_space+4
movl v_dest, %eax
movl %eax, v_res
movl backup_space+4, %eax

movl $0, %ecx
movb v_val+3, %ch
movb v_mul_src+0, %cl
movb M + 262144(%ecx), %al
movl $0, v_temp
movb %al, v_temp+3
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %edx, backup_space+12
movl v_temp, %ecx
movl %ecx, v_src
movl v_res, %ecx
movl %ecx, v_dest

movl $0, %ebx
movl $0, %ecx
movb v_dest+0, %cl
movb v_src+0, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+0
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+1, %cl
movb v_src+1, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+1
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+2, %cl
movb v_src+2, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+2
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+3, %cl
movb v_src+3, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+3
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl backup_space, %ecx
movl backup_space+4, %eax
movl backup_space+8, %ebx
movl backup_space+12, %edx
movl %eax, backup_space+4
movl v_dest, %eax
movl %eax, v_res
movl backup_space+4, %eax

movl v_res, %eax
movl $0, %edx
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %edx, backup_space+12
movl %eax, v_src
movl %ebx, v_dest

movl $0, %ebx
movl $0, %ecx
movb v_dest+0, %cl
movb v_src+0, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+0
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+1, %cl
movb v_src+1, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+1
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+2, %cl
movb v_src+2, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+2
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+3, %cl
movb v_src+3, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+3
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl backup_space, %ecx
movl backup_space+4, %eax
movl backup_space+8, %ebx
movl backup_space+12, %edx
movl v_dest, %ebx
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %ecx, v_dest
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
movl v_dest, %ecx
movl %ecx, %eax
movl %eax, v_val
movl %eax, v_mul_src
movl $0, v_res
movl $0, %ecx
movb v_val+0, %ch
movb v_mul_src+0, %cl
movb M + 262144(%ecx), %al
movl $0, v_temp
movb %al, v_temp+0
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %edx, backup_space+12
movl v_temp, %ecx
movl %ecx, v_src
movl v_res, %ecx
movl %ecx, v_dest

movl $0, %ebx
movl $0, %ecx
movb v_dest+0, %cl
movb v_src+0, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+0
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+1, %cl
movb v_src+1, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+1
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+2, %cl
movb v_src+2, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+2
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+3, %cl
movb v_src+3, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+3
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl backup_space, %ecx
movl backup_space+4, %eax
movl backup_space+8, %ebx
movl backup_space+12, %edx
movl %eax, backup_space+4
movl v_dest, %eax
movl %eax, v_res
movl backup_space+4, %eax

movl $0, %ecx
movb v_val+0, %ch
movb v_mul_src+0, %cl
movb M + 327680(%ecx), %al
movl $0, v_temp
movb %al, v_temp+1
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %edx, backup_space+12
movl v_temp, %ecx
movl %ecx, v_src
movl v_res, %ecx
movl %ecx, v_dest

movl $0, %ebx
movl $0, %ecx
movb v_dest+0, %cl
movb v_src+0, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+0
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+1, %cl
movb v_src+1, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+1
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+2, %cl
movb v_src+2, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+2
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+3, %cl
movb v_src+3, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+3
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl backup_space, %ecx
movl backup_space+4, %eax
movl backup_space+8, %ebx
movl backup_space+12, %edx
movl %eax, backup_space+4
movl v_dest, %eax
movl %eax, v_res
movl backup_space+4, %eax

movl $0, %ecx
movb v_val+0, %ch
movb v_mul_src+1, %cl
movb M + 262144(%ecx), %al
movl $0, v_temp
movb %al, v_temp+1
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %edx, backup_space+12
movl v_temp, %ecx
movl %ecx, v_src
movl v_res, %ecx
movl %ecx, v_dest

movl $0, %ebx
movl $0, %ecx
movb v_dest+0, %cl
movb v_src+0, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+0
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+1, %cl
movb v_src+1, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+1
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+2, %cl
movb v_src+2, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+2
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+3, %cl
movb v_src+3, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+3
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl backup_space, %ecx
movl backup_space+4, %eax
movl backup_space+8, %ebx
movl backup_space+12, %edx
movl %eax, backup_space+4
movl v_dest, %eax
movl %eax, v_res
movl backup_space+4, %eax

movl $0, %ecx
movb v_val+0, %ch
movb v_mul_src+1, %cl
movb M + 327680(%ecx), %al
movl $0, v_temp
movb %al, v_temp+2
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %edx, backup_space+12
movl v_temp, %ecx
movl %ecx, v_src
movl v_res, %ecx
movl %ecx, v_dest

movl $0, %ebx
movl $0, %ecx
movb v_dest+0, %cl
movb v_src+0, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+0
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+1, %cl
movb v_src+1, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+1
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+2, %cl
movb v_src+2, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+2
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+3, %cl
movb v_src+3, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+3
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl backup_space, %ecx
movl backup_space+4, %eax
movl backup_space+8, %ebx
movl backup_space+12, %edx
movl %eax, backup_space+4
movl v_dest, %eax
movl %eax, v_res
movl backup_space+4, %eax

movl $0, %ecx
movb v_val+0, %ch
movb v_mul_src+2, %cl
movb M + 262144(%ecx), %al
movl $0, v_temp
movb %al, v_temp+2
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %edx, backup_space+12
movl v_temp, %ecx
movl %ecx, v_src
movl v_res, %ecx
movl %ecx, v_dest

movl $0, %ebx
movl $0, %ecx
movb v_dest+0, %cl
movb v_src+0, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+0
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+1, %cl
movb v_src+1, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+1
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+2, %cl
movb v_src+2, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+2
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+3, %cl
movb v_src+3, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+3
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl backup_space, %ecx
movl backup_space+4, %eax
movl backup_space+8, %ebx
movl backup_space+12, %edx
movl %eax, backup_space+4
movl v_dest, %eax
movl %eax, v_res
movl backup_space+4, %eax

movl $0, %ecx
movb v_val+0, %ch
movb v_mul_src+2, %cl
movb M + 327680(%ecx), %al
movl $0, v_temp
movb %al, v_temp+3
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %edx, backup_space+12
movl v_temp, %ecx
movl %ecx, v_src
movl v_res, %ecx
movl %ecx, v_dest

movl $0, %ebx
movl $0, %ecx
movb v_dest+0, %cl
movb v_src+0, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+0
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+1, %cl
movb v_src+1, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+1
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+2, %cl
movb v_src+2, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+2
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+3, %cl
movb v_src+3, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+3
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl backup_space, %ecx
movl backup_space+4, %eax
movl backup_space+8, %ebx
movl backup_space+12, %edx
movl %eax, backup_space+4
movl v_dest, %eax
movl %eax, v_res
movl backup_space+4, %eax

movl $0, %ecx
movb v_val+0, %ch
movb v_mul_src+3, %cl
movb M + 262144(%ecx), %al
movl $0, v_temp
movb %al, v_temp+3
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %edx, backup_space+12
movl v_temp, %ecx
movl %ecx, v_src
movl v_res, %ecx
movl %ecx, v_dest

movl $0, %ebx
movl $0, %ecx
movb v_dest+0, %cl
movb v_src+0, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+0
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+1, %cl
movb v_src+1, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+1
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+2, %cl
movb v_src+2, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+2
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+3, %cl
movb v_src+3, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+3
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl backup_space, %ecx
movl backup_space+4, %eax
movl backup_space+8, %ebx
movl backup_space+12, %edx
movl %eax, backup_space+4
movl v_dest, %eax
movl %eax, v_res
movl backup_space+4, %eax

movl $0, %ecx
movb v_val+1, %ch
movb v_mul_src+0, %cl
movb M + 262144(%ecx), %al
movl $0, v_temp
movb %al, v_temp+1
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %edx, backup_space+12
movl v_temp, %ecx
movl %ecx, v_src
movl v_res, %ecx
movl %ecx, v_dest

movl $0, %ebx
movl $0, %ecx
movb v_dest+0, %cl
movb v_src+0, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+0
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+1, %cl
movb v_src+1, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+1
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+2, %cl
movb v_src+2, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+2
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+3, %cl
movb v_src+3, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+3
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl backup_space, %ecx
movl backup_space+4, %eax
movl backup_space+8, %ebx
movl backup_space+12, %edx
movl %eax, backup_space+4
movl v_dest, %eax
movl %eax, v_res
movl backup_space+4, %eax

movl $0, %ecx
movb v_val+1, %ch
movb v_mul_src+0, %cl
movb M + 327680(%ecx), %al
movl $0, v_temp
movb %al, v_temp+2
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %edx, backup_space+12
movl v_temp, %ecx
movl %ecx, v_src
movl v_res, %ecx
movl %ecx, v_dest

movl $0, %ebx
movl $0, %ecx
movb v_dest+0, %cl
movb v_src+0, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+0
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+1, %cl
movb v_src+1, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+1
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+2, %cl
movb v_src+2, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+2
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+3, %cl
movb v_src+3, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+3
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl backup_space, %ecx
movl backup_space+4, %eax
movl backup_space+8, %ebx
movl backup_space+12, %edx
movl %eax, backup_space+4
movl v_dest, %eax
movl %eax, v_res
movl backup_space+4, %eax

movl $0, %ecx
movb v_val+1, %ch
movb v_mul_src+1, %cl
movb M + 262144(%ecx), %al
movl $0, v_temp
movb %al, v_temp+2
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %edx, backup_space+12
movl v_temp, %ecx
movl %ecx, v_src
movl v_res, %ecx
movl %ecx, v_dest

movl $0, %ebx
movl $0, %ecx
movb v_dest+0, %cl
movb v_src+0, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+0
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+1, %cl
movb v_src+1, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+1
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+2, %cl
movb v_src+2, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+2
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+3, %cl
movb v_src+3, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+3
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl backup_space, %ecx
movl backup_space+4, %eax
movl backup_space+8, %ebx
movl backup_space+12, %edx
movl %eax, backup_space+4
movl v_dest, %eax
movl %eax, v_res
movl backup_space+4, %eax

movl $0, %ecx
movb v_val+1, %ch
movb v_mul_src+1, %cl
movb M + 327680(%ecx), %al
movl $0, v_temp
movb %al, v_temp+3
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %edx, backup_space+12
movl v_temp, %ecx
movl %ecx, v_src
movl v_res, %ecx
movl %ecx, v_dest

movl $0, %ebx
movl $0, %ecx
movb v_dest+0, %cl
movb v_src+0, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+0
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+1, %cl
movb v_src+1, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+1
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+2, %cl
movb v_src+2, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+2
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+3, %cl
movb v_src+3, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+3
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl backup_space, %ecx
movl backup_space+4, %eax
movl backup_space+8, %ebx
movl backup_space+12, %edx
movl %eax, backup_space+4
movl v_dest, %eax
movl %eax, v_res
movl backup_space+4, %eax

movl $0, %ecx
movb v_val+1, %ch
movb v_mul_src+2, %cl
movb M + 262144(%ecx), %al
movl $0, v_temp
movb %al, v_temp+3
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %edx, backup_space+12
movl v_temp, %ecx
movl %ecx, v_src
movl v_res, %ecx
movl %ecx, v_dest

movl $0, %ebx
movl $0, %ecx
movb v_dest+0, %cl
movb v_src+0, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+0
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+1, %cl
movb v_src+1, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+1
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+2, %cl
movb v_src+2, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+2
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+3, %cl
movb v_src+3, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+3
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl backup_space, %ecx
movl backup_space+4, %eax
movl backup_space+8, %ebx
movl backup_space+12, %edx
movl %eax, backup_space+4
movl v_dest, %eax
movl %eax, v_res
movl backup_space+4, %eax

movl $0, %ecx
movb v_val+2, %ch
movb v_mul_src+0, %cl
movb M + 262144(%ecx), %al
movl $0, v_temp
movb %al, v_temp+2
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %edx, backup_space+12
movl v_temp, %ecx
movl %ecx, v_src
movl v_res, %ecx
movl %ecx, v_dest

movl $0, %ebx
movl $0, %ecx
movb v_dest+0, %cl
movb v_src+0, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+0
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+1, %cl
movb v_src+1, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+1
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+2, %cl
movb v_src+2, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+2
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+3, %cl
movb v_src+3, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+3
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl backup_space, %ecx
movl backup_space+4, %eax
movl backup_space+8, %ebx
movl backup_space+12, %edx
movl %eax, backup_space+4
movl v_dest, %eax
movl %eax, v_res
movl backup_space+4, %eax

movl $0, %ecx
movb v_val+2, %ch
movb v_mul_src+0, %cl
movb M + 327680(%ecx), %al
movl $0, v_temp
movb %al, v_temp+3
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %edx, backup_space+12
movl v_temp, %ecx
movl %ecx, v_src
movl v_res, %ecx
movl %ecx, v_dest

movl $0, %ebx
movl $0, %ecx
movb v_dest+0, %cl
movb v_src+0, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+0
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+1, %cl
movb v_src+1, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+1
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+2, %cl
movb v_src+2, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+2
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+3, %cl
movb v_src+3, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+3
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl backup_space, %ecx
movl backup_space+4, %eax
movl backup_space+8, %ebx
movl backup_space+12, %edx
movl %eax, backup_space+4
movl v_dest, %eax
movl %eax, v_res
movl backup_space+4, %eax

movl $0, %ecx
movb v_val+2, %ch
movb v_mul_src+1, %cl
movb M + 262144(%ecx), %al
movl $0, v_temp
movb %al, v_temp+3
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %edx, backup_space+12
movl v_temp, %ecx
movl %ecx, v_src
movl v_res, %ecx
movl %ecx, v_dest

movl $0, %ebx
movl $0, %ecx
movb v_dest+0, %cl
movb v_src+0, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+0
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+1, %cl
movb v_src+1, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+1
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+2, %cl
movb v_src+2, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+2
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+3, %cl
movb v_src+3, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+3
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl backup_space, %ecx
movl backup_space+4, %eax
movl backup_space+8, %ebx
movl backup_space+12, %edx
movl %eax, backup_space+4
movl v_dest, %eax
movl %eax, v_res
movl backup_space+4, %eax

movl $0, %ecx
movb v_val+3, %ch
movb v_mul_src+0, %cl
movb M + 262144(%ecx), %al
movl $0, v_temp
movb %al, v_temp+3
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %edx, backup_space+12
movl v_temp, %ecx
movl %ecx, v_src
movl v_res, %ecx
movl %ecx, v_dest

movl $0, %ebx
movl $0, %ecx
movb v_dest+0, %cl
movb v_src+0, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+0
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+1, %cl
movb v_src+1, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+1
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+2, %cl
movb v_src+2, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+2
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+3, %cl
movb v_src+3, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+3
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl backup_space, %ecx
movl backup_space+4, %eax
movl backup_space+8, %ebx
movl backup_space+12, %edx
movl %eax, backup_space+4
movl v_dest, %eax
movl %eax, v_res
movl backup_space+4, %eax

movl v_res, %eax
movl $0, %edx
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %edx, backup_space+12
movl %eax, v_src
movl %ebx, v_dest

movl $0, %ebx
movl $0, %ecx
movb v_dest+0, %cl
movb v_src+0, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+0
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+1, %cl
movb v_src+1, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+1
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+2, %cl
movb v_src+2, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+2
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+3, %cl
movb v_src+3, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+3
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl backup_space, %ecx
movl backup_space+4, %eax
movl backup_space+8, %ebx
movl backup_space+12, %edx
movl v_dest, %ebx
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %ecx, v_dest
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
movl v_dest, %ecx
movl %ecx, %eax
movl %eax, v_val
movl %eax, v_mul_src
movl $0, v_res
movl $0, %ecx
movb v_val+0, %ch
movb v_mul_src+0, %cl
movb M + 262144(%ecx), %al
movl $0, v_temp
movb %al, v_temp+0
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %edx, backup_space+12
movl v_temp, %ecx
movl %ecx, v_src
movl v_res, %ecx
movl %ecx, v_dest

movl $0, %ebx
movl $0, %ecx
movb v_dest+0, %cl
movb v_src+0, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+0
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+1, %cl
movb v_src+1, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+1
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+2, %cl
movb v_src+2, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+2
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+3, %cl
movb v_src+3, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+3
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl backup_space, %ecx
movl backup_space+4, %eax
movl backup_space+8, %ebx
movl backup_space+12, %edx
movl %eax, backup_space+4
movl v_dest, %eax
movl %eax, v_res
movl backup_space+4, %eax

movl $0, %ecx
movb v_val+0, %ch
movb v_mul_src+0, %cl
movb M + 327680(%ecx), %al
movl $0, v_temp
movb %al, v_temp+1
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %edx, backup_space+12
movl v_temp, %ecx
movl %ecx, v_src
movl v_res, %ecx
movl %ecx, v_dest

movl $0, %ebx
movl $0, %ecx
movb v_dest+0, %cl
movb v_src+0, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+0
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+1, %cl
movb v_src+1, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+1
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+2, %cl
movb v_src+2, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+2
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+3, %cl
movb v_src+3, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+3
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl backup_space, %ecx
movl backup_space+4, %eax
movl backup_space+8, %ebx
movl backup_space+12, %edx
movl %eax, backup_space+4
movl v_dest, %eax
movl %eax, v_res
movl backup_space+4, %eax

movl $0, %ecx
movb v_val+0, %ch
movb v_mul_src+1, %cl
movb M + 262144(%ecx), %al
movl $0, v_temp
movb %al, v_temp+1
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %edx, backup_space+12
movl v_temp, %ecx
movl %ecx, v_src
movl v_res, %ecx
movl %ecx, v_dest

movl $0, %ebx
movl $0, %ecx
movb v_dest+0, %cl
movb v_src+0, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+0
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+1, %cl
movb v_src+1, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+1
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+2, %cl
movb v_src+2, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+2
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+3, %cl
movb v_src+3, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+3
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl backup_space, %ecx
movl backup_space+4, %eax
movl backup_space+8, %ebx
movl backup_space+12, %edx
movl %eax, backup_space+4
movl v_dest, %eax
movl %eax, v_res
movl backup_space+4, %eax

movl $0, %ecx
movb v_val+0, %ch
movb v_mul_src+1, %cl
movb M + 327680(%ecx), %al
movl $0, v_temp
movb %al, v_temp+2
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %edx, backup_space+12
movl v_temp, %ecx
movl %ecx, v_src
movl v_res, %ecx
movl %ecx, v_dest

movl $0, %ebx
movl $0, %ecx
movb v_dest+0, %cl
movb v_src+0, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+0
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+1, %cl
movb v_src+1, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+1
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+2, %cl
movb v_src+2, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+2
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+3, %cl
movb v_src+3, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+3
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl backup_space, %ecx
movl backup_space+4, %eax
movl backup_space+8, %ebx
movl backup_space+12, %edx
movl %eax, backup_space+4
movl v_dest, %eax
movl %eax, v_res
movl backup_space+4, %eax

movl $0, %ecx
movb v_val+0, %ch
movb v_mul_src+2, %cl
movb M + 262144(%ecx), %al
movl $0, v_temp
movb %al, v_temp+2
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %edx, backup_space+12
movl v_temp, %ecx
movl %ecx, v_src
movl v_res, %ecx
movl %ecx, v_dest

movl $0, %ebx
movl $0, %ecx
movb v_dest+0, %cl
movb v_src+0, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+0
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+1, %cl
movb v_src+1, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+1
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+2, %cl
movb v_src+2, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+2
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+3, %cl
movb v_src+3, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+3
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl backup_space, %ecx
movl backup_space+4, %eax
movl backup_space+8, %ebx
movl backup_space+12, %edx
movl %eax, backup_space+4
movl v_dest, %eax
movl %eax, v_res
movl backup_space+4, %eax

movl $0, %ecx
movb v_val+0, %ch
movb v_mul_src+2, %cl
movb M + 327680(%ecx), %al
movl $0, v_temp
movb %al, v_temp+3
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %edx, backup_space+12
movl v_temp, %ecx
movl %ecx, v_src
movl v_res, %ecx
movl %ecx, v_dest

movl $0, %ebx
movl $0, %ecx
movb v_dest+0, %cl
movb v_src+0, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+0
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+1, %cl
movb v_src+1, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+1
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+2, %cl
movb v_src+2, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+2
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+3, %cl
movb v_src+3, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+3
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl backup_space, %ecx
movl backup_space+4, %eax
movl backup_space+8, %ebx
movl backup_space+12, %edx
movl %eax, backup_space+4
movl v_dest, %eax
movl %eax, v_res
movl backup_space+4, %eax

movl $0, %ecx
movb v_val+0, %ch
movb v_mul_src+3, %cl
movb M + 262144(%ecx), %al
movl $0, v_temp
movb %al, v_temp+3
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %edx, backup_space+12
movl v_temp, %ecx
movl %ecx, v_src
movl v_res, %ecx
movl %ecx, v_dest

movl $0, %ebx
movl $0, %ecx
movb v_dest+0, %cl
movb v_src+0, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+0
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+1, %cl
movb v_src+1, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+1
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+2, %cl
movb v_src+2, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+2
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+3, %cl
movb v_src+3, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+3
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl backup_space, %ecx
movl backup_space+4, %eax
movl backup_space+8, %ebx
movl backup_space+12, %edx
movl %eax, backup_space+4
movl v_dest, %eax
movl %eax, v_res
movl backup_space+4, %eax

movl $0, %ecx
movb v_val+1, %ch
movb v_mul_src+0, %cl
movb M + 262144(%ecx), %al
movl $0, v_temp
movb %al, v_temp+1
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %edx, backup_space+12
movl v_temp, %ecx
movl %ecx, v_src
movl v_res, %ecx
movl %ecx, v_dest

movl $0, %ebx
movl $0, %ecx
movb v_dest+0, %cl
movb v_src+0, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+0
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+1, %cl
movb v_src+1, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+1
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+2, %cl
movb v_src+2, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+2
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+3, %cl
movb v_src+3, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+3
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl backup_space, %ecx
movl backup_space+4, %eax
movl backup_space+8, %ebx
movl backup_space+12, %edx
movl %eax, backup_space+4
movl v_dest, %eax
movl %eax, v_res
movl backup_space+4, %eax

movl $0, %ecx
movb v_val+1, %ch
movb v_mul_src+0, %cl
movb M + 327680(%ecx), %al
movl $0, v_temp
movb %al, v_temp+2
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %edx, backup_space+12
movl v_temp, %ecx
movl %ecx, v_src
movl v_res, %ecx
movl %ecx, v_dest

movl $0, %ebx
movl $0, %ecx
movb v_dest+0, %cl
movb v_src+0, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+0
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+1, %cl
movb v_src+1, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+1
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+2, %cl
movb v_src+2, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+2
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+3, %cl
movb v_src+3, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+3
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl backup_space, %ecx
movl backup_space+4, %eax
movl backup_space+8, %ebx
movl backup_space+12, %edx
movl %eax, backup_space+4
movl v_dest, %eax
movl %eax, v_res
movl backup_space+4, %eax

movl $0, %ecx
movb v_val+1, %ch
movb v_mul_src+1, %cl
movb M + 262144(%ecx), %al
movl $0, v_temp
movb %al, v_temp+2
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %edx, backup_space+12
movl v_temp, %ecx
movl %ecx, v_src
movl v_res, %ecx
movl %ecx, v_dest

movl $0, %ebx
movl $0, %ecx
movb v_dest+0, %cl
movb v_src+0, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+0
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+1, %cl
movb v_src+1, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+1
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+2, %cl
movb v_src+2, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+2
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+3, %cl
movb v_src+3, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+3
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl backup_space, %ecx
movl backup_space+4, %eax
movl backup_space+8, %ebx
movl backup_space+12, %edx
movl %eax, backup_space+4
movl v_dest, %eax
movl %eax, v_res
movl backup_space+4, %eax

movl $0, %ecx
movb v_val+1, %ch
movb v_mul_src+1, %cl
movb M + 327680(%ecx), %al
movl $0, v_temp
movb %al, v_temp+3
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %edx, backup_space+12
movl v_temp, %ecx
movl %ecx, v_src
movl v_res, %ecx
movl %ecx, v_dest

movl $0, %ebx
movl $0, %ecx
movb v_dest+0, %cl
movb v_src+0, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+0
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+1, %cl
movb v_src+1, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+1
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+2, %cl
movb v_src+2, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+2
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+3, %cl
movb v_src+3, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+3
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl backup_space, %ecx
movl backup_space+4, %eax
movl backup_space+8, %ebx
movl backup_space+12, %edx
movl %eax, backup_space+4
movl v_dest, %eax
movl %eax, v_res
movl backup_space+4, %eax

movl $0, %ecx
movb v_val+1, %ch
movb v_mul_src+2, %cl
movb M + 262144(%ecx), %al
movl $0, v_temp
movb %al, v_temp+3
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %edx, backup_space+12
movl v_temp, %ecx
movl %ecx, v_src
movl v_res, %ecx
movl %ecx, v_dest

movl $0, %ebx
movl $0, %ecx
movb v_dest+0, %cl
movb v_src+0, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+0
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+1, %cl
movb v_src+1, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+1
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+2, %cl
movb v_src+2, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+2
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+3, %cl
movb v_src+3, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+3
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl backup_space, %ecx
movl backup_space+4, %eax
movl backup_space+8, %ebx
movl backup_space+12, %edx
movl %eax, backup_space+4
movl v_dest, %eax
movl %eax, v_res
movl backup_space+4, %eax

movl $0, %ecx
movb v_val+2, %ch
movb v_mul_src+0, %cl
movb M + 262144(%ecx), %al
movl $0, v_temp
movb %al, v_temp+2
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %edx, backup_space+12
movl v_temp, %ecx
movl %ecx, v_src
movl v_res, %ecx
movl %ecx, v_dest

movl $0, %ebx
movl $0, %ecx
movb v_dest+0, %cl
movb v_src+0, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+0
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+1, %cl
movb v_src+1, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+1
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+2, %cl
movb v_src+2, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+2
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+3, %cl
movb v_src+3, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+3
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl backup_space, %ecx
movl backup_space+4, %eax
movl backup_space+8, %ebx
movl backup_space+12, %edx
movl %eax, backup_space+4
movl v_dest, %eax
movl %eax, v_res
movl backup_space+4, %eax

movl $0, %ecx
movb v_val+2, %ch
movb v_mul_src+0, %cl
movb M + 327680(%ecx), %al
movl $0, v_temp
movb %al, v_temp+3
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %edx, backup_space+12
movl v_temp, %ecx
movl %ecx, v_src
movl v_res, %ecx
movl %ecx, v_dest

movl $0, %ebx
movl $0, %ecx
movb v_dest+0, %cl
movb v_src+0, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+0
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+1, %cl
movb v_src+1, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+1
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+2, %cl
movb v_src+2, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+2
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+3, %cl
movb v_src+3, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+3
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl backup_space, %ecx
movl backup_space+4, %eax
movl backup_space+8, %ebx
movl backup_space+12, %edx
movl %eax, backup_space+4
movl v_dest, %eax
movl %eax, v_res
movl backup_space+4, %eax

movl $0, %ecx
movb v_val+2, %ch
movb v_mul_src+1, %cl
movb M + 262144(%ecx), %al
movl $0, v_temp
movb %al, v_temp+3
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %edx, backup_space+12
movl v_temp, %ecx
movl %ecx, v_src
movl v_res, %ecx
movl %ecx, v_dest

movl $0, %ebx
movl $0, %ecx
movb v_dest+0, %cl
movb v_src+0, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+0
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+1, %cl
movb v_src+1, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+1
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+2, %cl
movb v_src+2, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+2
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+3, %cl
movb v_src+3, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+3
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl backup_space, %ecx
movl backup_space+4, %eax
movl backup_space+8, %ebx
movl backup_space+12, %edx
movl %eax, backup_space+4
movl v_dest, %eax
movl %eax, v_res
movl backup_space+4, %eax

movl $0, %ecx
movb v_val+3, %ch
movb v_mul_src+0, %cl
movb M + 262144(%ecx), %al
movl $0, v_temp
movb %al, v_temp+3
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %edx, backup_space+12
movl v_temp, %ecx
movl %ecx, v_src
movl v_res, %ecx
movl %ecx, v_dest

movl $0, %ebx
movl $0, %ecx
movb v_dest+0, %cl
movb v_src+0, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+0
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+1, %cl
movb v_src+1, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+1
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+2, %cl
movb v_src+2, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+2
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+3, %cl
movb v_src+3, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+3
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl backup_space, %ecx
movl backup_space+4, %eax
movl backup_space+8, %ebx
movl backup_space+12, %edx
movl %eax, backup_space+4
movl v_dest, %eax
movl %eax, v_res
movl backup_space+4, %eax

movl v_res, %eax
movl $0, %edx
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %edx, backup_space+12
movl %eax, v_src
movl %ebx, v_dest

movl $0, %ebx
movl $0, %ecx
movb v_dest+0, %cl
movb v_src+0, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+0
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+1, %cl
movb v_src+1, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+1
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+2, %cl
movb v_src+2, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+2
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+3, %cl
movb v_src+3, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+3
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl backup_space, %ecx
movl backup_space+4, %eax
movl backup_space+8, %ebx
movl backup_space+12, %edx
movl v_dest, %ebx
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %ecx, v_dest
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
movl v_dest, %ecx
movl %ecx, %eax
movl %eax, v_val
movl %eax, v_mul_src
movl $0, v_res
movl $0, %ecx
movb v_val+0, %ch
movb v_mul_src+0, %cl
movb M + 262144(%ecx), %al
movl $0, v_temp
movb %al, v_temp+0
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %edx, backup_space+12
movl v_temp, %ecx
movl %ecx, v_src
movl v_res, %ecx
movl %ecx, v_dest

movl $0, %ebx
movl $0, %ecx
movb v_dest+0, %cl
movb v_src+0, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+0
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+1, %cl
movb v_src+1, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+1
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+2, %cl
movb v_src+2, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+2
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+3, %cl
movb v_src+3, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+3
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl backup_space, %ecx
movl backup_space+4, %eax
movl backup_space+8, %ebx
movl backup_space+12, %edx
movl %eax, backup_space+4
movl v_dest, %eax
movl %eax, v_res
movl backup_space+4, %eax

movl $0, %ecx
movb v_val+0, %ch
movb v_mul_src+0, %cl
movb M + 327680(%ecx), %al
movl $0, v_temp
movb %al, v_temp+1
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %edx, backup_space+12
movl v_temp, %ecx
movl %ecx, v_src
movl v_res, %ecx
movl %ecx, v_dest

movl $0, %ebx
movl $0, %ecx
movb v_dest+0, %cl
movb v_src+0, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+0
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+1, %cl
movb v_src+1, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+1
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+2, %cl
movb v_src+2, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+2
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+3, %cl
movb v_src+3, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+3
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl backup_space, %ecx
movl backup_space+4, %eax
movl backup_space+8, %ebx
movl backup_space+12, %edx
movl %eax, backup_space+4
movl v_dest, %eax
movl %eax, v_res
movl backup_space+4, %eax

movl $0, %ecx
movb v_val+0, %ch
movb v_mul_src+1, %cl
movb M + 262144(%ecx), %al
movl $0, v_temp
movb %al, v_temp+1
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %edx, backup_space+12
movl v_temp, %ecx
movl %ecx, v_src
movl v_res, %ecx
movl %ecx, v_dest

movl $0, %ebx
movl $0, %ecx
movb v_dest+0, %cl
movb v_src+0, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+0
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+1, %cl
movb v_src+1, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+1
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+2, %cl
movb v_src+2, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+2
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+3, %cl
movb v_src+3, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+3
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl backup_space, %ecx
movl backup_space+4, %eax
movl backup_space+8, %ebx
movl backup_space+12, %edx
movl %eax, backup_space+4
movl v_dest, %eax
movl %eax, v_res
movl backup_space+4, %eax

movl $0, %ecx
movb v_val+0, %ch
movb v_mul_src+1, %cl
movb M + 327680(%ecx), %al
movl $0, v_temp
movb %al, v_temp+2
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %edx, backup_space+12
movl v_temp, %ecx
movl %ecx, v_src
movl v_res, %ecx
movl %ecx, v_dest

movl $0, %ebx
movl $0, %ecx
movb v_dest+0, %cl
movb v_src+0, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+0
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+1, %cl
movb v_src+1, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+1
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+2, %cl
movb v_src+2, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+2
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+3, %cl
movb v_src+3, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+3
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl backup_space, %ecx
movl backup_space+4, %eax
movl backup_space+8, %ebx
movl backup_space+12, %edx
movl %eax, backup_space+4
movl v_dest, %eax
movl %eax, v_res
movl backup_space+4, %eax

movl $0, %ecx
movb v_val+0, %ch
movb v_mul_src+2, %cl
movb M + 262144(%ecx), %al
movl $0, v_temp
movb %al, v_temp+2
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %edx, backup_space+12
movl v_temp, %ecx
movl %ecx, v_src
movl v_res, %ecx
movl %ecx, v_dest

movl $0, %ebx
movl $0, %ecx
movb v_dest+0, %cl
movb v_src+0, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+0
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+1, %cl
movb v_src+1, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+1
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+2, %cl
movb v_src+2, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+2
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+3, %cl
movb v_src+3, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+3
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl backup_space, %ecx
movl backup_space+4, %eax
movl backup_space+8, %ebx
movl backup_space+12, %edx
movl %eax, backup_space+4
movl v_dest, %eax
movl %eax, v_res
movl backup_space+4, %eax

movl $0, %ecx
movb v_val+0, %ch
movb v_mul_src+2, %cl
movb M + 327680(%ecx), %al
movl $0, v_temp
movb %al, v_temp+3
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %edx, backup_space+12
movl v_temp, %ecx
movl %ecx, v_src
movl v_res, %ecx
movl %ecx, v_dest

movl $0, %ebx
movl $0, %ecx
movb v_dest+0, %cl
movb v_src+0, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+0
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+1, %cl
movb v_src+1, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+1
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+2, %cl
movb v_src+2, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+2
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+3, %cl
movb v_src+3, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+3
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl backup_space, %ecx
movl backup_space+4, %eax
movl backup_space+8, %ebx
movl backup_space+12, %edx
movl %eax, backup_space+4
movl v_dest, %eax
movl %eax, v_res
movl backup_space+4, %eax

movl $0, %ecx
movb v_val+0, %ch
movb v_mul_src+3, %cl
movb M + 262144(%ecx), %al
movl $0, v_temp
movb %al, v_temp+3
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %edx, backup_space+12
movl v_temp, %ecx
movl %ecx, v_src
movl v_res, %ecx
movl %ecx, v_dest

movl $0, %ebx
movl $0, %ecx
movb v_dest+0, %cl
movb v_src+0, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+0
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+1, %cl
movb v_src+1, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+1
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+2, %cl
movb v_src+2, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+2
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+3, %cl
movb v_src+3, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+3
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl backup_space, %ecx
movl backup_space+4, %eax
movl backup_space+8, %ebx
movl backup_space+12, %edx
movl %eax, backup_space+4
movl v_dest, %eax
movl %eax, v_res
movl backup_space+4, %eax

movl $0, %ecx
movb v_val+1, %ch
movb v_mul_src+0, %cl
movb M + 262144(%ecx), %al
movl $0, v_temp
movb %al, v_temp+1
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %edx, backup_space+12
movl v_temp, %ecx
movl %ecx, v_src
movl v_res, %ecx
movl %ecx, v_dest

movl $0, %ebx
movl $0, %ecx
movb v_dest+0, %cl
movb v_src+0, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+0
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+1, %cl
movb v_src+1, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+1
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+2, %cl
movb v_src+2, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+2
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+3, %cl
movb v_src+3, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+3
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl backup_space, %ecx
movl backup_space+4, %eax
movl backup_space+8, %ebx
movl backup_space+12, %edx
movl %eax, backup_space+4
movl v_dest, %eax
movl %eax, v_res
movl backup_space+4, %eax

movl $0, %ecx
movb v_val+1, %ch
movb v_mul_src+0, %cl
movb M + 327680(%ecx), %al
movl $0, v_temp
movb %al, v_temp+2
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %edx, backup_space+12
movl v_temp, %ecx
movl %ecx, v_src
movl v_res, %ecx
movl %ecx, v_dest

movl $0, %ebx
movl $0, %ecx
movb v_dest+0, %cl
movb v_src+0, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+0
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+1, %cl
movb v_src+1, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+1
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+2, %cl
movb v_src+2, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+2
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+3, %cl
movb v_src+3, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+3
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl backup_space, %ecx
movl backup_space+4, %eax
movl backup_space+8, %ebx
movl backup_space+12, %edx
movl %eax, backup_space+4
movl v_dest, %eax
movl %eax, v_res
movl backup_space+4, %eax

movl $0, %ecx
movb v_val+1, %ch
movb v_mul_src+1, %cl
movb M + 262144(%ecx), %al
movl $0, v_temp
movb %al, v_temp+2
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %edx, backup_space+12
movl v_temp, %ecx
movl %ecx, v_src
movl v_res, %ecx
movl %ecx, v_dest

movl $0, %ebx
movl $0, %ecx
movb v_dest+0, %cl
movb v_src+0, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+0
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+1, %cl
movb v_src+1, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+1
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+2, %cl
movb v_src+2, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+2
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+3, %cl
movb v_src+3, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+3
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl backup_space, %ecx
movl backup_space+4, %eax
movl backup_space+8, %ebx
movl backup_space+12, %edx
movl %eax, backup_space+4
movl v_dest, %eax
movl %eax, v_res
movl backup_space+4, %eax

movl $0, %ecx
movb v_val+1, %ch
movb v_mul_src+1, %cl
movb M + 327680(%ecx), %al
movl $0, v_temp
movb %al, v_temp+3
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %edx, backup_space+12
movl v_temp, %ecx
movl %ecx, v_src
movl v_res, %ecx
movl %ecx, v_dest

movl $0, %ebx
movl $0, %ecx
movb v_dest+0, %cl
movb v_src+0, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+0
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+1, %cl
movb v_src+1, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+1
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+2, %cl
movb v_src+2, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+2
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+3, %cl
movb v_src+3, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+3
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl backup_space, %ecx
movl backup_space+4, %eax
movl backup_space+8, %ebx
movl backup_space+12, %edx
movl %eax, backup_space+4
movl v_dest, %eax
movl %eax, v_res
movl backup_space+4, %eax

movl $0, %ecx
movb v_val+1, %ch
movb v_mul_src+2, %cl
movb M + 262144(%ecx), %al
movl $0, v_temp
movb %al, v_temp+3
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %edx, backup_space+12
movl v_temp, %ecx
movl %ecx, v_src
movl v_res, %ecx
movl %ecx, v_dest

movl $0, %ebx
movl $0, %ecx
movb v_dest+0, %cl
movb v_src+0, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+0
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+1, %cl
movb v_src+1, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+1
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+2, %cl
movb v_src+2, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+2
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+3, %cl
movb v_src+3, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+3
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl backup_space, %ecx
movl backup_space+4, %eax
movl backup_space+8, %ebx
movl backup_space+12, %edx
movl %eax, backup_space+4
movl v_dest, %eax
movl %eax, v_res
movl backup_space+4, %eax

movl $0, %ecx
movb v_val+2, %ch
movb v_mul_src+0, %cl
movb M + 262144(%ecx), %al
movl $0, v_temp
movb %al, v_temp+2
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %edx, backup_space+12
movl v_temp, %ecx
movl %ecx, v_src
movl v_res, %ecx
movl %ecx, v_dest

movl $0, %ebx
movl $0, %ecx
movb v_dest+0, %cl
movb v_src+0, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+0
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+1, %cl
movb v_src+1, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+1
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+2, %cl
movb v_src+2, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+2
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+3, %cl
movb v_src+3, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+3
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl backup_space, %ecx
movl backup_space+4, %eax
movl backup_space+8, %ebx
movl backup_space+12, %edx
movl %eax, backup_space+4
movl v_dest, %eax
movl %eax, v_res
movl backup_space+4, %eax

movl $0, %ecx
movb v_val+2, %ch
movb v_mul_src+0, %cl
movb M + 327680(%ecx), %al
movl $0, v_temp
movb %al, v_temp+3
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %edx, backup_space+12
movl v_temp, %ecx
movl %ecx, v_src
movl v_res, %ecx
movl %ecx, v_dest

movl $0, %ebx
movl $0, %ecx
movb v_dest+0, %cl
movb v_src+0, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+0
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+1, %cl
movb v_src+1, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+1
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+2, %cl
movb v_src+2, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+2
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+3, %cl
movb v_src+3, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+3
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl backup_space, %ecx
movl backup_space+4, %eax
movl backup_space+8, %ebx
movl backup_space+12, %edx
movl %eax, backup_space+4
movl v_dest, %eax
movl %eax, v_res
movl backup_space+4, %eax

movl $0, %ecx
movb v_val+2, %ch
movb v_mul_src+1, %cl
movb M + 262144(%ecx), %al
movl $0, v_temp
movb %al, v_temp+3
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %edx, backup_space+12
movl v_temp, %ecx
movl %ecx, v_src
movl v_res, %ecx
movl %ecx, v_dest

movl $0, %ebx
movl $0, %ecx
movb v_dest+0, %cl
movb v_src+0, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+0
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+1, %cl
movb v_src+1, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+1
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+2, %cl
movb v_src+2, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+2
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+3, %cl
movb v_src+3, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+3
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl backup_space, %ecx
movl backup_space+4, %eax
movl backup_space+8, %ebx
movl backup_space+12, %edx
movl %eax, backup_space+4
movl v_dest, %eax
movl %eax, v_res
movl backup_space+4, %eax

movl $0, %ecx
movb v_val+3, %ch
movb v_mul_src+0, %cl
movb M + 262144(%ecx), %al
movl $0, v_temp
movb %al, v_temp+3
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %edx, backup_space+12
movl v_temp, %ecx
movl %ecx, v_src
movl v_res, %ecx
movl %ecx, v_dest

movl $0, %ebx
movl $0, %ecx
movb v_dest+0, %cl
movb v_src+0, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+0
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+1, %cl
movb v_src+1, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+1
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+2, %cl
movb v_src+2, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+2
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+3, %cl
movb v_src+3, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+3
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl backup_space, %ecx
movl backup_space+4, %eax
movl backup_space+8, %ebx
movl backup_space+12, %edx
movl %eax, backup_space+4
movl v_dest, %eax
movl %eax, v_res
movl backup_space+4, %eax

movl v_res, %eax
movl $0, %edx
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %edx, backup_space+12
movl %eax, v_src
movl %ebx, v_dest

movl $0, %ebx
movl $0, %ecx
movb v_dest+0, %cl
movb v_src+0, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+0
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+1, %cl
movb v_src+1, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+1
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+2, %cl
movb v_src+2, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+2
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+3, %cl
movb v_src+3, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+3
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl backup_space, %ecx
movl backup_space+4, %eax
movl backup_space+8, %ebx
movl backup_space+12, %edx
movl v_dest, %ebx
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %ecx, v_dest
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
movl v_dest, %ecx
movl %ecx, %eax
movl %eax, v_val
movl %eax, v_mul_src
movl $0, v_res
movl $0, %ecx
movb v_val+0, %ch
movb v_mul_src+0, %cl
movb M + 262144(%ecx), %al
movl $0, v_temp
movb %al, v_temp+0
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %edx, backup_space+12
movl v_temp, %ecx
movl %ecx, v_src
movl v_res, %ecx
movl %ecx, v_dest

movl $0, %ebx
movl $0, %ecx
movb v_dest+0, %cl
movb v_src+0, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+0
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+1, %cl
movb v_src+1, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+1
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+2, %cl
movb v_src+2, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+2
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+3, %cl
movb v_src+3, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+3
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl backup_space, %ecx
movl backup_space+4, %eax
movl backup_space+8, %ebx
movl backup_space+12, %edx
movl %eax, backup_space+4
movl v_dest, %eax
movl %eax, v_res
movl backup_space+4, %eax

movl $0, %ecx
movb v_val+0, %ch
movb v_mul_src+0, %cl
movb M + 327680(%ecx), %al
movl $0, v_temp
movb %al, v_temp+1
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %edx, backup_space+12
movl v_temp, %ecx
movl %ecx, v_src
movl v_res, %ecx
movl %ecx, v_dest

movl $0, %ebx
movl $0, %ecx
movb v_dest+0, %cl
movb v_src+0, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+0
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+1, %cl
movb v_src+1, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+1
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+2, %cl
movb v_src+2, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+2
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+3, %cl
movb v_src+3, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+3
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl backup_space, %ecx
movl backup_space+4, %eax
movl backup_space+8, %ebx
movl backup_space+12, %edx
movl %eax, backup_space+4
movl v_dest, %eax
movl %eax, v_res
movl backup_space+4, %eax

movl $0, %ecx
movb v_val+0, %ch
movb v_mul_src+1, %cl
movb M + 262144(%ecx), %al
movl $0, v_temp
movb %al, v_temp+1
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %edx, backup_space+12
movl v_temp, %ecx
movl %ecx, v_src
movl v_res, %ecx
movl %ecx, v_dest

movl $0, %ebx
movl $0, %ecx
movb v_dest+0, %cl
movb v_src+0, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+0
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+1, %cl
movb v_src+1, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+1
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+2, %cl
movb v_src+2, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+2
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+3, %cl
movb v_src+3, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+3
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl backup_space, %ecx
movl backup_space+4, %eax
movl backup_space+8, %ebx
movl backup_space+12, %edx
movl %eax, backup_space+4
movl v_dest, %eax
movl %eax, v_res
movl backup_space+4, %eax

movl $0, %ecx
movb v_val+0, %ch
movb v_mul_src+1, %cl
movb M + 327680(%ecx), %al
movl $0, v_temp
movb %al, v_temp+2
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %edx, backup_space+12
movl v_temp, %ecx
movl %ecx, v_src
movl v_res, %ecx
movl %ecx, v_dest

movl $0, %ebx
movl $0, %ecx
movb v_dest+0, %cl
movb v_src+0, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+0
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+1, %cl
movb v_src+1, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+1
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+2, %cl
movb v_src+2, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+2
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+3, %cl
movb v_src+3, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+3
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl backup_space, %ecx
movl backup_space+4, %eax
movl backup_space+8, %ebx
movl backup_space+12, %edx
movl %eax, backup_space+4
movl v_dest, %eax
movl %eax, v_res
movl backup_space+4, %eax

movl $0, %ecx
movb v_val+0, %ch
movb v_mul_src+2, %cl
movb M + 262144(%ecx), %al
movl $0, v_temp
movb %al, v_temp+2
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %edx, backup_space+12
movl v_temp, %ecx
movl %ecx, v_src
movl v_res, %ecx
movl %ecx, v_dest

movl $0, %ebx
movl $0, %ecx
movb v_dest+0, %cl
movb v_src+0, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+0
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+1, %cl
movb v_src+1, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+1
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+2, %cl
movb v_src+2, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+2
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+3, %cl
movb v_src+3, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+3
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl backup_space, %ecx
movl backup_space+4, %eax
movl backup_space+8, %ebx
movl backup_space+12, %edx
movl %eax, backup_space+4
movl v_dest, %eax
movl %eax, v_res
movl backup_space+4, %eax

movl $0, %ecx
movb v_val+0, %ch
movb v_mul_src+2, %cl
movb M + 327680(%ecx), %al
movl $0, v_temp
movb %al, v_temp+3
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %edx, backup_space+12
movl v_temp, %ecx
movl %ecx, v_src
movl v_res, %ecx
movl %ecx, v_dest

movl $0, %ebx
movl $0, %ecx
movb v_dest+0, %cl
movb v_src+0, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+0
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+1, %cl
movb v_src+1, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+1
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+2, %cl
movb v_src+2, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+2
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+3, %cl
movb v_src+3, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+3
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl backup_space, %ecx
movl backup_space+4, %eax
movl backup_space+8, %ebx
movl backup_space+12, %edx
movl %eax, backup_space+4
movl v_dest, %eax
movl %eax, v_res
movl backup_space+4, %eax

movl $0, %ecx
movb v_val+0, %ch
movb v_mul_src+3, %cl
movb M + 262144(%ecx), %al
movl $0, v_temp
movb %al, v_temp+3
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %edx, backup_space+12
movl v_temp, %ecx
movl %ecx, v_src
movl v_res, %ecx
movl %ecx, v_dest

movl $0, %ebx
movl $0, %ecx
movb v_dest+0, %cl
movb v_src+0, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+0
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+1, %cl
movb v_src+1, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+1
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+2, %cl
movb v_src+2, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+2
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+3, %cl
movb v_src+3, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+3
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl backup_space, %ecx
movl backup_space+4, %eax
movl backup_space+8, %ebx
movl backup_space+12, %edx
movl %eax, backup_space+4
movl v_dest, %eax
movl %eax, v_res
movl backup_space+4, %eax

movl $0, %ecx
movb v_val+1, %ch
movb v_mul_src+0, %cl
movb M + 262144(%ecx), %al
movl $0, v_temp
movb %al, v_temp+1
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %edx, backup_space+12
movl v_temp, %ecx
movl %ecx, v_src
movl v_res, %ecx
movl %ecx, v_dest

movl $0, %ebx
movl $0, %ecx
movb v_dest+0, %cl
movb v_src+0, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+0
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+1, %cl
movb v_src+1, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+1
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+2, %cl
movb v_src+2, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+2
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+3, %cl
movb v_src+3, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+3
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl backup_space, %ecx
movl backup_space+4, %eax
movl backup_space+8, %ebx
movl backup_space+12, %edx
movl %eax, backup_space+4
movl v_dest, %eax
movl %eax, v_res
movl backup_space+4, %eax

movl $0, %ecx
movb v_val+1, %ch
movb v_mul_src+0, %cl
movb M + 327680(%ecx), %al
movl $0, v_temp
movb %al, v_temp+2
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %edx, backup_space+12
movl v_temp, %ecx
movl %ecx, v_src
movl v_res, %ecx
movl %ecx, v_dest

movl $0, %ebx
movl $0, %ecx
movb v_dest+0, %cl
movb v_src+0, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+0
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+1, %cl
movb v_src+1, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+1
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+2, %cl
movb v_src+2, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+2
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+3, %cl
movb v_src+3, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+3
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl backup_space, %ecx
movl backup_space+4, %eax
movl backup_space+8, %ebx
movl backup_space+12, %edx
movl %eax, backup_space+4
movl v_dest, %eax
movl %eax, v_res
movl backup_space+4, %eax

movl $0, %ecx
movb v_val+1, %ch
movb v_mul_src+1, %cl
movb M + 262144(%ecx), %al
movl $0, v_temp
movb %al, v_temp+2
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %edx, backup_space+12
movl v_temp, %ecx
movl %ecx, v_src
movl v_res, %ecx
movl %ecx, v_dest

movl $0, %ebx
movl $0, %ecx
movb v_dest+0, %cl
movb v_src+0, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+0
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+1, %cl
movb v_src+1, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+1
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+2, %cl
movb v_src+2, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+2
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+3, %cl
movb v_src+3, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+3
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl backup_space, %ecx
movl backup_space+4, %eax
movl backup_space+8, %ebx
movl backup_space+12, %edx
movl %eax, backup_space+4
movl v_dest, %eax
movl %eax, v_res
movl backup_space+4, %eax

movl $0, %ecx
movb v_val+1, %ch
movb v_mul_src+1, %cl
movb M + 327680(%ecx), %al
movl $0, v_temp
movb %al, v_temp+3
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %edx, backup_space+12
movl v_temp, %ecx
movl %ecx, v_src
movl v_res, %ecx
movl %ecx, v_dest

movl $0, %ebx
movl $0, %ecx
movb v_dest+0, %cl
movb v_src+0, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+0
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+1, %cl
movb v_src+1, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+1
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+2, %cl
movb v_src+2, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+2
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+3, %cl
movb v_src+3, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+3
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl backup_space, %ecx
movl backup_space+4, %eax
movl backup_space+8, %ebx
movl backup_space+12, %edx
movl %eax, backup_space+4
movl v_dest, %eax
movl %eax, v_res
movl backup_space+4, %eax

movl $0, %ecx
movb v_val+1, %ch
movb v_mul_src+2, %cl
movb M + 262144(%ecx), %al
movl $0, v_temp
movb %al, v_temp+3
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %edx, backup_space+12
movl v_temp, %ecx
movl %ecx, v_src
movl v_res, %ecx
movl %ecx, v_dest

movl $0, %ebx
movl $0, %ecx
movb v_dest+0, %cl
movb v_src+0, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+0
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+1, %cl
movb v_src+1, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+1
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+2, %cl
movb v_src+2, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+2
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+3, %cl
movb v_src+3, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+3
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl backup_space, %ecx
movl backup_space+4, %eax
movl backup_space+8, %ebx
movl backup_space+12, %edx
movl %eax, backup_space+4
movl v_dest, %eax
movl %eax, v_res
movl backup_space+4, %eax

movl $0, %ecx
movb v_val+2, %ch
movb v_mul_src+0, %cl
movb M + 262144(%ecx), %al
movl $0, v_temp
movb %al, v_temp+2
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %edx, backup_space+12
movl v_temp, %ecx
movl %ecx, v_src
movl v_res, %ecx
movl %ecx, v_dest

movl $0, %ebx
movl $0, %ecx
movb v_dest+0, %cl
movb v_src+0, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+0
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+1, %cl
movb v_src+1, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+1
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+2, %cl
movb v_src+2, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+2
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+3, %cl
movb v_src+3, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+3
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl backup_space, %ecx
movl backup_space+4, %eax
movl backup_space+8, %ebx
movl backup_space+12, %edx
movl %eax, backup_space+4
movl v_dest, %eax
movl %eax, v_res
movl backup_space+4, %eax

movl $0, %ecx
movb v_val+2, %ch
movb v_mul_src+0, %cl
movb M + 327680(%ecx), %al
movl $0, v_temp
movb %al, v_temp+3
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %edx, backup_space+12
movl v_temp, %ecx
movl %ecx, v_src
movl v_res, %ecx
movl %ecx, v_dest

movl $0, %ebx
movl $0, %ecx
movb v_dest+0, %cl
movb v_src+0, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+0
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+1, %cl
movb v_src+1, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+1
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+2, %cl
movb v_src+2, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+2
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+3, %cl
movb v_src+3, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+3
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl backup_space, %ecx
movl backup_space+4, %eax
movl backup_space+8, %ebx
movl backup_space+12, %edx
movl %eax, backup_space+4
movl v_dest, %eax
movl %eax, v_res
movl backup_space+4, %eax

movl $0, %ecx
movb v_val+2, %ch
movb v_mul_src+1, %cl
movb M + 262144(%ecx), %al
movl $0, v_temp
movb %al, v_temp+3
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %edx, backup_space+12
movl v_temp, %ecx
movl %ecx, v_src
movl v_res, %ecx
movl %ecx, v_dest

movl $0, %ebx
movl $0, %ecx
movb v_dest+0, %cl
movb v_src+0, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+0
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+1, %cl
movb v_src+1, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+1
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+2, %cl
movb v_src+2, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+2
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+3, %cl
movb v_src+3, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+3
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl backup_space, %ecx
movl backup_space+4, %eax
movl backup_space+8, %ebx
movl backup_space+12, %edx
movl %eax, backup_space+4
movl v_dest, %eax
movl %eax, v_res
movl backup_space+4, %eax

movl $0, %ecx
movb v_val+3, %ch
movb v_mul_src+0, %cl
movb M + 262144(%ecx), %al
movl $0, v_temp
movb %al, v_temp+3
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %edx, backup_space+12
movl v_temp, %ecx
movl %ecx, v_src
movl v_res, %ecx
movl %ecx, v_dest

movl $0, %ebx
movl $0, %ecx
movb v_dest+0, %cl
movb v_src+0, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+0
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+1, %cl
movb v_src+1, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+1
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+2, %cl
movb v_src+2, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+2
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+3, %cl
movb v_src+3, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+3
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl backup_space, %ecx
movl backup_space+4, %eax
movl backup_space+8, %ebx
movl backup_space+12, %edx
movl %eax, backup_space+4
movl v_dest, %eax
movl %eax, v_res
movl backup_space+4, %eax

movl v_res, %eax
movl $0, %edx
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %edx, backup_space+12
movl %eax, v_src
movl %ebx, v_dest

movl $0, %ebx
movl $0, %ecx
movb v_dest+0, %cl
movb v_src+0, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+0
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+1, %cl
movb v_src+1, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+1
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+2, %cl
movb v_src+2, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+2
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+3, %cl
movb v_src+3, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+3
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl backup_space, %ecx
movl backup_space+4, %eax
movl backup_space+8, %ebx
movl backup_space+12, %edx
movl v_dest, %ebx
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %ecx, v_dest
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
movl v_dest, %ecx
et_exit:
movl %ebx, s
movl $1, %eax
mov $0, %ebx
int $0x80
