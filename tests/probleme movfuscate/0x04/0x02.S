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
n: .long 5234
s: .long 0
formatAfSuma: .ascii "Suma cifrelor numarului este: %ld\n"
.text
.global main
main:
movl n, %ecx
movl $10, %ebx
movl %ecx, %eax
mov $0, %edx
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
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %edx, backup_space+12
movl %edx, v_src
movl s, %ecx
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
movl %eax, s
movl backup_space+4, %eax
movl %eax, %ecx
movl %ecx, %eax
mov $0, %edx
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
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %edx, backup_space+12
movl %edx, v_src
movl s, %ecx
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
movl %eax, s
movl backup_space+4, %eax
movl %eax, %ecx
movl %ecx, %eax
mov $0, %edx
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
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %edx, backup_space+12
movl %edx, v_src
movl s, %ecx
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
movl %eax, s
movl backup_space+4, %eax
movl %eax, %ecx
movl %ecx, %eax
mov $0, %edx
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
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %edx, backup_space+12
movl %edx, v_src
movl s, %ecx
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
movl %eax, s
movl backup_space+4, %eax
movl %eax, %ecx
movl %ecx, v_temp
movl s, %ecx
movl %ecx, v_val
movl v_temp, %ecx
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %edx, backup_space+12
movl $4, v_src
movl %esp, v_dest

movl $0, %ebx
movl $0, %ecx
movb v_src+0, %cl
movb v_dest+0, %ch
movb M + 131072(%ecx), %al
movb M + 196608(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 131072(%ecx), %al
movb %al, v_dest+0
movb M + 196608(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_src+1, %cl
movb v_dest+1, %ch
movb M + 131072(%ecx), %al
movb M + 196608(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 131072(%ecx), %al
movb %al, v_dest+1
movb M + 196608(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_src+2, %cl
movb v_dest+2, %ch
movb M + 131072(%ecx), %al
movb M + 196608(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 131072(%ecx), %al
movb %al, v_dest+2
movb M + 196608(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_src+3, %cl
movb v_dest+3, %ch
movb M + 131072(%ecx), %al
movb M + 196608(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 131072(%ecx), %al
movb %al, v_dest+3
movb M + 196608(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl backup_space, %ecx
movl backup_space+4, %eax
movl backup_space+8, %ebx
movl backup_space+12, %edx
movl v_dest, %esp

movl %eax, backup_space+4
movl v_val, %eax
movl %eax, (%esp)
movl backup_space+4, %eax
movl %ecx, v_temp
movl $formatAfSuma, v_val
movl v_temp, %ecx
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %edx, backup_space+12
movl $4, v_src
movl %esp, v_dest

movl $0, %ebx
movl $0, %ecx
movb v_src+0, %cl
movb v_dest+0, %ch
movb M + 131072(%ecx), %al
movb M + 196608(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 131072(%ecx), %al
movb %al, v_dest+0
movb M + 196608(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_src+1, %cl
movb v_dest+1, %ch
movb M + 131072(%ecx), %al
movb M + 196608(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 131072(%ecx), %al
movb %al, v_dest+1
movb M + 196608(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_src+2, %cl
movb v_dest+2, %ch
movb M + 131072(%ecx), %al
movb M + 196608(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 131072(%ecx), %al
movb %al, v_dest+2
movb M + 196608(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_src+3, %cl
movb v_dest+3, %ch
movb M + 131072(%ecx), %al
movb M + 196608(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 131072(%ecx), %al
movb %al, v_dest+3
movb M + 196608(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl backup_space, %ecx
movl backup_space+4, %eax
movl backup_space+8, %ebx
movl backup_space+12, %edx
movl v_dest, %esp

movl %eax, backup_space+4
movl v_val, %eax
movl %eax, (%esp)
movl backup_space+4, %eax
call printf # de movfuscat
movl %eax, backup_space+4
movl (%esp), %eax
movl %eax, v_val
movl backup_space+4, %eax
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %edx, backup_space+12
movl $4, v_src
movl %esp, v_dest

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
movl v_dest, %esp

movl v_val, %ebx
movl %eax, backup_space+4
movl (%esp), %eax
movl %eax, v_val
movl backup_space+4, %eax
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %edx, backup_space+12
movl $4, v_src
movl %esp, v_dest

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
movl v_dest, %esp

movl v_val, %ebx
movl %ecx, v_temp
movl stdout, %ecx
movl %ecx, v_val
movl v_temp, %ecx
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %edx, backup_space+12
movl $4, v_src
movl %esp, v_dest

movl $0, %ebx
movl $0, %ecx
movb v_src+0, %cl
movb v_dest+0, %ch
movb M + 131072(%ecx), %al
movb M + 196608(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 131072(%ecx), %al
movb %al, v_dest+0
movb M + 196608(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_src+1, %cl
movb v_dest+1, %ch
movb M + 131072(%ecx), %al
movb M + 196608(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 131072(%ecx), %al
movb %al, v_dest+1
movb M + 196608(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_src+2, %cl
movb v_dest+2, %ch
movb M + 131072(%ecx), %al
movb M + 196608(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 131072(%ecx), %al
movb %al, v_dest+2
movb M + 196608(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_src+3, %cl
movb v_dest+3, %ch
movb M + 131072(%ecx), %al
movb M + 196608(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 131072(%ecx), %al
movb %al, v_dest+3
movb M + 196608(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl backup_space, %ecx
movl backup_space+4, %eax
movl backup_space+8, %ebx
movl backup_space+12, %edx
movl v_dest, %esp

movl %eax, backup_space+4
movl v_val, %eax
movl %eax, (%esp)
movl backup_space+4, %eax
call fflush # de movfuscat
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %edx, backup_space+12
movl $4, v_src
movl %esp, v_dest

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
movl v_dest, %esp
et_exit:
movl $1, %eax
mov $0, %ebx
int $0x80
